pipeline {
    agent any
          stages {
              stage('Checkout') {
                  steps {
                     
                      sh 'sudo sh git.sh $ORIGIN $BRANCH'
                  }
              }
              stage('Staging') {
                  steps {
                      
                      sh 'sudo sh namespace.sh $NAME'
                  }
              }   
           }
}
