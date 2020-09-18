pipeline {
	agent none
        stages {
		stage ('STAGE 1') {
			   agent { label 'node1_test_c'}
			steps {
				echo 'This is node1_test_c node with STAGE 1'
				sh ''' #!/bin/bash
				git pull https://github.com/Veereshveer25/C-Project.git
				if [ $? -ne 0 ] ; then
				git clone https://github.com/Veereshveer25/C-Project.git
				fi
				cd C-Project
				make clean target
				if [ $? -eq 0 ] ; then
				echo " Build is success "
				else
				echo " Build is failed "
				fi
				'''
			}	
		}
		
	}
}
