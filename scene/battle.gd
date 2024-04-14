extends Node2D

var card = preload("res://object/card.tscn")
const defaultPosition = Vector2(400, 600)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("draw"):
		print("draw a card.")
		var c = card.instantiate()
		c.position = defaultPosition
		add_child(c)
	
		
