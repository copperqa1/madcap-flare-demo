pipeline {
    agent {
        label 'madcap'
    }
    stages {
        stage('Building the Solution') {
            steps {
                checkout scm
                bat 'madcap_build.bat'
                echo 'Success!!'
            }
        }
    }
}