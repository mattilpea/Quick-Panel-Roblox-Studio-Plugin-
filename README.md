# Quick Panel (Roblox Studio Plugin)

A lightweight Roblox Studio utility plugin designed to speed up repetitive building and workflow tasks.

Made by **@mattilpea**

---

## ✨ Features

- Copy CFrames across selected objects
- Batch copy `TextureID` values between MeshParts
- Simple dockable Studio panel
- Integrated undo history support
- Lightweight and fast workflow utility

---

## 📦 Current Utilities

### Copy CFrame

Copies the CFrame of the first selected object to every other selected object.

Useful for:
- Aligning parts quickly
- Matching camera positions
- Position syncing

---

### Copy TextureID

Copies the `TextureID` from the first selected `MeshPart` to all other selected `MeshPart` objects.

Useful for:
- Mass texturing
- Asset consistency
- Faster environment workflows

---

## 🚀 Installation

1. Clone or download the repository
2. Open Roblox Studio
3. Load the plugin into Studio
4. Enable the plugin from the Plugins tab

---

## 🖱 Usage

### Copy CFrame

1. Select multiple objects
2. Ensure the first selected object is the source
3. Press **Copy CFrame**

All selected objects will match the source object's CFrame.

---

### Copy TextureID

1. Select multiple MeshParts
2. Ensure the first selected MeshPart contains the desired texture
3. Press **Copy TextureID**

All selected MeshParts will inherit the source TextureID.

---

## 🧠 Technical Details

The plugin currently uses:
- `Toolbar`
- `DockWidgetPluginGui`
- `Selection`
- `ChangeHistoryService`
- `Tween/UI workflow integration`

---

## 📁 Project Structure

```text
QuickPanel
├── Main.server.lua
├── MainFrame
└── UI Components
```

---

## 🛠 Planned Features

- Material copying
- Color syncing
- Property batch editor
- Pivot utilities
- Multi-tool workflow presets
- Improved selection validation
- Better undo recording system

---

## 📜 License

MIT License — free to use, modify, and distribute.
