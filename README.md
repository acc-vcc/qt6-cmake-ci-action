[![GitHub Marketplace](https://img.shields.io/badge/Marketplace-Qt6%20CMake%20CI%20Action-blue)](https://github.com/marketplace/actions/qt6-cmake-ci-action)

# Qt6 CMake CI Action

A GitHub Action that installs Qt6 using aqtinstall and builds CMake-based Qt6 projects **inside an Ubuntu-based container**.  
Works on all GitHub-hosted runners (Ubuntu, Windows, macOS), but Qt installation and builds run on Linux.

---

## Quick Start

```yaml
- uses: acc-cc/qt6-cmake-ci-action@v1
  with:
    qt-version: "6.6.1"
```

---

## 🔧 Inputs

|Name|Required|Description|
|-----|--------|-------------|
|qt-version|Yes|Qt version to install (e.g., 6.6.1)|
|modules|No|Space‑separated Qt6 add‑on modules (Qt6 core/GUI/QML require no modules)|

---

## Extended Documentation

Looking for more Qt tools, templates, and CI utilities?

👉 See the **Extended README** for additional resources and advanced usage:  
[Extended README](README_FULL.md)

---

## License
MIT License
