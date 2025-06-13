%cup
%unicode
%line
%column
%class MeuScanner

// Macros
letra = [a-zA-Z]
digito = [0-9]
nome = {letra}({letra}|{digito}|[_\-])*
espacos = [ \t\r\n]+
aspasduplas = \"
texto = [^<>\"]+

%%
// Ignorar espaços
{espacos}   { /* ignora */ }

// Tag de abertura, ex: <a
"<" {nome}        { return new Symbol(sym.TAG_ABRE, yytext()); }

// Tag de fechamento, ex: </a>
"</" {nome} ">"   { return new Symbol(sym.TAG_FECHA, yytext()); }

// Fim de tag de abertura, ex: >
">"               { return new Symbol(sym.FECHA_TAG); }

// Tag auto-fechante, ex: />
"/>"              { return new Symbol(sym.TAG_AUTOFECHA); }

// Atributos ex: href
{nome}            { return new Symbol(sym.ATRIBUTO, yytext()); }

// Igual (=)
"="               { return new Symbol(sym.IGUAL); }

// Valor do atributo entre aspas duplas
{aspasduplas}{texto}{aspasduplas} {
    String val = yytext().substring(1, yytext().length()-1);
    return new Symbol(sym.VALOR, val);
}

// Texto entre tags
{texto}           { return new Symbol(sym.TEXTO, yytext()); }

// Qualquer outro caractere inválido
.                 { System.err.println("Caractere inválido: " + yytext()); }