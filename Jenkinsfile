node {
    stage("Checkout") {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'git@github.com:mulesoft-labs/check-chromedriver-updates.git']]])
    }

    stage("Execute") {
        sh("ls -ltrah")
        sh("./check-chromedriver-updates/check.sh")
    }
}
