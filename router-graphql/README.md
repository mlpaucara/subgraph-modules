# Puertos

* accounts: 9061:9061
* accounts-graphql: 8081:8080
* customers-graphql: 8080:8080
* risks: 9062:8585
* risks-graphql: 8082:8080


# GraphQL - Mock Server
![Architecture](./assets/images/1_architecture.png)
1.  Endpoint
    * https://current--super-bank.apollographos.net/graphql
   2. Querys
       * Buscar clientes por apellidos y nombres
           ```
           query {
             customerSearch(filter: { lastName: "a" }) {
               id
               lastName
               firstName
               phones {
                 phone
                 createDateTime
               }
               accounts {
                 id
                 number
                 balance
               }
               evaluation {
                 moodys
                 sbs
               }
             }
           }
           ```
           ```shell
            curl --location 'https://current--super-bank.apollographos.net/graphql' \
            --header 'Content-Type: application/json' \
            --data '{"query":"{\n    customerSearch(filter: { lastName: \"a\" }) {\n        id\n        lastName\n        firstName\n        phones {\n            phone\n            createDateTime\n        }\n        accounts {\n            id\n            number\n            balance\n        }\n        evaluation {\n            moodys\n            sbs\n        }\n    }\n}\n","variables":{}}'
           ```  

      * Cliente por ID
           ```
           query{
               customer(filter: { id:  "e0ef38de-1b1d-4b68-b7a3-40b2460bc043" }) {
                   id
                   lastName
                   accounts {
                       id
                       balance
                   }
               }
           }
           ```
           ```shell
            curl --location 'https://current--super-bank.apollographos.net/graphql' \
            --header 'Content-Type: application/json' \
            --data '{"query":"query{\n               customer(filter: { id:  \"e0ef38de-1b1d-4b68-b7a3-40b2460bc043\" }) {\n                   id\n                   lastName\n                   accounts {\n                       id\n                       balance\n                   }\n               }\n           }","variables":{}}'
            ```  

      * Cuentas por clienteId
           ```
           query{
             accountsByCustomer(filter: {customerId:"e0ef38de-1b1d-4b68-b7a3-40b2460bc043"} ) {
               balance
               id
               currency
               number
             }
           }
           ```
        
           ```shell
            curl --location 'https://current--super-bank.apollographos.net/graphql' \
            --header 'Content-Type: application/json' \
            --data '{"query":"           query{\n             accountsByCustomer(filter: {customerId:\"e0ef38de-1b1d-4b68-b7a3-40b2460bc043\"} ) {\n               balance\n               id\n               currency\n               number\n             }\n           }","variables":{}}'
           ```  
        
      * Evaluación por clienteId
           ```
            query{
             evaluation(customerID: "e0ef38de-1b1d-4b68-b7a3-40b2460bc043") {
               customerId
               sbs
               pcr
               moodys
             }
           }
           ```
           ```shell
            curl --location 'https://current--super-bank.apollographos.net/graphql' \
            --header 'Content-Type: application/json' \
            --data '{"query":" query{\n             evaluation(customerID: \"e0ef38de-1b1d-4b68-b7a3-40b2460bc043\") {\n               customerId\n               sbs\n               pcr\n               moodys\n             }\n           }","variables":{}}'
            ```  

3. Datos de clientes

   | CustomerId| Customer|
   | -------- | ------- |
   |2f1b862e-57df-417c-a98a-67ebc8ad3aae|Jenna Murphy|
   |e0ef38de-1b1d-4b68-b7a3-40b2460bc043|Harold Watson|
   |5ea2bef1-b694-4b0c-98aa-b0fa85fe5826|Steven Higgins|
   |af33284c-fa27-4827-9731-3fc98f60f1ce|Myra Henderson|
   |713f92af-119f-49b1-9ece-33736f3281fd|Cadie Wilson|
   |4dd2063a-fd60-40ad-9c7f-9267af090512|Stuart Roberts|
   |60f98a5d-90fe-439d-a874-dcd248e3a7a2|Lily Hamilton|
   |629f0152-0364-4a3e-89e8-07e75d681ade|Cherry Morgan|
   |71f0c72d-9db9-4ccd-9a9d-ea65b6cd0817|Victor Johnston|
   |6a1056c0-d6e6-493f-945e-58c4da5d1da2|Robert Barrett|
   |1cbc1ae9-b185-4fd4-9eb2-6a2c187c2b44|Miller Allen|
   |8288395f-3116-4278-88ff-31c666b265dd|Edgar Hawkins|
   |a92a2484-6aa1-4725-a3fc-e765b9d3ed21|Belinda Ferguson|
   |c0a4f3e0-7b66-4df5-9091-3f06418ad04a|Vanessa Riley|
   |4ebc7349-3b28-441c-92f6-452f74a58275|Ashton Evans|
   |811c96c0-696f-4b97-8c45-b26d4a2dd0b8|Gianna Kelley|
   |0ce008c0-2617-43c2-9184-e16756ef19e7|Heather Higgins|
   |5bf0b5bb-b173-43c4-8abb-f3e5d8af9ab7|Miley Johnson|
   |8381d387-8d5d-4026-aa33-b15a580662ff|Justin Foster|
   |8337787b-ae38-4d45-a331-0ea0452f9236|Mary Barnes|
   |6a3e6107-1540-4af5-9153-6e1a9527ebc2|Myra Russell|
   |24e9509a-400f-4a80-b4ef-fb6e2457faa4|Annabella Bailey|
   |74fd6fb7-ba11-4d9f-a71e-1ed501a059fa|Miranda Parker|
   |4c40d525-ae8b-4f40-9d04-6f7cec3a9db3|Arianna Smith|
   |593f861a-f448-44b0-8370-8f5caa8633cd|Elise Cole|
   |4f668c72-3a7d-4a84-b45c-1c169288e70d|Adele Holmes|
   |a08b3803-dc3a-43e3-a7f9-12b4b5d1c5fe|Valeria Cameron|
   |a903e62a-516b-4f8f-b3c6-ccefb25f6e16|Lucy Barrett|
   |7e5ef5c6-fd51-469d-8ff8-5669fa336502|Albert Chapman|
   |ff779f57-7b32-4ac5-b696-12669090d8b3|Adelaide Crawford|
   |758e45fc-c2ec-401c-b984-463c20dfd4f2|Chester Rogers|
   |b363f82c-7c28-4212-a309-e626b36c1ff6|Chelsea Mitchell|
   |d6ef1a53-b16f-4635-8118-a2a45bda7345|James Moore|
   |7fcc9533-dfe3-4de0-8b69-b9b26a810cae|Sophia Brooks|
   |328a5f11-7c17-4dc9-9e3d-b61c4773794c|Roman Martin|
   |d086371d-7ffe-4d8a-b8e9-bf4df105c8cd|Carina Spencer|
   |b6a94aa9-33d3-402c-b760-039249703931|Rubie Chapman|
   |1388311f-e240-4ad8-98d4-f338ad5421c4|Lily Walker|
   |92dc47cb-27fd-4334-869f-7901eb8c1d72|Belinda Owens|
   |04c5f99c-b0a9-463c-a6d9-b9083e2b465e|Ted Fowler|
   |6ab48be6-0fd3-411b-a508-018471f504e6|Edgar Murphy|
   |805a8e95-b92e-462b-ad32-f66e327ce6cf|Oliver Campbell|
   |3c2add9f-05ab-485b-8b3d-0586cd0098fd|Alexia West|
   |b46fe923-28a3-4bc8-8598-785bb4818fde|Emily Sullivan|
   |70eefc47-9b4d-4408-8771-3aae71093c34|Darcy Taylor|
   |c1b84b05-f064-4f27-86f2-f6e9d379c2f5|Blake Cunningham|
   |29f18143-046d-4d1e-901c-860bba36ba21|Daniel Tucker|
   |b9d0616b-6364-4e03-ad3d-e43d5f702697|Deanna Taylor|
   |ba71e7b2-2c48-4fee-b69c-16c462475b91|Kate Ferguson|
   |d2370802-b86c-4177-96de-67acc66bea26|Olivia Jones|

