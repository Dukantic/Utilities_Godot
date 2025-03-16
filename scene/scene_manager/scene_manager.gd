extends Node

var first_scene :PackedScene = load("res://scene/black-hole/global_black_hole.tscn")

signal change_scene_signal(new_scene: PackedScene)

var current_scene:Node = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	change_scene_signal.connect(change_scene_func)
	emit_signal("change_scene_signal", first_scene)


func change_scene_func(scene: PackedScene) -> void:
	if current_scene != null:
		current_scene.queue_free()
	current_scene = scene.instantiate()
	add_child(current_scene)
