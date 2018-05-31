node {
    stage("Checkout") {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'git@github.com:mulesoft-labs/check-chromedriver-updates.git']]])
    }

    stage("Execute") {
        sh("ls -l")
        sh("./check.sh")
    }
}
