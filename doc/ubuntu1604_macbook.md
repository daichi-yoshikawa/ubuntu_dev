How to install wi-fi driver.
============================
1. Make bootable USB stick for Ubuntu16.04.
2. Install Ubuntu into MacBookPro 2014Mid, Retina Display.
3. Start installed Ubuntu on MacBookPro.
4. Copy necessary deb files from the USB stick.
   $ cp /pool/main/d/dkms/*.deb ~/
   $ cp /pool/restricted/b/bcmwl/*.deb ~/
5. Execute dpkg and install drivers.
   $ sudo dpkg -i ~/*.deb
