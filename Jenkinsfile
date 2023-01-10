
pipeline {
    environment {
        HOME = '.'
    }
    stages {
        stage('Initialize agent for pipeline stages') {
            agent {
                docker {
                    image 'node:14.14.0'
                    args '-p 5010:5010'
                }
            }
            stages {
                stage('Clone') {
                    steps {
                        git branch: 'main',
                            credentialsId: '',
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
                stage('Start the server') {
                    steps {
                        sh 'npm run start'
                    }
                }
            }
        }
    }
    post {
        success {
            docker --version
        }
    }
}
