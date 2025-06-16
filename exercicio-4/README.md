Nesse exercício, eu criei um analisador para um HTML básico usando JFlex e JCup. No arquivo exemplo.flexe eu configurei o léxico para reconhecer as principais partes de uma tag HTML, como os símbolos <, </, >, />, identificadores (como a, img, href) e strings entre aspas (como os links e caminhos de imagem). No exemplo.cup eu montei a gramática para interpretar corretamente essas tags, atributos e conteúdos. Também eu ajustei o Compilador.java pra fazer a leitura do entrada.txt e repassei linha por linha para o parser. Então ue deixei tudo rodando com o executar.sh e o programa consegue reconhecer e validar estruturas básicas como <a href="...">texto</a> e <img src="..."/>.

1. Dar permissão de execução para o arquivo de script `executar.sh` (torná-lo executável):
- `chmod +x executar.sh`

2. Executar o `executar.sh`:
- `./executar.sh`
