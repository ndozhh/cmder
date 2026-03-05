# cmder

My current cmder config.

## Environment variables

### TERMINAL_SETTINGS

Env var set in `user_profile.cmd` pointing to Windows Terminal's `settings.json`:

```
%USERPROFILE%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

Used by `save_terminal` and `load_terminal` aliases to backup/restore Windows Terminal config.

## Terminal aliases

| Alias           | Command                     | Description                              |
| --------------- | --------------------------- | ---------------------------------------- |
| `save_terminal` | `cp %TERMINAL_SETTINGS% $1` | Save Windows Terminal settings to path   |
| `load_terminal` | `cp $1 %TERMINAL_SETTINGS%` | Load Windows Terminal settings from path |
