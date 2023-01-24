# BloodyLogger
Simple extensible logger for Godot 4.x

## Usage

**Note**: You should add `addons/BloodyLogger/logger.gd` as Autoload

Somewhere in your project you should setup loggers like this:

```gdscript
# logger.gd is autoloaded as "Logger"

Logger.add_writer(BloodyLogger.default_console_writer())
Logger.add_writer(BloodyLogger.default_error_file_writer())
```

This snippet above is more than enough for basic funcitonality. If default writers aren't enough, you can create your own.

## Custom writers

To create your own writer, you should:
* extend `Writer` class
* override `write(int, String)` and `write_stack(int, String)` functions

Please note, that you despite presence of `_filter(int)` function, you should call it your custom overrides manually.
