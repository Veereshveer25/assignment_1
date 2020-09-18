pipeline {
	agent none
        stages {
		stage ('STAGE 1') {
		agent {label 'node1'}
			steps {
				sh '''#!/bin/bash
				git pull https://github.com/Veereshveer25/C-Project.git
				if [ $? -ne 0 ] ; then
				git clone https://github.com/Veereshveer25/C-Project.git
				fi
				cd C-Project
				make ABC.exe
				if [ $? -eq 0 ] ; then
				echo " Build is success "
				scp ABc.exe ec2-user@3.135.246.52:/home/ec2-user/apache-tomcat-8.5.58/webapps
				else
				echo " Build is failed "
				fi
				'''
			}	
		}
		stage ('STAGE 2') {
		agent {label 'node2'}
			steps {
				sh '''#!/bin/bash
				git pull https://github.com/Veereshveer25/C-Project.git
				if [ $? -ne 0 ] ; then
				git clone https://github.com/Veereshveer25/C-Project.git
				fi
				cd C-Project
				mvn clean install
				if [ $? -eq 0 ] ; then
				echo " Build is success "
				scp target ec2-user@3.135.246.52:/home/ec2-user/apache-tomcat-8.5.58/webapps
				else
				echo " Build is failed "
				fi
				'''
			}	
		}
	}
}
