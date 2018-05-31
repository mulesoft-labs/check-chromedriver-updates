node {
    stage("Checkout") {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'git@github.com:mulesoft-labs/check-chromedriver-updates.git']]])
    }

    stage("Excute") {
        sh("check.sh")
    }
}
