extends CharacterBody2D


var player_velocity : float = 400
#Vector2 é um tipo de variável vetor que controla o x e o y do jogador
var move_direction : Vector2 = Vector2(0, 0) # Vetor zerado inicialmente


func _ready() -> void:
	pass 


func _process(_delta: float) -> void:
	player_movimentation()

# Movimentação do player
func player_movimentation() -> void:
	# Movimentação horizontal
	if Input.is_action_pressed("mv_right"):
		move_direction.x = 1
	elif Input.is_action_pressed("mv_left"):
		move_direction.x = -1
	else:
		move_direction.x = 0
	
	# Movimentação vertical
	if Input.is_action_pressed("mv_up"):
		move_direction.y = -1
	elif Input.is_action_pressed("mv_down"):
		move_direction.y = 1
	else:
		move_direction.y = 0
	
	# Velocity = palavra reservada para velocidade
	velocity = move_direction.normalized() * player_velocity #.normalized normaliza a velocidade do vetor
	# Movimentação
	move_and_slide()
