
pipeline {
    agent { dockerfile }
    environment {
        HOME = '.'
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                    credentialsId: '5a977687-4cc0-4741-86fc-a07c7d41b122',
                    url: 'https://github.com/mahadev9/jenkins_pipeline_test'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'node --version'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'npm run test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        // stage('Start the server') {
        //     steps {
        //         sh 'npm run start'
        //     }
        // }
    }
}
