pipeline {
    agent any
          
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
