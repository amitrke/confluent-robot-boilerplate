*** Settings ***
Documentation     A test suite with a single test Hello World.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          keywords.resource

*** Test Cases ***

My First Robot Test
    Log To Console            Hello Robot World!