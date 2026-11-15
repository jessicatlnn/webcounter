*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set any value to the counter
   Go To  ${HOME_URL}
   Click  button >> text=Nollaa
   Fill Text  input[name="chosen_value"]  10
   Click  button >> text=aseta
   Get Text  body  *=  nappia painettu 10 kertaa