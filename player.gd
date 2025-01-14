extends Node2D

var scene_manager = null
@export var scene:PackedScene = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scene_manager = get_tree().root.get_node("scene_manager")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("enter"):
		scene_manager.emit_signal("change_scene_signal", scene)
