pipeline {
    agent {
        label 'madcap'
    }
    stages {
        stage('Building the Solution') {
            steps {
                checkout scm
                bat 'start cmd.exe /c madcap_build.bat'
                echo 'Success!!'
            }
        }
    }
}