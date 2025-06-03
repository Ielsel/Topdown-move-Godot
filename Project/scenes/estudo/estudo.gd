# Extensão do node
extends Node2D

# Função de início, roda apenas uma vez quando o nó inicia
func _ready() -> void:
	print(calculator(4, 6))

# Função que roda a cada frame do jogo todoæ
func _process(_delta: float) -> void:
	pass # Código sem função

func calculator(a : int, b: int) -> int:
	return a + b
	
