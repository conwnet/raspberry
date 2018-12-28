# raspberry

## autossh

使用 autossh 和 ssh -R 实现内网穿透，提供在外部访问内网树莓派的能力（需要有公网 ip 的服务器）

修改 autossh.sh 为适合自己的配置

autossh -M 55555 -qTfnN -R 服务器端口1:127.0.0.1:本机端口1 服务器端口2:127.0.0.1:本机端口2 -i 私钥文件 用户名@服务器地址

~~~
$ cp autossh/autossh.sh /etc/init.d/autossh
$ update-rc.d autossh defaults
$ update-rc.d autossh enable
~~~

