using { capmappdb.master as master,
        capmappdb.trans as trans  } from '../db/demo';



service MyService {

entity StudentSet as projection on master.student;
entity BookSet as projection on master.books;
entity StandardSet as projection on master.standards;
entity RentalSet as projection on trans.rentals ;

}