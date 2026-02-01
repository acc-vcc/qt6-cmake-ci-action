# Qt6 CMake CI Action

A GitHub Action that installs Qt6 using aqtinstall and builds CMake-based Qt6 projects **on Linux**.  
The Action runs inside an Ubuntu-based container, regardless of the runner OS.

This action removes the complexity of setting up Qt6 in CI environments.  
No more manual installers, module lookups, or version‑dependent quirks.  
Just specify the Qt version, and your CI pipeline is ready to build.

---

## Quick Start

```yaml
- uses: acc-cc/qt6-cmake-ci-action@v1
  with:
    qt-version: "6.6.1"
```

---

# Extended Documentation

If you're looking for more Qt tools, templates, and CI utilities,
you can find the full collection here:

🔗 https://acc-vcc.itch.io

---

## 🚀 Why use this Action?

Setting up Qt6 in CI is surprisingly tedious:

- Qt6 module structure differs from Qt5  
- aqtinstall requires correct module names  
- CMake + Ninja setup must be configured manually  
- Qt versions behave differently across releases  

**Qt6 CMake CI Action solves all of this automatically for Linux-based CI pipelines.**

- Automatic Qt6 installation using aqtinstall  
- Runs on any GitHub-hosted runner (Ubuntu, Windows, macOS)  
- Builds always run inside an Ubuntu container  
- Supports all Qt6 versions (6.2–6.6 and beyond)  
- Optional add‑on modules  
- Fast, cache‑friendly setup  

---

## 🛠 Usage

```yaml
name: Build Qt6 Project

on: [push, pull_request]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Install Qt6
        uses: acc-cc/qt6-cmake-ci-action@v1
        with:
          qt-version: "6.6.1"
          modules: ""  # Qt6 core/GUI/QML require no modules

      - name: Configure
        run: cmake -B build -G Ninja

      - name: Build
        run: cmake --build build
```

---

## 🔧 Inputs

|Name|Required|Description|
|-----|--------|-------------|
|qt-version|Yes|Qt version to install (e.g., 6.6.1)|
|modules|No|Space‑separated Qt6 add‑on modules (Qt6 core/GUI/QML require no modules)|

---

## 📄 Requirements
- GitHub-hosted runners (Ubuntu, Windows, macOS)
- CMake and Ninja (installed automatically on Ubuntu container)

---

## 📚 More Qt Tools

👉 https://acc-vcc.itch.io

---

## License
MIT License
