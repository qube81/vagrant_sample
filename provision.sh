#!/usr/bin/env bash

echo 'start!'

apt-get update

apt-get install -y apache2 mysql-client php5 libapache2-mod-php5 ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev

# setup ruby
update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.1 400 --slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby1.9.1.1.gz --slave /usr/bin/ri ri /usr/bin/ri1.9.1 --slave /usr/bin/irb irb /usr/bin/irb1.9.1 --slave /usr/bin/rdoc rdoc /usr/bin/rdoc1.9.1

gem install middleman --verbose --no-ri --no-rdoc

rm -rf /var/www
mkdir -p /vagrant/public

ln -fs /vagrant/public /var/www

# sample file
echo "<?php phpinfo();" > /vagrant/public/index.php

cd /vagrant/public
middleman init
echo 'gem "rb-inotify"' >> Gemfile
echo 'gem "therubyracer"' >> Gemfile
echo 'gem "slim"' >> Gemfile

bundle update
# middleman server