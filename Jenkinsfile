pipeline {
    agent any
          stages {
              stage('Checkout SCM') {
                   steps {
                      withCredentials([gitUsernamePassword(credentialsId: 'Git_hub_id', gitToolName: 'git-tool')]) {
                      sh 'git branch'
                     }
                   }
               }
              stage('Creating GIt Repo') {
                  steps {
                      
                      sh 'sudo sh gitbranch.sh $USER_NAME $GIT_TOKEN $REPO_NAME '
                  }
              }  
         
              stage('Change namespaces') {
                  steps {
                      
                      sh 'sudo sh namespace.sh $NAME $DOMAIN $PORTNUMBER'
                  }
              }  
              stage('New port number') {
                  steps {
                      
                      sh 'sudo sh SG_Update.sh $PORTNUMBER'
                  }
              }   
           }
    
}
