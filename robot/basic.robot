*** Settings ***
Library         ConfluentKafkaLibrary
Library         Collections
Resource        keywords.resource
*** Test Cases ***

My First Robot Test
    Log To Console            Hello Robot World!

Verify Topics
    ${group_id}=  Create Consumer  server=broker
    ${topics}=  List Topics  ${group_id}