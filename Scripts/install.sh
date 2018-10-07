#! /bin/sh

echo 'Downloading Unity 2017.3.1f pkg:'
curl --retry 5 -o Unity.pkg http://download.unity3d.com/download_unity/fc1d3344e6ea/MacEditorInstaller/Unity-2017.3.1f1.pkg
if [ $? -ne 0 ]; then { echo "Download failed"; exit $?; } fi

# Run installer(s)
echo 'Installing Unity.pkg'
sudo installer -dumplog -package Unity.pkg -target /
