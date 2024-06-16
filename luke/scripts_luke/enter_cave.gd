extends Area3D


# Called when the node enters the scene tree for the first time.



func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		if body.was_caught: return
		body.timed_throw = false
		body.hud.show_right_click.visible = false
		body.hud.hide_timer.visible = false
		set_deferred("monitoring", false)
		GlobalScene.stop_bg_music()
		GlobalSignals.emit_signal("hiding")
		GlobalSignals.emit_signal("time_transition_5")
		GlobalSignals.emit_signal("orb_to_clearing_two", false)
		GlobalSignals.emit_signal("path_chosen", "cave")
