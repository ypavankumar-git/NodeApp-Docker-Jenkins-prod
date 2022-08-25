pipeline{
    agent {label 'pavan-jenkins-hoster-instance-2'}
    //agent any
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        docker_creds_id = "e9aefd7f-157a-4320-9717-a00a33701190"
    }

    stages{
        stage('Pull and Deploy'){
            steps{
                script { 
                    sh 'sh delete_container.sh'
                    docker.withRegistry('', docker_creds_id ) { 
                        sh 'docker-compose up -d'
                    }
            }
        }
      }
    }
}