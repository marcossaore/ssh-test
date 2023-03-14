echo ${{ secrets.PROPS }} > .env
ssh -t ${{ secrets.HOST_NAME }} mkdir -p app
scp -r . $HOST_NAME:/root/app
ssh -t root@server -t 'cd app && npm i && npm start'