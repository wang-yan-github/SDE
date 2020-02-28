- 软件开发环境

	软件开发环境(Software Development Environment，SDE)是指在基本硬件和宿主软件的基础上，为支持系统软件和应用软件的工程化开发和维护而使用的一组软件，简称SDE。它由软件工具和环境集成机制构成，前者用以支持软件开发的相关过程、活动和任务，后者为工具集成和软件的开发、维护及管理提供统一的支持。
# 启动
docker-compose -f docker/mysql.yml up -d
# 结束
docker-compose -f docker/mysql.yml down
#停止容器
docker-compose stop
#销毁容器服务
docker-compose down
#重启容器
docker-compose restart
#启动容器
docker-compose start