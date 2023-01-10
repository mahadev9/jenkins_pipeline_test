
pipeline {
    agent any
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
                            credentialsId: 'ce217cb0-ca88-4c65-896c-b3022396e3bb',
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
                        sh 'npm run test:ci'
                    }
                }
                stage('Build') {
                    steps {
                        sh 'npm run build'
                    }
                }
            }
        }
    }
    post {
        success {
            sh 'docker version'
        }
    }
}
