[common]

# frp服务端和客户端通过bind_port端口进行认证的token 
privilege_token=000000

# 指定frp内网穿透服务器端监听的IP地址 
bind_addr = 0.0.0.0

# 与客户端绑定的进行通信的端口 
bind_port = 7000

# 访问客户端web服务自定义的端口号 
vhost_http_port = 7771

# 访问客户端web服务自定义的端口号 
vhost_https_port = 7443

# 指定 Dashboard 的监听的 IP 地址
dashboard_addr = 0.0.0.0

# 指定 Dashboard 的监听的端口
dashboard_port = 7500

# 指定访问 Dashboard 的用户名
dashboard_user = admin

# 指定访问 Dashboard 的端口
dashboard_pwd = admin