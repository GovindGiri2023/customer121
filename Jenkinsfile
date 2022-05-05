pipeline {
    agent any
          stages {
              stage('Checkout') {
                  steps {
                      git branch: 'lts-1.532', credentialsId: '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', url: 'https://github.com/govindgiri2021/jenkins.git'
                  }
              }
              stage('Staging') {
                  steps {
                      sh 'sudo sh git.sh $ORIGIN $BRANCH'
                      //sh 'sudo sh namespace.sh $NAME'
                  }
              }   
           }
}
