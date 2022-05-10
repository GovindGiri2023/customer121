pipeline {
    agent any
          stages {
              stage('Creating new Branch') {
                   steps {
                      withCredentials([gitUsernamePassword(credentialsId: 'Git_hub_id', gitToolName: 'git-tool')]) {
                      sh 'curl https://api.github.com/user/repos -d '{"name":"'$NAME'"}''
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
