extends Node2D

@export var initial_speed := 0.01
@export var decay_speed := 0.00001
@export var blown_speed := 0.00001
@export var hit_speed := 0.002

@onready var current_speed := initial_speed
@onready var blades := get_tree().get_nodes_in_group("blades")

signal died

# Called when the node enters the scene tree for the first time.
func _ready():
	for blade in blades:
		blade.getting_blown.connect(get_blown)
		blade.getting_hit.connect(get_hit)

func get_blown():
	current_speed += blown_speed

func get_hit():
	current_speed -= hit_speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	current_speed -= decay_speed
	
	$Life.text = str(snappedf(current_speed * 100, 0.01))
	
	if current_speed <= 0:
		die()
	
	for blade in blades:
		blade.rotate(current_speed + delta)

func die():
	died.emit()
	queue_free()
