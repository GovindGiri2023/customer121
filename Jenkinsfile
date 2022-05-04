pipeline {
  agent any
   stages {
    stage('Docker Build') {
      steps {
        sh "docker build -t kmlaydin/podinfo:${env.BUILD_NUMBER} ."
      }
    }
    
    stage('Apply Kubernetes Files') {
      steps {
          sh 'kubectl apply -f service.yaml' 
      }
    }    
}
