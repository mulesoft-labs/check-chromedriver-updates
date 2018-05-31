node {
    stage("Checkout") {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'git@github.com:mulesoft-labs/check-chromedriver-updates.git']]])
    }

    stage("Execute") {
        withCredentials([[$class: 'StringBinding', credentialsId: 'slack-webhook', variable: 'SLACK_WEBHOOK']]) {
            sh("./check.sh")
        }
    }
}
