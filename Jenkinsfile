pipeline {
    agent any
          stages {
              stage('Creatin new repo') {
                    steps {
                          withCredentials([
                          usernamePassword(
                          credentialsId: "username_password_id",
                          passwordVariable: 'PASSWORD',
                          usernameVariable: 'USER'
                           )   ]) 
                        { 
                          sh 'sudo sh gitbranch.sh $USER $PASSWORD $NAME'
                          sh 'sudo sh git.sh $USER $PASSWORD $NAME $MAIL'
                          
                        }
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
