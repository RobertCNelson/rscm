Really Simple Cape Manager
====

```
Install 3.13-rc6-bone2
git clone git://github.com/RobertCNelson/rscm.git
cd ./rscm/
```

i2c-1 config 1: (BBB & BBW)
Pins: P9.18, P9.17
```
patch -p1 < ./3.13-bone/simple/enable-i2c-1.diff
```

i2c-1 config 2: (BBB & BBW)
Pins: P9.26, P9.24
```
patch -p1 < ./3.13-bone/simple/enable-i2c-1-alt-pins.diff
```

i2c-1 config 1 400 kHz: (BBB & BBW)
Pins: P9.18, P9.17
```
patch -p1 < ./3.13-bone/simple/enable-i2c-1-400kHz.diff
```

i2c-1 config 2 400 kHz: (BBB & BBW)
Pins: P9.26, P9.24
```
patch -p1 < ./3.13-bone/simple/enable-i2c-1-alt-pins-400kHz.diff
```

ttyO1: (BBB & BBW)
Pins: P9.24, P9.26
```
patch -p1 < ./3.13-bone/simple/enable-ttyO1.diff
```

ttyO2: (BBB & BBW)
Pins: P9.21, P9.22
```
patch -p1 < ./3.13-bone/simple/enable-ttyO2.diff
```

ttyO4: (BBB & BBW)
Pins: P9.13, P9.11
```
patch -p1 < ./3.13-bone/simple/enable-ttyO4.diff
```

ttyO5: (BBW)
Pins: P8.37, P8.38
```
patch -p1 < ./3.13-bone/simple/enable-ttyO5.diff
```

Build:
```
sudo ./build.sh ; sudo reboot
```
