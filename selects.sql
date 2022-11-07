SELECT Username AS "Russian Users", Email FROM users WHERE Email LIKE "%.ru";
SELECT Title AS "2022 Movies" FROM movies WHERE ReleaseDate = "2022";
SELECT Username AS "Gmail Users" FROM users WHERE Email LIKE "%@gmail.com";
SELECT Title AS "Drama Movies" FROM movies WHERE Category = "Drama";


SELECT users.Username AS "VIP Users" FROM users JOIN payments ON payments.UserID = users.UserID WHERE PaymentPlanID = 3;
SELECT users.Username, payments.ExpiryDate AS "Subscriptions ending next month" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.ExpiryDate < "2022-12-31";
SELECT users.Username AS "Watching Squid Game" FROM watching JOIN users ON users.UserID = watching.UserID JOIN movies ON movies.MovieID = watching.MovieID WHERE movies.MovieID = 1;
SELECT users.Username AS "One more year of subscription" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.ExpiryDate > "2023-11-7";
SELECT users.Username AS "Active subscription" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.IsActive = 1;