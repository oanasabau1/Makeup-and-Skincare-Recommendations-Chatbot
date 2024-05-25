## Makeup and Skincare Recommendation Chatbot

Chatbot designed in Lex and Yacc that, based on user's answers, recommends a skincare and makeup product/routine.

To start a conversation with the chatbot, run the following commands in bash:
<ul>
  <li> lex skincare_lexer.l </li>
  <li> yacc -d skincare_parser.y </li>
  <li>  gcc y.tab.c lex.yy.c -ll -ly -o skincare_chatbot </li>
  <li> ./skincare_chatbot </li>
</ul>
