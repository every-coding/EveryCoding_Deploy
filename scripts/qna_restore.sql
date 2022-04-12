-- QnA Post 테이블의 문제 id가 _id(변경가능한 text 값)를 참조할 때,
-- submission id를 바탕으로 일괄 변경을 수행하는 sql 쿼리
CREATE OR REPLACE FUNCTION updateid()
RETURNS VOID AS $$
DECLARE
	r RECORD;
BEGIN
    FOR r IN SELECT id, submission_id FROM qna_post
    LOOP
		raise notice 'Id: % sub id: %', r.id, r.submission_id;
		IF r.submission_id IS null THEN
			RAISE NOTICE 'NULL';
		ELSE
			RAISE NOTICE 'update here';
			UPDATE qna_post SET problem_id = (SELECT problem_id FROM submission WHERE id = r.submission_id) WHERE id = r.id;
		END IF;
    END LOOP;
	
END;
$$ LANGUAGE plpgsql;

SELECT updateid();