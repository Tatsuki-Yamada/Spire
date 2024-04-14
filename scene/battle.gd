extends Node2D

var card = preload("res://object/card.tscn")
var numberOfCard = 0
var centerPosition = Vector2(600, 600)

func _getCardPositions(cardCount):
	var positions = []
	var centerNumber = (cardCount + 1) / 2.0
	
	for i in range(cardCount):
		var diffToCenter = i + 1 - centerNumber
		positions.append(centerPosition + Vector2(80 * diffToCenter, 0))
			
	return positions
	
func _drawCard():
	centerPosition = Vector2(get_viewport_rect().size.x / 2, 600)
	
	for n in get_children():
		remove_child(n)
		n.queue_free()
	
	numberOfCard += 1
	var positions = _getCardPositions(numberOfCard)
	
	for i in range(numberOfCard):
		var c = card.instantiate()
		c.position = positions[i]
		add_child(c)


func _input(event):
	if event.is_action_pressed("draw"):
		_drawCard()
