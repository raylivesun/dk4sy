;; name project ol1jdc
;; name program ol1
;; name extension jdc


(import java.util.*);

(class Main {
    public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);
    System.out.println("Enter the number of integers to generate:");
    int n = scanner.nextInt();
    int[] numbers = new int[n];

    System.out.println("Enter the range for the integers:");
    int min = scanner.nextInt();
    int max = scanner.nextInt();
    Random random = new Random();

    for (int i = 0; i < n; i++) {
        numbers[i] = random.nextInt(max - min + 1) + min;
    }

    System.out.println("Generated integers:");
    for (int number  numbers) {
        System.out.print(number + " ");
    }
    System.out.println();

    System.out.println("Enter the target sum:");
    int targetSum = scanner.nextInt();

    boolean found = false;
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
        int sum = numbers[i] + numbers[j];
            if (sum == targetSum) {
            System.out.println("Found pair: " + numbers[i] + " + " + numbers[j] + " = " + targetSum);
            found = true;
            break;
            }
        }
        if (found) {
            break;
        }
    }
    if (!found) {
        System.out.println("No pair found with the given target sum.");
    }
    }

    public static boolean isPrime(int number) {
        if (number <= 1) {
            return false;
        }
        for (int i = 2; i <= Math.sqrt(number); i++) {
            if (number % i == 0) {
                return false;
            }
        }
        return true;
    }

    public static int countPrimes(int[] numbers) {
        int count = 0;
        for (int number numbers) {
            if (isPrime(number)) {
            count++;
            }
        }
        return count;
    }

    public static void printPrimeNumbers(int[] numbers) {
        System.out.println("Prime numbers:");
        for (int number numbers) {
        if (isPrime(number)) {
            System.out.print(number + " ");
        }
        }
        System.out.println();
    }

    public static void printSumOfPrimes(int[] numbers) {
        int sum = 0;
        for (int number numbers) {
            if (isPrime(number)) {
            sum += number;
            }
        }
        System.out.println("Sum of prime numbers: " + sum);
    }

    public static void printReverseOrder(int[] numbers) {
        System.out.println("Array in reverse order:");
        for (int i = numbers.length - 1; i >= 0; i--) {
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }

    public static void printMaxAndMin(int[] numbers) {
        int max = numbers[0];
        int min = numbers[0];
        for (int number numbers) {
        if (number > max) {
            max = number;
        }
        if (number < min) {
            min = number;
        }
        }
        System.out.println("Maximum: " + max);
        System.out.println("Minimum: " + min);
    }

    public static void printAverage(int[] numbers) {
        double sum = 0;
        for (int number numbers) {
            sum += number;
        }
        double average = sum / numbers.length;
        System.out.println("Average: " + average);
    }

    public static void printDistinctNumbers(int[] numbers) {
        Set<Integer> distinctNumbers = new HashSet<>();
        for (int number numbers) {
        distinctNumbers.add(number);
        }
        System.out.println("Distinct numbers:");
        for (int number distinctNumbers) {
        System.out.print(number + " ");
        }
        System.out.println();
    }

    public static void printFrequency(int[] numbers) {
        Map<Integer, Integer> frequencyMap = new HashMap<>();
        for (int number numbers) {
        frequencyMap.put(number, frequencyMap.getOrDefault(number, 0) + 1);
        }
        System.out.println("Frequency of each number:");
        for (Map.Entry<Integer, Integer> entry frequencyMap.entrySet()) {
        System.out.println(entry.getKey() + ": " + entry.getValue());
        }
        System.out.println();
    }

    public static void printPrimeNumbersDescending(int[] numbers) {
        Arrays.sort(numbers);
        System.out.println("Prime numbers in descending order:");
        for (int i = numbers.length - 1; i >= 0; i--) {
            if (isPrime(numbers[i])) {
            System.out.print(numbers[i] + " ");
            }
        }
        System.out.println();
    }

    public static void printReverseOrderDescending(int[] numbers) {
        Arrays.sort(numbers);
        System.out.println("Array in reverse order (descending):");
        for (int i = numbers.length - 1; i >= 0; i--) {
            System.out.print(numbers[i] + " ");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.run();
    }

    private void run() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the number of integers to generate:");
        int n = scanner.nextInt();
        int[] numbers = new int[n];

        System.out.println("Enter the range for the integers:");
        int min = scanner.nextInt();
        int max = scanner.nextInt();
        Random random = new Random();

        for (int i = 0; i < n; i++) {
        numbers[i] = random.nextInt(max - min + 1) + min;
        }

        System.out.println("Generated integers:");
        for (int number numbers) {
            System.out.print(number + " ");
        }
        System.out.println();
        System.out.println("Enter the target sum:");
        int targetSum = scanner.nextInt();

        boolean found = false;
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
            int sum = numbers[i] + numbers[j];
                if (sum == targetSum) {
                System.out.println("Found pair: " + numbers[i] + " + " + numbers[j] + " = " + targetSum);
                found = true;
                break;
                }
            }
            if (found) {
                break;
            }
        }
        if (!found) {
            System.out.println("No pair found with the given target sum.");
        }

        int primeCount = countPrimes(numbers);
        System.out.println("Number of prime numbers: " + primeCount);
        printPrimeNumbers(numbers);
        printSumOfPrimes(numbers);
        printReverseOrder(numbers);
        printMaxAndMin(numbers);
        printAverage(numbers);
        printDistinctNumbers(numbers);
        printFrequency(numbers);
        printPrimeNumbersDescending(numbers);
        printReverseOrderDescending(numbers);
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.run();
    }

    private void run() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the number of integers to generate:");
        int n = scanner.nextInt();
        int[] numbers = new int[n];

        System.out.println("Enter the range for the integers:");
        int min = scanner.nextInt();
        int max = scanner.nextInt();
        Random random = new Random();

        for (int i = 0; i < n; i++) {
        numbers[i] = random.nextInt(max - min + 1) + min;
        }

        System.out.println("Generated integers:");
        for (int number numbers) {
            System.out.print(number + " ");
        }
        System.out.println();
        System.out.println("Enter the target sum:");
        int targetSum = scanner.nextInt();

        boolean found = false;
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
            int sum = numbers[i] + numbers[j];
                if (sum == targetSum) {
                System.out.println("Found pair: " + numbers[i] + " + " + numbers[j] + " = " + targetSum);
                found = true;
                break;
                }
            }

        if (!found) {
            System.out.println("No pair found with the given target sum.");
        }

        int primeCount = countPrimes(numbers);
        System.out.println("Number of prime numbers: " + primeCount);
        printPrimeNumbers(numbers);
        printSumOfPrimes(numbers);
        printReverseOrder(numbers);
        printMaxAndMin(numbers);
        printAverage(numbers);
        printDistinctNumbers(numbers);
        printFrequency(numbers);
        printPrimeNumbersDescending(numbers);
        printReverseOrderDescending(numbers);
    }

    public static void main(String[] args) {
        Main main = new Main();
        main.run();
    }

    private void run() {
    Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the number of integers to generate:");
        int n = scanner.nextInt();
        int[] numbers = new int[n];

        System.out.println("Enter the range for the integers:");
        int min = scanner.nextInt();
        int max = scanner.nextInt();
        Random random = new Random();

        for (int i = 0; i < n; i++) {
        numbers[i] = random.nextInt(max - min + 1) + min;
        }

        System.out.println("Generated integers:");
        for (int number numbers) {
            System.out.print(number + " ");
        }
        System.out.println();
        System.out.println("Enter the target sum:");
        int targetSum = scanner.nextInt();

        boolean found = false;
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
            int sum = numbers[i] + numbers[j];
                if (sum == targetSum) {
                System.out.println("Found pair: " + numbers[i] + " + " + numbers[j] + " = " + targetSum);
                found = true;
                break;
                }
            }
            if (found) {
                break;
            }
        }
        if (!found) {
            System.out.println("No pair found with the given target sum.");
        }

        int primeCount = countPrimes(numbers);
        System.out.println("Number of prime numbers: " + primeCount);
        printPrimeNumbers(numbers);
        printSumOfPrimes(numbers);
        printReverseOrder(numbers);
        printMaxAndMin(numbers);
        printAverage(numbers);
        printDistinctNumbers(numbers);
        printFrequency(numbers);
        printPrimeNumbersDescending(numbers);
        printReverseOrderDescending(numbers);
})))))))))))))))))


