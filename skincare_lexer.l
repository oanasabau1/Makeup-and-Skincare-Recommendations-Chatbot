%{
#include "y.tab.h"
%}
alpha [A-Za-z]
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
[Cc]leanser { return CLEANSER; }
[Tt]oner { return TONER; }
[Ss]erum { return SERUM; }
[sS]unscreen {return SUNSCREEN; }
[lL]ip[ \t]balm { return LIP_BALM;}
[mM]oisturizer { return MOISTURIZER; }
[Mm]ask { return MASK; }
[Rr]outine { return ROUTINE; }
[Ff]ull[ \t]face { return FULL; }
[Yy]es { return YES; }
[Nn]o { return NO; }
[Dd]aily { return DAILY; }
[Ee]vent { return EVENT; }
[dD]rugstore { return DRUGSTORE; }
[Hh]ighend { return HIGHEND; }
[fF]oundation { return FOUNDATION; }
[cC]oncealer {return CONCEALER; }
[Bb]lush { return BLUSH; }
[Bb]ronzer { return BRONZER; }
[Ll]ip[ \t]oil {return LIP_OIL; }
[lL]ipstick { return LIPSTICK; }
[eE]ye[ \t]shadow { return EYE_SHADOW; }
[\.\n\?!] { return END; }
[.]* { return yytext[0]; }
%%
