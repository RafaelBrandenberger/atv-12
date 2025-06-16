Nesse exercício eu deixei o analisador entender estruturas com if/else e atribuições. No .flex, eu criei regras para reconhecer as palavras-chave e símbolos envolvidos nisso. No .cup, adicionei os tokens novos e montei as produções pra que ele gerasse um código intermediário em Java toda vez que encontrasse um if/else. No Compilador.java, eu só ajustei para usar essa versão nova do analisador e aceitar a entrada no formato certo.


1. Dar permissão de execução para o arquivo de script `executar.sh` (torná-lo executável):
- `chmod +x executar.sh`

2. Executar o `executar.sh`:
- `./executar.sh`