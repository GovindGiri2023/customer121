pipeline {
    agent any
          
     stages {
            stage('Checkout code') {
               checkout scm
            }
         
            stage('Staging') {
     
                 sh 'kubectl apply -f service.yaml'
          
        }
     } 
}
