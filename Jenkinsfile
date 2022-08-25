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
                sh 'sh delete_container.sh'
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && docker-compose up -d'
            }
        }
      }
    }