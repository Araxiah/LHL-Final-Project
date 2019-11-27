-- -- INSERT DATA INTO TABLES

-- -- Insert into the users table

INSERT INTO users (name, email, password_digest, created_at, budget)
VALUES ('vasily', 'vasily@vasily.com', 'test', CURRENT_TIMESTAMP, 1000);

INSERT INTO categories (name, user_id, created_at, category_budget)
VALUES ('Housing', 1, CURRENT_TIMESTAMP, 2000),
('Transportation', 1, CURRENT_TIMESTAMP, 100),
('Recreational', 1, CURRENT_TIMESTAMP, 300),
('Miscellaneous', 1, CURRENT_TIMESTAMP, 40),
('Food', 1, CURRENT_TIMESTAMP, 2),
('Insurance', 1, CURRENT_TIMESTAMP, 1000),
('Medical and Healthcare', 1, CURRENT_TIMESTAMP, 400),
('Rent', 1, CURRENT_TIMESTAMP, 5),
('Mortgage', 1, CURRENT_TIMESTAMP, 70),
('Property Tax', 1, CURRENT_TIMESTAMP, 600),
('Home Maintenance', 1, CURRENT_TIMESTAMP, 40),
('Gas', 1, CURRENT_TIMESTAMP, 25),
('Parking', 1, CURRENT_TIMESTAMP, 600),
('Water', 1, CURRENT_TIMESTAMP, 50),
('Hydro', 1, CURRENT_TIMESTAMP,500),
('Home Phone', 1, CURRENT_TIMESTAMP,80),
('Cell Phone', 1, CURRENT_TIMESTAMP,40),
('Cable/Internet', 1, CURRENT_TIMESTAMP,400),
('Groceries', 1, CURRENT_TIMESTAMP,10000),
('Restaurants', 1, CURRENT_TIMESTAMP,10),
('Beverage', 1, CURRENT_TIMESTAMP,50),
('Mortgage Insurance', 1, CURRENT_TIMESTAMP,50),
('Auto Insurance', 1, CURRENT_TIMESTAMP,100),
('Home Insurance', 1, CURRENT_TIMESTAMP,600),
('Life Insurance', 1, CURRENT_TIMESTAMP,40),
('Public Transportation', 1, CURRENT_TIMESTAMP,100),
('Pets', 1, CURRENT_TIMESTAMP, 500),
('Loans', 1, CURRENT_TIMESTAMP,2);

-- -- Date format will have to be yyyy-mm-dd

INSERT INTO transactions (store_name, category_id, amount, entered_on, description)
VALUES ('Rental property', 1, 2000.00, '2019-06-01', 'monthly rent'),
('Oretta', 2, 92.98, '2019-06-01', 'Went to restaurant'),
('Costco', 3, 75.00, '2019-06-03', 'grocery shopping'),
('Manulife', 4, 25.00, '2019-06-05', 'insurance payment'),
('TTC', 5, 45.00, '2019-06-09', 'paying for transportation'),
('metro', 6, 50.00, '2019-06-02', 'groceries'),
('Rogers', 7, 120.00, '2019-06-09', 'cell phone bill'),
('Toronto Hydro', 8, 56.00, '2019-06-13', 'hydro bill'),
('Mcdonalds', 5, 8.00, '2019-06-01', 'went for chicken nuggets');
-- ('LCBO', 77, 30.00, '2019-06-14', 'Friday night wine night'),
-- ('Rogers', 74, 135.00, '2019-06-09', 'monthly cable/internet bill'),
-- ('metro', 75, 62.47, '2019-06-09', 'groceries'),
-- ('Esso', 68, 49.00, '2019-06-02', 'gas expense'),
-- ('Esso', 68, 30.00, '2019-06-06', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-06-12', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-06-16', 'gas expense'),
-- ('Esso', 68, 42.00, '2019-06-20', 'gas expense'),
-- ('Esso', 68, 30.00, '2019-06-24', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-06-28', 'gas expense'),
-- ('metro', 75, 78.00, '2019-06-16', 'groceries'),
-- ('metro', 75, 68.40, '2019-06-23', 'groceries'),
-- ('Walmart', 60, 68.00, '2019-06-07', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 38.00, '2019-06-07', 'Pet food and litter'),
-- ('Walmart', 60, 72.00, '2019-06-07', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 34.00, '2019-06-07', 'Pet food and litter'),
-- ('National Loans student center', 84, 200.00, '2019-06-15', 'OSAP payment'),
-- ('VISA', 84, 62.00, '2019-06-15', 'Minimum credit card payment'),
-- ('Mcdonalds', 76, 8.00, '2019-06-09', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 6.00, '2019-06-13', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 6.00, '2019-06-16', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 8.00, '2019-06-21', 'went for chicken nuggets'),

-- ('Rental property', 64, 2000.00, '2019-07-01', 'monthly rent'),
-- ('Porchetta', 76, 72.98, '2019-07-01', 'Went to restaurant'),
-- ('Costco', 75, 98.00, '2019-07-03', 'grocery shopping'),
-- ('Manulife', 79, 25.00, '2019-07-05', 'insurance payment'),
-- ('TTC', 81, 45.00, '2019-07-10', 'paying for transportation'),
-- ('metro', 75, 45.00, '2019-07-03', 'groceries'),
-- ('Rogers', 73, 120.00, '2019-07-09', 'cell phone bill'),
-- ('Toronto Hydro', 71, 56.00, '2019-07-13', 'hydro bill'),
-- ('Mcdonalds', 76, 8.00, '2019-07-01', 'went for chicken nuggets'),
-- ('LCBO', 77, 27.00, '2019-07-14', 'Friday night wine night'),
-- ('LCBO', 77, 120.00, '2019-07-24', 'Birthday celebration'),
-- ('Rogers', 74, 135.00, '2019-07-10', 'monthly cable/internet bill'),
-- ('metro', 75, 58.42, '2019-07-12', 'groceries'),
-- ('Esso', 68, 49.00, '2019-07-02', 'gas expense'),
-- ('Esso', 68, 30.00, '2019-07-05', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-07-11', 'gas expense'),
-- ('Esso', 68, 38.00, '2019-07-16', 'gas expense'),
-- ('Esso', 68, 40.00, '2019-07-20', 'gas expense'),
-- ('Esso', 68, 30.00, '2019-07-24', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-07-28', 'gas expense'),
-- ('metro', 75, 68.00, '2019-07-16', 'groceries'),
-- ('metro', 75, 58.40, '2019-07-23', 'groceries'),
-- ('Walmart', 60, 48.00, '2019-07-07', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 30.00, '2019-07-07', 'Cat food and litter'),
-- ('Walmart', 60, 32.00, '2019-07-28', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 34.00, '2019-07-28', 'Pet food and litter'),
-- ('National Loans student center', 84, 200.00, '2019-07-15', 'OSAP payment'),
-- ('VISA', 84, 62.00, '2019-07-15', 'Minimum credit card payment'),
-- ('Mcdonalds', 76, 8.00, '2019-07-07', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 6.00, '2019-07-12', 'went for chicken nuggets'),
-- ('Tim Hortons', 76, 4.00, '2019-07-13', 'timbits'),
-- ('Starbucks', 76, 7.49, '2019-07-22', 'Mocha frapps'),

-- ('Rental property', 64, 2000.00, '2019-08-01', 'monthly rent'),
-- ('Northern Maverik', 76, 98.98, '2019-08-04', 'Went to restaurant'),
-- ('Costco', 75, 80.00, '2019-08-05', 'grocery shopping'),
-- ('Manulife', 79, 25.00, '2019-08-05', 'insurance payment'),
-- ('TTC', 81, 55.00, '2019-08-10', 'paying for transportation'),
-- ('metro', 75, 75.00, '2019-08-05', 'groceries'),
-- ('Rogers', 73, 120.00, '2019-08-09', 'cell phone bill'),
-- ('Toronto Hydro', 71, 56.00, '2019-08-13', 'hydro bill'),
-- ('Mcdonalds', 76, 8.00, '2019-08-01', 'went for chicken nuggets'),
-- ('LCBO', 77, 27.00, '2019-08-12', 'Friday night wine night'),
-- ('LCBO', 77, 80.00, '2019-08-24', 'BBQ Beers'),
-- ('Rogers', 74, 135.00, '2019-08-10', 'monthly cable/internet bill'),
-- ('metro', 75, 28.20, '2019-08-12', 'groceries'),
-- ('Esso', 68, 39.00, '2019-08-02', 'gas expense'),
-- ('Esso', 68, 20.00, '2019-08-05', 'gas expense'),
-- ('Esso', 68, 25.00, '2019-08-11', 'gas expense'),
-- ('Esso', 68, 35.00, '2019-08-16', 'gas expense'),
-- ('Esso', 68, 60.00, '2019-08-20', 'gas expense'),
-- ('Esso', 68, 30.00, '2019-08-28', 'gas expense'),
-- ('metro', 75, 58.00, '2019-08-16', 'groceries'),
-- ('metro', 75, 38.40, '2019-08-23', 'groceries'),
-- ('Walmart', 60, 40.00, '2019-08-07', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 38.00, '2019-08-07', 'Cat food and litter'),
-- ('Walmart', 60, 58.00, '2019-08-28', 'miscellaneous purchases for the house'),
-- ('Walmart', 83, 28.00, '2019-08-28', 'Pet food and litter'),
-- ('National Loans student center', 84, 200.00, '2019-08-15', 'OSAP payment'),
-- ('VISA', 84, 62.00, '2019-08-15', 'Minimum credit card payment'),
-- ('Mcdonalds', 76, 8.00, '2019-08-07', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 6.00, '2019-08-12', 'went for chicken nuggets'),
-- ('Mcdonalds', 76, 4.00, '2019-08-13', 'more chicken nuggets'),
-- ('Mcdonalds', 76, 7.49, '2019-08-22', 'cant get enough of chicken nuggets ')