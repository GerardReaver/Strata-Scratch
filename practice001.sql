# Every minister that sits on an even numbered sit in the government is considered a "safe" minister. Your job is to return all of the "safe" ministers sits that want to continue serving in the next government while excluding any minister who spoke a bad word.
# The result should contain only the relevant sits.Before starting to solve the challenge take a look at the table data. It is not clean. The columns is_next_gov and is_spoke_bad contain ones and zeros and also yes's and no's.

SELECT
    sit
FROM
    ministers
WHERE
    sit % 2 = 0 AND
    (is_next_gov = 1 or is_next_gov = 'yes') AND
    (is_spoke_bad = 0 or is_spoke_bad = 'no')
