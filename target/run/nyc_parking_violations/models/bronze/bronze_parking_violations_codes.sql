
  
    

        create or replace transient table NYC_PARKING_DEV.parking_violations_dev_bronze.bronze_parking_violations_codes
         as
        (

SELECT
    CODE AS violation_code,
    DEFINITION,
    MANHATTAN_96TH_ST_AND_BELOW,
    ALL_OTHER_AREAS
FROM NYC_PARKING_DEV.raw.parking_violation_codes
        );
      
  