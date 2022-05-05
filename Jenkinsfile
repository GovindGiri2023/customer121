pipeline {
    agent any
          stages {
            stage('Staging') {
                  steps {
                      //sh 'sudo sh namespace.sh $NAME'
                     sh 'sudo echo "namespace.yml" | sed "s/{{MYVARNAME}}/$NAME/g" | sudo kubectl apply -f -'

                  } }      }
}
