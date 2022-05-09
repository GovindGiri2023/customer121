pipeline {
    agent any
          stages {
              
              stage('Creating GIt Repo') {
                  steps {
                      
                      sh 'sudo sh gitbranch.sh'
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
