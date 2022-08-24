# CutyCapt-docker

## build docker:
```bash
docker build -t cutycapt-docekr .
```

### start docker:
```bash
docker run -d --name cutycapt -v /tmp:/tmp cutycapt-docekr
```

### capture web:
```bash
docker exec cutycapt xvfb-run --server-args="-screen 0, 1024x768x24" CutyCapt --url=http://www.yahoo.com --out=/tmp/yahoo.png

ll /tmp/

```
