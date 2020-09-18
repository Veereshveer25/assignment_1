pipeline {
	agent none
  	stages {
		stage ('STAGE 1') {
		agent {label 'master'}
			steps {
				sh 'sleep 10'
			}	
		}
		stage ('STAGE 2') {
		agent {label 'node2'}
			steps {
				sh 'sleep 10'
			}	
		}
	}
}
