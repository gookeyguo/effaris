BEGIN;
INSERT INTO guest VALUES 
        ( uuid_generate_v4()
        , 'user1'
        , 'company1'
        , 13511112222
		, '首席执行官'
        );
COMMIT;