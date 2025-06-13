import java_cup.runtime.Symbol;

%%

%cup
%unicode
%line
%column
%class MeuScanner

letra = [a-zA-Z]
digito = [0-9]
id = {letra}({letra}|{digito})*

%%

"if"        { return new Symbol(sym.IF); }
"else"      { return new Symbol(sym.ELSE); }
"="         { return new Symbol(sym.ASSIGN); }
"<"         { return new Symbol(sym.LT); }
"("         { return new Symbol(sym.LPAREN); }
")"         { return new Symbol(sym.RPAREN); }
";"         { return new Symbol(sym.SEMICOLON); }
{id}        { return new Symbol(sym.ID, yytext()); }
{digito}+   { return new Symbol(sym.NUM, Integer.valueOf(yytext())); }
[ \t\r\n]+  { /* ignora espaços e quebras de linha */ }
.           { System.err.println("Caractere inválido: " + yytext()); return null; }