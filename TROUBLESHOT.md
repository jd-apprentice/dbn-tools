## 🌠 Troubleshot

### 🚫 Common problems and solutions

- requests module not found

```py
Traceback (most recent call last):
  File "/usr/bin/functions/usd-ars.py", line 4, in <module>
    import requests
ModuleNotFoundError: No module named 'requests'
```

We can make sure we have requests in our system with the following command:

```sh
pip3 show requests
```

If we don't have it, we can install it with the following command:

```sh
pip3 install requests==2.28.2
```

In case you don't have pip3 installed, you can install it with the following command:

```sh
sudo apt install python3-dev=3.10.6-1~22.04 python3-pip=22.0.2+dfsg-1ubuntu0.1
```

Then we can do the same as before:

```sh
pip3 install requests==2.28.2 \
    yt-dlp==2023.1.6
```

Then we may have to reboot the system to make sure the changes are applied.
