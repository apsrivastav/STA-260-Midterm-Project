libname dat "C:\Users\ssrivas\Desktop\Apurv\UC Davis\UC Davis Courses\Spring Quarter 2021\STA 260\Midterm Project\cleaned SAS data";
options macrogen mprint mlogic;
 
data d;
set dat.covidp3;
run;
/*

proc contents data=d;
run; 
*/

 
data d1;
set d;
if abdom_yn="Missing" or abdom_yn="Unknown" or abdom_yn="NA"  then delete;
if chills_yn="Missing" or chills_yn="Unknown" or chills_yn="NA"  then delete;
if cough_yn="Missing" or cough_yn="Unknown" or cough_yn="NA"  then delete;
if diarrhea_yn="Missing" or diarrhea_yn="Unknown" or diarrhea_yn="NA" then delete;
if fever_yn="Missing" or fever_yn="Unknown" or fever_yn="NA" then delete;  
if headache_yn="Missing" or headache_yn="Unknown" or headache_yn="NA"  then delete; 
if myalgia_yn="Missing" or  myalgia_yn="Unknown" or myalgia_yn= "NA"  then delete;
if nauseavomit_yn="Missing" or nauseavomit_yn="Unknown"  or nauseavomit_yn="NA"  then delete;
if death_yn="Missing" or death_yn="Unknown" or death_yn="NA"  then delete;
if runnose_yn="Missing" or runnose_yn="Unknown" or runnose_yn="NA"  then delete;
if sthroat_yn="Missing" or sthroat_yn="Unknown" or sthroat_yn="NA"  then delete;
if sob_yn="Missing" or sob_yn="Unknown" or sob_yn="NA"  then delete;
if death_yn="Missing" or death_yn="Unknown" or death_yn="NA" then delete;
if sex="Missing" or sex="Unknown" or sex="NA" then delete;
if hc_work_yn="Missing" or hc_work_yn="Unknown" or hc_work_yn="NA" then delete;
if age_group="Missing" or age_group="Unknown" or age_group= "NA" then delete;
if race_ethnicity_combined="missing" or race_ethnicity_combined="Unknown" or race_ethnicity_combined= "NA" then delete;
if current_status="Missing" or current_status="Unknown" or current_status= "NA" then delete;
if hosp_yn="Missing" or hosp_yn="Unknown" or hosp_yn= "NA" then delete;
if res_state="Missing" or res_state="Unknown" or res_state= "NA" then delete;
if age_group="Missing" or age_group="Unknown" or age_group= "NA" then delete;
if abxchest_yn="missing" or abxchest_yn="Unknown" or abxchest_yn="NA" then delete;
if acuterespdistress_yn="missing" or acuterespdistress_yn="Unknown" or acuterespdistress_yn="NA" then delete;
if county_fips_code="missing" or county_fips_code="Unknown" county_fips_code="NA" then delete;
if icu_yn = "missing" or  icu_yn ="Unknown" or icu_yn = "NA" then delete;
if mechvent_yn="missing" or  mechvent_yn="Unknown" or mechvent_yn= "NA" then delete;
if medcond_yn="missing" or medcond_yn="Unknown" or medcond_yn="NA" then delete; 
if pna_yn ="missing" or pna_yn ="Unknown" or pna_yn = "NA" then delete; 
if res_county="missing" or res_county ="Unknown" or res_county = "NA" then delete;
run;

  run;



data d2;
set d1;
if (age_group = "0 - 9 Years" or age_group = "10 - 19 Years" or age_group = "20 - 29 Years" or age_group ="30 - 39 Years" 
or age_group ="40 - 49 Years") then age_cat=0;
else if age_group = "50 - 59 Years" then age_cat=1;
else if age_group = "60 - 69 Years" then age_cat=2;
else if age_group = "70 - 79 Years" then age_cat=3;
else age_cat=4;

if abdom_yn="Yes" then symp_abd=1;
else symp_abd=0;
if chills_yn="Yes" then sympchills=1;
else sympchills=0;
if cough_yn="Yes" then sympcough=1;
else sympcough=0;
if diarrhea_yn="Yes" then sympdiarrhea=1;
else sympdiarrhea=0;

if fever_yn="Yes" then sympfever=1;
else sympfever=0;
if headache_yn="Yes" then sympheadache=1;
else sympheadache=0;
if myalgia_yn="Yes" then sympmyalgia=1;
else sympmyalgia=0;
if nauseavomit_yn="Yes" then sympnausia=1;
else sympnausia=0;
if runnose_yn="Yes" then symprunnose=1;
else symprunnose = 0;
if sob_yn="Yes" then symsob=1;
else symsob=0;
if sthroat_yn="Yes" then symsthroat=1;
else symsthroat = 0;
if Sex="Male" then Sex_n=1;
 else sex_n=2;
if abxchest="Yes" then abxchest=1;
else abxchest = 0;
if acuterespdistress_yn="Yes" then acuterespdistress=1;
else acuterespdistress = 0;
if icu_yn="Yes" then icu=1;
else icu = 0;
if mechvent_yn="Yes" then mechvent=1;
else mechvent = 0;
if medcond_yn="Yes" then medcond=1;
else medcond = 0;
if pna_yn="Yes" then pna=1;
else pna = 0;




if race_ethnicity_combined="American Indian/Alaska Native, Non-Hispanic" then race=4;
if race_ethnicity_combined="Asian, Non-Hispanic" then race=4;
if race_ethnicity_combined="Black, Non-Hispanic" then race=2;
if race_ethnicity_combined="Hispanic/Latino" then race=3;
if race_ethnicity_combined="Multiple/Other, Non-Hispanic" then race=4;
if race_ethnicity_combined="Native Hawaiian/Other Pacific Islander, Non-Hispanic" then race=4;
if race_ethnicity_combined="White, Non-Hispanic" then race=1;



if res_state = "IL" 	then state=2		;
if res_state = "IN" 	then state=2		;
if res_state = "IA" 	then state=2		;
if res_state = "KS" 	then state=2		;
if res_state = "MI" 	then state=2		;
if res_state = "MN" 	then state=2		;
if res_state = "MO" 	then state=2		;
if res_state = "NE" 	then state=2		;
if res_state = "ND" 	then state=2		;
if res_state = "OH" 	then state=2		;
if res_state = "SD" 	then state=2		;
if res_state = "WI" 	then state=2		;
if res_state = "CT" 	then state=1		;
if res_state = "DE" 	then state=3		;
if res_state = "ME" 	then state=1		;
if res_state = "MD" 	then state=3		;
if res_state = "MA" 	then state=1		;
if res_state = "NH" 	then state=1		;
if res_state = "NJ" 	then state=1		;
if res_state = "NY" 	then state=1		;
if res_state = "PA" 	then state=1		;
if res_state = "RI" 	then state=1		;
if res_state = "VT" 	then state=1		;
if res_state = "AL" 	then state=3		;
if res_state = "AR" 	then state=3		;
if res_state = "FL" 	then state=3		;
if res_state = "GA" 	then state=3		;
if res_state = "KY" 	then state=3		;
if res_state = "LA" 	then state=3		;
if res_state = "MS" 	then state=3		;
if res_state = "NC" 	then state=3		;
if res_state = "SC" 	then state=3		;
if res_state = "TN" 	then state=3		;
if res_state = "VA" 	then state=3		;
if res_state = "WV" 	then state=3		;
if res_state = "AZ" 	then state=4		;
if res_state = "NM" 	then state=4		;
if res_state = "OK" 	then state=3		;
if res_state = "TX" 	then state=3		;
if res_state = "AK" 	then state=4		;
if res_state = "CA" 	then state=4		;
if res_state = "CO" 	then state=4		;
if res_state = "HI" 	then state=4		;
if res_state = "ID" 	then state=4		;
if res_state = "MT" 	then state=4		;
if res_state = "NV" 	then state=4		;
if res_state = "OR" 	then state=4		;
if res_state = "UT" 	then state=4		;
if res_state = "WA" 	then state=4		;
if res_state = "WY" 	then state=4		;
if res_state = "AS" 	then state=5		;
if res_state = "DC" 	then state=5		;
if res_state = "GU" 	then state=5		;
if res_state = "MP" 	then state=5		;
if res_state = "PR" 	then state=5		;
if res_state = "VI" 	then state=5		;

if current_status="Laboratory-confirmed case" then status=1;
else status=0;

if death_yn = "Yes" then death=1;
else death=0;



CDC_report_delay =  cdc_report_dt - onset_dt ;
run;
 data d3;
 set d2;
 if symp_abd =1 or sympchills =1 or sympcough =1 or sympdiarrhea =1 or sympfever =1 or sympheadache =1 or
sympmyalgia =1 or sympnausia =1 or symprunnose =1 or symsob =1 or symsthroat =1 then sym_any=1;
else sym_any=0;

sym = symp_abd + sympchills + sympcough + sympdiarrhea + sympfever + sympheadache +
sympmyalgia + sympnausia + symprunnose + symsob + symsthroat;
run;
 

proc freq data=d3;
tables death*abdom_yn/norow nopercent nocol;
tables death*chills_yn/norow nopercent nocol;
tables death*cough_yn/norow nopercent nocol;
tables death*diarrhea_yn/norow nopercent nocol;
tables death*headache_yn/norow nopercent nocol;
tables death*myalgia_yn/norow nopercent nocol;
tables death*nauseavomit_yn/norow nopercent nocol;
tables death*runnose_yn/norow nopercent nocol;
tables death*sthroat_yn/norow nopercent nocol;
tables death*sex/norow nopercent nocol;
tables death*hc_work_yn/norow nopercent nocol;
tables death*race_ethnicity_combined/norow nopercent nocol;
tables death*current_status/norow nopercent nocol;
tables death*hosp_yn/norow nopercent nocol;
tables death*sex_n/norow nopercent nocol;
tables death*State/norow nopercent nocol;
tables death*race/norow nopercent nocol;
tables death*status/norow nopercent nocol;
tables death*age_cat/norow nopercent nocol;
tables death*sym/norow nopercent nocol;
tables death*sym_any/norow nopercent nocol;
tables CDC_report_delay*death/norow nopercent nocol;

run;

data dat.c3;
set d3;
run;




