pipeline {
    agent none
    stages {
        stage('Building the Solution') {
			agent {
				label 'madcap'
			}
            steps {
                //checkout scm
                //bat 'madcap_build.bat'
                //echo 'Build Success!!'
				sh 'mkdir archive'
                sh 'echo test > archive/test.txt'
                zip zipFile: 'test.zip', archive: false, dir: 'archive'
                archiveArtifacts artifacts: 'test.zip', fingerprint: true
            }
        }
		stage('Deploying Build') {
			agent {
				label 'madcap-linux'
			}
            steps {
				step([  $class: 'CopyArtifact',
                        filter: 'test.zip',
                        fingerprintArtifacts: true,
                        projectName: '${JOB_NAME}',
                        selector: [$class: 'SpecificBuildSelector', buildNumber: '${BUILD_NUMBER}']
                ])
				unzip zipFile: 'test.zip', dir: './archive_new'
                sh 'cat archive_new/test.txt'
				//echo "Deploy Success!!"
            }
        }
    }
}