Really Simple CapeManager
====

```
Install 3.13-rc6-bone2
git clone git://github.com/RobertCNelson/rscm.git
cd ./rscm/
```

Serial Capes:

Enable tty01: (BBB & BBW)
```
patch -p1 < ./3.13.0-rc6-bone2/patches/enable-ttyO1.diff
```

Enable tty02: (BBB & BBW)
```
patch -p1 < ./3.13.0-rc6-bone2/patches/enable-ttyO2.diff
```

Enable tty04: (BBB & BBW)
```
patch -p1 < ./3.13.0-rc6-bone2/patches/enable-ttyO4.diff
```

Enable tty05: (BBW)
```
patch -p1 < ./3.13.0-rc6-bone2/patches/enable-ttyO5.diff
```

Build:
```
sudo ./build.sh ; sudo reboot
```
