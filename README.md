##  Overview

Minimal node-red implementation repo for dokku. 

##  Usage

1. Create dokku app on dokku - on your dokku server
    ```
    dokku apps:create noder
    ```
2. Add remote origin `dokku` - local
    ```
    git remote add dokku dokku@alliot.xyz:noder
    ```
3. Git push to to remote(dokku) -  local
    ```
    git push dokku master
    ```
4. Change password  - on your dokku server
   ``` 
   dokku enter noder web node ./setpasswd.js $user $pass
   ``` 