## International Cricket Database

### Summary

Cricket is one of the most famous international sports and was played in the mid 16th century for the first time. It is a bat and ball game played between two teams of eleven players each. The batting side's players score runs by striking the bowl with the bat and running between the wickets placed on both ends of a 22-yard pitch in the center of a field. Bowling side tried to prevent this by keeping the ball within the field and getting it to either of the wickets and dismissing each batter. International Cricket Council (ICC) is the governing body of this sport with more than 100 members. This game is played in different formats internationally such as ODI (One Day International), T20, and Test. 

### Problem Statement

The cricket organization or international cricket club (ICC) is interested in creating a database to store all details of cricket tournaments/leagues. There are several cricket formats, and the organization wants to store each format’s (cricket type) name, overs and duration corresponding to each type. ICB organizes several leagues/tournaments and wants to store the name, format/type, and year of each league. There are many teams who play for multiple leagues, and ICB wants to store details of each team with team name, coach, and the owner. As mentioned above there are 11 players in each team and ICB is interested in storing each player's name, country, date of birth and role (player type). For each league, ICB organizes several matches, and it is interested in storing each match’s date and time, venue, and teams playing for it. The ICB is also interested in storing details about cricket stadiums. Each stadium has a name, city, country, and capacity. 

Since the original cricket database is much more complex than this, this project covers only the major aspects of the cricket database.

### Web Interface 

I have created a web interface to interact with this database, which includes a welcome page, two forms and corresponding result pages for each form. Since this is a public sports database and accessible to all, users do not need a login page. Here I have not included a modified page to add data or alter data since the user does not have access to do this. However, I have taken all the major steps using session, procedures methods to secure the database from misuse (SQL Injections). 

#### Note: These records in this database are not original; rather, they are created for the sole purpose of testing the queries and the web interface.
