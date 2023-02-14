public with sharing class RestCallouts {
    //Endpoint: https://th-apex-http-callout.herokuapp.com/animals
    //Http Method: GET

    public static HttpResponse getAnimals() {
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        //2. Prepare internet
        Http http = new Http();

        //3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        //4. Process HttpResponse

        if(response.getStatusCode()== 200){
            string jsonString =response.getBody();
            system.debug(jsonString);
        }else{
            // create an error log

        }
        return response;

        // System.debug(response.getStatusCode());
        // System.debug(response.getBody());
        // return response;
    }
    //Endpoint: https://api.instantwebtools.net/v1/airlines
    //Http Method: GET

    public static HttpResponse getAirlines(){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines');
        request.setMethod('GET');

         //2. Prepare internet
         Http http = new Http();
         //3. Send the HttpRequest over the internet in order to receive HttpResponse back
         HttpResponse response = http.send(request);

         //4. Process HttpResponse
         if(response.getStatusCode()== 200){
            string jsonString =response.getBody();
            // convert the response body into list of Airline__c
            list<AirlineWrapper> wrappers = (list<AirlineWrapper>)JSON.deserialize(jsonString, list<AirlineWrapper>.class);
           //   convert the wrappers into list<Airline__c>

           list<Airline__c> airlines = new  list< Airline__c> ();
           for(AirlineWrapper aw: wrappers) {
                if( aw.id != null && aw.id.length()< 3){
                 Airline__c airline = new Airline__c();
                 airline.Name =(aw.id);
                 airline.Establish__c = aw.established;
                 airline.Head_Quarters__c =aw.head_quaters;
                 airline.Logo_URL__c = aw.logo;
                 airline.Name__c = aw.name;
                 airline.Slogan__c = aw.slogan;
                 airline.Website__c = aw.website;
                 airlines.add(airline);
                }

           }
           try{
            insert airlines;
           }catch(Exception ex){
            system.debug(ex.getMessage());
           }
        }
        
        return response;

    }
    //Endpoint: https://api.onlinewebtutorblog.com/employees
    //Http Method: GET
    public static HttpResponse getEmployees(){
        //1. Prepare HttpRequest and wrap all the necessary data in it
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');

         //2. Prepare internet
         Http http = new Http();

         //3. Send the HttpRequest over the internet in order to receive HttpResponse back
         HttpResponse response = http.send(request);

         //4. Process HttpResponse
         if(response.getStatusCode()== 200){
            string jsonString =response.getBody();
            system.debug(jsonString );
            // convert the response body into list of Employee__c

            EmployeeResponse empRes =(EmployeeResponse)JSON.deserialize(jsonString, EmployeeResponse.class);
            List< EmployeeResponse.EmployeeWrapper> wrappers = empRes.data;
            // convert each employeeWrapper into Employee__c sObject record
            list<Employee__c> employees =new list<Employee__c>(); 

            for(EmployeeResponse.EmployeeWrapper wrap : wrappers){
                Employee__c emp = new  Employee__c();
                emp.Name = string.valueOf(wrap.id);
                emp.Username__c = wrap.username;
                emp.Employee_Name__c = wrap.name;
                emp.Email__c =wrap.email;
                emp.Gender__c = wrap.gender;
                emp.Phone__c =wrap.phone_number;
                emp.Designation__c =wrap.designation;
                emp.Complate_Adress__c =wrap.complete_address;
                employees.add(emp);
            }
            try{
                insert employees;
            }catch(Exception ex){
                system.debug(ex.getmessage());
            }
    

        }
        return response;
    }
        //Endpoint : https://creative-unicorn-tujkrw-dev-ed.my.salesforce.com/services/apexrest/Cases/5008Z00001zO2j4QAC
        // Http Method : GET
 

         public static HttpResponse getCasesUsingHG(){
            //1. Prepare HttpRequest and wrap all the necessary data in it.
            HttpRequest request = new HttpRequest();
            request.setEndpoint('callout:HG_Dev_Account/services/apexrest/Cases/5008Z00001zO2j4QAC');
            request.setMethod('GET');

           //2. Prepare Internet
           Http http = new Http();

           //3. Send the HttpRequest over the internet in order to receive HttpResponse back
           HttpResponse response = http.send(request);

           //4. Process HttpResponse
           system.debug(response.getStatusCode());
           system.debug(response.getStatus());
           system.debug(response.getBody());
           return response;
            
      }

       //  Endpoint: https://th-apex-http-callout.herokuapp.com/animals
       // Htto method : POST
       public static HttpResponse postAnimal(){
         //1. Prepare HttpRequest and wrap all the necessary data in it.
         HttpRequest request = new  HttpRequest();
         request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
         request.setMethod('POST');
         string body = '{"Name" : "mighty moose" } ';
         request.setBody(body);
         request.setHeader('Content-Type', 'application/json;charset=UTF-8');

          //2. Prepare Internet
          Http http = new Http();

           //3. Send the HttpRequest over the internet in order to receive HttpResponse back
           HttpResponse response = http.send(request);

             //4. Process HttpResponse
             if(response.getStatusCode() == 201) {
                system.debug('Request has been processes successfully!');
             }else{
                system.debug('Something went wrong while creating animal information :' +response.getBody());
             }
             return response;
       }
    }
