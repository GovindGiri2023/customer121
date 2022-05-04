pipeline {
    agent any
       step([$class: 'WsCleanup'])
          
     stages {
            stage('Checkout code') {
               checkout scm
            }
            stage('Staging') {
            steps {
                 sh 'kubectl apply -f service.yaml'
            }
        }
     } 
}
