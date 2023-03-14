echo ${{ secrets.PROPS }} > .env
ssh -t ${{ secrets.HOST_NAME }} 'bash -i -c "mkdir -p app"'
scp -r . $HOST_NAME:/root/app
ssh -t root@server -t 'bash -i -c "cd app && npm i && npm start"'