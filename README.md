# Expidea.Website
Hotel Deals Search Form, allows users to search from a basic search and then to be able to narrow 
down the results using the various filters in the form.

Form validation:
Destination Name is Required.
Both date fields Max Trip Start Date and Min Trip Start Date, are read only, user can add date using calendar.
Max Trip Start Date field will not accept date value smaller than Min Trip Start Date.

In case submitted search did not return any result, friendly message will show to the user: "No result. Please try another filter"

# Java scrip and CSS  
- Bootstrap for UI: https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css
- Jquery Library:  https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js
- Jquery Form Validation Plugin : //cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/jquery.form-validator.min.js
- DatePicker Plugin: https://code.jquery.com/ui/1.12.1/jquery-ui.js , https://code.jquery.com/jquery-1.12.4.js

# Built With
C# .NET Framework 4.5.2.
I have 5 years’ experience of implementing web application using Asp.net C#, and the recent two years was using Sitecore CMS as well.

# Known Issue 
Form will not let the user to search for non-integer rating value Like (2.5, 3.5.. ).

# Prerequisites
- Windows OS. 

- Visual Studio 2015, If you don't have a license for VS software use community version:
http://www.kunal-chowdhury.com/2015/07/download-visualstudio-2015.html

- .NET Framework 4.5.2 is required for VS Code. If you are using Windows 7, please make sure .NET Framework 4.5.2 is installed.
Install the .NET Framework for developers:
https://docs.microsoft.com/en-us/dotnet/framework/install/guide-for-developers

# Installation / Run
- Clone code from git hub
- Open file sln using VS 2015 Expedia.Website.sln
- From VS main menu Build->Build Solution 
- Now that you’ve successfully built your code, run Debug it by selecting Debug->Start Debugging.
