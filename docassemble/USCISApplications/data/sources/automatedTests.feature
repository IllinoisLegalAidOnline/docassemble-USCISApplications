interviews_start
Feature: The interviews run without erroring

This file:
[x] Test that each interview starts without an error.
[x] Contains some additional example Steps. They use fake values and are commented out with a "#" so they won't run.

These tests are made to work with the ALKiln testing framework, an automated testing framework made under the Document Assembly Line Project.

Want to disable the tests? Want to learn more? See ALKiln's docs: https://suffolklitlab.github.io/docassemble-AssemblyLine-documentation/docs/automated_integrated_testing

@1
Scenario: EAD only 
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "get_docs_screen" with this data:
    | var | value | trigger |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer_is_attorney | False | |
    | users.target_number | 2 | | 
    | users[0].name.first | User | |
    | users[0].name.last | Last | |
    | users[0].aliases.there_are_any | False | |
    | users[0].city_of_birth | Boston | |
    | users[0].state_of_birth | MA | |
    | users[0].country_of_birth | USA | |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | Haiti | |
    | application_kind | ead_only | | 
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 1 | | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False| | 
    | users[i].ever_ordered_removed | True | |
    | users[i].ever_arrested | False | |
    | supervisor_overall_approval_status | approved | | 
    | supervisor_name | Supervisor | |
    | users[i].user_reads_english | False | |
    | users[i].sex | male | | 
    | users[i].ethnicity | hispanic | |
    | users[i].race['white'] | True | | 
    | users[i].height_cm | 150 | | 
    | users[i].weight_kg | 150 | |
    | users[i].hair_color | brown | |
    | users[i].eye_color | hazel | |
    | users[i].marital_status | married | | 
    | users[i].alternate_birthdates.there_are_any | False | | 
    | users[0].address.address | Newbury Street | |
    | users[0].address.address_type | apt | |
    | users[0].address.city | Boston | |
    | users[0].address.state | MA | | 
    | users[0].address.zip | 02135 | | 
    | users[i].countries_of_residence.there_are_any  | False | |
    | users[i].has_passport | | |
    | users[i].date_started_us_residence | 11/11/1111 | |
    | users[i].state_of_entry | MA | | 
    | users[i].immigration_status_last_entry | Parolee | | 
    | users[i].current_immigration_status | Visitor | |
    | users[i].father_first_name | FatherName | |
    | users[i].father_last_name | Last | |
    | users[i].mother_first_name | MotherName | | 
    | users[i].mother_last_name | Last | | 
    | users[i].previously_filed_I765 | True | |
    | users[i].has_ssn | False | |
   