[common]
server_addr = 118.190.39.178#公网服务器ip
server_port = 7000          #与服务端bind_port一致
auth_token = 000000         #认证的token

#公网通过ssh访问内部服务器
[ssh]
type = tcp               #连接协议
local_ip = 127.0.0.1     #内网服务器ip
local_port = 22          #ssh默认端口号
remote_port = 7070       #自定义的访问内部ssh端口号

#公网访问内部web服务器以http方式
[web]
type = http              #访问协议 http类型的内网穿透，必须设置vhost_http_port
local_port = 7771        #内网web服务的端口号
remote_port = 7771
#custom_domains = 118.190.39.178  #所绑定的公网服务器域名