***Acronis EDR attack demo script
read : https://adn.acronis.work/pages/viewpage.action?pageId=187260029

the scheduleedr.ps1 script will schedule the attack script adr1,edr2...edr8.bat  : 1 attack per month starting next month.
the edr0.bat attack is to be launched manually after you completed every initial steps defined in the ADN page. edr0 will create your fist incident in the console. (run it as admin)

about the task scheduler :
Once you ran the PS script to schedule the attacks over the next 8 months, you must manually edit every task in task scheduler to select : run wheter the user is logged in or not, and tick run with highest privilege).


about powershell : 
if the powershell script doesn't run :" You must run this command in powershell :

Set-ExecutionPolicy -ExecutionPolicy bypass -Scope CurrentUser