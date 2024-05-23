%{
#include "y.tab.h"
%}

%%
[oO]ily { return OILY; }
[dD]ry { return DRY; }
[cC]ombination { return COMBINATION; }
[aA]cne { return ACNE; }
[wW]rinkles { return WRINKLES; }
[dD]ryness { return DRYNESS; }
[sS]ensitivity { return SENSITIVITY; }
[hH]yaluronic[ \t]*acid { return HYALURONIC_ACID; }
_ { return NON; }
[sS]alicylic[ \t]*acid { return SALICYLIC_ACID; }
[rR]etinol { return RETINOL; }
[vV]itamin[ \t]*C { return VITAMIN_C; }
[cC]leanser { return CLEANSER; }
[tT]oner { return TONER; }
[sS]erum { return SERUM; }
[sS]unscreen {return SUNSCREEN; }
[lL]ip[ \t]balm { return LIP_BALM;}
[mM]oisturizer { return MOISTURIZER; }
[mM]ask { return MASK; }
[rR]outine { return ROUTINE; }
[fF]ull[ \t]face { return FULL; }
[yY]es { return YES; }
[nN]o { return NO; }
[dD]aily { return DAILY; }
[eE]vent { return EVENT; }
[dD]rugstore { return DRUGSTORE; }
[hH]ighend { return HIGHEND; }
[fF]oundation { return FOUNDATION; }
[cC]oncealer {return CONCEALER; }
[bB]lush { return BLUSH; }
[bB]ronzer { return BRONZER; }
[lL]ip[ \t]oil {return LIP_OIL; }
[lL]ipstick { return LIPSTICK; }
[eE]ye[ \t]shadow { return EYE_SHADOW; }
[\.\n\?!] { return END; }
. { return yytext[0]; }
%%

