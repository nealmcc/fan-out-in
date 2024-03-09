test:
	go test -race -count=1 ./...

cover:
	go test -coverpkg=./... -coverprofile=coverage.out ./...
	go tool cover -func coverage.out
	go tool cover -html coverage.out
