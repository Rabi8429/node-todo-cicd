pipeline{
    agent any
        stages{
            stage('Github checkout') {
                steps{
                    git 'https://github.com/Rabi8429/node-todo-cicd.git'
                }
                
            }
            stage('Build and Test') {
                steps{
                    sh 'docker build . -t rabi4450/node-todo-test'
                }
                
            }
            stage('Docker hub push') {
                steps{
                    withCredentials([usernamePassword(credentialsId: 'dockerhubpwd', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                     echo "Using username ${USERNAME} with password ${PASSWORD}"
                    
                 }
          
                    sh 'docker push rabi4450/node-todo-test'
                }
                
            }
            stage('Deploy') {
                steps{
                   sh "docker-compose down && docker-compose up -d" 
                }
            }            
        }
} 
