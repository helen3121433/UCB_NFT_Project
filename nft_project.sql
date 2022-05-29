DROP TABLE IF EXISTS nft_collections CASCADE;

CREATE TABLE nft_collections (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	PRIMARY KEY (nft_id, nft_version)
);

DROP TABLE IF EXISTS almost_famous_pandas CASCADE;

CREATE TABLE almost_famous_pandas (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_outfit VARCHAR,
	nft_head VARCHAR,
	nft_glasses VARCHAR,
	nft_eyes VARCHAR,
	nft_extras VARCHAR,
	nft_skin VARCHAR,
	nft_mouth VARCHAR,
	nft_body VARCHAR,
	nft_background VARCHAR,
	nft_face VARCHAR,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS degenerate_ape_academy CASCADE;

CREATE TABLE degenerate_ape_academy (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_faction VARCHAR,
	nft_skin VARCHAR,
	nft_head VARCHAR,
	nft_mouth VARCHAR,
	nft_teeth VARCHAR,
	nft_clothing VARCHAR,
	nft_eyewear VARCHAR,
	nft_generation INT,
	nft_sequence INT,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS galactic_geckos CASCADE;

CREATE TABLE galactic_geckos (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_faction VARCHAR,
	nft_body VARCHAR,
	nft_armor VARCHAR,
	nft_mouth VARCHAR,
	nft_helmet VARCHAR,
	nft_ears VARCHAR,
	nft_eyes VARCHAR,
	nft_attribute_count INT,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS guild_saga_heroes CASCADE;

CREATE TABLE guild_saga_heroes (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_rarity_level VARCHAR,
	nft_race VARCHAR,
	nft_gender VARCHAR,
	nft_hair VARCHAR,
	nft_eyes VARCHAR,
	nft_head VARCHAR,
	nft_clothing VARCHAR,
	nft_back VARCHAR,
	nft_neck VARCHAR,
	nft_hands VARCHAR,
	nft_waist VARCHAR,
	nft_finger_l VARCHAR,
	nft_finger_r VARCHAR,
	nft_feet VARCHAR,
	nft_main_hand_weapon VARCHAR,
	nft_off_hand_weapon VARCHAR,
	nft_trinket VARCHAR,
	nft_background VARCHAR,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS magicticket CASCADE;

CREATE TABLE magicticket (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_level INT,
	nft_tier VARCHAR,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS magnum_ai CASCADE;

CREATE TABLE magnum_ai (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_background VARCHAR,
	nft_body VARCHAR,
	nft_face VARCHAR,
	nft_costume VARCHAR,
	nft_face_gear VARCHAR,
	nft_glasses VARCHAR,
	nft_headgear VARCHAR,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);

DROP TABLE IF EXISTS monkelabs_dao CASCADE;

CREATE TABLE monkelabs_dao (
	nft_id VARCHAR NOT NULL,
	nft_price NUMERIC(12,2),
	nft_owner VARCHAR,
	nft_collectionName VARCHAR,
	nft_collectionTitle VARCHAR,
	nft_img VARCHAR,
	nft_title VARCHAR,
	nft_propertyCategory VARCHAR,
	nft_creators VARCHAR,
	nft_attributes VARCHAR,
	nft_properties VARCHAR,
	nft_tokenDelegateValid VARCHAR,
	nft_rarity VARCHAR,
	nft_version INT,
	nft_origin_attributes VARCHAR,
	nft_background VARCHAR,
	nft_body VARCHAR,
	nft_clothes VARCHAR,
	nft_eyes VARCHAR,
	nft_head VARCHAR,
	nft_mouth VARCHAR,
	PRIMARY KEY (nft_id, nft_version),
	FOREIGN KEY (nft_id, nft_version) REFERENCES nft_collections(nft_id, nft_version)
);