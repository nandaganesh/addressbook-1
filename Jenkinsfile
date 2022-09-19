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
                    sh "scp -o StrictHostKeyChecking=no server-script.sh admin@13.233.199.238:/home/ubuntu"
                    sh "ssh -o StrictHostKeyChecking=no admin@13.233.199.238 'bash ~/server-script.sh'"
                    sh "mvn package"
                    }
                }
            }
        } 
        
    }
}