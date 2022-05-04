pipeline {
    agent any
          stages {
            stage('Staging') {
                  steps {
                      sh 'kubectl apply -f service.yaml'
                  } }      }
}
