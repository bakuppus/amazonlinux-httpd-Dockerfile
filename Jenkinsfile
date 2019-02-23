pipeline {
    agent any
    
    stages {
        stage('Docker Version') {
            steps {
                sh 'docker version'
            }
        }

        stage('Docker images') {
            steps {
                sh 'docker images'
            }
        }


        stage('Artifactory configuration') {
           steps {
             script {
                def server = Artifactory.server 'Jfrog'
                def rtDocker = Artifactory.docker Jfrog: server
                server.bypassProxy = true
                def buildInfo = rtDocker.push '3.16.108.69:8081/kierandocker/hello-kieran', 'kierandocker'
                server.publishBuildInfo buildInfo
    }
  }
 }





    }
}
