pipeline {
    agent none
    stages {
        stage('COMPILE') {
            agent any
            steps {
                script {
                    echo "compile the code"
                }
            }
        }
        stage('TEST') {
            agent any
            steps {
                script {
                    echo "compile the code"
                }
            }
        }
        stage('PACKAGE') {
            agent any
            steps {
                script {
                    sshagent(['ssh-key']) {
                    echo "compile the code"
                    sh "scp -o StrictHostKeyChecking=no server-script.sh admin@3.6.126.180:/home/ubuntu"
                    sh "ssh -o StrictHostKeyChecking=no admin@3.6.126.180 bash ~/server-script.sh"
                    sh "mvn package"
                    }
                }
            }
        } 
        
    }
}