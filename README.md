
1. git clone https://github.com/puppe1990/issue-webhook-github.git
2. cd test-zaitt
3. sudo docker-compose build
4. sudo docker-compose up
5. sudo docker-compose run web rake db:create
6. sudo docker-compose run web rails db:migrate
7. I use ngrock to test. Register your account and create a link to register in your Webhook Github Repository.
8. On change or create your issue will be saved in this system.
