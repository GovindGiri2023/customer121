pipeline {
    agent any
       step([$class: 'WsCleanup'])
          stage('Checkout code') {
               checkout scm
            }
     stages {
            stage('Staging') {
            steps {
                 sh 'kubectl apply -f service.yaml'
            }
        }
     } 
}
