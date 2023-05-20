*** Settings ***
Library         ConfluentKafkaLibrary
Library         Collections
Resource        keywords.resource
*** Test Cases ***

My First Robot Test
    Log To Console            Hello Robot World!

Verify Topics
    ${producer_group_id}=  Create Producer  server=broker  port=29092
    Produce  group_id=${producer_group_id}  topic=Topic1 message={"key": "value"}
    Wait Until Keyword Succeeds  10x  0.5s  All Messages Are Delivered  ${producer_group_id}