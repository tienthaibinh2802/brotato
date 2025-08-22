extends Node

signal on_create_block_text(unit: Node2D)
signal on_create_damage_text(unit: Node2D, hitbox: HitboxComponent)

const FLASH_MATERIAL = preload("res://effects/flash_materia.tres")
const FLOATING_TEXT_SCENE = preload("res://scenes/ui/floating_text/floating_text.tscn")

enum UpgradeTier{
	COMMON,
	RARE,
	EPIC,
	LEGENDARY
}

var player: Player
var game_paused := false


func get_chance_sucess(chance: float) -> bool:
	var random := randf_range(0, 1.0)
	if random < chance:
		return true
	return false
	
