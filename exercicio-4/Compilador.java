import java.io.*;

public class Compilador {
    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            System.err.println("Uso: java Compilador <arquivo>");
            return;
        }

        FileReader fileReader = new FileReader(args[0]);
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        StringBuilder conteudo = new StringBuilder();
        String linha;

        while ((linha = bufferedReader.readLine()) != null) {
            conteudo.append(linha).append("\n");
        }

        bufferedReader.close();
        fileReader.close();

        MeuScanner scanner = new MeuScanner(new StringReader(conteudo.toString()));
        MeuParser parser = new MeuParser(scanner);
        parser.parse();
    }
}
