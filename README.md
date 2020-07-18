Real-Life Scenario : 

1.First, “Customer” will take an appointment from the ’’Employee’’ to take various kind of service from them.
Customer Table:
Customer table has a Customer _ID which is primary key of this table, and this table have also some attribute, these are Customer _name, Customer _address, Phone _Number, Customer _age, payment.

2.Customer will wait for his ‘’appointment’’ date and time.
Appointment Table:
Appointment table has a Appointment _ID which is primary key of this table, And this table have single attribute that’s Appointment _date

3.After getting the appointment customer will go the saloon.

4.Then customer will take ‘’Services’’ from the ‘’Employee’’ which he desired.
Employee Table:
Employee table has a Employee _ID which is primary key of this table, and this table have also some attribute, these are Employee name, phone number, address, salary, job _title.
Services Table:
Service table has a Service _ID which is primary key of this table, and this table have also some attribute, these are hair cut, quantity.

5.Then Customer will get  ‘’Bills’’ for taking services.
Bills Table:
Bills table has a Bill _ID which is primary key of this table, and this table have single attribute that’s Bill _amount.

6.By paying the bill their will be a ‘’transaction’’ between ‘’Customer’’ and ‘’Employee’’.
Transaction Table:
Transaction table has a Transaction _ID which is primary key of this table. And this table have single attribute that’s Transaction _date.

Relationship Between All Entity’s:
Customer and bills has one to many relationship.
Customer and appointment has one many relationship.
Customer and transaction has one to many relationship.
Employee and Customer has many to one relationship.
Transaction and services has many to one relationship.
Bills and transaction has one to many relationship.
