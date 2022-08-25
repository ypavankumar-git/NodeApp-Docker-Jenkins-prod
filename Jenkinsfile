pipeline{
    agent {label 'pavan-jenkins-hoster-instance-2'}
    //agent any
    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        doc_creds = credentials("e9aefd7f-157a-4320-9717-a00a33701190")
    }

    stages{
        stage('pull jenkins image and deploy'){
            steps{
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && docker-compose up -d'
                sh 'sh delete_container.sh'
                //sh 'docker-compose up -d'
                //&& docker pull ypavankumar123/nodeapp:latest && docker pull ypavankumar123/mysql:latest
            }
        }
      }
    }