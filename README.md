# docker-exercise

## Download repo
```
git clone git@github.com:sandy230207/docker-exercise.git
```
變換路徑至 **docker-exercise**


## Edit `go.Dockerfile`
1. 指定 image 為 `golang:1.15-alpine`
2. 指定工作目錄為 `/go-web`
3. 將 `main.go` 移至 `/go-web`
4. 將 main.go 編譯為 binary (file name: web): `go build -o web main.go`
5. 設定環境變數 `FIRST_NAME` = `go`
6. 宣告 container 用的 port 為 `8000`
7. 指定 container 啟動後執行 web: `./web`

## Build the image
```
make build
```
or
```
docker build \
    -f go.Dockerfile \
    -t go-web:exercise .
```

## Run the container
```
make run
```
or
```
docker run -d \
    --name web \
    -p 8000:8000 \
    go-web:exercise
```
