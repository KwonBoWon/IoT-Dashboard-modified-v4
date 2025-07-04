# IoT-Dashboard

<br>

TinyIoT 플랫폼의 데이터를 그래프로 시각화하는 기능을 제공한다. TinyIoT 서버와와 연동하여 시간대별로 데이터를 그래프 추세로 알 수 있다.

<br>

# system architecture

<br>

![image](https://github.com/user-attachments/assets/72008ba9-d3b6-46ed-abf4-2bdac94d2fd8)

<br>

## TinyIoT 설치 및 실행 방법

<br>

1. Clone repository
   https://github.com/seslabSJU/tinyIoT.git
```
git clone https://github.com/seslabSJU/tinyIoT.git
```

<br>

2. TinyIoT repository Readme에 따라 설치 및 실행을 진행한다.
      
- config.h 에서 SERVER_IP 와 CSE_BASE_RI 부분만 아래와 같이 수정한다.
- SERVER_IP : tinyIoT 가 실행될 server IP
- CSE_BASE_RI : "TinyIoT"
  
![image](https://github.com/user-attachments/assets/d3febe6d-ef0b-4872-bb46-5d8d10d7fec9)

   
3. ACOP 설정을 다음과 같이 전부 허용한다.

![image](https://github.com/user-attachments/assets/621bb794-7dcc-4703-a732-95452d42b094)

<br>   

4. COAP 설정을 허용한다.

![image](https://github.com/user-attachments/assets/11bb9152-c886-4320-b04a-0ddd7f54aaa3)

<br>

5. TinyIoT 서버를 실행한다. (TinyIoT Readme 참고하여 진행)

<br>

# Installation

<br>

## Environment
node.js 20.x

<br>

### Install dependencies
```
$ npm install
```

<br>


### setting in env file (.env파일 수정)
```
NEXT_PUBLIC_APP_SERVER_URL={ server url } // 연결할 서버의 URL을 포트번호까지 입력한다.
NEXT_PUBLIC_GOOGLE_MAPS_API_KEY={ google map api key } // 이 부분은 수정하지 않는다.
```

<br>


### install package
```
npm install react-leaflet@^4 leaflet --legacy-peer-deps

npm install --save-dev @types/leaflet
```

<br>

### Start project as developer version (현재 develop 버전만 제공)
```
$ npm run dev
```

<br>

## resource setting

<br>

### tinyIoT 서버가 실행된 상태에서 진행

<br>

[resource_setting.sh](./resource_setting.sh)
1. resource_setting.sh 파일의 post 할 url을 현재 tinyIoT의 ip,port,CSEname 에 맞게 수정한다.
   - vscode 에서 Ctrl + h 을 사용하여 한 번에 변경 추천.
   - ex) 아래와 같은 curl 명령어의 첫 줄을 수정. 이후 모든 curl에 동일하게 수정하여 저장.
![image](https://github.com/user-attachments/assets/e7d94ff4-8947-4141-9b68-41323f3ffe4f)

<br>

2. wsl에서 resource_setting.sh 파일의 경로로 이동
```
$ chmod +x resource_setting.sh
```
```
$ ./resource_setting.sh
```

<br>

## simulation

<br>

### resource setting을 한 상태에서 진행

<br>

[simulation2025.cjs](simulation2025.cjs)
1. simulation2025.cjs 파일의 post url을 현재 tinyIoT의 CSEname부분까지만 수정한다. 뒷부분은 resource부분이므로 수정하지 않는다.
   ex) url 부분을 수정. 이후 모든 url을 동일하게 수정하여 저장.
   - vscode 에서 Ctrl + h 을 사용하여 한 번에 변경 추천.
   ![image](https://github.com/user-attachments/assets/7c84c70f-00f6-4e99-9f3c-70bf760c0902)

<br>

2.. simulation2025.cjs 파일의 경로로 이동
```
$ node simulation2025.cjs
```

<br>

## IoT-dashboard setting
1. 오른쪽 위 톱니바퀴 모양
2. Baseurl을 현재 TinyIoT 서버의 포트번호까지만 입력한다.

<br>

# 실행 화면

<br>

![image](https://github.com/user-attachments/assets/c156fb1b-bf36-4dd3-8538-15e720c130b8)

<br>

![image](https://github.com/user-attachments/assets/7aeb51fb-6557-4526-9b31-5eaba797ccc0)


