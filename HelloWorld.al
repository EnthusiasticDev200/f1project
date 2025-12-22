// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

table 50100 "My Customers" 
{
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Customer No."; Code[20])
        {
            Caption = 'Cuustomer Id'; 
        }

        field(2; Name; Text[20])
        {
            Caption = 'Cuustomer Name'; 
        }
    }
    
    keys
    {
        key(PK; "Customer No.")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
        orderPayload : JsonObject;
        orderPayloadToken : JsonToken;
        ordersArr : JsonArray;
        ordersArrToken : JsonToken;

        orderObject : JsonObject;
        ordersValue : JsonToken;
        orderTypeValue : text;

        // task 2
        customerDetailsToken : JsonToken;
        custDetailsObject : JsonObject;
        
        custDetailNameToken : JsonToken;
        custName : Text;

        //task 3
        orderLinesToken : JsonToken;
        orderLinesArr : JsonArray;

        orderLineToken : JsonToken;

        orderLinesObject : JsonObject;
        productCodeToken : JsonToken;

        productCodeValue : Text;
        

    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        //task 1 enter order_type  : DONE
        orderPayload.Get('orders',orderPayloadToken );
        ordersArr := orderPayloadToken.AsArray(); // got values in order

        //loop through each order obj in the orders arr 
        foreach ordersArrToken in ordersArr do begin // foreach value in array
            orderObject := ordersArrToken.AsObject(); // catch each order obj
            // access the orderObject
            if orderObject.Get('order_type', ordersValue) then begin
                // now we have orderTypeValue
                orderTypeValue := ordersValue.AsValue().AsText(); 
                
            end;
        end;

        // task 2 enter customer_details and pick name : Done
        orderObject.Get('customer_details', customerDetailsToken);
            // now we can access custDetailsObject details
            custDetailsObject := customerDetailsToken.AsObject(); 
            custDetailsObject.Get('name', custDetailNameToken);
            custName := custDetailNameToken.AsValue().AsText();
            if custName = 'Global Logistics Corp' then
                Message('Present sir!');

        // task 3 enter order_lines and pick product_code
        orderObject.Get('order_lines', orderLinesToken);
        orderLinesArr := orderLinesToken.AsArray();
        foreach orderLineToken in orderLinesArr do begin
            orderLinesObject := orderLineToken.AsObject();
            // enter into orderLinesObject and access product_code
            orderLinesObject.Get('product_code', productCodeToken);
            // now we have productCode
            productCodeValue := productCodeToken.AsValue().AsText();
        end;
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;

    local procedure RetrieveOrderType()
    var
        myInt: Integer;
    begin
        
    end;
    
}


