pipeline{
    agent {label 'pavan-jenkins-hoster-instance-2'}

    environment{
        PATH = "/usr/local/bin:${env.PATH}"
        doc_creds = credentials("e9aefd7f-157a-4320-9717-a00a33701190")
    }

    stages{
        stage('pull jenkins image and deploy'){
            steps{
                sh 'docker login -u $doc_creds_USR -p $doc_creds_PSW && docker pull ypavankumar123/nodeapp-jenkins:nodeappimage'
                sh 'ls -a'
                sh 'delete_container.sh'
                sh 'docker run  --name nodeappcontainer -p 8081:8081 ypavankumar123/nodeapp-jenkins:nodeappimage'
            }
        }
      }
    }

