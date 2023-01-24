extends Control


func _ready() -> void:
    # In my project I would put it in manager autoload script
    # But here it is fine, but remember that writers are global
    Logger.clear_writers()
    Logger.add_writer(BloodyLogger.default_console_writer())
    Logger.add_writer(BloodyLogger.default_error_file_writer())


func _on_trace_button_up() -> void:
    Logger.trace("Trace button pressed")


func _on_debug_button_up() -> void:
    Logger.debug("Debug button pressed")


func _on_info_button_up() -> void:
    Logger.info("Info button pressed")


func _on_warn_button_up() -> void:
    Logger.warn("Warn button pressed")


func _on_error_button_up() -> void:
    Logger.error("Error button pressed")


func _on_fatal_button_up() -> void:
    Logger.fatal("Fatal button pressed")


func _on_trace_stack_button_up() -> void:
    Logger.trace_stack("Trace+Stack button pressed")


func _on_debug_stack_button_up() -> void:
    Logger.debug_stack("Debug+Stack button pressed")


func _on_info_stack_button_up() -> void:
    Logger.info_stack("Info+Stack button pressed")


func _on_warn_stack_button_up() -> void:
    Logger.warn_stack("Warn+Stack button pressed")


func _on_error_stack_button_up() -> void:
    Logger.error_stack("Error+Stack button pressed")


func _on_fatal_stack_button_up() -> void:
    Logger.fatal_stack("Fatal+Stack button pressed")
