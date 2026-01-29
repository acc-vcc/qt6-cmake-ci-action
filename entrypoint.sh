#!/bin/bash
set -e

QT_VERSION="$1"
MODULES="$2"

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
echo "/opt/Qt/${QT_VERSION}/gcc_64/bin" >> $GITHUB_PATH

echo "Qt6 installation completed."
