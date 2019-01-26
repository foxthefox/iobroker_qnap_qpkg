# iobroker_qnap_qpkg
ioBroker package for the installation on QNAP NAS

## installation requirements
* QTS 4.3.3 firmware (tested on this with TS-453A and 453PRO, may work even on lower version)
* nodeJS minimum version 4 (to be installed before this package)

## how to install
1. Download the iobroker_qnap.qpkg
2. Install via APP Center

## start/stop/deinstall
Start from the ioBroker icon
Stop from the ioBroker icon
Remove the package via ioBroker icon

## known issues
after reboot the link from /root/.node-gyp to /share/root/.node-gyp gets lost, which can result in memory problems for the root folder when adapters are installed (and need compilation) and gets announced in the QNAP desktop.
The link has to be renewed via

new install routine not implemented
curl -sL https://raw.githubusercontent.com/ioBroker/ioBroker/stable-installer/installer.sh | bash -


```javascript
ln -s /share/homes/root/.node-gyp /root/.node-gyp
```

same for .npm

