extends Node2D
class_name Arena

@export var player: Player

@export var normal_color: Color
@export var blocked_color: Color
@export var critical_color: Color
@export var hp_color: Color


func _ready() -> void:
	Global.player = player
	Global.on_create_block_text.connect(_on_create_block_text)
	Global.on_create_damage_text.connect(_on_create_damage_text)
	
func _on_create_block_text(unit: Node2D) -> void:
	pass
	
func _on_create_damage_text(unit: Node2D, hitbox: HitboxComponent) -> void:
	pass
