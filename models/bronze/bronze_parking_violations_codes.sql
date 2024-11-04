{{
    config(
        materialized='table',
        schema='bronze'
    )
}}

SELECT
    CODE AS violation_code,
    DEFINITION,
    MANHATTAN_96TH_ST_AND_BELOW,
    ALL_OTHER_AREAS
FROM {{ source('raw', 'parking_violation_codes') }}