extends Area2D

signal getting_blown
signal getting_hit

func get_blown():
	getting_blown.emit()

func get_hit():
	getting_hit.emit()
