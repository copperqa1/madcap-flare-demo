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
				zip zipFile: 'NewProject.zip', archive: false, dir: 'Output\\user\\Book'
                archiveArtifacts artifacts: '*.zip', fingerprint: true, onlyIfSuccessful: true 
            }
        }
		stage('Deploying Build') {
			agent {
				label 'madcap-linux'
			}
            steps {
				step([  $class: 'CopyArtifact',
                        filter: 'NewProject.zip',
                        fingerprintArtifacts: true,
                        projectName: '${JOB_NAME}',
                        selector: [$class: 'SpecificBuildSelector', buildNumber: '${BUILD_NUMBER}']
                ])
				unzip zipFile: 'NewProject.zip'
				echo "Deploy Success!!"
            }
        }
    }
}