# SQL & Access Projekt

## Téma
Egy online filmszolgáltató, az én elképzelésem szerint, nagyon szükséges, alap adatbázisát készítettem el. A választás a feladat egyszerűsége szempontjából történt.

## Tervezés
A tervezés folyamata nem igényelt sok időt, hiszen van 3 információt tároló táblánk és 2 kapcsoló táblánk, fejenként egy-egy azonosító kulccsal, megkönnyítve a harmadik normálforma elérését.

![Bachmann-diagramm](Screenshots/bachmann.png)<br>
*Itt látható a Bachmann diagramm*

## Táblák
### MySQL
![Adatbázis_táblái](Screenshots/database_tables.png)

*Az adatbázis táblái*

!["Users"tábla](Screenshots/users_table.png)

*"Users" tábla*

!["PaymentPlans"tábla](Screenshots/paymentplan_table.png)

*"PaymentPlan" tábla*

!["Payments"tábla](Screenshots/payments_table.png)

*"Paymetns" tábla*

!["Movies"tábla](Screenshots/movies_table.png)

*"Movies" tábla*

!["Watching"tábla](Screenshots/watching_table.png)

*"Watching" tálba*

### Access
!["Users"űrlap](Screenshots/users_fomr.png)
*"Users" űrlap*

!["PaymentPlan"űrlap](Screenshots/paymentplan_form.png)
<br>
*"PaymentPlan" űrlap*

!["Payments"űrlap](Screenshots/payments_form.png)
<br>
*"Payments" űrlap*

!["Movies"űrlap](Screenshots/movies_form.png)
<br>
*"Movies" űrlap*

!["Watching"űrlap](Screenshots/watching_form.png)
<br>
*"Watching" űrlap*

## Lekérdezések
### Egytáblás lekérdezések:
- Orosz felhasználók:<br>
!["Oroszfelhasználók"](Screenshots/firstquery.png)
```sql
SELECT Username AS "Russian Users", Email FROM users WHERE Email LIKE "%.ru";
```

<br>
<br>

- 2022-es filmek:<br>
!["2022filmek"](Screenshots/secondquery.png)
```sql
SELECT Title AS "2022 Movies" FROM movies WHERE ReleaseDate = "2022";
```

<br>
<br>

- Gmail felhasználók:<br>
!["Gmailfelhasználók"](Screenshots/thirdquery.png)
```sql
SELECT Username AS "Gmail Users" FROM users WHERE Email LIKE "%@gmail.com";
``` 

<br>
<br>

- Dráma filmek:<br>
!["Drámafilmek"](Screenshots/fourthquery.png)
```sql
SELECT Title AS "Drama Movies" FROM movies WHERE Category = "Drama";
```

### Tobbtáblás lekérdezések:
- VIP Felhasználók:<br>
!["VIPFelhasználók"](Screenshots/fifthquery.png)
```sql
SELECT users.Username AS "VIP Users" FROM users JOIN payments ON payments.UserID = users.UserID WHERE PaymentPlanID = 3;
```

<br>
<br>

- Előfizetések, amelyek a következő hónapban érnek véget:<br>
!["Nextmonthending"](Screenshots/sixthquery.png)
```sql
SELECT users.Username, payments.ExpiryDate AS "Subscriptions ending next month" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.ExpiryDate < "2022-12-31";
```

<br>
<br>

- Squid Game nézők:<br>
!["SquidGameNézők"](Screenshots/seventhquery.png)
```sql
SELECT users.Username AS "Watching Squid Game" FROM watching JOIN users ON users.UserID = watching.UserID JOIN movies ON movies.MovieID = watching.MovieID WHERE movies.MovieID = 1;
```

<br>
<br>

- Egy évnél több előfizetés:<br>
!["Overayear"](Screenshots/eighthquery.png)
```sql
SELECT users.Username AS "One more year of subscription" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.ExpiryDate > "2023-11-7";
```

<br>
<br>

- Aktív felhasználók:<br>
!["Aktívfelhasználók"](Screenshots/ninethquery.png)
```sql
SELECT users.Username AS "Active subscription" FROM users JOIN payments ON payments.UserID = users.UserID WHERE payments.IsActive = 1;
```

## Jelentések

!["Aktívfelhasználók"](Screenshots/question1.png)

!["Aktívfelhasználók"](Screenshots/question2.png)

!["Aktívfelhasználók"](Screenshots/question3.png)

!["Aktívfelhasználók"](Screenshots/question4.png)

!["Aktívfelhasználók"](Screenshots/question5.png)

!["Aktívfelhasználók"](Screenshots/question6.png)

!["Aktívfelhasználók"](Screenshots/question7.png)

!["Aktívfelhasználók"](Screenshots/question8.png)

!["Aktívfelhasználók"](Screenshots/question9.png)

<hr>

# György Norbert | Salamon Ernő Gimnázium | XII.A
