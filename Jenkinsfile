pipeline {
    agent {
        label 'madcap'
    }
    stages {
        stage('Building the Solution') {
            steps {
                checkout scm
                bat 'pwd'
                bat 'madbuild -project NewProject.flprj -target Book'
                bat 'dir'
                echo 'Success!!'
            }
        }
    }
}