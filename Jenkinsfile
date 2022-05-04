pipeline {
    agent any
          stages {
            stage('Staging') {
                  steps {
                      sh 'sudo kubectl apply -f service.yaml'
                  } }      }
}
