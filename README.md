# sparkdemo
This is a demo project that uses Vagrant and Chef to spin up a CentOS 7 virtual machine with Jenkins and Apache Spark. If you run this on a web accessible machine with the correct ports open (i.e. 8080/tcp), you can configure a Github webhook (or Jenkins service in Github) to kick off the build in Jenkins to pull a demo repository then run a python unittest or nosetest on the Spark app code.