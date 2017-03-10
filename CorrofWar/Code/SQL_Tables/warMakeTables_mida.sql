CREATE TABLE IF NOT EXISTS mida (
    id serial primary key,
    dispNum3 varchar(20) NOT NULL,
    dispNum4 varchar(20) NOT NULL,
    st_day int default null,
    st_month int default null,
    st_year int default null,
    end_day int default null,
    end_month int default null,
    end_year int default null,
    outcome int default null,
    settle int default null,
    fatality int default null,
    fatalPre int default null,
    maxDur int default null,
    minDur int default null,
    hiAct int default null,
    hostlev int default null,
    recip int default null,
    numA int default null,
    numB int default null,
    link1 varchar(20) default null,
    link2 varchar(20) default null,
    link3 varchar(20) default null,
    ongo2010 int default null,
    version varchar(10) default null
    );

COPY mida 
(dispNum3,
    dispNum4,
    st_day,
    st_month,
    st_year,
    end_day,
    end_month,
    end_year,
    outcome,
    settle,
    fatality,
    fatalPre,
    maxDur,
    minDur,
    hiAct,
    hostlev,
    recip,
    numA,
    numB,
    link1,
    link2,
    link3,
    ongo2010,
    version)
FROM '/home/bauer/midData/MIDA_4.01.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS midb (
    id serial primary key,
    dispNum3 varchar(20) NOT NULL,
    dispNum4 varchar(20) NOT NULL,
    stAbb varchar(20) NOT NULL,
    ccode varchar(20) NOT NULL,
    st_day int default null,
    st_month int default null,
    st_year int default null,
    end_day int default null,
    end_month int default null,
    end_year int default null,
    sideA int default null,
    revState int default null,
    revType1 int default null,
    revType2 int default null,
    fatality int default null,
    fatalPre int default null,
    hiAct int default null,
    hostlev int default null,
    orig int default null,
    version varchar(10) default null
    );

COPY midb
(dispNum3,
    dispNum4,
    stAbb,
    ccode,
    st_day,
    st_month,
    st_year,
    end_day,
    end_month,
    end_year,
    sideA,
    revState,
    revType1,
    revType2,
    fatality,
    fatalPre,
    hiAct,
    hostlev,
    orig,
    version)
FROM '/home/bauer/midData/MIDB_4.01.csv' DELIMITER ',' CSV HEADER;
