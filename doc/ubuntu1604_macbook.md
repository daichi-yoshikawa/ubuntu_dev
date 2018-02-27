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

Sometimes the driver get not to work well
because of kernel updates.
https://unix.stackexchange.com/questions/175810/how-to-install-broadcom-bcm4360-on-debian-on-macbook-pro

Just use kernel-4.10 instead of 4.13 !