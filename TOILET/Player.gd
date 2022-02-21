extends KinematicBody2D

func _ready():
	print("ready")
	#position = Vector2(0, 0)


var spawn_init_pos = Vector2(0, 282)

var score : int = 0

var speed : int = 300
var jumpForce : int = 475
var gravity : int = 800

var walking = false

var vel : Vector2 = Vector2()

onready var sprite : Sprite = get_node("GoldenToilet")
onready var colShape = get_node("CollisionShape2D")

func _physics_process(delta):
	vel.x = 0
	if Input.is_action_pressed("move_left"):
		vel.x -= speed
		
	if Input.is_action_pressed("move_right"):
		vel.x += speed
		
		
	vel = move_and_slide(vel, Vector2.UP)
	
	vel.y += gravity * delta
	
	if Input.is_action_just_pressed("move_up") and is_on_floor():
		vel.y -= jumpForce
		
		if vel.x < 0:
			sprite.flip_h = true

		elif vel.x > 0:
			sprite.flip_h = false
