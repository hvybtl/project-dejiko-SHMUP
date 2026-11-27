extends Area2D

var Lives = 4
var Bombs = 2
#var LampOil = 10000
#var Rope = 10000
#const credit = 0
const SPEED = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = Vector2(0,0)
	
	if Input.is_action_pressed("UP"):
		direction.y-=1
	if Input.is_action_pressed("DOWN"):
		direction.y+=1
	if Input.is_action_pressed("LEFT"):
		direction.x-=1
	if Input.is_action_pressed("RIGHT"):
		direction.x+=1
	
	direction=direction.normalized()
	position+=(direction)*SPEED
	
