# Qt6 CMake CI Action

A GitHub Action that installs Qt6 using aqtinstall and builds CMake-based Qt6 projects on Linux, Windows, and macOS.

This action removes the complexity of setting up Qt6 in CI environments.  
No more manual installers, platform‑specific scripts, or version‑dependent quirks.  
Just specify the Qt version, and your CI pipeline is ready to build.

---

## 🚀 Why use this Action?

Setting up Qt6 in CI is surprisingly tedious:

- Different installers for each OS  
- Qt6 module structure differs from Qt5  
- aqtinstall requires correct module names  
- CMake + Ninja setup varies across platforms  
- Qt versions behave differently depending on OS and architecture  

**Qt6 CMake CI Action solves all of this automatically.**

- Unified Qt6 installation across Linux, Windows, macOS  
- CMake + Ninja ready out of the box  
- Supports all Qt6 versions (6.2–6.6 and beyond)  
- Optional add‑on modules (Qt6‑compatible names only)  
- Ideal for Qt6 desktop CI pipelines  

---

## 📦 Features

- Automatic Qt6 installation using aqtinstall  
- Cross‑platform: Linux, Windows, macOS  
- CMake + Ninja build support  
- Supports all Qt6 versions (6.2–6.6 and beyond)  
- Optional Qt6 add‑on modules  
- Fast, cache‑friendly setup  

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

## 🔧 Inputs

|Name	|Required|	Description|
|-----|--------|-------------|
|qt-version|	Yes|	Qt version to install (e.g., 6.6.1)|
|modules| No| Space‑separated Qt6 add‑on modules (Qt6 core/GUI/QML require no modules)|

---

## 📄 Requirements
- GitHub-hosted runners (Ubuntu, Windows, macOS)
- CMake and Ninja (installed automatically on Ubuntu)

---

## 📚 More Qt Tools
If you are looking for additional Qt development templates, CI tools,
or ready‑to‑use project starters, more resources are available here:

👉 https://acc-vcc.itch.io

---

## License
MIT License
