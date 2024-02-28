extends Sprite2D
@export var timer = 5.0
var time_elapsed = 0
var running = true 
@export var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Hello world")
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if running == false:
		return
	print(time_elapsed)
	time_elapsed += delta
	if time_elapsed >= timer :
		print("program complete")
		running = false
	else:
		print("program incomplete")
	if Input.is_action_pressed("Right"):
		position.x += speed
	if Input.is_action_pressed("Left"):
		position.x -= speed

	
