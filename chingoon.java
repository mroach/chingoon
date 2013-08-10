import java.lang.Integer;

public class ChinGoon {
    public static void main(String[] args) throws Exception {
        int chins;

        if(args.length == 0) {
            throw new Exception("Chins Not Provided"); }

        try {
            chins = Integer.parseInt(args[0]);
        } catch(NumberFormatException e) {
            throw new Exception("Invalid Chins Argument"); }

        System.out.println(" __________\n(--[ .]-[ .]");
        switch(chins) {
            case 0:
            System.out.println("(_______O__)");
            break;

            default:
            System.out.println("(       O  )");

            for(int i = 0; i < chins - 1; ++i) {
                System.out.println("(          )"); }

            System.out.println("(__________)");
            break; }}}
