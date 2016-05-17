build:
	GOOS=linux GOARCH=amd64 go build -o ./gitmirror-amd64 ./gitmirror.go
	GOOS=linux GOARCH=amd64 go build -o ./setuphooks/setuphooks-amd64 ./setuphooks/setuphooks.go
	cat ssh-files/config.tmpl | sed "s/#CODECOMMIT_USER_NAME#/${CODECOMMIT_USER_NAME}/" > ssh-files/config
	docker build -t gitmirror-codecommit .
