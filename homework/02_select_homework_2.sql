# 재직 중이고 휴대폰 마지막 자리가 2인 직원 중 입사일이 가장 최근인 직원 3명의
# 사원번호, 직원명, 전화번호, 입사일, 퇴직여부를 출력하세요.
select
    emp_id 사원번호,
    emp_name 직원명,
    PHONE 전화번호,
    HIRE_DATE 입사일,
    ENT_YN 퇴직여부
from
    employee
where
    ENT_YN = 'N'
    and
    PHONE like '%2'
order by
    HIRE_DATE desc
limit 0, 3;


# 재직 중인 ‘대리’들의 직원명, 직급명, 급여, 사원번호, 이메일, 전화번호, 입사일을 출력하세요.
# 단, 급여를 기준으로 내림차순 출력하세요.
select
    EMP_NAME 직원명,
    concat(JOB_CODE, ' 대리') 직급명,
    SALARY 급여,
    EMP_ID 사원번호,
    EMAIL 이메일,
    PHONE 전화번호,
    HIRE_DATE 입사일
from
    employee
where
    ENT_YN = 'N'
    and
    JOB_CODE = 'J6'
order by
    SALARY desc;