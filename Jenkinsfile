pipeline {
  agent any


  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/amitsoni04/testproject.git'
       }
      }
    stage('build image') {
      steps {
        script {
          sh'docker build -t mylocalimage .'
           }
          }
         }
     stage('deploy') {
       steps {
         script {
           sh'''docker ps -q --filter name="localjenkin" | grep -q . && docker stop localjenkin && docker rm localjenkin || true'''
           sh'docker run -d --name localjenkin -p 8005:80 mylocalimage'
             }
            }
          }
        }
      }     

      
