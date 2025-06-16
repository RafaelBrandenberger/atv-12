Eu adaptei o analisador para entender expressões aritméticas mais completas. No .flex, adicionei os operadores *, /, % e ^ depois dos tokens que já existiam. No .cup, eu declarei esses operadores como terminais, defini a ordem de precedência (com ^ sendo associativo à direita), e incluí as regras de produção pra interpretar tudo certinho — inclusive expressões com parênteses e o sinal de menos unário.

Testei com a expressão 2 + 3 * (4 - 2) ^ 2 - -6 / 3 % 2 num arquivo de entrada..


1. Dar permissão de execução para o arquivo de script `executar.sh` (torná-lo executável):
- `chmod +x executar.sh`

2. Executar o `executar.sh`:
- `./executar.sh`