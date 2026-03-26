extends Sprite2D

#DEFINE
var speed = 400
var angular_speed = PI

#func _init() -> void:
	#print("hello world")
func _process(delta):
	var direction = 0
	if Input.is_action_pressed("ui_left"):
		direction = -1
	if Input.is_action_pressed("ui_right"):
		direction = 1
	if Input.is_action_pressed("ui_right") &&Input.is_action_pressed("ui_left"):
		direction = 0
	rotation += angular_speed * direction * delta
	
	#var velocity = Vector2.UP.rotated(rotation) * speed 
	#position += velocity * delta
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity = Vector2.UP.rotated(rotation) * speed
	if Input.is_action_pressed("ui_down"):
		velocity = Vector2.UP.rotated(rotation) * speed * -1
	if Input.is_action_pressed("ui_down")&&Input.is_action_pressed("ui_up") :
		velocity = Vector2.ZERO
	position += velocity * delta
	
	print(position)
