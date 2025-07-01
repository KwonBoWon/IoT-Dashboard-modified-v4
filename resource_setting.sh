# === my_device1 생성 및 하위 구조 설정 ===

curl -X POST http://172.28.6.239:8080/TinyIoT \
  -H "X-M2M-Origin: Carrot" \
  -H "Content-Type: application/json;ty=2" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:ae": {"rn": "my_device1","api": "N.my_device1.app","rr": true,"srv": ["2a"]}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "temperature"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/temperature \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/temperature \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "humidity"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/humidity \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/humidity \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "voltage"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/voltage \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "energyConsumption"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/energyConsumption \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "current"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/current \
  -H "X-M2M-Origin: Carrot" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'



# my_bulb1 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: Carrot" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_bulb1"}}'

# my_bulb1/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/my_bulb1 \
  -H "X-M2M-Origin: Carrot" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'

# my_bulb1/bright 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/my_bulb1 \
  -H "X-M2M-Origin: Carrot" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "bright"}}'


# my_switch1 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1 \
  -H "X-M2M-Origin: CAdmin" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_switch1"}}'

# my_switch1/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device1/my_switch1 \
  -H "X-M2M-Origin: CAdmin" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'

# === my_device2 생성 및 하위 구조 설정 ===

curl -X POST http://172.28.6.239:8080/TinyIoT \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=2" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:ae": {"rn": "my_device2","api": "N.my_device2.app","rr": true,"srv": ["2a"]}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "temperature"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/temperature \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/temperature \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "humidity"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/humidity \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/humidity \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "voltage"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/voltage \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "energyConsumption"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/energyConsumption \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "current"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/current \
  -H "X-M2M-Origin: Cow" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'



# my_bulb2 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_bulb2"}}'

# my_bulb2/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/my_bulb2 \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'

# my_bulb2/bright 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/my_bulb2 \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "bright"}}'

# my_switch2 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2 \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_switch2"}}'

# my_switch2/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device2/my_switch2 \
  -H "X-M2M-Origin: Cow" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'




  # === my_device3 생성 및 하위 구조 설정 ===

curl -X POST http://172.28.6.239:8080/TinyIoT \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=2" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:ae": {"rn": "my_device3","api": "N.my_device3.app","rr": true,"srv": ["2a"]}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "temperature"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/temperature \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/temperature \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "humidity"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/humidity \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/humidity \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "location"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "voltage"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/voltage \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "energyConsumption"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/energyConsumption \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "current"}}'

curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/current \
  -H "X-M2M-Origin: Cow2" -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "data"}}'


# my_bulb3 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_bulb3"}}'

# my_bulb3/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/my_bulb3 \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'

# my_bulb3/bright 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/my_bulb3 \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "bright"}}'

# my_switch3 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3 \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "my_switch3"}}'

# my_switch3/status 컨테이너 생성
curl -X POST http://172.28.6.239:8080/TinyIoT/my_device3/my_switch3 \
  -H "X-M2M-Origin: Cow2" \
  -H "Content-Type: application/json;ty=3" \
  -H "Accept: application/json" \
  -H "X-M2M-RVI: 2a" \
  -d '{"m2m:cnt": {"rn": "status"}}'
