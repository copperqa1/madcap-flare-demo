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
                echo 'Build Success!!'
                archiveArtifacts artifacts: '*.zip', fingerprint: true, onlyIfSuccessful: true 
            }
        }
		stage('Deploying Build') {
			agent {
				label 'madcap-linux'
			}
            steps {
				sh 'pwd'
				}
        }
    }
}