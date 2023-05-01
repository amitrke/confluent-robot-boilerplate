*** Settings ***
Documentation     This is a resource file containing keywords and variables which can be used globally across the project.

*** Variables ***


*** keywords ***

Setup Kafka
    Set Suite Variable  ${TEST_TOPIC}  test
    ${thread}=  Start Consumer Threaded topics=${TEST_TOPIC} server=${broker}