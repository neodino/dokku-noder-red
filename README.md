##  Overview

Simple node-red deployment for dokku. 

##  Usage

1. Create dokku app on dokku - on your dokku server
    ```
    dokku apps:create noder
    ```
2. Mount persistent volume
   ```
   dokku storage:mount noder /var/lib/dokku/data/storage/noder:/data
   ```
3. Add remote origin `dokku` - execute locally
    ```
    git remote add dokku dokku@alliot.xyz:noder
    ```
4. Git push to to remote(dokku) -  execute locally
    ```
    git push dokku master
    ```
5. Change password  - execute on your dokku server
   ``` 
   dokku enter noder web node /setpassword.js $user $pass
   ``` 
6. Restart dokku app.
   ```
   dokku ps:restart noder
   ``` 