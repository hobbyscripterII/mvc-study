create table tbl_patient_202004 (
p_no char(4) not null primary key,
p_name varchar2(20),
p_birth char(8),
p_gender char(1),
p_tel1 char(3),
p_tel2 char(4),
p_tel3 char(4),
p_city char(2)
);

insert into tbl_patient_202004 values('1001', '김환자', '19850301', 'M', '010', '2222', '0001', '10');
insert into tbl_patient_202004 values('1002', '이환자', '19900301', 'M', '010', '2222', '0002', '20');
insert into tbl_patient_202004 values('1003', '박환자', '19770301', 'F', '010', '2222', '0003', '30');
insert into tbl_patient_202004 values('1004', '조환자', '19650301', 'F', '010', '2222', '0004', '10');
insert into tbl_patient_202004 values('1005', '황환자', '19400301', 'M', '010', '2222', '0005', '40');
insert into tbl_patient_202004 values('1006', '양환자', '19440301', 'F', '010', '2222', '0006', '40');
insert into tbl_patient_202004 values('1007', '허환자', '19760301', 'F', '010', '2222', '0007', '10');

create table tbl_lab_test_202004 (
t_code char(4) not null primary key,
t_name varchar2(20)
);

insert into tbl_lab_test_202004 values('T001', '결핵');
insert into tbl_lab_test_202004 values('T002', '장티푸스');
insert into tbl_lab_test_202004 values('T003', '수두');
insert into tbl_lab_test_202004 values('T004', '홍역');
insert into tbl_lab_test_202004 values('T005', '콜레라');

create table tbl_result_202004 (
p_no char(4) not null,
t_code char(4),
t_sdate date,
t_status char(1),
t_ldate date,
t_result char(1),
primary key(p_no, t_code, t_sdate)
);

insert into tbl_result_202004 values('1001', 'T001', '2020-01-01', '1', '2020-01-02', 'X');
insert into tbl_result_202004 values('1002', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into tbl_result_202004 values('1003', 'T003', '2020-01-01', '2', '2020-01-02', 'N');
insert into tbl_result_202004 values('1004', 'T004', '2020-01-01', '2', '2020-01-02', 'P');
insert into tbl_result_202004 values('1005', 'T005', '2020-01-01', '2', '2020-01-02', 'P');
insert into tbl_result_202004 values('1006', 'T001', '2020-01-01', '2', '2020-01-02', 'N');
insert into tbl_result_202004 values('1007', 'T002', '2020-01-01', '2', '2020-01-02', 'P');
insert into tbl_result_202004 values('1005', 'T003', '2020-01-01', '2', '2020-01-02', 'P');
insert into tbl_result_202004 values('1006', 'T004', '2020-01-01', '2', '2020-01-02', 'N');
insert into tbl_result_202004 values('1007', 'T005', '2020-01-01', '2', '2020-01-02', 'N');

select p.p_no, p.p_name, l.t_name, r.t_sdate, r.t_status, r.t_ldate, r.t_result
from tbl_patient_202004 p, tbl_result_202004 r, tbl_lab_test_202004 l
where p.p_no = r.p_no and r.t_code = l.t_code
group by p.p_no, p.p_name, l.t_name, r.t_sdate, r.t_status, r.t_ldate, r.t_result
order by p.p_no;

-- 환자조회
select p_no 환자번호, p_name 환자성명,
substr(p_birth,1,4)||'년'||substr(p_birth,5,2)||'월'||substr(p_birth,7,2)||'일' 생년월일,
case p_gender when 'M' then '남' else '여' end 성별,
p_tel1||'-'||p_tel2||'-'||p_tel3 전화번호,
case p_city when '10' then '서울' when '20' then '경기' when '30' then '강원' when '40' then '대구' end 지역
from tbl_patient_202004 p;

-- 검사건수통계
select p_city, count(p_city) from tbl_patient_202004 group by p_city order by p_city;