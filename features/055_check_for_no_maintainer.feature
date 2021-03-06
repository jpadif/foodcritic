Feature: Check for no maintainer

  In order to be able to upload my cookbook
  As a developer
  I want to be notified when my cookbook metadata does not specify the maintainer

  Scenario: Metadata without a maintainer
    Given a cookbook with metadata that does not include a maintainer keyword
     When I check the cookbook
     Then the metadata missing maintainer warning 055 should be shown against the metadata file

  Scenario: Metadata with a maintainer
    Given a cookbook with metadata that includes a maintainer keyword
     When I check the cookbook
     Then the metadata missing maintainer warning 055 should be not shown against the metadata file

  Scenario: Metadata with a maintainer that is an expression
    Given a cookbook with metadata that includes a maintainer expression
     When I check the cookbook
     Then the metadata missing maintainer warning 055 should be not shown against the metadata file

  Scenario: Cookbook without metadata file
    Given a cookbook that does not have defined metadata
    When I check the cookbook
    Then the metadata missing maintainer warning 055 should be not shown against the metadata file
