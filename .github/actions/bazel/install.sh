
ARCH='x86_64'
VERSION='5.3.2'
kernelName="$(uname -s)"
BAZEL_DOWNLOAD_PREFIX="https://github.com/bazelbuild/bazel/releases/download"


case "$kernelName" in
    Darwin*)
        installBazel=CommonSetup
        OS="darwin"
        ;;
    Linux*)
        installBazel=CommonSetup
        OS="linux"
        ;;
    *)
        installBazel=WindowsSetup
        OS="windows"
        ;;
esac

curl -fsSL ${BAZEL_DOWNLOAD_PREFIX}/${VERSION}/bazel-${VERSION}-installer-${OS}-${ARCH}.sh \
        -o bazel-installer.sh



if [[ $? != 0 ]]; then
    echo "Failed to download bazel installer: ${BAZEL_DOWNLOAD_PREFIX}/${VERSION}/bazel-${VERSION}-installer-${OS}-${ARCH}.sh"
    exit 1
fi

chmod +x bazel-installer.sh
sudo ./bazel-installer.sh
rm bazel-installer.sh