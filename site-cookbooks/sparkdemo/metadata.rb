name             'sparkdemo'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures sparkdemo'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'jenkins'
depends 'apache_spark'
depends 'git'
depends 'python'
depends 'sudo'