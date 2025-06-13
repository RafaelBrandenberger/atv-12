/* Definição: seção para código do usuário. */
import java_cup.runtime.Symbol;

%%

%cup
%unicode
%line
%column
%class MeuScanner

// Macros
ident = [a-zA-Z_][a-zA-Z0-9_]*
digito = [0-9]
inteiro = {digito}+

%%

// Palavras-chave e símbolos
"do"         { return new Symbol(sym.DO); }
"out"        { return new Symbol(sym.OUT); }
"++"         { return new Symbol(sym.INC); }
"="          { return new Symbol(sym.IGUAL); }
"<"          { return new Symbol(sym.MENOR); }
";"          { return new Symbol(sym.PTVIRG); }
"["          { return new Symbol(sym.COLCHETEESQ); }
"]"          { return new Symbol(sym.COLCHETEDIR); }
"("          { return new Symbol(sym.PARENTESQ); }
")"          { return new Symbol(sym.PARENTDIR); }
{ident}      { return new Symbol(sym.ID, yytext()); }
{inteiro}    { return new Symbol(sym.INTEIRO, Integer.valueOf(yytext())); }
[ \t\r\n]+   { /* Ignora espaços e quebras de linha */ }
.            { System.err.println("Caractere inválido: " + yytext()); return null; }