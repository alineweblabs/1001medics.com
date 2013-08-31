/*
Navicat PGSQL Data Transfer

Source Server         : localhost - PostgreSQL
Source Server Version : 90109
Source Host           : localhost:5432
Source Database       : dirmed
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90109
File Encoding         : 65001

Date: 2013-08-31 16:57:59
*/


-- ----------------------------
-- Sequence structure for "public"."auth_group_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_id_seq";
CREATE SEQUENCE "public"."auth_group_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_group_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_group_permissions_id_seq";
CREATE SEQUENCE "public"."auth_group_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_permission_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_permission_id_seq";
CREATE SEQUENCE "public"."auth_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_groups_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_groups_id_seq";
CREATE SEQUENCE "public"."auth_user_groups_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_id_seq";
CREATE SEQUENCE "public"."auth_user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."auth_user_user_permissions_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."auth_user_user_permissions_id_seq";
CREATE SEQUENCE "public"."auth_user_user_permissions_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_admin_log_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_admin_log_id_seq";
CREATE SEQUENCE "public"."django_admin_log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_content_type_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_content_type_id_seq";
CREATE SEQUENCE "public"."django_content_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_flatpage_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_flatpage_id_seq";
CREATE SEQUENCE "public"."django_flatpage_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_flatpage_sites_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_flatpage_sites_id_seq";
CREATE SEQUENCE "public"."django_flatpage_sites_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."django_site_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."django_site_id_seq";
CREATE SEQUENCE "public"."django_site_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."auth_group"
-- ----------------------------
DROP TABLE "public"."auth_group";
CREATE TABLE "public"."auth_group" (
"id" int4 DEFAULT nextval('auth_group_id_seq'::regclass) NOT NULL,
"name" varchar(80) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_group_permissions"
-- ----------------------------
DROP TABLE "public"."auth_group_permissions";
CREATE TABLE "public"."auth_group_permissions" (
"id" int4 DEFAULT nextval('auth_group_permissions_id_seq'::regclass) NOT NULL,
"group_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_permission"
-- ----------------------------
DROP TABLE "public"."auth_permission";
CREATE TABLE "public"."auth_permission" (
"id" int4 DEFAULT nextval('auth_permission_id_seq'::regclass) NOT NULL,
"name" varchar(50) NOT NULL,
"content_type_id" int4 NOT NULL,
"codename" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO "public"."auth_permission" VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO "public"."auth_permission" VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO "public"."auth_permission" VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO "public"."auth_permission" VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO "public"."auth_permission" VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO "public"."auth_permission" VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO "public"."auth_permission" VALUES ('7', 'Can add user', '3', 'add_user');
INSERT INTO "public"."auth_permission" VALUES ('8', 'Can change user', '3', 'change_user');
INSERT INTO "public"."auth_permission" VALUES ('9', 'Can delete user', '3', 'delete_user');
INSERT INTO "public"."auth_permission" VALUES ('10', 'Can add content type', '4', 'add_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('11', 'Can change content type', '4', 'change_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('12', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO "public"."auth_permission" VALUES ('13', 'Can add session', '5', 'add_session');
INSERT INTO "public"."auth_permission" VALUES ('14', 'Can change session', '5', 'change_session');
INSERT INTO "public"."auth_permission" VALUES ('15', 'Can delete session', '5', 'delete_session');
INSERT INTO "public"."auth_permission" VALUES ('16', 'Can add site', '6', 'add_site');
INSERT INTO "public"."auth_permission" VALUES ('17', 'Can change site', '6', 'change_site');
INSERT INTO "public"."auth_permission" VALUES ('18', 'Can delete site', '6', 'delete_site');
INSERT INTO "public"."auth_permission" VALUES ('19', 'Can add log entry', '7', 'add_logentry');
INSERT INTO "public"."auth_permission" VALUES ('20', 'Can change log entry', '7', 'change_logentry');
INSERT INTO "public"."auth_permission" VALUES ('21', 'Can delete log entry', '7', 'delete_logentry');
INSERT INTO "public"."auth_permission" VALUES ('22', 'Can add flat page', '8', 'add_flatpage');
INSERT INTO "public"."auth_permission" VALUES ('23', 'Can change flat page', '8', 'change_flatpage');
INSERT INTO "public"."auth_permission" VALUES ('24', 'Can delete flat page', '8', 'delete_flatpage');

-- ----------------------------
-- Table structure for "public"."auth_user"
-- ----------------------------
DROP TABLE "public"."auth_user";
CREATE TABLE "public"."auth_user" (
"id" int4 DEFAULT nextval('auth_user_id_seq'::regclass) NOT NULL,
"username" varchar(30) NOT NULL,
"first_name" varchar(30) NOT NULL,
"last_name" varchar(30) NOT NULL,
"email" varchar(75) NOT NULL,
"password" varchar(128) NOT NULL,
"is_staff" bool NOT NULL,
"is_active" bool NOT NULL,
"is_superuser" bool NOT NULL,
"last_login" timestamptz(6) NOT NULL,
"date_joined" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO "public"."auth_user" VALUES ('1', 'chuy', '', '', 'a@a.com', 'pbkdf2_sha256$10000$qz4Gygi1uEpj$Lv0mtPAYgThp1oLddBz0rtAg/V2+VTiuxxALVyOfk54=', 't', 't', 't', '2013-08-25 23:31:49.87852-06', '2013-08-25 23:31:22.313753-06');

-- ----------------------------
-- Table structure for "public"."auth_user_groups"
-- ----------------------------
DROP TABLE "public"."auth_user_groups";
CREATE TABLE "public"."auth_user_groups" (
"id" int4 DEFAULT nextval('auth_user_groups_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"group_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."auth_user_user_permissions"
-- ----------------------------
DROP TABLE "public"."auth_user_user_permissions";
CREATE TABLE "public"."auth_user_user_permissions" (
"id" int4 DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass) NOT NULL,
"user_id" int4 NOT NULL,
"permission_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for "public"."django_admin_log"
-- ----------------------------
DROP TABLE "public"."django_admin_log";
CREATE TABLE "public"."django_admin_log" (
"id" int4 DEFAULT nextval('django_admin_log_id_seq'::regclass) NOT NULL,
"action_time" timestamptz(6) NOT NULL,
"user_id" int4 NOT NULL,
"content_type_id" int4,
"object_id" text,
"object_repr" varchar(200) NOT NULL,
"action_flag" int2 NOT NULL,
"change_message" text NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO "public"."django_admin_log" VALUES ('1', '2013-08-25 23:35:30.272396-06', '1', '8', '1', '/ -- Inicio', '1', '');
INSERT INTO "public"."django_admin_log" VALUES ('2', '2013-08-25 23:38:12.950336-06', '1', '8', '2', '/como.funciona/ -- Como funciona', '1', '');
INSERT INTO "public"."django_admin_log" VALUES ('3', '2013-08-25 23:38:41.589944-06', '1', '8', '3', '/blog/ -- Blog', '1', '');

-- ----------------------------
-- Table structure for "public"."django_content_type"
-- ----------------------------
DROP TABLE "public"."django_content_type";
CREATE TABLE "public"."django_content_type" (
"id" int4 DEFAULT nextval('django_content_type_id_seq'::regclass) NOT NULL,
"name" varchar(100) NOT NULL,
"app_label" varchar(100) NOT NULL,
"model" varchar(100) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO "public"."django_content_type" VALUES ('1', 'permission', 'auth', 'permission');
INSERT INTO "public"."django_content_type" VALUES ('2', 'group', 'auth', 'group');
INSERT INTO "public"."django_content_type" VALUES ('3', 'user', 'auth', 'user');
INSERT INTO "public"."django_content_type" VALUES ('4', 'content type', 'contenttypes', 'contenttype');
INSERT INTO "public"."django_content_type" VALUES ('5', 'session', 'sessions', 'session');
INSERT INTO "public"."django_content_type" VALUES ('6', 'site', 'sites', 'site');
INSERT INTO "public"."django_content_type" VALUES ('7', 'log entry', 'admin', 'logentry');
INSERT INTO "public"."django_content_type" VALUES ('8', 'flat page', 'flatpages', 'flatpage');

-- ----------------------------
-- Table structure for "public"."django_flatpage"
-- ----------------------------
DROP TABLE "public"."django_flatpage";
CREATE TABLE "public"."django_flatpage" (
"id" int4 DEFAULT nextval('django_flatpage_id_seq'::regclass) NOT NULL,
"url" varchar(100) NOT NULL,
"title" varchar(200) NOT NULL,
"content" text NOT NULL,
"enable_comments" bool NOT NULL,
"template_name" varchar(70) NOT NULL,
"registration_required" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_flatpage
-- ----------------------------
INSERT INTO "public"."django_flatpage" VALUES ('1', '/', 'Inicio', '-----
Contenido Inicio', 'f', 'home/inicio.html', 'f');
INSERT INTO "public"."django_flatpage" VALUES ('2', '/como.funciona/', 'Como funciona', '-----
Contenido Como funciona', 'f', 'home/como_funciona.html', 'f');
INSERT INTO "public"."django_flatpage" VALUES ('3', '/blog/', 'Blog', '-----
Contenido Blog', 'f', 'home/blog.html', 'f');

-- ----------------------------
-- Table structure for "public"."django_flatpage_sites"
-- ----------------------------
DROP TABLE "public"."django_flatpage_sites";
CREATE TABLE "public"."django_flatpage_sites" (
"id" int4 DEFAULT nextval('django_flatpage_sites_id_seq'::regclass) NOT NULL,
"flatpage_id" int4 NOT NULL,
"site_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_flatpage_sites
-- ----------------------------
INSERT INTO "public"."django_flatpage_sites" VALUES ('1', '1', '1');
INSERT INTO "public"."django_flatpage_sites" VALUES ('2', '2', '1');
INSERT INTO "public"."django_flatpage_sites" VALUES ('3', '3', '1');

-- ----------------------------
-- Table structure for "public"."django_session"
-- ----------------------------
DROP TABLE "public"."django_session";
CREATE TABLE "public"."django_session" (
"session_key" varchar(40) NOT NULL,
"session_data" text NOT NULL,
"expire_date" timestamptz(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO "public"."django_session" VALUES ('62c7b33ad41c9337f313db0888a1641b', 'MTUxNmVkZTNjYmViNTNjY2VhMTJjM2IyY2M2MjdjNzZkMjg2ZTIyMTqAAn1xAShVEl9hdXRoX3Vz
ZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED
VQ1fYXV0aF91c2VyX2lkcQRLAXUu
', '2013-09-08 23:31:49.889957-06');

-- ----------------------------
-- Table structure for "public"."django_site"
-- ----------------------------
DROP TABLE "public"."django_site";
CREATE TABLE "public"."django_site" (
"id" int4 DEFAULT nextval('django_site_id_seq'::regclass) NOT NULL,
"domain" varchar(100) NOT NULL,
"name" varchar(50) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of django_site
-- ----------------------------
INSERT INTO "public"."django_site" VALUES ('1', 'example.com', 'example.com');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."auth_group_id_seq" OWNED BY "auth_group"."id";
ALTER SEQUENCE "public"."auth_group_permissions_id_seq" OWNED BY "auth_group_permissions"."id";
ALTER SEQUENCE "public"."auth_permission_id_seq" OWNED BY "auth_permission"."id";
ALTER SEQUENCE "public"."auth_user_groups_id_seq" OWNED BY "auth_user_groups"."id";
ALTER SEQUENCE "public"."auth_user_id_seq" OWNED BY "auth_user"."id";
ALTER SEQUENCE "public"."auth_user_user_permissions_id_seq" OWNED BY "auth_user_user_permissions"."id";
ALTER SEQUENCE "public"."django_admin_log_id_seq" OWNED BY "django_admin_log"."id";
ALTER SEQUENCE "public"."django_content_type_id_seq" OWNED BY "django_content_type"."id";
ALTER SEQUENCE "public"."django_flatpage_id_seq" OWNED BY "django_flatpage"."id";
ALTER SEQUENCE "public"."django_flatpage_sites_id_seq" OWNED BY "django_flatpage_sites"."id";
ALTER SEQUENCE "public"."django_site_id_seq" OWNED BY "django_site"."id";

-- ----------------------------
-- Uniques structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group"
-- ----------------------------
ALTER TABLE "public"."auth_group" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."auth_group_permissions"
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id" ON "public"."auth_group_permissions" USING btree ("group_id");
CREATE INDEX "auth_group_permissions_permission_id" ON "public"."auth_group_permissions" USING btree ("permission_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."auth_permission"
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id" ON "public"."auth_permission" USING btree ("content_type_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user"
-- ----------------------------
ALTER TABLE "public"."auth_user" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."auth_user_groups"
-- ----------------------------
CREATE INDEX "auth_user_groups_group_id" ON "public"."auth_user_groups" USING btree ("group_id");
CREATE INDEX "auth_user_groups_user_id" ON "public"."auth_user_groups" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD UNIQUE ("user_id", "group_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."auth_user_user_permissions"
-- ----------------------------
CREATE INDEX "auth_user_user_permissions_permission_id" ON "public"."auth_user_user_permissions" USING btree ("permission_id");
CREATE INDEX "auth_user_user_permissions_user_id" ON "public"."auth_user_user_permissions" USING btree ("user_id");

-- ----------------------------
-- Uniques structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD UNIQUE ("user_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."django_admin_log"
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id" ON "public"."django_admin_log" USING btree ("content_type_id");
CREATE INDEX "django_admin_log_user_id" ON "public"."django_admin_log" USING btree ("user_id");

-- ----------------------------
-- Checks structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD CHECK (action_flag >= 0);

-- ----------------------------
-- Primary Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table "public"."django_content_type"
-- ----------------------------
ALTER TABLE "public"."django_content_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."django_flatpage"
-- ----------------------------
CREATE INDEX "django_flatpage_url" ON "public"."django_flatpage" USING btree ("url");
CREATE INDEX "django_flatpage_url_like" ON "public"."django_flatpage" USING btree ("url" "pg_catalog"."varchar_pattern_ops");

-- ----------------------------
-- Primary Key structure for table "public"."django_flatpage"
-- ----------------------------
ALTER TABLE "public"."django_flatpage" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."django_flatpage_sites"
-- ----------------------------
CREATE INDEX "django_flatpage_sites_flatpage_id" ON "public"."django_flatpage_sites" USING btree ("flatpage_id");
CREATE INDEX "django_flatpage_sites_site_id" ON "public"."django_flatpage_sites" USING btree ("site_id");

-- ----------------------------
-- Uniques structure for table "public"."django_flatpage_sites"
-- ----------------------------
ALTER TABLE "public"."django_flatpage_sites" ADD UNIQUE ("flatpage_id", "site_id");

-- ----------------------------
-- Primary Key structure for table "public"."django_flatpage_sites"
-- ----------------------------
ALTER TABLE "public"."django_flatpage_sites" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."django_session"
-- ----------------------------
CREATE INDEX "django_session_expire_date" ON "public"."django_session" USING btree ("expire_date");

-- ----------------------------
-- Primary Key structure for table "public"."django_session"
-- ----------------------------
ALTER TABLE "public"."django_session" ADD PRIMARY KEY ("session_key");

-- ----------------------------
-- Primary Key structure for table "public"."django_site"
-- ----------------------------
ALTER TABLE "public"."django_site" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."auth_group_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_group_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_permission"
-- ----------------------------
ALTER TABLE "public"."auth_permission" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_groups"
-- ----------------------------
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_groups" ADD FOREIGN KEY ("group_id") REFERENCES "public"."auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."auth_user_user_permissions"
-- ----------------------------
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("permission_id") REFERENCES "public"."auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."auth_user_user_permissions" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_admin_log"
-- ----------------------------
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("content_type_id") REFERENCES "public"."django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_admin_log" ADD FOREIGN KEY ("user_id") REFERENCES "public"."auth_user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Key structure for table "public"."django_flatpage_sites"
-- ----------------------------
ALTER TABLE "public"."django_flatpage_sites" ADD FOREIGN KEY ("flatpage_id") REFERENCES "public"."django_flatpage" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "public"."django_flatpage_sites" ADD FOREIGN KEY ("site_id") REFERENCES "public"."django_site" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
