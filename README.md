# IBM Services Migrated Data Traceability and Validation Tool

# Objective:-
The objective of this application is to provide a 360-degree view of the migrated data across different stages of data migration – Source System, Staging area, Load area, Migrate area and Target System. 
The tool extracts the transformed data from different stages of migration and publishes the extract in the form of a spreadsheet. This spreadsheet is then used by testers and data migration team to analyze the root cause of data discrepancies. At what stage of the data flow did the failure point occur can easily be found from the output of MDT tool.
Also, it provides a health check on the quality of data migrated using Migrated Data validation functionality.


# Prerequisites:-
•	An application server or web server to deploy the war file (Like Tomcat or WebSphere)
•	Source, target and all the staging areas to be a Relational Database (Like Oracle)
•	A template.xls file containing the database details of the source, target and staging tables. (template.xls provided in the git hub)
•	A unique key to identify the records in the table of source, target and all staging areas. (This unique key is a user input to the application to retrieve the data across all areas.)
•	Eclipse or any other IDE along with a server to perform any project specific changes in the code.
•	For MDV functionality checkpoint queries are created based on the table attributes to perform their health checks. 

# Installing:-
•	Import the code in the IDE
•	Configure the build path
•	Make necessary changes in the template.xls with the details of respective tables in the source, target and other staging areas (For MDT functionality)
•	Specify the template.xls path in the code and run the application (For MDT functionality)
•	For MDV functionality, the table name which contains the updated Checkpoint queries must be updated in the common.AutomationConstants.java file

# Module Structure:-
•	Packages
1.	src.mdtTool: Contain files related to Migrated data traceability functionality.
2.	src.mdvOnline: Contain files related to Migrated data validation functionality (Online mode which can be accessed using the Migrated Data validation Online from the application home page)
3.	src.mdvOffline: Contain files related to Migrated data validation Offline functionality (Offline mode is triggered when user selects Migrated Data Validation Offline from the UI of the application home page. The user must upload two files one which contains the unique keys like account numbers and the other credentials.txt which contains the database credentials. The tool performs the validation and generates the result in an excel sheet.)

# Deployment:-
•	Create a war file using the eclipse IDE 
•	Deploy the war file in the server (Like Tomcat, WebSphere, etc)
•	Open the application URL post deployment to access the application

# Running the Application:-
# Migrated Data Traceability:
•	Open the application URL in a web browser
•	Enter the database username and password to login to the application
•	Enter the Unique key (like account number) and submit.
•	Download the generated spreadsheet and verify.

# Migrated Data validation:
•	Open the application URL in a web browser
•	Enter the database username and password to login to the application
•	Enter the key like account number (multiple keys are allowed separated by Semi-colon (;) and submit.
•	The valid account numbers will be displayed and click on a specific account number to validate the check points.
•	Download the checkpoint validation results in a pdf file.

# Built With:-
•	Java (Servlet and JSP) 
•	HTML and CSS
•	JavaScript
•	RDMS(Oracle)

# License: 
NA
