pipeline {
  agent any
    
    stage('Apply Kubernetes Files') {
      steps {
          sh 'kubectl apply -f service.yaml' 
      }
    }    
}
