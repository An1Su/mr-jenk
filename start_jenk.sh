#!/usr/bin/env bash

# Check if Jenkins process is running
echo ">>> Checking if Jenkins process is running..."
JENKINS_PROCESS=$(ps -ef | grep "jenkins.war" | grep -v grep)

if [ -n "$JENKINS_PROCESS" ]; then
    echo ">>> Jenkins process is running:"
    echo "$JENKINS_PROCESS"
    echo ">>> Access Jenkins at http://localhost:8080"
else
    echo ">>> Jenkins process is NOT running."
    echo "To start Jenkins:"
    echo "  a. Download Jenkins from https://get.jenkins.io/war-stable/latest/jenkins.war"
    echo "  b. Go to the directory where jenkins.war is located"
    echo "  c. Run: java -jar jenkins.war"
    echo "Then open http://localhost:8080 in your browser."
fi