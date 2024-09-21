1. follow instructions on https://www.v2fly.org/ to install v2ray

    modify config.json with client config of ur shadowsocks server 

2. use apt to install proxychains, then append ur socks5 proxy into /etc/proxychains.config file.
3. **in another window** proxychains [cmd] 

** normal usage is above **

4. use **nohup** to keep process alive and run in background
5. add alias in .bashrc to define ur own command  to simplify the work.
    e.g., alias 'clash'='nohup /path/to/clash &' defined 'clash' as a user-defined command.
