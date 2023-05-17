CREATE  TABLE ORGLOGINANDREG(ORGID int primary key, orgname varchar(20), orgemail varchar(20), jobid1 int, foreign key(jobid1) references jobvacancy(jobid)); 
CREATE  TABLE jobvacancy(jobid int primary key , jobtitle varchar(20), quali varchar(20), desc varchar(20));
CREATE  TABLE interviewsched(date1 date,venue varchar(20), interviewdetails varchar(20), jobid2 int,foreign key(jobid2) references jobvacancy(jobid));
CREATE  TABLE applicant(appid int primary key, appname varchar(20), email varchar(20), phone int, quali varchar(20));
CREATE  TABLE decision(jobid3 int,foreign key(jobid3) references jobvacancy(jobid), appid1 int,  status varchar(20))