# codebox-docker

Run from folder you wish to access via codebox
`docker run --name codebox -d -P -v $PWD:/workspace -e "CODEBOX_USERS=user1:pass1,user2:pass2" dvenske/codebox`

Change CODEBOX_USERS environment variable as desired.