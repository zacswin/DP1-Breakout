#! /bin/sh

echo 'Downloading Unity 2017.3.1f pkg:'
curl --retry 5 -o Unity.pkg https://download.unity3d.com/download_unity/a9f86dcd79df/MacEditorInstaller/Unity-2017.3.0f3.pkg
if [ $? -ne 0 ]; then { echo "Download failed"; exit $?; } fi

# Run installer(s)
echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /
