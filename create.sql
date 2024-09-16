SELECT * FROM pg_extension WHERE extname = 'uuid-ossp';

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


-- 部门信息表
CREATE TABLE guest
    ( guest_id UUID NOT NULL DEFAULT uuid_generate_v4() -- 客户编号，主键
    , user_name   CHARACTER VARYING(30) NOT NULL -- 联系人名称
	, guest_name  CHARACTER VARYING(60) NOT NULL -- 公司名称
    , phone_id    INTEGER NOT NULL -- 联系人手机号
    , user_title  CHARACTER VARYING(30)  -- 联系人职位
    , CONSTRAINT guest_id_pk PRIMARY KEY (guest_id)
    ) ;

    