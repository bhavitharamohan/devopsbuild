pipeline {
    agent any

    environment {
        DOCKER_USER = "bhavidocker"
    }

    stages {
        stage('Build & Push') {
            steps {
                script {
                    if (env.BRANCH_NAME == "dev") {
                        sh "docker build -t ${DOCKER_USER}/dev:latest ."
                        sh "docker push ${DOCKER_USER}/dev:latest"
                    }
                    else if (env.BRANCH_NAME == "prod") {
                        sh "docker build -t ${DOCKER_USER}/prod:latest ."
                        sh "docker push ${DOCKER_USER}/prod:latest"
                    }
                }
            }
        }
    }
}
