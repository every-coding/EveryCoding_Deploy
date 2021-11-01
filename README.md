### Linux

Docker, Docker-compose 설치

```bash
sudo apt-get update && sudo apt-get install -y vim python-pip curl git
pip install docker-compose
```

Docker 설치
```bash
sudo curl -sSL get.docker.com | sh
```

## 설치 과정

터미널에서 아래 명령어 입력

```bash
git clone -b 2.0 https://github.com/QingdaoU/OnlineJudgeDeploy.git
```

```bash
docker-compose up -d
```

설치 후 초기 Admin 계정은 ```root```, 패스워드는 ```rootroot``` 입니다.

## 定制

2.0 版将一些常用设置放到了后台管理中，您可以直接登录管理后台对系统进行配置，而无需进行代码改动。

若需要对系统进行修改或二次开发，请参照各模块的**README**，修改完成后需自行构建Docker镜像并修改`docker-compose.yml`

## 遇到了问题？

请参照: [http://docs.onlinejudge.me/](http://docs.onlinejudge.me/#/onlinejudge/faq) ，如有其他问题请入群讨论或提issue。
