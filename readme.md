#Installation
In terminal, copy/paste the following to create a ```ubin``` (user bin) folder if it doesn't exist already and add to paths.
```
sudo mkdir /usr/ubin
sudo chown $USER /usr/ubin
echo "export PATH=\"/usr/ubin:\$PATH\"" >> ~/.profile
```

Then move the ```calc.php``` and ```calc``` file over to ```/usr/ubin/``` and make sure ```calc``` is executable by ```chmod +x /usr/ubin/calc```