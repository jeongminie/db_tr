-- 공통코드
SELECT 
	a.ccgSeq
	, a.ccgName
    , b.ccName
FROM ccgroup a JOIN commoncode b
ON b.ccgSeq = a.ccgSeq and a.ccgSeq = 3;


-- 로그인
SELECT 
	a.userSeq
    , a.userId
    , a.password
    , a.phone
    , a.name
    , a.birth
    , a.email
FROM user a;

-- 메인화면 
SELECT
	a.rank
    , a.movieNm
FROM boxoffice a;

select  
	a.metropolitanCity  
	,a.city 
    ,a.cinemaName
from movie.theater a
where 1=1 
-- and a.cinemaName like '%CGV%'
-- and a.metropolitanCity  = '서울시'
	and a.operatingStatus = '영업'
order by openingDate desc
;

select
	a.metropolitanCity
	, count(*) as 총합
from theater a
group by metropolitanCity having 총합 >= 50
;

select 
	a.cinemaName
    ,a.openingDate
from theater a
where a.openingDate like '2022%'
union 
select 
	a.businessName
    ,a.openingDate
from theater a
where a.openingDate like '2021%'
;

