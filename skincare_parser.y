%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Product structure and initialization
#define MAX_PRODUCTS 100

typedef struct {
    char name[50];
    char skin_type[50];
    char concerns[50];
    char ingredients[50];
    char type[50];
} Product;

typedef struct {
    char name[50];
    char price[50];
    char event[50];
    char type[50];
} Makeup;


Product products[MAX_PRODUCTS];
Makeup makeup[MAX_PRODUCTS];
int product_count = 0;
int makeup_count = 0;

void add_product(const char *name, const char *skin_type, const char *concerns, const char *ingredients, const char *type) {
    if (product_count < MAX_PRODUCTS) {
        strcpy(products[product_count].name, name);
        strcpy(products[product_count].skin_type, skin_type);
        strcpy(products[product_count].concerns, concerns);
        strcpy(products[product_count].ingredients, ingredients);
        strcpy(products[product_count].type, type);
        product_count++;
    }
}

void add_makeup(const char *name, const char *price, const char *event, const char *type) {
    if (makeup_count < MAX_PRODUCTS) {
        strcpy(makeup[makeup_count].name, name);
        strcpy(makeup[makeup_count].price, price);
        strcpy(makeup[makeup_count].event, event);
        strcpy(makeup[makeup_count].type, type);
        makeup_count++;
    }
}

void init_makeup() {

    // Foundation
    add_makeup("True Match by L'Oreal Paris", "drugstore", "daily", "foundation");
    add_makeup("Double Wear by Estée Lauder", "highend", "event", "foundation");

    // Concealer
    add_makeup("Fit Me Concealer by Maybelline", "drugstore", "daily", "concealer");
    add_makeup("Radiant Creamy Concealer by NARS", "highend", "event", "concealer");

    // Blush
    add_makeup("Dream Matte Blush by Maybelline", "drugstore", "daily", "blush");
    add_makeup("Orgasm Blush by NARS", "highend", "event", "blush");

    // Bronzer
    add_makeup("Butter Bronzer by Physicians Formula", "drugstore", "daily", "bronzer");
    add_makeup("Hoola Matte Bronzer by Benefit Cosmetics", "highend", "event", "bronzer");

    // Lip Oil
    add_makeup("Lifter Gloss by Maybelline", "drugstore", "daily", "lip oil");
    add_makeup("Lip Glow Oil by Dior", "highend", "event", "lip oil");

    // Lipstick
    add_makeup("Color Sensational Lipstick by Maybelline", "drugstore", "daily", "lipstick");
    add_makeup("Rouge Pur Couture by Yves Saint Laurent", "highend", "event", "lipstick");

    // Eye Shadow
    add_makeup("Nudes of New York Eyeshadow Palette by Maybelline", "drugstore", "daily", "eye shadow");
    add_makeup("Naked Palette by Urban Decay", "highend", "event", "eye shadow");

    // Blush (additional daily and event)
    add_makeup("Cheek Heat Gel-Cream Blush by Maybelline", "drugstore", "daily", "blush");
    add_makeup("Ambient Lighting Blush by Hourglass", "highend", "event", "blush");

    // Bronzer (additional daily and event)
    add_makeup("Matte Bronzing Powder by NYX", "drugstore", "daily", "bronzer");
    add_makeup("Les Beiges Healthy Glow Bronzing Cream by Chanel", "highend", "event", "bronzer");

    // Lip Oil (additional daily and event)
    add_makeup("Hydrating Lip Oil by Burt's Bees", "drugstore", "daily", "lip oil");
    add_makeup("Tinted Lip Oil by Bobbi Brown", "highend", "event", "lip oil");

    // Lipstick (additional daily and event)
    add_makeup("Superstay Matte Ink by Maybelline", "drugstore", "daily", "lipstick");
    add_makeup("Matte Revolution Lipstick by Charlotte Tilbury", "highend", "event", "lipstick");

    // Eye Shadow (additional daily and event)
    add_makeup("The City Mini Eyeshadow Palette by Maybelline", "drugstore", "daily", "eye shadow");
    add_makeup("Soft Glam Eyeshadow Palette by Anastasia Beverly Hills", "highend", "event", "eye shadow");
}

void init_products() {
    // Products for oily skin with various concerns and ingredients
    // Acne
    add_product("Effaclar Gel by La Roche-Posay", "oily", "acne", "salicylic acid", "cleanser");
    add_product("Acne Control Moisturizer by Neutrogena", "oily", "acne", "salicylic acid", "moisturizer");
    add_product("Salicylic Acid Serum by The Ordinary", "oily", "acne", "salicylic acid", "serum");
    add_product("Acne Control Toner by Clean & Clear", "oily", "acne", "salicylic acid", "toner");
    add_product("Acne Treatment Mask by La Roche-Posay", "oily", "acne", "salicylic acid", "mask");
    add_product("Acne Lip Balm by Burt's Bees", "oily", "acne", "salicylic acid", "lip balm");

    // Dryness
    add_product("Oil-Free Hydration by Neutrogena", "oily", "dryness", "hyaluronic acid", "moisturizer");
    add_product("Hydrating Cleanser by CeraVe", "oily", "dryness", "hyaluronic acid", "cleanser");
    add_product("Hyaluronic Acid Serum by The Ordinary", "oily", "dryness", "hyaluronic acid", "serum");
    add_product("Hydrating Toner by Thayers", "oily", "dryness", "hyaluronic acid", "toner");
    add_product("Hydrating Mask by Neutrogena", "oily", "dryness", "hyaluronic acid", "mask");
    add_product("Hydrating Lip Balm by Aquaphor", "oily", "dryness", "hyaluronic acid", "lip balm");

    // Wrinkles
    add_product("Retinol Treatment by Paula's Choice", "oily", "wrinkles", "retinol", "serum");
    add_product("Anti-Wrinkle Moisturizer by Olay", "oily", "wrinkles", "retinol", "moisturizer");
    add_product("Retinol Cleanser by RoC", "oily", "wrinkles", "retinol", "cleanser");
    add_product("Retinol Toner by The Ordinary", "oily", "wrinkles", "retinol", "toner");
    add_product("Retinol Mask by L'Oreal", "oily", "wrinkles", "retinol", "mask");
    add_product("Anti-Aging Lip Balm by Eucerin", "oily", "wrinkles", "retinol", "lip balm");

    // Sensitivity
    add_product("Vitamin C Serum by TruSkin", "oily", "sensitivity", "vitamin C", "serum");
    add_product("Sensitive Skin Moisturizer by La Roche-Posay", "oily", "sensitivity", "vitamin C", "moisturizer");
    add_product("Vitamin C Cleanser by InstaNatural", "oily", "sensitivity", "vitamin C", "cleanser");
    add_product("Sensitive Skin Toner by Pixi", "oily", "sensitivity", "vitamin C", "toner");
    add_product("Vitamin C Mask by OZNaturals", "oily", "sensitivity", "vitamin C", "mask");
    add_product("Vitamin C Lip Balm by Burt's Bees", "oily", "sensitivity", "vitamin C", "lip balm");

    // Generic products for oily skin (with "_" as concerns)
    add_product("Generic Cleanser for Oily Skin", "oily", "_", "salicylic acid", "cleanser");
    add_product("Generic Moisturizer for Oily Skin", "oily", "_", "hyaluronic acid", "moisturizer");
    add_product("Generic Serum for Oily Skin", "oily", "_", "retinol", "serum");
    add_product("Generic Toner for Oily Skin", "oily", "_", "vitamin C", "toner");
    add_product("Generic Mask for Oily Skin", "oily", "_", "salicylic acid", "mask");
    add_product("Generic Lip Balm for Oily Skin", "oily", "_", "hyaluronic acid", "lip balm");

    // Products for dry skin with various concerns and ingredients
    // Acne
    add_product("Hydrating Acne Cleanser by CeraVe", "dry", "acne", "salicylic acid", "cleanser");
    add_product("Acne Moisturizing Lotion by Clean & Clear", "dry", "acne", "salicylic acid", "moisturizer");
    add_product("Salicylic Acid Serum by The Ordinary", "dry", "acne", "salicylic acid", "serum");
    add_product("Acne Relief Toner by Neutrogena", "dry", "acne", "salicylic acid", "toner");
    add_product("Anti-Acne Hydrating Mask by La Roche-Posay", "dry", "acne", "salicylic acid", "mask");
    add_product("Acne Healing Lip Balm by Burt's Bees", "dry", "acne", "salicylic acid", "lip balm");

    // Dryness
    add_product("Hydro Boost by Neutrogena", "dry", "dryness", "hyaluronic acid", "moisturizer");
    add_product("CeraVe Hydrating Cleanser", "dry", "dryness", "hyaluronic acid", "cleanser");
    add_product("Hyaluronic Acid Serum by The Ordinary", "dry", "dryness", "hyaluronic acid", "serum");
    add_product("Hydrating Toner by Thayers", "dry", "dryness", "hyaluronic acid", "toner");
    add_product("Moisturizing Mask by Neutrogena", "dry", "dryness", "hyaluronic acid", "mask");
    add_product("Moisturizing Lip Balm by Aquaphor", "dry", "dryness", "hyaluronic acid", "lip balm");

    // Wrinkles
    add_product("L'Oreal Revitalift Moisturizer", "dry", "wrinkles", "retinol", "moisturizer");
    add_product("Retinol Anti-Aging Cleanser by RoC", "dry", "wrinkles", "retinol", "cleanser");
    add_product("Retinol Serum by Paula's Choice", "dry", "wrinkles", "retinol", "serum");
    add_product("Retinol Toner by The Ordinary", "dry", "wrinkles", "retinol", "toner");
    add_product("Anti-Wrinkle Mask by Olay", "dry", "wrinkles", "retinol", "mask");
    add_product("Anti-Aging Lip Balm by Eucerin", "dry", "wrinkles", "retinol", "lip balm");

    // Sensitivity
    add_product("Vitamin C Moisturizer by InstaNatural", "dry", "sensitivity", "vitamin C", "moisturizer");
    add_product("Sensitive Skin Cleanser by La Roche-Posay", "dry", "sensitivity", "vitamin C", "cleanser");
    add_product("Vitamin C Serum by TruSkin", "dry", "sensitivity", "vitamin C", "serum");
    add_product("Sensitive Skin Toner by Pixi", "dry", "sensitivity", "vitamin C", "toner");
    add_product("Vitamin C Mask by OZNaturals", "dry", "sensitivity", "vitamin C", "mask");
    add_product("Vitamin C Lip Balm by Burt's Bees", "dry", "sensitivity", "vitamin C", "lip balm");

    // Generic products for dry skin (with "_" as concerns)
    add_product("Generic Cleanser for Dry Skin", "dry", "_", "hyaluronic acid", "cleanser");
    add_product("Generic Moisturizer for Dry Skin", "dry", "_", "hyaluronic acid", "moisturizer");
    add_product("Generic Serum for Dry Skin", "dry", "_", "retinol", "serum");
    add_product("Generic Toner for Dry Skin", "dry", "_", "vitamin C", "toner");
    add_product("Generic Mask for Dry Skin", "dry", "_", "hyaluronic acid", "mask");
    add_product("Generic Lip Balm for Dry Skin", "dry", "_", "vitamin C", "lip balm");

    // Products for combination skin with various concerns and ingredients
    // Acne
    add_product("Cleansing Gel by SkinCeuticals", "combination", "acne", "salicylic acid", "cleanser");
    add_product("Combination Skin Acne Moisturizer by Clean & Clear", "combination", "acne", "salicylic acid", "moisturizer");
    add_product("Salicylic Acid Serum by The Ordinary", "combination", "acne", "salicylic acid", "serum");
    add_product("Acne Control Toner by Neutrogena", "combination", "acne", "salicylic acid", "toner");
    add_product("Acne Treatment Mask by La Roche-Posay", "combination", "acne", "salicylic acid", "mask");
    add_product("Acne Healing Lip Balm by Burt's Bees", "combination", "acne", "salicylic acid", "lip balm");

    // Dryness
    add_product("Ultra Facial Cream by Kiehl's", "combination", "dryness", "hyaluronic acid", "moisturizer");
    add_product("Hydrating Cleanser by CeraVe", "combination", "dryness", "hyaluronic acid", "cleanser");
    add_product("Hyaluronic Acid Serum by The Ordinary", "combination", "dryness", "hyaluronic acid", "serum");
    add_product("Hydrating Toner by Thayers", "combination", "dryness", "hyaluronic acid", "toner");
    add_product("Moisturizing Mask by Neutrogena", "combination", "dryness", "hyaluronic acid", "mask");
    add_product("Moisturizing Lip Balm by Aquaphor", "combination", "dryness", "hyaluronic acid", "lip balm");

    // Wrinkles
    add_product("Regenerist by Olay", "combination", "wrinkles", "retinol", "moisturizer");
    add_product("Retinol Anti-Aging Cleanser by RoC", "combination", "wrinkles", "retinol", "cleanser");
    add_product("Retinol Serum by Paula's Choice", "combination", "wrinkles", "retinol", "serum");
    add_product("Retinol Toner by The Ordinary", "combination", "wrinkles", "retinol", "toner");
    add_product("Anti-Wrinkle Mask by Olay", "combination", "wrinkles", "retinol", "mask");
    add_product("Anti-Aging Lip Balm by Eucerin", "combination", "wrinkles", "retinol", "lip balm");

    // Sensitivity
    add_product("Vitamin C Serum by La Roche-Posay", "combination", "sensitivity", "vitamin C", "serum");
    add_product("Sensitive Skin Moisturizer by La Roche-Posay", "combination", "sensitivity", "vitamin C", "moisturizer");
    add_product("Vitamin C Cleanser by InstaNatural", "combination", "sensitivity", "vitamin C", "cleanser");
    add_product("Sensitive Skin Toner by Pixi", "combination", "sensitivity", "vitamin C", "toner");
    add_product("Vitamin C Mask by OZNaturals", "combination", "sensitivity", "vitamin C", "mask");
    add_product("Vitamin C Lip Balm by Burt's Bees", "combination", "sensitivity", "vitamin C", "lip balm");

    // Generic products for combination skin (with "_" as concerns)
    add_product("Generic Cleanser for Combination Skin", "combination", "_", "salicylic acid", "cleanser");
    add_product("Generic Moisturizer for Combination Skin", "combination", "_", "hyaluronic acid", "moisturizer");
    add_product("Generic Serum for Combination Skin", "combination", "_", "retinol", "serum");
    add_product("Generic Toner for Combination Skin", "combination", "_", "vitamin C", "toner");
    add_product("Generic Mask for Combination Skin", "combination", "_", "hyaluronic acid", "mask");
    add_product("Generic Lip Balm for Combination Skin", "combination", "_", "vitamin C", "lip balm");

    // Products for all skin types (generic products)
    add_product("Anthelios by La Roche-Posay", "_", "_", "_", "sunscreen");
    add_product("Gentle Toner by Pixi", "_", "sensitivity", "_", "toner");
    add_product("Clay Mask by L'Oreal", "_", "acne", "_", "mask");
    add_product("Nourishing Lip Balm by Burt's Bees", "_", "dryness", "_", "lip balm");

    // Additional combinations for oily skin
    add_product("Oily Skin Retinol Serum", "oily", "wrinkles", "retinol", "serum");
    add_product("Oily Skin Vitamin C Moisturizer", "oily", "sensitivity", "vitamin C", "moisturizer");

    // Additional combinations for dry skin
    add_product("Dry Skin Salicylic Acid Cleanser", "dry", "acne", "salicylic acid", "cleanser");
    add_product("Dry Skin Retinol Serum", "dry", "wrinkles", "retinol", "serum");
    add_product("Dry Skin Vitamin C Toner", "dry", "sensitivity", "vitamin C", "toner");

    // Additional combinations for combination skin
    add_product("Combination Skin Salicylic Acid Cleanser", "combination", "acne", "salicylic acid", "cleanser");
    add_product("Combination Skin Hyaluronic Acid Moisturizer", "combination", "dryness", "hyaluronic acid", "moisturizer");
    add_product("Combination Skin Retinol Serum", "combination", "wrinkles", "retinol", "serum");
    add_product("Combination Skin Vitamin C Serum", "combination", "sensitivity", "vitamin C", "serum");

    // More product type variants for all skin types
    add_product("All Skin Types Hyaluronic Acid Toner", "_", "dryness", "hyaluronic acid", "toner");
    add_product("All Skin Types Salicylic Acid Mask", "_", "acne", "salicylic acid", "mask");
    add_product("All Skin Types Retinol Serum", "_", "wrinkles", "retinol", "serum");
    add_product("All Skin Types Vitamin C Lip Balm", "_", "dryness", "vitamin C", "lip balm");
}

int state = 0;
char skin_type[50];
char skin_concerns[50];
char ingredients[50];
char product_type[50];

char makeup_type[50];
char makeup_price[50];
char makeup_event[50];

void yyerror(const char *s);

void ask_skin_type();
void ask_skin_concerns();
void ask_ingredients();
void ask_types();
void make_recommendation();
void make_recommendation_makeup();
void ask_type_of_makeup_product();
void ask_price();
void ask_makeup_type();
void final();

%}

%token OILY DRY COMBINATION ACNE WRINKLES DRYNESS SENSITIVITY HYALURONIC_ACID SALICYLIC_ACID RETINOL VITAMIN_C END CLEANSER TONER SERUM MASK LIP_BALM SUNSCREEN MOISTURIZER NON ROUTINE DRUGSTORE HIGHEND DAILY EVENT YES NO FOUNDATION CONCEALER LIP_OIL LIPSTICK EYE_SHADOW BLUSH BRONZER FULL

%%

input : /* empty */
      | query input
      ;

query : skin_type_query
      | skin_concerns_query
      | ingredients_query
      | type_of_product_query
      | makeup_query
      | makeup_price_query
      | makeup_type_query
      | makeup_type_of_product_query
      ;

skin_type_query : OILY END { 
    strcpy(skin_type, "oily");
    ask_skin_concerns();
}
      | DRY END {
    strcpy(skin_type, "dry");
    ask_skin_concerns();
}
      | COMBINATION END {
    strcpy(skin_type, "combination");
    ask_skin_concerns();
}
      ;

skin_concerns_query : ACNE END { 
    strcpy(skin_concerns, "acne");
    ask_ingredients();
}
      | WRINKLES END {
    strcpy(skin_concerns, "wrinkles");
    ask_ingredients();
}
      | DRYNESS END {
    strcpy(skin_concerns, "dryness");
    ask_ingredients();
}
      | SENSITIVITY END {
    strcpy(skin_concerns, "sensitivity");
    ask_ingredients();
}
      ;

ingredients_query : HYALURONIC_ACID END { 
    strcpy(ingredients, "hyaluronic acid");
    ask_types(); 
}
      | SALICYLIC_ACID END {
    strcpy(ingredients, "salicylic acid");
    ask_types(); 
}
      | RETINOL END {
    strcpy(ingredients, "retinol");
    ask_types(); 
}
      | VITAMIN_C END {
    strcpy(ingredients, "vitamin C");
    ask_types(); 
}
      ;

type_of_product_query : CLEANSER END {
    strcpy(product_type, "cleanser");
    make_recommendation();
}	
     | LIP_BALM END {
    strcpy(product_type, "lip balm");
    make_recommendation();
}
     | MOISTURIZER END {
    strcpy(product_type, "moisturizer");
    make_recommendation();
}
     | SUNSCREEN END {
    strcpy(product_type, "sunscreen");
    make_recommendation();
}
     | TONER END {
    strcpy(product_type, "toner");
    make_recommendation();
}
     | SERUM END {
    strcpy(product_type, "serum");
    make_recommendation();
}
     | MASK END {
    strcpy(product_type, "mask");
    make_recommendation();
}
     | ROUTINE END {
    strcpy(product_type, "routine");
    make_recommendation();
}
     ;
     
makeup_query: YES END {
   ask_makeup_type();
}
    | NO END {
    final();
   
}  
    ;

makeup_type_query: DAILY END {
   strcpy(makeup_event, "daily");
   ask_price();
}
    | EVENT END {
   strcpy(makeup_event, "event");
   ask_price();
}   
    ;

makeup_price_query: DRUGSTORE END {
   strcpy(makeup_price, "drugstore");
   ask_type_of_makeup_product();
}
    | HIGHEND END {
   strcpy(makeup_price, "highend");
   ask_type_of_makeup_product();
}   
    ;
    
makeup_type_of_product_query: FOUNDATION END{
    strcpy(makeup_type, "founation");
    make_recommendation_makeup();
}	
     | CONCEALER END {
    strcpy(makeup_type, "concealer");
    make_recommendation_makeup();
}
     | BLUSH END {
    strcpy(makeup_type, "blush");
    make_recommendation_makeup();
}
     | BRONZER END {
    strcpy(makeup_type, "sunscreen");
    make_recommendation_makeup();
}
     | LIP_OIL END {
    strcpy(makeup_type, "lip oil");
    make_recommendation_makeup();
}
     | LIPSTICK END {
    strcpy(makeup_type, "lipstick");
    make_recommendation_makeup();
}
     | EYE_SHADOW END {
    strcpy(makeup_type, "eye shadow");
    make_recommendation_makeup();
}
     | FULL END {
    strcpy(makeup_type, "full face");
    make_recommendation_makeup();
}
     ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

void ask_skin_type() {
    printf("What is your skin type? (oily, dry, combination)\n");
    state = 1;
}

void ask_skin_concerns() {
    printf("What are your skin concerns? (acne, wrinkles, dryness, sensitivity)\n");
    state = 2;
}

void ask_ingredients() {
    printf("What ingredients do you prefer? (hyaluronic acid, salicylic acid, retinol, vitamin C)\n");
    state = 3;
}

void ask_types() {
    printf("What type of product do you need? (routine, cleanser, moisturizer, sunscreen, lip balm, toner, serum, mask)\n");
    state = 4;
}

void makeup_pr(){
    printf("Do you want a recomandation for a makeup product?\n");
    state = 5;
}

void final(){
    printf("We hope we have helped you in choosing the products! See you next time!\n");
    return;
}


void ask_makeup_type(){
    printf("What type of makeup are you looking for? (daily or event)\n");
    state = 6;
}

void ask_price(){
    printf("Are you looking for a drugstore or a highend product? (drugstore (cheap) or highend (expensive))\n");
    state = 7;
}

void ask_type_of_makeup_product(){
    printf("What type of makeup product are you looking for? (full face, foundation, concealer, blush, bronzer, lip oil, lipstik, eye shadow)\n");
    state = 8;
}

void make_recommendation() {
    printf("Finding recommendation for Skin Type: %s, Concerns: %s, Ingredients: %s, Types: %s\n", skin_type, skin_concerns, ingredients, product_type);
    int ok = 0;
    int cleanser = 0, mask = 0, moisturizer = 0, sunscreen = 0, lipbalm = 0, toner = 0, serum = 0;
    for (int i = 0; i < product_count; i++) {
        if (((strcmp(products[i].skin_type, skin_type) == 0) || (strcmp(products[i].skin_type, "_") == 0)) &&
            ((strcmp(products[i].concerns, skin_concerns) == 0) || (strcmp(products[i].concerns, "_") == 0)) &&
            ((strstr(products[i].ingredients, ingredients) != NULL) || (strcmp(products[i].ingredients, "_") == 0)) &&
            (strcmp(products[i].type, product_type) == 0)) 
	{
            printf("Recommended product: %s\n", products[i].name);
            state = 5;
            makeup_pr();
            return;
        } else if (((strcmp(products[i].skin_type, skin_type) == 0) || (strcmp(products[i].skin_type, "_") == 0)) &&
            ((strcmp(products[i].concerns, skin_concerns) == 0) || (strcmp(products[i].concerns, "_") == 0)) &&
            ((strstr(products[i].ingredients, ingredients) != NULL) || (strcmp(products[i].ingredients, "_") == 0)) &&
            (strcmp(products[i].type, product_type) == 0) || (strcmp(product_type, "routine" ) == 0) ) {
            ok = 1;
            if((strcmp(products[i].type, "cleanser") == 0 ) && cleanser == 0){
            	cleanser = 1;
            	printf("Recommended cleanser: %s\n", products[i].name);
            }
             if((strcmp(products[i].type, "mask") == 0 ) && mask == 0){
            	mask = 1;
            	printf("Recommended mask: %s\n", products[i].name);
            }
             if((strcmp(products[i].type, "moisturizer") == 0 ) && moisturizer == 0){
            	moisturizer = 1;
            	printf("Recommended moisturizer: %s\n", products[i].name);
            }
             if((strcmp(products[i].type, "toner") == 0 ) && toner == 0){
            	toner = 1;
            	printf("Recommended toner: %s\n", products[i].name);
            }
             if((strcmp(products[i].type, "serum") == 0 ) && serum == 0){
            	serum = 1;
            	printf("Recommended serum: %s\n", products[i].name);
            } 
             if((strcmp(products[i].type, "lipbalm") == 0 ) && lipbalm == 0){
            	lipbalm = 1;
            	printf("Recommended lip balm: %s\n", products[i].name);
            }
            
        }    
    }
    if( ok == 1){
    	if(cleanser == 0){
    		printf("No suitable cleanser found.\n");
    	}
    	if(mask == 0){
    		printf("No suitable mask found.\n");
    	}
    	if(moisturizer == 0){
    		printf("No suitable moisturizer found.\n");
    	}
    	if(toner == 0){
    		printf("No suitable toner found.\n");
    	}
    	if(serum == 0){
    		printf("No suitable  found.\n");
    	}
    	if(lipbalm == 0){
    		printf("No suitable lip balm found.\n");
    	}
    	//return;
    	
    	
    }
    else
       printf("No suitable product found.\n");
    makeup_pr();
    state = 5;
    //exit(0);
}

void make_recommendation_makeup() {
    printf("Finding recommendation: %s %s %s\n", makeup_event, makeup_price, makeup_type); 
    int foundation = 0, concealer = 0, blush = 0, bronzer = 0, eye_shadow = 0, lipstick = 0, lipoil = 0; 
    int ok = 0;
    for (int i = 0; i < makeup_count; i++) {
        if  ((strcmp(makeup[i].event, makeup_event) == 0) &&
            (strcmp(makeup[i].price, makeup_price) == 0) &&
            ((strcmp(makeup[i].type, makeup_type) == 0) )) {
            printf("Recommended product: %s\n", makeup[i].name);
            return;
        } else if  ((strcmp(makeup[i].event, makeup_event) == 0) &&
            (strcmp(makeup[i].price, makeup_price) == 0) &&
            (strcmp(makeup_type, "full face" ) == 0)) {
            //printf("Recommended product: %s\n", makeup[i].name);
            ok = 1;
            if((strcmp(makeup[i].type, "foundation") == 0 ) && foundation == 0){
            	foundation = 1;
            	printf("Recommended foundation: %s\n", makeup[i].name);
            }
             if((strcmp(makeup[i].type, "concealer") == 0 ) && concealer == 0){
            	concealer = 1;
            	printf("Recommended concealer: %s\n", makeup[i].name);
            }
             if((strcmp(makeup[i].type, "blush") == 0 ) && blush == 0){
            	blush = 1;
            	printf("Recommended moisturizer: %s\n", makeup[i].name);
            }
             if((strcmp(makeup[i].type, "bronzer") == 0 ) && bronzer == 0){
            	bronzer = 1;
            	printf("Recommended bronzer: %s\n", makeup[i].name);
            }
             if((strcmp(makeup[i].type, "eye shadow") == 0 ) && eye_shadow == 0){
            	eye_shadow = 1;
            	printf("Recommended eye shadow: %s\n", makeup[i].name);
            } 
             if((strcmp(makeup[i].type, "lipstick") == 0 ) && lipstick == 0){
            	lipstick = 1;
            	printf("Recommended lipstick: %s\n", makeup[i].name);
            }
             if((strcmp(makeup[i].type, "lipoil") == 0 ) && lipoil == 0){
            	lipoil= 1;
            	printf("Recommended lip oil: %s\n", makeup[i].name);
            }
            //return;
        } 
    }
     if( ok == 1){
    	if(foundation == 0){
    		printf("No suitable foundation found.\n");
    	}
    	if(concealer == 0){
    		printf("No suitable concealer found.\n");
    	}
    	if(blush == 0){
    		printf("No suitable blush found.\n");
    	}
    	if(bronzer == 0){
    		printf("No suitable bronzer found.\n");
    	}
    	if(lipstick == 0){
    		printf("No suitable  lipstickfound.\n");
    	}
    	if(lipoil== 0){
    		printf("No suitable lip oil found.\n");
    	}
    	if(eye_shadow == 0){
    		printf("No suitable eye shadow found.\n");
    	}
    	//return;
    	
    	
    }  else{ 
    printf("No suitable makeup product found.\n");
    }
    exit(0);
}


int main() {
    init_products();
    init_makeup();
    ask_skin_type();
    yyparse();
    return 0;
}
