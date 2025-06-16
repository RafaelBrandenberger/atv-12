import java_cup.runtime.Symbol;

%%

%cup
%unicode
%line
%column
%class MeuScanner

letra   = [a-zA-Z_:]
digito  = [0-9]
id      = {letra}[a-zA-Z0-9_.:-]*
str     = \"[^\"]*\"

%%

"<"     { return new Symbol(sym.LT); }
"</"    { return new Symbol(sym.LTSLASH); }
"/>"    { return new Symbol(sym.SLASHGT); }
">"     { return new Symbol(sym.GT); }

{id}    { System.out.println("ID: " + yytext()); return new Symbol(sym.ID, yytext()); }
{str}   { System.out.println("STRING: " + yytext()); return new Symbol(sym.STRING, yytext()); }
"="     { return new Symbol(sym.EQ); }

[ \t\r\n]+ { /* ignora espaços, tabs e quebras de linha */ }

. { 
  System.err.println("Caractere inválido: " + yytext()); 
  return null; 
}
