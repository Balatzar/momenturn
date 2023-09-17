extends Area2D

@export var speed := 100
var direction := 1


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$AnimatedSprite2D.flip_h = direction == -1
	position.x += speed * delta * direction

func _on_area_entered(area):
	if area.is_in_group("blades"):
		hit_blade(area)

func get_blown(strength):
	position.x -= strength * direction

func hit_blade(blade):
	blade.get_hit()
	die()

func die():
	queue_free()
