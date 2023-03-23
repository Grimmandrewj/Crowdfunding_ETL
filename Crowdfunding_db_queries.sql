-- Display each table to ensure data loaded correctly
SELECT * FROM contacts;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;

-- Example queries

-- Display contacts table with contact_id in ascending order
SELECT * FROM contacts
ORDER BY contact_id;

-- Display contact_ids in certain range in descending order
SELECT * FROM contacts
WHERE contact_id >= '2000'
AND contact_id <= '4000'
ORDER BY contact_id DESC;

-- Display all emails in contacts table from hotmail.com
SELECT email FROM contacts
WHERE email LIKE '%hotmail.com';

-- Query campaigns in the US with goal of a certain range that were successful in descending order
SELECT company_name, goal, country, outcome FROM campaign
WHERE country = 'US'
AND goal >= '2500'
AND goal <= '15000'
AND outcome = 'successful'
ORDER BY goal DESC;

-- Query data for campaigns for music in Canada with a minimum number of backers
SELECT cm.backers_count, cm.company_name, cm.country, ct.category
FROM campaign as cm
JOIN category as ct
ON ct.category_id = cm.category_id
WHERE cm.country = 'CA'
AND cm.backers_count > '499'
AND ct.category = 'music'
ORDER BY backers_count DESC;
