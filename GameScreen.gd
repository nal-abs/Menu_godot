extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var back_button = $Back as Button
	back_button.pressed.connect(_back_button)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _back_button():
	print('hello')
	var mainMenu = preload("res://main_menu.tscn")
	get_tree().change_scene_to_packed(mainMenu)
