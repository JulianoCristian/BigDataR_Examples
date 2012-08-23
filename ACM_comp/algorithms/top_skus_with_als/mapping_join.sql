-- join back to main table so we can get the integer ids mapped to the raw ids
drop table if exists small_data_train_ids;
create table small_data_train_ids as select
	bdt.userid
	,userid_id
	,bdt.sku
	,sku_id
	,bdt.category
	,category_id
	,bdt.query
	,query_id
	,click_time
	,query_time
-- a note on alias convention: first letter then any letter after an underscore
-- example: small_data_train -> b*_d*_t -> bdt

from small_data_train bdt
     ,small_data_userid_mapping bdtum
     ,small_data_sku_mapping bdtsm
     ,small_data_category_mapping bdtcm
     ,small_data_query_mapping bdtqm
where
	bdt.userid = bdtum.userid
	and bdt.sku = bdtsm.sku
	and bdt.category = bdtcm.category
	and bdt.query = bdtqm.query;


-- join back to the main table so we can get the integer ids mapped to the raw ids
drop table if exists big_data_train_ids;
create table big_data_train_ids as select
	bdt.userid
	,userid_id
	,bdt.sku
	,sku_id
	,bdt.category
	,category_id
	,bdt.query
	,query_id
	,click_time
	,query_time
-- a note on alias convention: first letter then any letter after an underscore
-- example: big_data_train -> b*_d*_t -> bdt

from big_data_train bdt
     ,big_data_userid_mapping bdtum
     ,big_data_sku_mapping bdtsm
     ,big_data_category_mapping bdtcm
     ,big_data_query_mapping bdtqm
where
	bdt.userid = bdtum.userid
	and bdt.sku = bdtsm.sku
	and bdt.category = bdtcm.category
	and bdt.query = bdtqm.query;




-- join back to main table so we can get the integer ids mapped to the raw ids
drop table if exists small_data_test_ids;
create table small_data_test_ids as select
	bdt.userid
	,userid_id
	,bdt.category
	,category_id
	,bdt.query
	,query_id
	,click_time
	,query_time
-- a note on alias convention: first letter then any letter after an underscore
-- example: small_data_test -> b*_d*_t -> bdt

from small_data_test bdt
     ,small_data_userid_mapping bdtum
     ,small_data_category_mapping bdtcm
     ,small_data_query_mapping bdtqm
where
	bdt.userid = bdtum.userid
	and bdt.category = bdtcm.category
	and bdt.query = bdtqm.query;


-- join back to the main table so we can get the integer ids mapped to the raw ids
drop table if exists big_data_test_ids;
create table big_data_test_ids as select
	bdt.userid
	,userid_id
	,bdt.category
	,category_id
	,bdt.query
	,query_id
	,click_time
	,query_time
-- a note on alias convention: first letter then any letter after an underscore
-- example: big_data_test -> b*_d*_t -> bdt
from big_data_test bdt
     ,big_data_userid_mapping bdtum
     ,big_data_category_mapping bdtcm
     ,big_data_query_mapping bdtqm
where
	bdt.userid = bdtum.userid
	and bdt.category = bdtcm.category
	and bdt.query = bdtqm.query;