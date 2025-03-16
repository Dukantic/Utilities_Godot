extends Node3D


@export var scene_planet = preload("res://scene/black-hole/planet_body.tscn")
@export var delay_spawn:float = 1.0/60
@export var vector_director : Vector3

var time : float = 0
func _physics_process(delta: float) -> void:
	time += delta
	if time >= delay_spawn:
		time = 0
		
		


func spawn_planet():
	var new = scene_planet.instantiate()
	
