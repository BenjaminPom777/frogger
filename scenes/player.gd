extends CharacterBody2D

var direction: Vector2 
var speed: int = 100

func _physics_process(_delta: float) -> void:
	
	direction = Input.get_vector("left", "right", "up", "down")	
	velocity = direction * speed 
	animation()
	move_and_slide()
		
		
func animation():
	if(direction):
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = 'left'
		else:
			$AnimatedSprite2D.animation = "up" if direction.y < 0 else 'down'	
	else:
		$AnimatedSprite2D.frame = 0	
		
	
	#position += direction * speed * delta
	#if Input.is_action_pressed("right"):
		#direction = Vector2.RIGHT
		#position += direction * speed
	#if Input.is_action_pressed("left"):
		#direction = Vector2.LEFT
		#position += direction * speed
	#if Input.is_action_pressed("down"):
		#direction = Vector2.DOWN
		#position += direction * speed
	#if Input.is_action_pressed("up"):
		#direction = Vector2.UP
		#position += direction * speed
		
	
	
