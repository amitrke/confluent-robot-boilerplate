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
    Log To Console  ${topics}
    ${producer_group_id}=  Create Producer
    Produce  group_id=${producer_group_id}  topic=Topic1  value={'test': 1}
    Flush  group_id=${producer_group_id}