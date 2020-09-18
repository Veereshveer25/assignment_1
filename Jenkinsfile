pipeline {
	agent none
 
	stages {
		stage ('Make and Maven') {
			parallel {
				stage ('makefile') {
					agent { label 'node1' }
					steps { 
						echo 'This is node1 with STAGE 1'
						sh 'sleep 10'
					}	
				}
				stage ('maven') {
					agent { label 'node2' }
					steps {
						echo 'This is node2 with STAGE 1'
						sh 'sleep 10'
					}	
				}
			}
		}
	}
}
