extends Panel
class_name UpgradePanel


const UPGRADE_CARD_SCENE = preload("res://scenes/ui/upgrade_card/upgrade_card.tscn")

@export var upgrade_list: Array[ItemUpgrade]

@onready var items_container: HBoxContainer = %ItemContainer

func _ready() -> void:
	load_upgrades()

func load_upgrades() -> void:
	for child in items_container.get_children():
		child.queue_free()
		
	for i in 4:
		var random_upg := upgrade_list.pick_random() as ItemUpgrade
		var card_instance := UPGRADE_CARD_SCENE.instantiate() as UpgradeCard
		items_container.add_child(card_instance)
		card_instance.item_data = random_upg
		
		
