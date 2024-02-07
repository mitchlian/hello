 public static void manageZoos() {

        while (true) {

            System.out.println();
            System.out.println("a. Create new zoo");
            System.out.println("b. Delete existing zoo");
            System.out.println("c. Calculate total area of enclosures");
            System.out.println("d. Count total enclosures");
            System.out.println("Q. Back to main menu");
            System.out.println();
            System.out.println("Select an option: ");
            String option = input.nextLine();

            switch (option.trim().toUpperCase()) {
                case "A":
                    System.out.print("Enter name of the zoo: ");
                    String name = input.nextLine();
                    System.out.print("Enter description: ");
                    String desc = input.nextLine();
                    ArrayList< Enclosure > enclosures = new ArrayList<>();
                    zoos.add(new Zoo(name, desc, enclosures));
                    System.out.println("Zoo created!");
                    System.out.println();
                    break;

                case "B":
                    if(zoos.isEmpty()){
                        System.out.print("No zoos to remove.");
                    }else {
                    for (int i = 0; i < zoos.size(); i++) {
                        System.out.printf("%d. %s", i + 1, zoos.get(i).getName());
                    }
                    System.out.print("Select the zoo to remove: ");
                    }
                    //always put nextLine() after nextInt()
                    int opt = input.nextInt();
                    input.nextLine();
                    zoos.remove(opt - 1);
                    break;
                case "C":
                    //show which zoo
                    //where did i store my zoos
                    //loop through arraylist to get the number of zoos,
                    System.out.println("Choose which zoo: ");
                    for(int i = 0; i < zoos.size(); i++) {
                        System.out.println("Choose which zoo: ");
                        System.out.printf("%d. %s", i + 1, zoos.get(i).getName());
                    }
                     int in = input.nextInt();
                    // call the function in zoo class
                    //printf output
                    System.out.println("The total area of the current enclosure is: " + zoos.get(in).getTotalEnclosureArea());
                    break;

                case "D":
                    //for loop through the zoo and get the amount of enclosures that r in the zoo
                    for(int i = 0; i < zoos.size(); i++) {
                        zoos.get(i);
                    }
                    System.out.println("The total amount of enclosures is : " + );
                case "Q":
                    return;
                default:
                    System.out.println();
                    System.out.println("Invalid option selected!");
                    System.out.println();
            }
        }
    }
}
