extends Node2D


@export var scene:PackedScene = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("enter"):
		SceneManager.emit_signal("change_scene_signal", scene)
