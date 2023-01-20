
pipeline {
    agent {
        docker {
            image 'mahadev9/docker_nvm'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    environment {
        HOME = '.'
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    credentialsId: 'ce217cb0-ca88-4c65-896c-b3022396e3bb',
                    url: 'https://github.com/mahadev9/jenkins_pipeline_test'
            }
        }
        stage('Install Dependencies') {
            steps {
                bash 'nvm use 14.14.0'
                sh 'node --version'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run test:ci'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker version'
                sh 'docker rm $(docker stop $(docker ps -a -q --filter ancestor=maitri --format="{{.ID}}")) || true'
                sh 'docker build --tag maitri .'
                sh 'docker run -d -p 5016:5016 maitri'
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
