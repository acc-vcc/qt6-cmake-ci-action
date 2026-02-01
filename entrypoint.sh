#!/bin/bash
set -e

QT_VERSION="$1"
MODULES="$2"
SOURCE_DIR="$3"

echo "Installing Qt ${QT_VERSION}..."
echo "Modules: ${MODULES}"

# Install Qt using aqtinstall
if [ -n "${MODULES}" ]; then
    python3 -m aqt install-qt linux desktop "${QT_VERSION}" --modules ${MODULES} -O /opt/Qt
else
    python3 -m aqt install-qt linux desktop "${QT_VERSION}" -O /opt/Qt
fi

echo "Qt installed at /opt/Qt"

# Add Qt to PATH
export PATH="/opt/Qt/${QT_VERSION}/gcc_64/bin:${PATH}"
export CMAKE_PREFIX_PATH="/opt/Qt/${QT_VERSION}/gcc_64"

echo "Qt6 installation completed."

# Move to workspace (GitHub automatically mounts it)
cd /github/workspace

# Move to source directory (default ".")
cd "${SOURCE_DIR}"

# Check CMakeLists.txt
if [ ! -f CMakeLists.txt ]; then
    echo "Error: CMakeLists.txt not found in ${SOURCE_DIR}"
    exit 1
fi

# Configure
rm -rf build
if ! cmake -B build -G Ninja; then
    echo "Ninja not available, falling back to default generator"
    cmake -B build
fi

# Build
cmake --build build

# Copy artifacts back to host workspace
cp -r build "/github/workspace/build"
