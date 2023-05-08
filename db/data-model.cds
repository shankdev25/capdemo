namespace shank.db;

using {
      cuid,
      managed
} from '@sap/cds/common';
using {shank.common} from '../srv/common';


context master {

      entity teams : managed, cuid {
            @mandatory
            name   : String;
            leader : String;
            member : Composition of many transaction.members
                           on member.parentkey = $self;
      }
}

context transaction {

      entity members : managed, cuid {
            parentkey  : Association to master.teams;
            name       : String(50);
            age        : String(2);
            gender     : common.gender;
            experience : String(2);
            skils      : String;
            contact    : String(10);
            address : Composition of many transaction.address
            on address.parentmember = $self
      }

      entity address : managed, cuid {
            address1   : String(200);
            address2   : String(200);
            postalcode : String(10);
            City       : String(10);
            State      : String(20);
            Country    : String(10);
            parentmember : Association to transaction.members;
      }
}
