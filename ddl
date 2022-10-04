##############
# allimports #
##############
from guizero import * #App, Window, PushButton, Text, CheckBox, ListBox, TextBox, ButtonGroup, Picture, Combo, Box, Picture, info  #window is second form
#
# https://lawsie.github.io/guizero/app/
#
#This is needed for the sql database
import sqlite3
from sqlite3 import Error
#Import SQL
import os
import os.path
#Import datetime
import datetime
#
#inputs date automatically#
todaynow = datetime.date.today()

formatted_now = todaynow.strftime("%d/%m/%Y")
#
#Define the DDL SQL to make the tables
#
#
#Tables created in database with the following details below
sql = """
CREATE TABLE "Cust_Table" ( 
"CustID" INTEGER NOT NULL,
"CustUN" TEXT,
"CustPassword" TEXT,
"CustFirstname" TEXT,
"CustSurename" TEXT,
"DoB" TEXT,
"EmailAddress" TEXT, 
PRIMARY KEY("CustID" AUTOINCREMENT)
);
CREATE TABLE "Review_Table" (
"ReviewID"  INTEGER NOT NULL,
"ReviewWriteUp" STRING,
"ReviewDate" STRING,
"ReviewTopic"  STRING,
"CustID"  INTEGER,
PRIMARY KEY("ReviewID" AUTOINCREMENT),
CONSTRAINT "CustID_fk"  FOREIGN KEY("CustID") REFERENCES "Cust_Table"("CustID")
);
insert into Cust_Table (CustUN, CustPassword, CustFirstname, CustSurename, DoB, EmailAddress) values ('userjoe','pass', 'Joe', 'Harris', '01/01/0333', 'joe.@outlook.com');
insert into Cust_Table (CustUN, CustPassword, CustFirstname, CustSurename, DoB, EmailAddress) values ('userfred','pass', 'Fred', 'Harrisr', '01/01/0133', 'fred.@outlook.com');
insert into Cust_Table (CustUN, CustPassword, CustFirstname, CustSurename, DoB, EmailAddress) values ('userabc','pass', 'abc', 'dermetri', '01/01/0433', 'abc.@outlook.com');
insert into Cust_Table (CustUN, CustPassword, CustFirstname, CustSurename, DoB, EmailAddress) values ('userdef','pass', 'def', 'dementia', '01/01/0233', 'def.@outlook.com');
insert into Review_Table (ReviewWriteUp, ReviewTopic, ReviewDate, CustID) values ('review write up', 'alpha', '04/06/2233', 1);
"""
