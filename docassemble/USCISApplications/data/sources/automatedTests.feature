@interviews_start
Feature: The interviews run without erroring

This file:
[x] Test that each interview starts without an error.
[x] Contains some additional example Steps. They use fake values and are commented out with a "#" so they won't run.

These tests are made to work with the ALKiln testing framework, an automated testing framework made under the Document Assembly Line Project.

Want to disable the tests? Want to learn more? See ALKiln's docs: https://suffolklitlab.github.io/docassemble-AssemblyLine-documentation/docs/automated_integrated_testing

@1
Scenario: EAD only, 2 applicants
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 190
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
    | users[0].country_of_birth | United States | users[0].country_of_birth |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | United States | users[0].last_country_of_residence |
    | users[1].name.first | User1 | |
    | users[1].name.last | Last1 | |
    | users[1].aliases.there_are_any | False | |
    | users[1].city_of_birth | Boston | |
    | users[1].state_of_birth | MA | |
    | users[1].country_of_birth | Venezuela | users[0].country_of_birth |
    | users[1].birthdate | 11/11/1111 | |
    | users[1].last_country_of_residence | Haiti | users[0].last_country_of_residence |
    | users[i].signature | | users[0].signature |
    | users[i].signature | | users[1].signature |
    | application_kind | ead_and_tps | | 
    
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 2 | | 
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
    | users[i].has_passport | True | |
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
    
    

@2
Scenario: EAD, 3 applicants, some are screened
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "get_docs_screen" with this data:
    | var | value | trigger |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer_is_attorney | False | |
    | users.target_number | 3 | | 
    | users[0].name.first | Family | |
    | users[0].name.last | Member1 | |
    | users[0].aliases.there_are_any | False | |
    | users[0].city_of_birth | Boston | |
    | users[0].state_of_birth | MA | |
    | users[0].country_of_birth | Bahamas | users[0].country_of_birth |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | United States | users[0].last_country_of_residence |
    | users[1].name.first | Family | |
    | users[1].name.last | Member2 | |
    | users[1].aliases.there_are_any | False | |
    | users[1].city_of_birth | Boston | |
    | users[1].state_of_birth | MA | |
    | users[1].country_of_birth | Cyprus | users[1].country_of_birth |
    | users[1].birthdate | 11/11/1111 | |
    | users[1].last_country_of_residence | Haiti | users[1].last_country_of_residence |
    | users[2].name.first | Family | |
    | users[2].name.last | Member3 | |
    | users[2].aliases.there_are_any | False | |
    | users[2].city_of_birth | Boston | |
    | users[2].state_of_birth | MA | |
    | users[2].country_of_birth | Bahamas | users[2].country_of_birth |
    | users[2].birthdate | 11/11/1111 | |
    | users[2].last_country_of_residence | Haiti | users[2].last_country_of_residence |
    | users[i].signature | | users[0].signature |
    | users[i].signature | | users[1].signature |
    | users[i].signature | | users[2].signature |
    
    | application_kind | ead_only | | 
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 0 | | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False| | 
    | users[i].ever_ordered_removed | False | |
    | users[i].ever_arrested | False | |
    | supervisor_overall_approval_status | mixed | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[i].user_reads_english | True | |
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
    | users[i].has_passport | True | |
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
    
    
@3
Scenario: EAD, 1 applicant, some are screened
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "get_docs_screen" with this data:
    | var | value | trigger |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer_is_attorney | False | |
    | users.target_number | 1 | | 
    | users[0].name.first | Family | |
    | users[0].name.last | Member1 | |
    | users[0].aliases.there_are_any | False | |
    | users[0].city_of_birth | Boston | |
    | users[0].state_of_birth | MA | |
    | users[0].country_of_birth | Bahamas | users[0].country_of_birth |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | United States | users[0].last_country_of_residence |
    | users[i].signature | | users[0].signature |
    
    | application_kind | ead_only | | 
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 0 | | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False| | 
    | users[i].ever_ordered_removed | False | |
    | users[i].ever_arrested | False | |
    | supervisor_overall_approval_status | approved | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[i].user_reads_english | True | |
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
    | users[i].has_passport | True | |
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
    
@4
Scenario: TPS, 2 applicants, 1 adult from Venezuela, 1 minor from another country
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "review_tps_screening_questions" with this data:
    | var | value | trigger |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer_is_attorney | False | |
    | users.target_number | 2 | | 
    | users[0].name.first | Family | |
    | users[0].name.last | Member1 | |
    | users[0].aliases.there_are_any | False | |
    | users[0].city_of_birth | Boston | |
    | users[0].state_of_birth | MA | |
    | users[0].country_of_birth | Venezuela | users[0].country_of_birth |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | Venezuela | users[0].last_country_of_residence |
    | users[1].name.first | Family | |
    | users[1].name.last | Member1 | |
    | users[1].aliases.there_are_any | False | |
    | users[1].city_of_birth | Boston | |
    | users[1].state_of_birth | MA | |
    | users[1].country_of_birth | Haiti | users[1].country_of_birth |
    | users[1].birthdate | 11/11/1111 | |
    | users[1].last_country_of_residence | Haiti | users[1].last_country_of_residence |
    | users[i].signature | | users[0].signature |
    | users[i].signature | | users[1].signature |
    | application_kind | ead_and_tps | | 
    | users[0].ead_required_documents['Birth certificate'] | True | |
    | users[1].ead_required_documents['Birth certificate'| True | | 
    | users[i].in_other_country_longer_than_6_months | False | | 
    | users[i].date_left_home_country_month | January | |
    | users[i].date_left_home_country_year | 2022 | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_last_entry_date_before_july_31_2023['City or state provided letter'] | True | |
    | users[i].proof_last_entry_date_before_october_4_2023['I-94']| True | | 
    | users[i].has_children_applying_today | True | |
    | users[i].has_children_applying_not_born_in_venezuela | True | |
    | users[i].children_outside_of_venezuela | area | | 
    | users[i].method_of_entry | 'Presented at a port of entry' | | 
    | users[i].who_entered_with_user | spouse | | 
    | users[i].children_entered_separately | False | |
    | users[i].traveled_through_central_america | False | |
    | users[i].traveled_through_other_countries | True | | 
    | users[i].other_countries_traveled_through | area | | 
    | users[i].had_legal_status_outside_venezuela | False | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 0 | | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False| | 
    | users[i].ever_ordered_removed | False | |
    | users[i].ever_arrested | False | |
    | users[i].claimed_us_citizenship | True | | 
    | users[i].gang_affiliation | False | |
    | users[i].served_military | False | | 
    | users[i].gang_affiliation | False | | 
    | users[i].served_police | False | | 
    | users[i].received_weapons_training | True | |
    | users[i].weapons_trained_in | area | |
    | users[i].used_weapon_against_another_person | False | |
    | users[i].acted_as_terrorist | False | |
    | | | | 
    | supervisor_overall_approval_status | approved | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[i].user_reads_english | True | |
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
    | users[i].has_passport | True | |
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
   