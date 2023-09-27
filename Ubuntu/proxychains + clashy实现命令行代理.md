1. download and config clashy with [this toturial](https://codeswift.top/posts/clash-linux/) or [this](https://segmentfault.com/a/1190000041862051)
    we can just do the basic config and run clashy in one cmd window, then run another cmd window to do other things. :sleepy:lazy warning

2. use apt to install proxychains, then append ur socks5 proxy into /etc/proxychains.config file.
3. **in another window** proxychains [cmd] 

** normal usage is above **

4. use **nohup** to keep process alive and run in background
5. add alias in .bashrc to define ur own command  to simplify the work.
    e.g., alias 'clash'='nohup /path/to/clash &' defined 'clash' as a user-defined command.
