### Linux

Docker, Docker-compose 등 필요 소프트웨어 설치

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
git clone https://github.com/DCUSnSLab/DCU-Online-Judge-Deploy.git
```

이후 해당 경로로 이동한 뒤 아래 명령어 입력

```bash
docker-compose up -d
```

서비스 URL은 ```localhost:80``` 
초기 Admin 계정은 ```root```, 패스워드는 ```rootroot``` 입니다.

# Forked by
