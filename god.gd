extends CharacterBody2D

@export var speed = 200
@export var blown_strength := 1000

var mouse_position = null
var blades = {}
var birds = {}
 
func _physics_process(delta):
	velocity = Vector2(0, 0)
	mouse_position = get_global_mouse_position()
 
	var direction = (mouse_position - position).normalized()
	velocity = direction * speed
	
	var diff_x = mouse_position.x - global_position.x
	var diff_y = mouse_position.y - global_position.y
	
	print(mouse_position)
	print(global_position)
	print(diff_x)
	print(diff_y)
	
	if abs(diff_x) >= 2 and abs(diff_y) >= 2:
		move_and_slide()
		look_at(mouse_position)

func _process(delta):
	for blade in blades.values():
		blade.get_blown()
	for bird in birds.values():
		bird.get_blown(blown_strength * delta)

func _on_area_2d_area_entered(area):
	if area.is_in_group("blades"):
		add_blade(area)
	if area.is_in_group("birds"):
		add_bird(area)


func _on_area_2d_area_exited(area):
	if area.is_in_group("blades"):
		remove_blade(area)
	if area.is_in_group("birds"):
		remove_bird(area)

func add_blade(blade):
	blades[blade.name] = blade

func remove_blade(blade):
	blades.erase(blade.name)

func add_bird(bird):
	birds[bird.name] = bird

func remove_bird(bird):
	birds.erase(bird.name)
