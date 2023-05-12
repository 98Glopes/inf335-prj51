pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages {
        stage('Build') {
            steps {
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
