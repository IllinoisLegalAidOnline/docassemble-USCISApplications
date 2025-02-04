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
  And the maximum seconds for each Step in this Scenario is 20
  And I get to the question id "waiting screen" with this data:
    | var | value | trigger |
    | region | Chicago | |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer.address.address | 77 W Jackson Blvd | |
    | preparer.address.city | Chicago | |
    | preparer.address.state | IL | | 
    | preparer.address.zip | 60604 | | 
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
    | users[0].signature | | users[0].signature |
    | users[1].signature | | users[1].signature |
    | application_kind | ead_only | | 
    | change_kind | no | |
    | users[i].fee_waiver_needed | False | |
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 2 | | 
    | users[0].eligibility_category | ead_parole | users[0].eligibility_category | 
    | users[1].eligibility_category | ead_parole | users[1].eligibility_category | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False | | 
    | users[i].order_of_supervision | False | |
    | users[i].ever_ordered_removed | True | |
    | users[i].ever_arrested | False | |
    | supervisor_overall_approval_status | approved | |
    | supervisor_name | Supervisor | |
    | users[0].addenda['ead_interim_parole'] | True | |
    | users[1].addenda['ead_interim_parole'] | True | |
    | users[i].is_first_TPS_application | First TPS Application | |
    | users[i].is_first_EAD_application | initial | |
    | users[i].user_reads_english | False | |
    | users[i].sex | male | | 
    | users[i].ethnicity | hispanic | |
    | users[i].race['white'] | True | | 
    | users[i].height_cm | 150 | | 
    | users[i].weight_kg | 150 | |
    | users[i].hair_color | brown | |
    | users[i].eye_color | hazel | |
    | users[i].marital_status | married | | 
    | users[i].marriage_date | 11/11/1111 | |
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
    | users[i].issue_social | False | |
    | users[i].proof_of_birthplace['Birth certificate'] | True | |
    | users[i].parents_from_venezuela | False | | 
    | users[i].one_parent_from_venezuela | False | |
    | users[i].in_other_country_longer_than_6_months | False | | 
    | users[i].date_left_home_country_month | January | |
    | users[i].date_left_home_country_year | 2022 | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_last_entry_date_before_july_31_2023['City or state provided letter'] | True | |
    | users[i].proof_last_entry_date_before_october_4_2023['I-94']| True | | 
    | users[i].has_children_applying_today | False | | 
    | users[i].method_of_entry | Presented at a port of entry | | 
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
    | users[i].in_removal_proceedings | False | | 
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
  And the maximum seconds for each Step in this Scenario is 61
  And I wait 60 seconds
  Then the question id should be "get_docs_screen"

@2
Scenario: EAD, 3 applicants, some are screened
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "waiting screen" with this data:
    | var | value | trigger |
    | region | Chicago | |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer.address.address | 77 W Jackson Blvd | |
    | preparer.address.city | Chicago | |
    | preparer.address.state | IL | | 
    | preparer.address.zip | 60604 | | 
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
    | users[0].signature | | users[0].signature |
    | users[1].signature | | users[1].signature |
    | users[2].signature | | users[2].signature |
    | application_kind | ead_only | | 
    | change_kind | no | |
    | users[i].fee_waiver_needed | False | |
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 0 | | 
    | users[0].eligibility_category | ead_parole | users[0].eligibility_category | 
    | users[1].eligibility_category | ead_parole | users[1].eligibility_category | 
    | users[2].eligibility_category | ead_parole | users[2].eligibility_category | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False | | 
    | users[i].order_of_supervision | False | |
    | users[i].ever_ordered_removed | False | |
    | users[i].ever_arrested | False | |
    | supervisor_overall_approval_status | mixed | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[0].addenda['ead_interim_parole'] | True | | 
    | users[1].addenda['ead_interim_parole'] | True | | 
    | users[2].addenda['ead_interim_parole'] | True | | 
    | users[i].is_first_TPS_application | First TPS Application | |
    | users[i].is_first_EAD_application | initial | |
    | users[i].user_reads_english | True | |
    | users[i].sex | male | | 
    | users[i].ethnicity | hispanic | |
    | users[i].race['white'] | True | | 
    | users[i].height_cm | 150 | | 
    | users[i].weight_kg | 150 | |
    | users[i].hair_color | brown | |
    | users[i].eye_color | hazel | |
    | users[i].marital_status | married | | 
    | users[i].marriage_date | 11/11/1111 | |
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
    | users[i].issue_social | False | |
  And the maximum seconds for each Step in this Scenario is 61
  And I wait 60 seconds
  Then the question id should be "get_docs_screen"


@3
Scenario: EAD, 3 applicants, some are screened
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "waiting screen" with this data:
    | var | value | trigger |
    | region | Chicago | |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer.address.address | 77 W Jackson Blvd | |
    | preparer.address.city | Chicago | |
    | preparer.address.state | IL | | 
    | preparer.address.zip | 60604 | | 
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
    | users[0].signature | | users[0].signature |
    | users[1].signature | | users[1].signature |
    | users[2].signature | | users[2].signature |
    | application_kind | ead_only | | 
    | change_kind | no | |
    | users[i].fee_waiver_needed | False | |
    | users[i].ead_required_documents['National ID'] | True | |
    | users[i].has_additional_citizenship | False | | 
    | users[i].number_children_applying | 0 | | 
    | users[0].eligibility_category | ead_parole | users[0].eligibility_category | 
    | users[1].eligibility_category | ead_asylum | users[1].eligibility_category | 
    | users[2].eligibility_category | ead_supervision | users[2].eligibility_category | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[0].order_of_supervision | False | |
    | users[1].order_of_supervision | False | |
    | users[2].order_of_supervision | True | |
    | users[2].osup_documents['Country conditions'] | True | |
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False | | 
    | users[i].ever_ordered_removed | False | |
    | users[i].ever_arrested | False | |
    | users[1].ever_convicted | False | |
    | supervisor_overall_approval_status | mixed | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[0].addenda['ead_interim_parole'] | True | | 
    | users[1].addenda['ead_interim_parole'] | True | | 
    | users[2].addenda['ead_interim_parole'] | True | | 
    | users[i].is_first_TPS_application | First TPS Application | |
    | users[i].is_first_EAD_application | initial | |
    | users[i].user_reads_english | True | |
    | users[i].sex | male | | 
    | users[i].ethnicity | hispanic | |
    | users[i].race['white'] | True | | 
    | users[i].height_cm | 150 | | 
    | users[i].weight_kg | 150 | |
    | users[i].hair_color | brown | |
    | users[i].eye_color | hazel | |
    | users[i].marital_status | married | | 
    | users[i].marriage_date | 11/11/1111 | |
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
    | users[i].issue_social | False | |
  And the maximum seconds for each Step in this Scenario is 61
  And I wait 60 seconds
  Then the question id should be "get_docs_screen"
    

@4
Scenario: EAD, 1 applicant, some are screened
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "waiting screen" with this data:
    | var | value | trigger |
    | region | Chicago | |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer.address.address | 77 W Jackson Blvd | |
    | preparer.address.city | Chicago | |
    | preparer.address.state | IL | | 
    | preparer.address.zip | 60604 | | 
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
    | users[0].signature | | users[0].signature |
    | application_kind | ead_only | | 
    | change_kind | no | |
    | users[i].fee_waiver_needed | False | |
    | users[0].ead_required_documents['National ID'] | True | |
    | users[0].has_additional_citizenship | False | | 
    | users[0].number_children_applying | 0 | | 
    | users[0].eligibility_category | ead_asylum | users[0].eligibility_category | 
    | users[0].applied_for_other_immigration_benefit | False | |
    | users[0].date_of_last_entry | 11/11/1111 | | 
    | users[0].in_removal_proceedings | False | | 
    | users[0].ever_ordered_removed | False | |
    | users[0].order_of_supervision | False | |
    | users[0].ever_arrested | False | |
    | users[0].ever_convicted | False | |
    | supervisor_overall_approval_status | approved | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[0].addenda['ead_interim_parole'] | True | | 
    | users[i].is_first_TPS_application | First TPS Application | |
    | users[i].is_first_EAD_application | initial | |
    | users[0].user_reads_english | True | |
    | users[0].sex | male | | 
    | users[0].ethnicity | hispanic | |
    | users[0].race['white'] | True | | 
    | users[0].height_cm | 150 | | 
    | users[0].weight_kg | 150 | |
    | users[0].hair_color | brown | |
    | users[0].eye_color | hazel | |
    | users[0].marital_status | married | | 
    | users[0].marriage_date | 11/11/1111 | |
    | users[0].alternate_birthdates.there_are_any | False | | 
    | users[0].address.address | Newbury Street | |
    | users[0].address.address_type | apt | |
    | users[0].address.city | Boston | |
    | users[0].address.state | MA | | 
    | users[0].address.zip | 02135 | | 
    | users[0].countries_of_residence.there_are_any  | False | |
    | users[0].has_passport | True | |
    | users[0].date_started_us_residence | 11/11/1111 | |
    | users[0].state_of_entry | MA | | 
    | users[0].immigration_status_last_entry | Parolee | | 
    | users[0].current_immigration_status | Visitor | |
    | users[0].father_first_name | FatherName | |
    | users[0].father_last_name | Last | |
    | users[0].mother_first_name | MotherName | | 
    | users[0].mother_last_name | Last | | 
    | users[0].previously_filed_I765 | True | |
    | users[0].has_ssn | False | |
    | users[i].has_ssn | False | |
    | users[i].issue_social | False | |
  And the maximum seconds for each Step in this Scenario is 61
  And I wait 60 seconds
  Then the question id should be "get_docs_screen"
    
    
@5
Scenario: TPS, 2 applicants, 1 adult from Venezuela, 1 minor from another country
  Given I start the interview at "main.yml"
  And the maximum seconds for each Step in this Scenario is 30
  And I get to the question id "waiting screen" with this data:
    | var | value | trigger |
    | region | Chicago | |
    | interpreter_present | False | |
    | preparer.name.first | Joe | |
    | preparer.name.last | Carpenter | |
    | preparer.address.address | 77 W Jackson Blvd | |
    | preparer.address.city | Chicago | |
    | preparer.address.state | IL | | 
    | preparer.address.zip | 60604 | | 
    | preparer_is_attorney | False | |
    | users.target_number | 1 | | 
    | users[0].name.first | Family | |
    | users[0].name.last | Member1 | |
    | users[0].aliases.there_are_any | False | |
    | users[0].city_of_birth | Boston | |
    | users[0].state_of_birth | MA | |
    | users[0].country_of_birth | Venezuela | users[0].country_of_birth |
    | users[0].birthdate | 11/11/1111 | |
    | users[0].last_country_of_residence | Venezuela | users[0].last_country_of_residence |
    | users[1].name.first | Family | |
    | users[1].name.last | Member2 | |
    | users[1].aliases.there_are_any | False | |
    | users[1].city_of_birth | Boston | |
    | users[1].state_of_birth | MA | |
    | users[1].country_of_birth | Haiti | users[1].country_of_birth |
    | users[1].birthdate | 11/11/1111 | |
    | users[1].last_country_of_residence | Haiti | users[1].last_country_of_residence |
    | users[0].signature | | users[0].signature |
    | users[1].signature | | users[1].signature |
    | application_kind | ead_and_tps | | 
    | change_kind | no | |
    | users[i].fee_waiver_needed | False | |
    | users[i].proof_of_birthplace['Birth certificate'] | True | |
    | users[i].method_of_entry | Presented at a port of entry | | 
    | users[i].parents_from_venezuela | False | | 
    | users[i].one_parent_from_venezuela | False | |
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
    | users[0].eligibility_category | ead_tps | users[0].eligibility_category | 
    | users[1].eligibility_category | ead_tps | users[1].eligibility_category | 
    | users[i].applied_for_other_immigration_benefit | False | |
    | users[i].date_of_last_entry | 11/11/1111 | | 
    | users[i].proof_of_parole | area | |
    | users[i].proof_of_parole_valid_for_90_days | True | |
    | users[i].in_removal_proceedings | False | | 
    | users[i].order_of_supervision | False | |
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
    | supervisor_overall_approval_status | approved | | 
    | users[0].addenda['military_service'] | True | | 
    | users[1].addenda['military_service'] | True | | 
    | approved_applications['users[0]']| True | supervisor_overall_approval_status | 
    | approved_applications['users[1]'] | True | supervisor_overall_approval_status | 
    | supervisor_name | Supervisor | |
    | users[i].is_first_TPS_application | First TPS Application | |
    | users[i].is_first_EAD_application | initial | |
    | users[i].user_reads_english | True | |
    | users[i].sex | male | | 
    | users[i].ethnicity | hispanic | |
    | users[i].race['white'] | True | | 
    | users[i].height_cm | 150 | | 
    | users[i].weight_kg | 150 | |
    | users[i].hair_color | brown | |
    | users[i].eye_color | hazel | |
    | users[i].marital_status | married | | 
    | users[i].marriage_date | 11/11/1111 | |
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
    | users[i].issue_social | False | |
    | users[i].date_entered_first_country_month | 11 | | 
    | users[i].date_entered_first_country_year | 1111 | | 
    | users[i].date_left_last_country_month | 11 | | 
    | users[i].date_left_last_country_year | 1111 | |
    | users[i].lived_in_countries_traveled_through | False | |
    | users[i].has_immigration_status_in_countries_traveled_through | False | | 
    | users[i].other_country_immigration_status_offered | False | | 
    | users[i].q8a | False | |
    | users[i].q8b | True | |
    | users[i].q8c | True | |
    | users[i].q9a | False | |
    | users[i].q9b | False | |
    | users[i].q9c | True | |
    | users[i].q10a | False | |
    | users[i].q10b | False | |
    | users[i].q10c | True | |
    | users[i].q11 | False | |
    | users[i].q12a | False | |
    | users[i].q12b | False | |
    | users[i].q12c | False | |
    | users[i].q12d | False | |
    | users[i].q12e | False | |
    | users[i].q13a | False | |
    | users[i].q13b | True | |
    | users[i].q13c | False | |
    | users[i].q13d | False | |
    | users[i].q14a | False | |
    | users[i].q14b | True | |
    | users[i].q14c | True | |
    | users[i].q14d | False | |
    | users[i].q15a | False | |
    | users[i].q15b | False | |
    | users[i].q15c | False | |
    | users[i].q16 | False | |
    | users[i].q17 | False | |
    | users[i].q18a | True | |
    | users[i].q18b | False | |
    | users[i].q18c | False | |
    | users[i].q19 | False | |
    | users[i].q20a | False | |
    | users[i].q20b | False | |
    | users[i].q20c | True | |
    | users[i].q20d | False | |
    | users[i].q20e | False | |
    | users[i].q21 | True | |
    | users[i].q22 | False | |
    | users[i].q23a | False | |
    | users[i].q23b | False | |
    | users[i].q23c | False | |
    | users[i].q24 | False | |
    | users[i].q25 | False | |
    | users[i].q26 | True | |
    | users[i].q27 | False | |
    | users[i].q28 | True | |
    | users[i].q29 | False | |
    | users[i].q30a | False | |
    | users[i].q30b | False | |
    | users[i].q30c | False | |
    | users[i].q30d | False | |
    | users[i].q30e | False | |
    | users[i].q31a | False | |
    | users[i].q31b | False | |
    | users[i].q32 | False | |
    | users[i].q33 | False | |
    | users[i].q34 | False | |
    | users[i].q35 | False | |
    | users[i].q36 | True | |
    | users[i].q37a | False | |
    | users[i].q37b | False | |
    | users[i].q38a | False | |
    | users[i].q38b | False | |
    | users[i].q38c | False | |
    | users[i].q38d | False | |
    | users[i].q38e | False | |
    | users[i].q39a | False | |
    | users[i].q39b | False | |
    | users[i].q40 | False | |
    | users[i].q41 | False | |
    | users[i].q8b_explanation | area | |
    | users[i].q8c_explanation | area | |
    | users[i].q9c_explanation | area | |
    | users[i].q10c_explanation | area | |
    | users[i].q13b_explanation | area | |
    | users[i].q14b_explanation | area | |
    | users[i].q14c_explanation | area | |
    | users[i].q18a_explanation | area | |
    | users[i].q20c_explanation | area | |
    | users[i].q21_explanation | area | |
    | users[i].q26_explanation | area | |
    | users[i].q28_explanation | area | |
    | users[i].q36_explanation | area | |
  And the maximum seconds for each Step in this Scenario is 61
  And I wait 60 seconds
  Then the question id should be "get_docs_screen"
    

    

    
   
