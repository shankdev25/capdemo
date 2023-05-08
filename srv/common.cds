namespace shank.common;


using {cuid,managed,temporal} from '@sap/cds/common';


type gender : String(1) enum {
    male = 'M';
    female = 'F';
    others = 'O';
}
