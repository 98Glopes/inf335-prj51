pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
                git 'git@github.com:98Glopes/inf335-prj51.git'
                sh "mvn Dmaven.test.failure.ignore=true clean package"

            }
            
            post {
                success {
                    junit '**/target/surefire-reports/TEST-*.xml'
                    archuveArtifacts 'target/*.jar'
                }
            }
        }
    }
}
