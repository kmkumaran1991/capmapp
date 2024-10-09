namespace capmappdb.common;
using { Currency } from '@sap/cds/common';

    type GUID : String(32);

    aspect address{
        HOUSENO: Int16;
        STREET: String(32);
        CITY : String(80);
        COUNTRY: String(3);
    }

    type Gender : String(1) enum{
        male = 'M';
        female = 'F';
        undisclosed = 'U';
    }

    type AmountT : Decimal(10, 2) @(
        Semantic.amount.CurrencyCode: 'CURRENCY_code',
        sap.unit: 'CURRENCY_code'
    );

    aspect Amount:{
        CURRENCY: Currency;
        GROSS_AMOUNT: AmountT @(title:'Gross Amount');
        NET_AMOUNT: AmountT @(title:'Net Amount');
        TAX_AMOUNT: AmountT @(title:'Tax Amount');
    }

    type phonenumber : String(30)@assert.format : '^(?:\(?\d{3}\)?[-.\s]?)?\d{3}[-.\s]?\d{4}$';
    type emailid : String(80)@assert.format : '^[\w.%+-]+@[\w.-]+\.[a-zA-Z]{2,}$';

    
    
    
