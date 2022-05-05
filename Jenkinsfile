pipeline {
    agent any
          stages {
            stage('Staging') {
                  steps {
                      //sh 'sudo sh namespace.sh $NAME'
                     sh "sudo cat "namespace.yml" | sed "s/{{MYVARNAME}}/$NAME/g" | kubectl apply -f -"

                  } }      }
}
