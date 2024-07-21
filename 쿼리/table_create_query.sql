-- TABLE CREATE SQL QUERY

CREATE TABLE "user_info_list" (
	"user_id"	varchar(30)		NOT NULL,
	"user_email"	varchar(30)		NOT NULL,
	"user_pw"	varchar(50)		NOT NULL,
	"user_nm"	varchar(50)		NOT NULL,
	"user_phone"	numeric		NOT NULL,
	"birth_dt"	date		NOT NULL,
	"gender"	char(3)		NOT NULL,
	"user_addr"	varchar(300)		NOT NULL,
	"user_tel"	numeric		NULL,
	"recptn_at"	char(3)		NOT NULL,
	"user_join_dt"	timestamp		NOT NULL
);

COMMENT ON COLUMN "user_info_list"."user_id" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "user_info_list"."user_pw" IS '암호화 필요';

COMMENT ON COLUMN "user_info_list"."gender" IS '001 : F
002 : M';

COMMENT ON COLUMN "user_info_list"."recptn_at" IS '001 : Y
002 : N';

CREATE TABLE "musum_place" (
	"place_id"	int		NOT NULL,
	"place_type_cd"	char(3)	DEFAULT 001	NOT NULL,
	"place_nm"	varchar(50)		NOT NULL,
	"image_file"	bytea		NULL,
	"place_dscrp"	text		NULL,
	"musum_cd"	char(3)		NOT NULL
);

COMMENT ON COLUMN "musum_place"."place_type_cd" IS '001 : 편의시설
002 : 문화시설';

COMMENT ON COLUMN "musum_place"."place_nm" IS '편의/문화 시설에 해당하는 시설 이름';

COMMENT ON COLUMN "musum_place"."place_dscrp" IS 'html 태그 전체 저장';

COMMENT ON COLUMN "musum_place"."musum_cd" IS '001 : 서울
002 : 과천
003 : 덕수궁
004 : 청주';

CREATE TABLE "musum_info" (
	"musum_cd"	char(3)		NOT NULL,
	"musum_nm"	varchar(10)		NOT NULL,
	"musum_addr"	varchar(300)		NOT NULL,
	"musum_mail_addr"	varchar(5)		NOT NULL,
	"musum_tel"	varchar(12)		NOT NULL
);

COMMENT ON COLUMN "musum_info"."musum_cd" IS '001 : 서울
002 : 과천
003 : 덕수궁
004 : 청주';

COMMENT ON COLUMN "musum_info"."musum_nm" IS '서울/과천/덕수궁/청주';

CREATE TABLE "prgrm_list" (
	"prgrm_id"	varchar(30)		NOT NULL,
	"prgrm_title"	varchar(500)		NOT NULL,
	"prgrm_strt_dt"	date		NOT NULL,
	"prgrm_end_dt"	date		NOT NULL,
	"prgrm_price"	integer	DEFAULT 0	NOT NULL,
	"max_ptcp"	integer	DEFAULT 0	NULL,
	"onlin_max_ptcp"	integer	DEFAULT 0	NOT NULL,
	"thbnail"	bytea		NOT NULL,
	"prgrm_dscrp"	text		NOT NULL,
	"regist_dt"	timestamp		NOT NULL,
	"view_cnt"	serial		NOT NULL,
	"prgrm_loca"	varchar(100)		NOT NULL,
	"prgrm_host"	varchar(200)		NULL,
	"prgrm_target"	varchar(300)		NULL,
	"relat_exhbt"	varchar(30)		NOT NULL,
	"prgrm_cd"	char(3)	DEFAULT 001	NOT NULL,
	"musum_cd"	char(3)	DEFAULT 001	NOT NULL
);

COMMENT ON COLUMN "prgrm_list"."prgrm_id" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "prgrm_list"."onlin_max_ptcp" IS '한 타임 당 들어갈 수 있는 인원';

COMMENT ON COLUMN "prgrm_list"."thbnail" IS '이미지';

COMMENT ON COLUMN "prgrm_list"."prgrm_dscrp" IS 'html 태그 전체 저장';

COMMENT ON COLUMN "prgrm_list"."prgrm_loca" IS '전시는 장소가 없음';

COMMENT ON COLUMN "prgrm_list"."prgrm_target" IS '교육, 이벤트에서 사용';

COMMENT ON COLUMN "prgrm_list"."relat_exhbt" IS '이벤트에서만 사용
(프로그램 id가 들어감)';

COMMENT ON COLUMN "prgrm_list"."prgrm_cd" IS '001 : 전시
002 : 교육
003 : 이벤트';

COMMENT ON COLUMN "prgrm_list"."musum_cd" IS '001 : 서울
002 : 과천
003 : 덕수궁
004 : 청주';

CREATE TABLE "obj_list" (
	"obj_id"	varchar(30)		NOT NULL,
	"obj_nm"	varchar(300)		NOT NULL,
	"obj_writr"	varchar(100)		NOT NULL,
	"regist_dt"	date		NOT NULL
);

COMMENT ON COLUMN "obj_list"."obj_id" IS '시퀀스 생성 필요';

CREATE TABLE "obj_exhbt" (
	"obj_exhbt_sn"	varchar(30)		NOT NULL,
	"obj_exhbt_id"	varchar(30)		NOT NULL,
	"obj_id"	varchar(30)		NOT NULL
);

COMMENT ON COLUMN "obj_exhbt"."obj_exhbt_sn" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "obj_exhbt"."obj_exhbt_id" IS '프로그램id 들어감';

COMMENT ON COLUMN "obj_exhbt"."obj_id" IS '작품 id 들어감';

CREATE TABLE "rsvt_user_list" (
	"rsvt_user_sn"	varchar(30)		NOT NULL,
	"rsvt_user_id"	varchar(30)		NOT NULL,
	"user_phone"	numeric		NOT NULL,
	"user_email"	varchar(30)		NOT NULL,
	"rsvt_ptcp_cnt"	numeric		NOT NULL,
	"rsvt_dt"	timestamp		NOT NULL,
	"rsvt_id"	varchar(30)		NOT NULL,
	"user_id"	varchar(20)		NOT NULL,
	"rsvt_cd"	char(3)	DEFAULT 001	NOT NULL,
	"pymt_type_cd"	char(3)		NULL,
	"pymt_dt"	timestamp		NULL,
	"pymt_price"	numeric		NULL,
	"pymt_cd_info"	text		NULL,
	"prgrm_id2"	varchar(30)		NOT NULL
);

COMMENT ON COLUMN "rsvt_user_list"."rsvt_user_sn" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "rsvt_user_list"."rsvt_id" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "rsvt_user_list"."rsvt_cd" IS '001 : 예약 완료
002 : 취소';

COMMENT ON COLUMN "rsvt_user_list"."pymt_type_cd" IS '001-카드002-현장결제현장결제일 경우 결제 일시, 금액, 카드 정보 컬럼  null';

COMMENT ON COLUMN "rsvt_user_list"."pymt_cd_info" IS '암호화 필요';

COMMENT ON COLUMN "rsvt_user_list"."prgrm_id2" IS '시퀀스 생성 필요';

CREATE TABLE "onlin_rsvt" (
	"rsvt_id"	varchar(30)		NOT NULL,
	"rsvt_strt_time"	timestamp		NOT NULL,
	"rsvt_end_time"	timestamp		NOT NULL,
	"prgrm_id"	varchar(30)		NOT NULL
);

COMMENT ON COLUMN "onlin_rsvt"."rsvt_id" IS '시퀀스 생성 필요';

CREATE TABLE "prgrm_cd_info" (
	"prgrm_cd"	char(3)	DEFAULT 001	NOT NULL,
	"prgrm_nm"	varchar(10)		NOT NULL
);

COMMENT ON COLUMN "prgrm_cd_info"."prgrm_cd" IS '001 : 전시
002 : 교육
003 : 이벤트';

COMMENT ON COLUMN "prgrm_cd_info"."prgrm_nm" IS '전시/교육/이벤트';

CREATE TABLE "dgt_cntnts" (
	"dgt_cntnts_id"	varchar(30)		NOT NULL,
	"dgt_cntnts_nm"	varchar(50)		NOT NULL,
	"dgt_cntnts_dscrp"	text		NULL,
	"dgt_cntnts_url"	text		NOT NULL,
	"view_cnt"	serial		NOT NULL,
	"scrp_cnt"	numeric	DEFAULT 0	NOT NULL,
	"like_cnt"	numeric	DEFAULT 0	NOT NULL
);

COMMENT ON COLUMN "dgt_cntnts"."dgt_cntnts_id" IS '시퀀스 생성 필요';

CREATE TABLE "cntnts_scrp" (
	"cntnts_scrp_sn"	varchar(30)		NOT NULL,
	"user_id"	varchar(30)		NOT NULL,
	"dgt_cntnts_id"	varchar(30)		NULL,
	"dgt_musum_cd"	char(3)		NOT NULL,
	"user_gale_id"	varchar(30)		NULL
);

COMMENT ON COLUMN "cntnts_scrp"."cntnts_scrp_sn" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "cntnts_scrp"."dgt_musum_cd" IS '001 : 디지털 콘텐츠002 : 이용자 갤러리';

CREATE TABLE "cntnts_like" (
	"cntnts_like_sn"	varchar(30)		NOT NULL,
	"user_id"	varchar(30)		NOT NULL,
	"dgt_musum_cd"	char(3)		NOT NULL,
	"dgt_cntnts_id"	varchar(30)		NULL,
	"user_gale_id"	varchar(30)		NULL
);

COMMENT ON COLUMN "cntnts_like"."cntnts_like_sn" IS '시퀀스 생성 필요';

CREATE TABLE "user_log_hist" (
	"user_log_hist_sn"	varchar(30)		NOT NULL,
	"login_dt"	timestamp		NOT NULL,
	"user_id"	varchar(30)		NULL,
	"admin_id"	varchar(30)		NULL
);

COMMENT ON COLUMN "user_log_hist"."user_log_hist_sn" IS '시퀀스 생성 필요';

CREATE TABLE "user_gale" (
	"user_gale_id"	varchar(30)		NOT NULL,
	"user_gale_nm"	varchar(50)		NOT NULL,
	"user_gale_dscrp"	text		NULL,
	"open_at"	char(3)	DEFAULT 'Y'	NOT NULL,
	"view_cnt"	serial		NOT NULL
);

COMMENT ON COLUMN "user_gale"."user_gale_id" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "user_gale"."open_at" IS '001 : Y
002 : N';

CREATE TABLE "user_gale_in_obj" (
	"gale_obj_sn"	varchar(30)		NOT NULL,
	"obj_id"	varchar(30)		NOT NULL,
	"user_gale_id"	varchar(30)		NOT NULL
);

COMMENT ON COLUMN "user_gale_in_obj"."gale_obj_sn" IS '시퀀스 생성 필요';

CREATE TABLE "dgt_musum_info" (
	"dgt_musum_cd"	char(3)		NOT NULL,
	"dgt_musum_nm"	varchar(40)		NOT NULL
);

COMMENT ON COLUMN "dgt_musum_info"."dgt_musum_cd" IS '001 : 디지털 콘텐츠
002 : 이용자 갤러리';

COMMENT ON COLUMN "dgt_musum_info"."dgt_musum_nm" IS '디지털 콘텐츠/이용자 갤러리';

CREATE TABLE "admin_info_list" (
	"admin_id"	varchar(30)		NOT NULL,
	"admin_email"	varchar(30)		NOT NULL,
	"admin_pw"	varchar(50)		NOT NULL,
	"auth_at"	VARCHAR(255)		NULL,
	"admin_nm"	varchar(50)		NOT NULL,
	"birth_dt"	date		NOT NULL,
	"gender"	char(3)		NOT NULL,
	"addr"	varchar(300)		NOT NULL,
	"admin_phone"	numeric		NOT NULL
);

COMMENT ON COLUMN "admin_info_list"."admin_id" IS '시퀀스 생성 필요';

COMMENT ON COLUMN "admin_info_list"."gender" IS '001 : F
002 : M';

CREATE TABLE "rsvt_cd_info" (
	"rsvt_cd"	char(3)	DEFAULT 001	NOT NULL,
	"rsvt_nm"	VARCHAR(255)		NOT NULL
);

COMMENT ON COLUMN "rsvt_cd_info"."rsvt_cd" IS '001 : 예약 완료
002 : 취소';

COMMENT ON COLUMN "rsvt_cd_info"."rsvt_nm" IS '예약완료/취소';

CREATE TABLE "musum_place_info" (
	"place_type_cd"	char(3)	DEFAULT 001	NOT NULL,
	"place_type_nm"	varchar(10)		NOT NULL
);

COMMENT ON COLUMN "musum_place_info"."place_type_cd" IS '001 : 편의시설
002 : 문화시설';

COMMENT ON COLUMN "musum_place_info"."place_type_nm" IS '편의시설/문화시설';

ALTER TABLE "user_info_list" ADD CONSTRAINT "PK_USER_INFO_LIST" PRIMARY KEY (
	"user_id"
);

ALTER TABLE "musum_place" ADD CONSTRAINT "PK_MUSUM_PLACE" PRIMARY KEY (
	"place_id"
);

ALTER TABLE "musum_info" ADD CONSTRAINT "PK_MUSUM_INFO" PRIMARY KEY (
	"musum_cd"
);

ALTER TABLE "prgrm_list" ADD CONSTRAINT "PK_PRGRM_LIST" PRIMARY KEY (
	"prgrm_id"
);

ALTER TABLE "obj_list" ADD CONSTRAINT "PK_OBJ_LIST" PRIMARY KEY (
	"obj_id"
);

ALTER TABLE "obj_exhbt" ADD CONSTRAINT "PK_OBJ_EXHBT" PRIMARY KEY (
	"obj_exhbt_sn"
);

ALTER TABLE "rsvt_user_list" ADD CONSTRAINT "PK_RSVT_USER_LIST" PRIMARY KEY (
	"rsvt_user_sn"
);

ALTER TABLE "onlin_rsvt" ADD CONSTRAINT "PK_ONLIN_RSVT" PRIMARY KEY (
	"rsvt_id"
);

ALTER TABLE "prgrm_cd_info" ADD CONSTRAINT "PK_PRGRM_CD_INFO" PRIMARY KEY (
	"prgrm_cd"
);

ALTER TABLE "dgt_cntnts" ADD CONSTRAINT "PK_DGT_CNTNTS" PRIMARY KEY (
	"dgt_cntnts_id"
);

ALTER TABLE "cntnts_scrp" ADD CONSTRAINT "PK_CNTNTS_SCRP" PRIMARY KEY (
	"cntnts_scrp_sn"
);

ALTER TABLE "cntnts_like" ADD CONSTRAINT "PK_CNTNTS_LIKE" PRIMARY KEY (
	"cntnts_like_sn"
);

ALTER TABLE "user_log_hist" ADD CONSTRAINT "PK_USER_LOG_HIST" PRIMARY KEY (
	"user_log_hist_sn"
);

ALTER TABLE "user_gale" ADD CONSTRAINT "PK_USER_GALE" PRIMARY KEY (
	"user_gale_id"
);

ALTER TABLE "user_gale_in_obj" ADD CONSTRAINT "PK_USER_GALE_IN_OBJ" PRIMARY KEY (
	"gale_obj_sn"
);

ALTER TABLE "dgt_musum_info" ADD CONSTRAINT "PK_DGT_MUSUM_INFO" PRIMARY KEY (
	"dgt_musum_cd"
);

ALTER TABLE "admin_info_list" ADD CONSTRAINT "PK_ADMIN_INFO_LIST" PRIMARY KEY (
	"admin_id"
);

ALTER TABLE "rsvt_cd_info" ADD CONSTRAINT "PK_RSVT_CD_INFO" PRIMARY KEY (
	"rsvt_cd"
);

ALTER TABLE "musum_place_info" ADD CONSTRAINT "PK_MUSUM_PLACE_INFO" PRIMARY KEY (
	"place_type_cd"
);

