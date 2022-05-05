pipeline {
    agent any
          stages {
            stage('Staging') {
                  steps {
                      //sh 'sudo sh namespace.sh $NAME'
                     sh 'sudo cat "namespace.yml" | sudo sed "s/{{MYVARNAME}}/$NAME/g" | sudo kubectl apply -f -'

                  } }      }
}
