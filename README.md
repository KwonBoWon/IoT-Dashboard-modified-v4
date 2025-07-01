# IoT-Dashboard

## Environment
node.js 20.x

### Install dependencies
```
$ npm install
```
### setting in env file (.env파일 수정)
```
NEXT_PUBLIC_APP_SERVER_URL={ server url } // 연결할 서버의 URL을 포트번호까지 입력한다.
NEXT_PUBLIC_GOOGLE_MAPS_API_KEY={ google map api key } // 이 부분은 수정하지 않는다.
```
### install package
```
npm install react-leaflet@^4 leaflet --legacy-peer-deps

npm install --save-dev @types/leaflet
```
### Build project
```
$ npm run build
```
### Start project
```
$ npm run start
```
### Start project as developer version
```
$ npm run dev
```


## resource setting
### tinyIoT 서버가 실행된 상태에서 진행

[resource_setting.sh](./resource_setting.sh)
1. resource_setting.sh 파일의 post 할 url을 현재 tinyIoT의 ip,port,CSEname 에 맞게 수정한다.
   - ex) 아래와 같은 curl 명령어의 첫 줄을 수정. 이후 모든 curl에 동일하게 적용하기.
![image](https://github.com/user-attachments/assets/e7d94ff4-8947-4141-9b68-41323f3ffe4f)

2. wsl에서 resource_setting.sh 파일의 경로로 이동
```
$ chmod +x resource_setting.sh
$ ./resource_setting.sh
```

## simulation
### resource setting을 한 상태에서 진행

[simulation2025.sh](simulation2025.sh)
1. simulation2025.cjs 파일의 post url을 현재 tinyIoT의 CSEname부분까지만 수정한다. 뒷부분은 resource부분이므로 수정하지 않는다.
2. simulation2025.cjs 파일의 경로로 이동
```
$ node simulation2025.cjs
```

## IoT-dashboard setting
1. 오른쪽 위 톱니바퀴 모양
2. setting 부분 수정. Baseurl은 포트번호까지만 입력한다.


