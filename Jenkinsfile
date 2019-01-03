pipeline {
    agent none
    stages {
        stage('Building the Solution') {
			agent {
				label 'madcap'
			}
            steps {
                sh 'echo test > test.txt'
                archiveArtifacts artifacts: 'test.txt', fingerprint: true
            }
        }
		stage('Deploying Build') {
			agent {
				label 'madcap-linux'
			}
            steps {
				step([  $class: 'CopyArtifact',
                        filter: 'test.txt',
                        fingerprintArtifacts: true,
                        projectName: '${JOB_NAME}',
                        selector: [$class: 'SpecificBuildSelector', buildNumber: '${BUILD_NUMBER}']
                ])
                sh 'cat test.txt'
			}
        }
    }
}