@Library('ecommerce-shared-library') _

pipeline {
  agent any
  environment {
    PATH = "/usr/local/bin:${env.PATH}"
    REGISTRY = 'pabloher95'
    IMAGE_NAME = 'ecommerce-database'
  }
  stages {
    stage('Build') {
      when { anyOf { branch 'develop'; branch 'main'; changeRequest() } }
      steps { buildDatabase() }
    }
    stage('Test') {
      when { anyOf { branch 'develop'; branch 'main'; changeRequest() } }
      steps { testDatabase() }
    }
    stage('Container Build') {
      when { anyOf { branch 'develop'; branch 'main'; branch pattern: 'release/.*', comparator: 'REGEXP' } }
      steps { containerBuild(service: 'database') }
    }
    stage('Security Scan') {
      when { anyOf { branch 'develop'; branch 'main'; changeRequest() } }
      steps { securityScan(service: 'database') }
    }
    stage('Container Push') {
      when { anyOf { branch 'develop'; branch 'main'; branch pattern: 'release/.*', comparator: 'REGEXP' } }
      steps { containerPush(service: 'database') }
    }
    stage('Deploy') {
      when {
        anyOf {
          branch 'develop'
          branch pattern: 'release/.*', comparator: 'REGEXP'
          branch 'main'
        }
      }
      steps { deploy(service: 'database') }
    }
  }
}