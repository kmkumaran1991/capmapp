namespace capmappdb;
using { capmappdb.common as common } from './common';
using {  cuid, temporal, managed } from '@sap/cds/common';



context master {

    entity student: common.address{
        key ID: common.GUID;
        NAME: String(80);
        CLASS: Association to one standards;
        GENDER: String(1);
    }

    entity standards{
        key ID: Int16;
        CLASSNAME: String(10);
        SECTIONS: Int16;
        CLASSTEACHER: String(80);  
    }

    entity books{
        key ID: common.GUID;
        BOOKNAME: String(30);
        AUTHOR: String(80);
    }

}

context trans {
    entity rentals : cuid,temporal, managed {
        student: Association to one master.student;
        books: Association to one  master.books;
    }
}

