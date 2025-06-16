Nesse exercício eu adaptei tudo para reconhecer e interpretar o comando do [num = 1; num < 10; num++] out(num). No .flex, criei regras para identificar as palavras como do, out, os operadores ++, =, <, além de símbolos como ;, [, ] e os identificadores/números. No .cup eu refiz a gramática para entender exatamente essa estrutura, e montei as regras pra gerar um código Java equivalente a um for com System.out.println. O entrada.txt agora tem tudo numa linha só, e o Compilador.java foi ajustado pra ler tudo e passar como uma string só pro parser

1. Dar permissão de execução para o arquivo de script `executar.sh` (torná-lo executável):
- `chmod +x executar.sh`

2. Executar o `executar.sh`:
- `./executar.sh`