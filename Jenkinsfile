pipeline {
    agent any
          stages {
              stage('Checkout') {
                  steps {
                      git branch: 'devlopment', credentialsId: '184375ae-eab0-46d1-82c5-82d9726345c1', url: 'https://github.com/govindgiri2021/jenkins.git'
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
