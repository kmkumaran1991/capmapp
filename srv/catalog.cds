using { epmmodeldb.master, epmmodeldb.transaction } from '../db/epm-model';

service CatalogService @(path:'CatalogService') {

entity BusinessPartnerSet as projection on master.businesspartner;
entity AddressSet as projection on master.address;
entity ProductSet as projection on master.product;
entity EmployeeSet as projection on master.employees;
entity PoSet as projection on transaction.purchaseorder;
entity PoItemSet as projection on transaction.poitems;
    
}


