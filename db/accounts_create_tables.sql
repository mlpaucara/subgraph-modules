CREATE SCHEMA IF NOT EXISTS accounts_schema;

DROP TABLE IF EXISTS accounts_schema.accounts;

CREATE TABLE accounts_schema.accounts (
       id uuid NOT NULL,
       number VARCHAR(100) NOT NULL,
       balance NUMERIC(10,4) NOT NULL,
       currency VARCHAR(20) NOT NULL,
       customer_id uuid NOT NULL,
       active bool NOT NULL default true,
       creation_timestamp timestamp NOT NULL,
       PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS accounts_schema.transactions (
    id uuid NOT NULL,
    amount NUMERIC(10,4)  NOT NULL,
    currency VARCHAR(20) NOT NULL,
    account_id uuid NOT NULL,
    creation_timestamp timestamp NOT NULL,
    PRIMARY KEY (id)
    );



insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('82f1b952-f9ac-49a3-9ddb-998a7791df32','194-955-553-225-1',642,'840','d6ef1a53-b16f-4635-8118-a2a45bda7345','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('10a3e7d2-3614-49d3-8919-3d242f648053','194-955-525-264-0',583,'604','7fcc9533-dfe3-4de0-8b69-b9b26a810cae','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('b1eec084-929e-4dd9-abfe-c5a0ff5909b1','194-955-517-719-1',807,'840','328a5f11-7c17-4dc9-9e3d-b61c4773794c','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('40a33ef3-78d8-44e7-817a-1ba6fd19aaf9','194-955-580-099-1',721,'840','d086371d-7ffe-4d8a-b8e9-bf4df105c8cd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('28483a54-b6af-474e-a6fa-c3b79d5e7804','194-955-530-224-1',643,'840','b6a94aa9-33d3-402c-b760-039249703931','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('5320c8cc-edd1-4c7f-8af2-b49025b2dc16','194-955-581-653-0',854,'604','1388311f-e240-4ad8-98d4-f338ad5421c4','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('2591fc48-5dc4-44c2-a6d7-86f16e18b1a4','194-955-577-455-0',796,'604','92dc47cb-27fd-4334-869f-7901eb8c1d72','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('f56f95c5-8e10-44b2-9651-36c0a9706388','194-955-531-658-0',691,'604','04c5f99c-b0a9-463c-a6d9-b9083e2b465e','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('bddaa6f7-4abd-4a90-a266-2abbdac061a7','194-955-582-949-0',167,'604','6ab48be6-0fd3-411b-a508-018471f504e6','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('03543c54-0e16-42cd-b9ef-67f12bfed6c6','194-955-597-472-0',840,'604','805a8e95-b92e-462b-ad32-f66e327ce6cf','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('cdeed583-97b2-4ebd-8232-e8433ee0a770','194-955-589-056-1',940,'840','3c2add9f-05ab-485b-8b3d-0586cd0098fd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('cc864f89-9a16-496a-a8c1-add39a247647','194-955-540-473-0',720,'604','b46fe923-28a3-4bc8-8598-785bb4818fde','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('6029b169-0673-40aa-a8f6-161c9399d4a9','194-955-567-975-1',711,'840','70eefc47-9b4d-4408-8771-3aae71093c34','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('b0f8c795-79a4-4054-87b2-fd3cc82e1346','194-955-550-345-1',853,'840','c1b84b05-f064-4f27-86f2-f6e9d379c2f5','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('9cbc6041-7177-48ad-bd9f-69e073824dc1','194-955-505-010-1',892,'840','29f18143-046d-4d1e-901c-860bba36ba21','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('38f753b6-fb01-40c2-b3cb-866a726418ec','194-955-539-588-0',423,'604','b9d0616b-6364-4e03-ad3d-e43d5f702697','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('3eb14e61-74ed-4a6e-a18d-40586bb315c0','194-955-598-174-0',776,'604','ba71e7b2-2c48-4fee-b69c-16c462475b91','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('f00f2b0e-17f0-47ec-adf1-7324dd3015ed','194-955-556-169-1',887,'840','d2370802-b86c-4177-96de-67acc66bea26','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('d1308354-3cb2-4f41-8ad8-8c3a23fc2ffd','194-955-507-567-0',591,'604','2f1b862e-57df-417c-a98a-67ebc8ad3aae','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('c9c68cb8-d689-484d-81e8-3cad039a73ab','194-955-559-314-0',192,'604','e0ef38de-1b1d-4b68-b7a3-40b2460bc043','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('539151e7-dcf5-4b55-a075-7e02f1db8e92','194-955-572-867-1',902,'840','5ea2bef1-b694-4b0c-98aa-b0fa85fe5826','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('b8d9f6e5-3e51-4dfc-b785-151bc8f13876','194-955-511-236-0',703,'604','af33284c-fa27-4827-9731-3fc98f60f1ce','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('450aff93-0881-4e83-89c2-ef0028f68558','194-955-538-795-1',670,'840','713f92af-119f-49b1-9ece-33736f3281fd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('18d68ae2-a8e1-4544-9dbf-e030474839eb','194-955-565-558-0',438,'604','4dd2063a-fd60-40ad-9c7f-9267af090512','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('ac5353d8-e2d3-4353-9cdb-651ded563712','194-955-572-314-1',255,'840','60f98a5d-90fe-439d-a874-dcd248e3a7a2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('836ed7fd-12f8-487a-a2c1-eebde13ef694','194-955-503-906-1',550,'840','629f0152-0364-4a3e-89e8-07e75d681ade','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8eede740-1519-47b7-a2e7-8995a40c8955','194-955-569-517-1',613,'840','71f0c72d-9db9-4ccd-9a9d-ea65b6cd0817','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('b5235cd3-1b0b-4bb7-9c6b-34030fdbdbee','194-955-595-586-1',239,'840','6a1056c0-d6e6-493f-945e-58c4da5d1da2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('ff36b88b-2449-4e10-8349-04e262e65416','194-955-515-041-0',107,'604','1cbc1ae9-b185-4fd4-9eb2-6a2c187c2b44','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('fa12243d-f220-4e65-97c5-167d96fb379b','194-955-595-524-0',916,'604','8288395f-3116-4278-88ff-31c666b265dd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('d0e0a889-17d9-435e-b18c-e4b8be1ec762','194-955-527-865-1',190,'840','a92a2484-6aa1-4725-a3fc-e765b9d3ed21','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('272b7e86-1e2f-4830-8197-f411c1fc94cb','194-955-541-463-1',544,'840','c0a4f3e0-7b66-4df5-9091-3f06418ad04a','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8b8e90e3-979d-44f1-909e-718e6108aeb1','194-955-569-713-0',329,'604','4ebc7349-3b28-441c-92f6-452f74a58275','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8f575fe1-a0c5-41d6-9d72-141643019bf0','194-955-577-610-1',787,'840','811c96c0-696f-4b97-8c45-b26d4a2dd0b8','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('2b78c811-efe2-47a5-bd23-d24590f2a100','194-955-592-143-0',467,'604','0ce008c0-2617-43c2-9184-e16756ef19e7','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('a0b9f314-6d66-458d-a5be-6f42d998c4f8','194-955-576-346-0',195,'604','5bf0b5bb-b173-43c4-8abb-f3e5d8af9ab7','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('a4d7538e-a53a-4c5f-9bb0-8eeb7648e865','194-955-520-186-1',822,'840','8381d387-8d5d-4026-aa33-b15a580662ff','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8424a43a-c9e2-4159-b69b-06e1d65468d6','194-955-572-852-0',593,'604','8337787b-ae38-4d45-a331-0ea0452f9236','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('c370eac1-05cf-4e75-8655-8d6fbc9b973e','194-955-564-835-0',519,'604','6a3e6107-1540-4af5-9153-6e1a9527ebc2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('9089e67c-af4d-4fe8-9c9c-ac8d7349a27b','194-955-518-912-1',360,'840','24e9509a-400f-4a80-b4ef-fb6e2457faa4','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('25576dbd-a712-49ac-91d8-a1d8430ca2af','194-955-521-705-0',347,'604','74fd6fb7-ba11-4d9f-a71e-1ed501a059fa','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('1658ee20-2bfc-4714-be02-32b68903f509','194-955-547-598-1',608,'840','4c40d525-ae8b-4f40-9d04-6f7cec3a9db3','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('f012282f-7d1a-4b1f-abee-77fefdcfed54','194-955-596-353-1',113,'840','593f861a-f448-44b0-8370-8f5caa8633cd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('3c4fb0ef-9a21-4a0b-868f-8de4927e1804','194-955-556-760-1',956,'840','4f668c72-3a7d-4a84-b45c-1c169288e70d','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('734b18c0-7bb5-4f72-b81d-18de3c7bbc81','194-955-530-098-0',543,'604','a08b3803-dc3a-43e3-a7f9-12b4b5d1c5fe','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('5109b90b-c3da-47f3-b3f5-d3d4754e7240','194-955-570-398-1',329,'840','a903e62a-516b-4f8f-b3c6-ccefb25f6e16','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('1455649d-5d5e-433b-9759-b05859494420','194-955-582-755-1',645,'840','7e5ef5c6-fd51-469d-8ff8-5669fa336502','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('0164538c-0119-4555-b15e-a8dd3cd7d3d4','194-955-551-818-0',618,'604','ff779f57-7b32-4ac5-b696-12669090d8b3','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('d36bc3b2-aa90-4e53-a932-0f2638760fc5','194-955-519-708-0',962,'604','758e45fc-c2ec-401c-b984-463c20dfd4f2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('dfb4ee5f-6fe4-4032-ab77-f7d82d538758','194-955-569-521-0',625,'604','b363f82c-7c28-4212-a309-e626b36c1ff6','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('4b13a3d8-c0f1-4c3a-905d-16731ab8696f','194-955-513-240-1',326,'840','d6ef1a53-b16f-4635-8118-a2a45bda7345','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('2c5a46a4-471f-4b2a-aca3-086cf8a171fd','194-955-508-578-1',736,'840','7fcc9533-dfe3-4de0-8b69-b9b26a810cae','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('620d3f9e-d6fb-4921-8a84-48f898220ca4','194-955-572-567-1',973,'840','328a5f11-7c17-4dc9-9e3d-b61c4773794c','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('f07d6e09-731a-4282-977f-024e7cb67b5c','194-955-559-086-1',723,'840','d086371d-7ffe-4d8a-b8e9-bf4df105c8cd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('456a0b41-1276-4ee0-8f98-3a4d2d98f079','194-955-509-026-0',712,'604','b6a94aa9-33d3-402c-b760-039249703931','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('4cc1bff4-6c55-4be7-b40b-5550f96ff995','194-955-553-816-0',906,'604','1388311f-e240-4ad8-98d4-f338ad5421c4','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('332fcf8e-c82f-4168-a8a6-30c1d996c1e0','194-955-515-838-0',769,'604','92dc47cb-27fd-4334-869f-7901eb8c1d72','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('a0f395bf-75c8-4ac5-8bba-b75d8fa0f853','194-955-520-758-0',442,'604','04c5f99c-b0a9-463c-a6d9-b9083e2b465e','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('2c1ae9eb-7582-4ef0-87cc-b0f52fdb1792','194-955-583-183-0',582,'604','6ab48be6-0fd3-411b-a508-018471f504e6','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('087078a4-6dd4-4543-9e9a-0f88a119e9a5','194-955-557-246-0',926,'604','805a8e95-b92e-462b-ad32-f66e327ce6cf','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('c7c72394-5d50-424a-8041-2922d141502e','194-955-582-786-1',462,'840','3c2add9f-05ab-485b-8b3d-0586cd0098fd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('6081c206-39bf-41ae-82fb-4bd19c182c20','194-955-532-017-1',292,'840','b46fe923-28a3-4bc8-8598-785bb4818fde','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('207231d2-740d-4304-9e8c-d1782f617a2b','194-955-501-300-0',123,'604','70eefc47-9b4d-4408-8771-3aae71093c34','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('6ae1791a-6fff-40d7-9463-3ed065ddbb93','194-955-580-987-0',594,'604','c1b84b05-f064-4f27-86f2-f6e9d379c2f5','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('a7adb98f-cb3a-44de-a732-4fa161675002','194-955-538-856-0',446,'604','29f18143-046d-4d1e-901c-860bba36ba21','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('3eb7ada4-ac78-4db9-90d1-61ce6875234c','194-955-522-379-0',444,'604','b9d0616b-6364-4e03-ad3d-e43d5f702697','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('99019ea2-2417-4616-8ba0-ae07e2aeff68','194-955-594-769-0',483,'604','ba71e7b2-2c48-4fee-b69c-16c462475b91','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('e8640cc8-72cc-4e18-935c-95efa94f8157','194-955-536-650-1',666,'840','d2370802-b86c-4177-96de-67acc66bea26','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('b34f1b00-c767-4862-89ef-2c201222a7d0','194-955-597-524-0',847,'604','2f1b862e-57df-417c-a98a-67ebc8ad3aae','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('59ed1e44-61cb-4c0f-9274-78c94c05ad6c','194-955-557-747-0',366,'604','e0ef38de-1b1d-4b68-b7a3-40b2460bc043','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('f026e9a0-911d-46da-a26c-9cfae86ebfba','194-955-500-084-1',176,'840','5ea2bef1-b694-4b0c-98aa-b0fa85fe5826','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('e3fc9ee4-a238-40ba-9756-1e6d86af3a08','194-955-568-976-1',799,'840','af33284c-fa27-4827-9731-3fc98f60f1ce','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('49f362eb-2584-4b84-ad57-5974a4efb4fd','194-955-521-285-0',600,'604','713f92af-119f-49b1-9ece-33736f3281fd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8d3d13ea-60b5-406c-8e59-ed98b7b16792','194-955-566-572-1',696,'840','4dd2063a-fd60-40ad-9c7f-9267af090512','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('3ec61b8d-4031-412d-b117-2e57f0555ec2','194-955-503-683-0',749,'604','60f98a5d-90fe-439d-a874-dcd248e3a7a2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8a9f1f32-6b9a-4d7d-8352-73ef5f6fab16','194-955-544-340-0',126,'604','629f0152-0364-4a3e-89e8-07e75d681ade','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('769ee631-5321-420f-b7d7-10ac119e844b','194-955-527-825-1',672,'840','71f0c72d-9db9-4ccd-9a9d-ea65b6cd0817','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('74b1f76f-6b2c-4ab2-81cc-93ef37290d7c','194-955-575-215-0',982,'604','6a1056c0-d6e6-493f-945e-58c4da5d1da2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('755c4ca2-cd52-4aa0-8a01-2388704ac32d','194-955-520-933-1',728,'840','1cbc1ae9-b185-4fd4-9eb2-6a2c187c2b44','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('dac05fb5-a5c5-429e-be28-3a896bf2a921','194-955-575-183-0',933,'604','8288395f-3116-4278-88ff-31c666b265dd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('c5b4dd7d-f3de-4eed-afe5-1400665e9813','194-955-551-652-1',253,'840','a92a2484-6aa1-4725-a3fc-e765b9d3ed21','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('84b6f5a3-adba-44de-a5a1-c924b4daed12','194-955-565-250-1',649,'840','c0a4f3e0-7b66-4df5-9091-3f06418ad04a','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('92df66fc-e5cb-47fa-9c19-0c475448e6f4','194-955-557-967-0',269,'604','4ebc7349-3b28-441c-92f6-452f74a58275','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('6f3257a0-ffe4-4949-ba61-b6076ec552dd','194-955-536-448-1',513,'840','811c96c0-696f-4b97-8c45-b26d4a2dd0b8','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('c9c3def4-0603-4ff6-89aa-3dd4be3b84fc','194-955-507-215-0',847,'604','0ce008c0-2617-43c2-9184-e16756ef19e7','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('27fa3cd3-8d76-432d-b136-4248a8093c11','194-955-547-408-1',944,'840','5bf0b5bb-b173-43c4-8abb-f3e5d8af9ab7','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('d51f4c99-1d06-4b0a-bcd0-daff4dcdb029','194-955-530-431-1',739,'840','8381d387-8d5d-4026-aa33-b15a580662ff','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('847c484c-cf18-4fd5-b2c3-089d68e760d1','194-955-547-135-0',133,'604','8337787b-ae38-4d45-a331-0ea0452f9236','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('725acbc0-bafb-4526-a32f-f30f8e06916a','194-955-565-366-0',706,'604','6a3e6107-1540-4af5-9153-6e1a9527ebc2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('8d2e518a-cf0d-4705-8cfe-69b49a97fc89','194-955-536-852-1',686,'840','24e9509a-400f-4a80-b4ef-fb6e2457faa4','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('bbb1cb66-bc19-47da-aa2f-0a7587549080','194-955-584-300-1',293,'840','74fd6fb7-ba11-4d9f-a71e-1ed501a059fa','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('30e84108-f52c-460d-b2e2-bf578f711c0a','194-955-588-409-1',748,'840','4c40d525-ae8b-4f40-9d04-6f7cec3a9db3','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('530dd2de-db73-4db7-962f-1498bac26cd7','194-955-590-181-1',134,'840','593f861a-f448-44b0-8370-8f5caa8633cd','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('dbe525c4-d5be-4dc0-baf8-d87bc0afee25','194-955-549-114-1',129,'840','4f668c72-3a7d-4a84-b45c-1c169288e70d','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('5b0294e4-c7de-4b0f-b9d3-a565c70d98c4','194-955-575-686-1',172,'840','a08b3803-dc3a-43e3-a7f9-12b4b5d1c5fe','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('624a9b5b-93c4-4eab-8a22-ac54fa12874a','194-955-514-088-1',970,'840','a903e62a-516b-4f8f-b3c6-ccefb25f6e16','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('5dd8fcdf-a323-4545-a7eb-72d33235f4c6','194-955-559-239-1',513,'840','7e5ef5c6-fd51-469d-8ff8-5669fa336502','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('4563760b-9dd4-4cc4-b533-653a2d6c6f0a','194-955-564-396-0',676,'604','ff779f57-7b32-4ac5-b696-12669090d8b3','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('eaa7d763-4c36-46c0-bcf5-ace49fb93ce9','194-955-595-629-0',173,'604','758e45fc-c2ec-401c-b984-463c20dfd4f2','2023-01-23T10:54:27Z');
insert into accounts_schema.accounts(id,number,balance,currency,customer_id,creation_timestamp) values ('513e9183-6027-4284-b164-87b84ed5e3ef','194-955-550-175-0',159,'604','b363f82c-7c28-4212-a309-e626b36c1ff6','2023-01-23T10:54:27Z');




INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('b34f1b00-c767-4862-89ef-2c201222a7d0',100,'840','82f1b952-f9ac-49a3-9ddb-998a7791df32','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('59ed1e44-61cb-4c0f-9274-78c94c05ad6c',100,'604','10a3e7d2-3614-49d3-8919-3d242f648053','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('f026e9a0-911d-46da-a26c-9cfae86ebfba',100,'840','b1eec084-929e-4dd9-abfe-c5a0ff5909b1','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('e3fc9ee4-a238-40ba-9756-1e6d86af3a08',100,'840','40a33ef3-78d8-44e7-817a-1ba6fd19aaf9','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('49f362eb-2584-4b84-ad57-5974a4efb4fd',100,'840','28483a54-b6af-474e-a6fa-c3b79d5e7804','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8d3d13ea-60b5-406c-8e59-ed98b7b16792',100,'604','5320c8cc-edd1-4c7f-8af2-b49025b2dc16','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('3ec61b8d-4031-412d-b117-2e57f0555ec2',100,'604','2591fc48-5dc4-44c2-a6d7-86f16e18b1a4','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8a9f1f32-6b9a-4d7d-8352-73ef5f6fab16',100,'604','f56f95c5-8e10-44b2-9651-36c0a9706388','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('769ee631-5321-420f-b7d7-10ac119e844b',100,'604','bddaa6f7-4abd-4a90-a266-2abbdac061a7','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('74b1f76f-6b2c-4ab2-81cc-93ef37290d7c',100,'604','03543c54-0e16-42cd-b9ef-67f12bfed6c6','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('755c4ca2-cd52-4aa0-8a01-2388704ac32d',100,'840','cdeed583-97b2-4ebd-8232-e8433ee0a770','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('dac05fb5-a5c5-429e-be28-3a896bf2a921',100,'604','cc864f89-9a16-496a-a8c1-add39a247647','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('c5b4dd7d-f3de-4eed-afe5-1400665e9813',100,'840','6029b169-0673-40aa-a8f6-161c9399d4a9','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('84b6f5a3-adba-44de-a5a1-c924b4daed12',100,'840','b0f8c795-79a4-4054-87b2-fd3cc82e1346','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('92df66fc-e5cb-47fa-9c19-0c475448e6f4',100,'840','9cbc6041-7177-48ad-bd9f-69e073824dc1','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('6f3257a0-ffe4-4949-ba61-b6076ec552dd',100,'604','38f753b6-fb01-40c2-b3cb-866a726418ec','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('c9c3def4-0603-4ff6-89aa-3dd4be3b84fc',100,'604','3eb14e61-74ed-4a6e-a18d-40586bb315c0','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('27fa3cd3-8d76-432d-b136-4248a8093c11',100,'840','f00f2b0e-17f0-47ec-adf1-7324dd3015ed','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('d51f4c99-1d06-4b0a-bcd0-daff4dcdb029',100,'604','d1308354-3cb2-4f41-8ad8-8c3a23fc2ffd','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('847c484c-cf18-4fd5-b2c3-089d68e760d1',100,'604','c9c68cb8-d689-484d-81e8-3cad039a73ab','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('725acbc0-bafb-4526-a32f-f30f8e06916a',100,'840','539151e7-dcf5-4b55-a075-7e02f1db8e92','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8d2e518a-cf0d-4705-8cfe-69b49a97fc89',100,'604','b8d9f6e5-3e51-4dfc-b785-151bc8f13876','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('bbb1cb66-bc19-47da-aa2f-0a7587549080',100,'840','450aff93-0881-4e83-89c2-ef0028f68558','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('30e84108-f52c-460d-b2e2-bf578f711c0a',100,'604','18d68ae2-a8e1-4544-9dbf-e030474839eb','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('530dd2de-db73-4db7-962f-1498bac26cd7',100,'840','ac5353d8-e2d3-4353-9cdb-651ded563712','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('dbe525c4-d5be-4dc0-baf8-d87bc0afee25',100,'840','836ed7fd-12f8-487a-a2c1-eebde13ef694','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('5b0294e4-c7de-4b0f-b9d3-a565c70d98c4',100,'840','8eede740-1519-47b7-a2e7-8995a40c8955','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('624a9b5b-93c4-4eab-8a22-ac54fa12874a',100,'840','b5235cd3-1b0b-4bb7-9c6b-34030fdbdbee','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('5dd8fcdf-a323-4545-a7eb-72d33235f4c6',100,'604','ff36b88b-2449-4e10-8349-04e262e65416','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('4563760b-9dd4-4cc4-b533-653a2d6c6f0a',100,'604','fa12243d-f220-4e65-97c5-167d96fb379b','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('eaa7d763-4c36-46c0-bcf5-ace49fb93ce9',100,'840','d0e0a889-17d9-435e-b18c-e4b8be1ec762','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('513e9183-6027-4284-b164-87b84ed5e3ef',100,'840','272b7e86-1e2f-4830-8197-f411c1fc94cb','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('82f1b952-f9ac-49a3-9ddb-998a7791df32',100,'604','8b8e90e3-979d-44f1-909e-718e6108aeb1','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('10a3e7d2-3614-49d3-8919-3d242f648053',100,'840','8f575fe1-a0c5-41d6-9d72-141643019bf0','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('b1eec084-929e-4dd9-abfe-c5a0ff5909b1',100,'604','2b78c811-efe2-47a5-bd23-d24590f2a100','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('40a33ef3-78d8-44e7-817a-1ba6fd19aaf9',100,'604','a0b9f314-6d66-458d-a5be-6f42d998c4f8','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('28483a54-b6af-474e-a6fa-c3b79d5e7804',100,'840','a4d7538e-a53a-4c5f-9bb0-8eeb7648e865','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('5320c8cc-edd1-4c7f-8af2-b49025b2dc16',100,'604','8424a43a-c9e2-4159-b69b-06e1d65468d6','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('2591fc48-5dc4-44c2-a6d7-86f16e18b1a4',100,'604','c370eac1-05cf-4e75-8655-8d6fbc9b973e','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('f56f95c5-8e10-44b2-9651-36c0a9706388',100,'840','9089e67c-af4d-4fe8-9c9c-ac8d7349a27b','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('bddaa6f7-4abd-4a90-a266-2abbdac061a7',100,'604','25576dbd-a712-49ac-91d8-a1d8430ca2af','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('03543c54-0e16-42cd-b9ef-67f12bfed6c6',100,'840','1658ee20-2bfc-4714-be02-32b68903f509','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('cdeed583-97b2-4ebd-8232-e8433ee0a770',100,'840','f012282f-7d1a-4b1f-abee-77fefdcfed54','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('cc864f89-9a16-496a-a8c1-add39a247647',100,'840','3c4fb0ef-9a21-4a0b-868f-8de4927e1804','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('6029b169-0673-40aa-a8f6-161c9399d4a9',100,'604','734b18c0-7bb5-4f72-b81d-18de3c7bbc81','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('b0f8c795-79a4-4054-87b2-fd3cc82e1346',100,'840','5109b90b-c3da-47f3-b3f5-d3d4754e7240','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('9cbc6041-7177-48ad-bd9f-69e073824dc1',100,'840','1455649d-5d5e-433b-9759-b05859494420','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('38f753b6-fb01-40c2-b3cb-866a726418ec',100,'604','0164538c-0119-4555-b15e-a8dd3cd7d3d4','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('3eb14e61-74ed-4a6e-a18d-40586bb315c0',100,'604','d36bc3b2-aa90-4e53-a932-0f2638760fc5','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('f00f2b0e-17f0-47ec-adf1-7324dd3015ed',100,'604','dfb4ee5f-6fe4-4032-ab77-f7d82d538758','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('d1308354-3cb2-4f41-8ad8-8c3a23fc2ffd',100,'840','4b13a3d8-c0f1-4c3a-905d-16731ab8696f','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('c9c68cb8-d689-484d-81e8-3cad039a73ab',100,'840','2c5a46a4-471f-4b2a-aca3-086cf8a171fd','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('539151e7-dcf5-4b55-a075-7e02f1db8e92',100,'840','620d3f9e-d6fb-4921-8a84-48f898220ca4','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('b8d9f6e5-3e51-4dfc-b785-151bc8f13876',100,'840','f07d6e09-731a-4282-977f-024e7cb67b5c','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('450aff93-0881-4e83-89c2-ef0028f68558',100,'604','456a0b41-1276-4ee0-8f98-3a4d2d98f079','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('18d68ae2-a8e1-4544-9dbf-e030474839eb',100,'604','4cc1bff4-6c55-4be7-b40b-5550f96ff995','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('ac5353d8-e2d3-4353-9cdb-651ded563712',100,'604','332fcf8e-c82f-4168-a8a6-30c1d996c1e0','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('836ed7fd-12f8-487a-a2c1-eebde13ef694',100,'604','a0f395bf-75c8-4ac5-8bba-b75d8fa0f853','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8eede740-1519-47b7-a2e7-8995a40c8955',100,'604','2c1ae9eb-7582-4ef0-87cc-b0f52fdb1792','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('b5235cd3-1b0b-4bb7-9c6b-34030fdbdbee',100,'604','087078a4-6dd4-4543-9e9a-0f88a119e9a5','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('ff36b88b-2449-4e10-8349-04e262e65416',100,'840','c7c72394-5d50-424a-8041-2922d141502e','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('fa12243d-f220-4e65-97c5-167d96fb379b',100,'840','6081c206-39bf-41ae-82fb-4bd19c182c20','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('d0e0a889-17d9-435e-b18c-e4b8be1ec762',100,'604','207231d2-740d-4304-9e8c-d1782f617a2b','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('272b7e86-1e2f-4830-8197-f411c1fc94cb',100,'604','6ae1791a-6fff-40d7-9463-3ed065ddbb93','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8b8e90e3-979d-44f1-909e-718e6108aeb1',100,'604','a7adb98f-cb3a-44de-a732-4fa161675002','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8f575fe1-a0c5-41d6-9d72-141643019bf0',100,'604','3eb7ada4-ac78-4db9-90d1-61ce6875234c','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('2b78c811-efe2-47a5-bd23-d24590f2a100',100,'604','99019ea2-2417-4616-8ba0-ae07e2aeff68','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('a0b9f314-6d66-458d-a5be-6f42d998c4f8',100,'840','e8640cc8-72cc-4e18-935c-95efa94f8157','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('a4d7538e-a53a-4c5f-9bb0-8eeb7648e865',100,'604','b34f1b00-c767-4862-89ef-2c201222a7d0','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('8424a43a-c9e2-4159-b69b-06e1d65468d6',100,'604','59ed1e44-61cb-4c0f-9274-78c94c05ad6c','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('c370eac1-05cf-4e75-8655-8d6fbc9b973e',100,'840','f026e9a0-911d-46da-a26c-9cfae86ebfba','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('9089e67c-af4d-4fe8-9c9c-ac8d7349a27b',100,'840','e3fc9ee4-a238-40ba-9756-1e6d86af3a08','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('25576dbd-a712-49ac-91d8-a1d8430ca2af',100,'604','49f362eb-2584-4b84-ad57-5974a4efb4fd','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('1658ee20-2bfc-4714-be02-32b68903f509',100,'840','8d3d13ea-60b5-406c-8e59-ed98b7b16792','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('f012282f-7d1a-4b1f-abee-77fefdcfed54',100,'604','3ec61b8d-4031-412d-b117-2e57f0555ec2','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('3c4fb0ef-9a21-4a0b-868f-8de4927e1804',100,'604','8a9f1f32-6b9a-4d7d-8352-73ef5f6fab16','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('734b18c0-7bb5-4f72-b81d-18de3c7bbc81',100,'840','769ee631-5321-420f-b7d7-10ac119e844b','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('5109b90b-c3da-47f3-b3f5-d3d4754e7240',100,'604','74b1f76f-6b2c-4ab2-81cc-93ef37290d7c','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('1455649d-5d5e-433b-9759-b05859494420',100,'840','755c4ca2-cd52-4aa0-8a01-2388704ac32d','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('0164538c-0119-4555-b15e-a8dd3cd7d3d4',100,'604','dac05fb5-a5c5-429e-be28-3a896bf2a921','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('d36bc3b2-aa90-4e53-a932-0f2638760fc5',100,'840','c5b4dd7d-f3de-4eed-afe5-1400665e9813','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('dfb4ee5f-6fe4-4032-ab77-f7d82d538758',100,'840','84b6f5a3-adba-44de-a5a1-c924b4daed12','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('4b13a3d8-c0f1-4c3a-905d-16731ab8696f',100,'604','92df66fc-e5cb-47fa-9c19-0c475448e6f4','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('2c5a46a4-471f-4b2a-aca3-086cf8a171fd',100,'840','6f3257a0-ffe4-4949-ba61-b6076ec552dd','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('620d3f9e-d6fb-4921-8a84-48f898220ca4',100,'604','c9c3def4-0603-4ff6-89aa-3dd4be3b84fc','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('f07d6e09-731a-4282-977f-024e7cb67b5c',100,'840','27fa3cd3-8d76-432d-b136-4248a8093c11','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('456a0b41-1276-4ee0-8f98-3a4d2d98f079',100,'840','d51f4c99-1d06-4b0a-bcd0-daff4dcdb029','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('4cc1bff4-6c55-4be7-b40b-5550f96ff995',100,'604','847c484c-cf18-4fd5-b2c3-089d68e760d1','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('332fcf8e-c82f-4168-a8a6-30c1d996c1e0',100,'604','725acbc0-bafb-4526-a32f-f30f8e06916a','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('a0f395bf-75c8-4ac5-8bba-b75d8fa0f853',100,'840','8d2e518a-cf0d-4705-8cfe-69b49a97fc89','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('2c1ae9eb-7582-4ef0-87cc-b0f52fdb1792',100,'840','bbb1cb66-bc19-47da-aa2f-0a7587549080','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('087078a4-6dd4-4543-9e9a-0f88a119e9a5',100,'840','30e84108-f52c-460d-b2e2-bf578f711c0a','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('c7c72394-5d50-424a-8041-2922d141502e',100,'840','530dd2de-db73-4db7-962f-1498bac26cd7','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('6081c206-39bf-41ae-82fb-4bd19c182c20',100,'840','dbe525c4-d5be-4dc0-baf8-d87bc0afee25','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('207231d2-740d-4304-9e8c-d1782f617a2b',100,'840','5b0294e4-c7de-4b0f-b9d3-a565c70d98c4','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('6ae1791a-6fff-40d7-9463-3ed065ddbb93',100,'840','624a9b5b-93c4-4eab-8a22-ac54fa12874a','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('a7adb98f-cb3a-44de-a732-4fa161675002',100,'840','5dd8fcdf-a323-4545-a7eb-72d33235f4c6','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('3eb7ada4-ac78-4db9-90d1-61ce6875234c',100,'604','4563760b-9dd4-4cc4-b533-653a2d6c6f0a','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('99019ea2-2417-4616-8ba0-ae07e2aeff68',100,'604','eaa7d763-4c36-46c0-bcf5-ace49fb93ce9','2023-01-23T10:54:27Z');
INSERT INTO accounts_schema.transactions(id,amount,currency,account_id,creation_timestamp) values ('e8640cc8-72cc-4e18-935c-95efa94f8157',100,'604','513e9183-6027-4284-b164-87b84ed5e3ef','2023-01-23T10:54:27Z');


