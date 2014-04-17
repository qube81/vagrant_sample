apache 2.4
php5.5
ruby1.9.3
middleman

public 以下がDocumentRoot

とりあえずここで 
$ vagrant up 
すればlocalhost:8080 でPHP serverが立ち上がる


middlemanを動かす
$ vagrant ssh
$ cd /var/www
$ middleman server

localhost:4567 でmiddlemanが立ち上がる
