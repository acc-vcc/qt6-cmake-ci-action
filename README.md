# Qt6 CMake CI Action

A GitHub Action that installs Qt6 using aqtinstall and builds CMake-based Qt6 projects on Linux, Windows, and macOS.

## Features

- Install Qt6 automatically using aqtinstall
- Cross-platform support: Linux, Windows, macOS
- CMake + Ninja build support
- Supports any Qt6 version (e.g., 6.2, 6.5, 6.6)
- Cache-friendly setup
- Ideal for CI pipelines for Qt6 desktop applications

## Usage

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
          modules: "qtbase qtdeclarative"

      - name: Configure
        run: cmake -B build -G Ninja

      - name: Build
        run: cmake --build build
