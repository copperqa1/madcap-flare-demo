pipeline {
    agent none
    stages {
        stage('Building the Solution') {
			agent {
				label 'madcap'
			}
            steps {
                checkout scm
                bat 'madcap_build.bat'
                echo 'Success!!'
            }
        }
    }
}