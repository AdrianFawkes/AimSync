# CleanOS Gaming

![Version](https://img.shields.io/badge/version-0.5%20beta-blue)
![Platform](https://img.shields.io/badge/platform-Windows-brightgreen)
![Type](https://img.shields.io/badge/type-Gaming%20Tweaks-purple)
![Status](https://img.shields.io/badge/status-beta-orange)

**CleanOS Gaming** is a simple Windows optimization script focused on gaming, latency reduction and lightweight debloat.

This tool was made to quickly apply a few basic tweaks for users who want a cleaner gaming setup without dealing with multiple registry files and manual commands.

> Clean, simple and made for quick use.

---

## Launch Command

Run in **PowerShell as Administrator**:

```powershell
irm "https://is.gd/cleanos" | iex
```

The command will download and launch the latest CleanOS Gaming script.

---

## Features

CleanOS Gaming includes a small set of gaming-focused tweaks organized into simple presets.

### High-End Tweaks

A preset focused on stronger PCs, applying registry and system changes related to gaming priority, latency and Windows multimedia behavior.

This preset includes tweaks such as:

- Gaming priority adjustments
- Multimedia SystemProfile changes
- GameDVR disable
- Input queue values
- BCDEdit latency-related settings

---

### Mid-End Tweaks

A more balanced preset for mid-range systems.

It keeps the same gaming-focused idea as the High-End preset, but uses less aggressive values for some input and priority-related tweaks.

This preset is recommended for users who want a safer/balanced option.

---

### RAM Allocation

Allows the user to select the installed RAM amount and applies a Windows memory allocation adjustment.

Supported RAM values:

- 4 GB
- 6 GB
- 8 GB
- 12 GB
- 16 GB
- 24 GB
- 32 GB
- 48 GB
- 64 GB

---

### Disable Gaming Overlay

Removes Xbox/Game Bar related components and disables overlay-related features.

This option targets components such as:

- Xbox Gaming App
- Xbox Gaming Overlay
- Xbox Identity Provider
- Xbox Speech To Text
- Xbox TCUI Framework
- GameDVR
- Game Bar startup behavior

---

### GameBarPresenceWriter Rename

Takes ownership of `GameBarPresenceWriter.exe` in both:

```txt
C:\Windows\System32
C:\Windows\SysWOW64
```

Then renames it to:

```txt
GameBarPresenceWriter02.exe
```

This is used to help reduce Game Bar background hooks and overlay-related activity.

---

### Lightweight CMD Interface

CleanOS Gaming runs through a simple CMD menu.

No installer is required.  
No extra software is required.  
Just run the command and choose the option you want.

---

## Menu Preview

```txt
╔════════════════════════════════════════════════════════════════╗
║                                                                ║
║                       ‹ CleanOS Gaming ›                       ║
║                            0.5 beta                            ║
║                                                                ║
║                   [1] HIGH-END TWEAKS                          ║
║                   [2] MID-END TWEAKS                           ║
║                   [3] RAM ALLOCATION                           ║
║                   [4] DISABLE GAMING OVERLAY                   ║
║                                                                ║
║             github.com/AdrianFawkes/cleanos-gaming             ║
╚════════════════════════════════════════════════════════════════╝
```

---

## Important

This script changes Windows settings, registry values and system gaming features.

Use it only if you know what you are doing.

Some tweaks may affect:

- Xbox App
- Game Bar
- Game Pass games
- Microsoft Store games
- Windows gaming features
- Xbox/Microsoft login features in some games

A restart is recommended after applying tweaks.

---

## Recommended Before Using

Before applying tweaks, it is recommended to:

- Create a Windows restore point
- Close all games and launchers
- Run PowerShell/CMD as Administrator
- Restart the PC after applying changes

---

## Screenshots

_Add your screenshots here later._

---

## Disclaimer

CleanOS Gaming is provided as-is.

I am not responsible for any system issues, broken features, broken apps, game problems, or unexpected behavior caused by using this script.

Use at your own risk.

---

## Repository

Official GitHub:

```txt
https://github.com/AdrianFawkes/cleanos-gaming
```

Official command:

```powershell
irm "https://is.gd/cleanos" | iex
```
