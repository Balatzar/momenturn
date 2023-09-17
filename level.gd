extends Node2D

@onready var bird_spawners := get_tree().get_nodes_in_group("bird_spawners")
@onready var start_time = 0
var bird_scene := preload("res://bird.tscn")
var rng = RandomNumberGenerator.new()
var spawn_timer : Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	spawn_timer = Timer.new()
	add_child(spawn_timer)
	spawn_timer.timeout.connect(timer_end)
	create_timer()
	get_tree().paused = true
	Console.add_command("end_game", _console_end_game)

func _console_end_game():
	$Windmill.queue_free()
	end_game()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	start_time += delta

func create_timer():
	spawn_timer.wait_time = rng.randf_range(0, 5)
	spawn_timer.start()

func timer_end():
	create_timer()
	spawn_bird(select_spawner())

func select_spawner():
	var bird_spawners := get_tree().get_nodes_in_group("bird_spawners")
	return bird_spawners[int(rng.randf_range(0, len(bird_spawners) - 1))]

func spawn_bird(bird_spawner):
	var bird = bird_scene.instantiate()
	bird.name = "bird" + str(rng.randf_range(-1000.0, 1000.0))
	add_child(bird)
	bird.global_position = bird_spawner.global_position
	bird.direction = bird_spawner.direction

func _on_windmill_died():
	end_game()

func end_game():
	$EndScreen.visible = true
	$StartScreen.visible = false
	get_tree().paused = true
	$EndScreen/Score.text = "You lost! You survived for " + str(snappedf(start_time, 0.01)) + " seconds."

func _on_start_pressed():
	$StartScreen.visible = false
	get_tree().paused = false


func _on_restart_pressed():
	get_tree().reload_current_scene()
