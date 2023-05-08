using shank.db as db from '../db/data-model';

service CatalogService {

   entity teams @(
      title              : 'Teams',
      odata.draft.enabled: true
   ) as projection on db.master.teams {
      *,
      member : redirected to members
   };

   entity members @(
      title              : 'Members',
   ) as projection on db.transaction.members {
      *,
      parentkey : redirected to teams
   };

   entity address @(
      title : 'Address'
   ) as projection on db.transaction.address {
      *,
      parentmember : redirected to members
   }


}
