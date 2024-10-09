;; name project on6xb
;; name program on6
;; name extension xb
;; name version 1.0
;; name description "A simple calculator"
;; name author "Your Name"
;; name email "your@email.com"

;; include standard libraries
(include stdio)
(include math)

;; define main function
(main IO ())
(main = do
    putStrLn "Simple Calculator"
    putStrLn "-----------------"
    putStrLn "1. Addition"
    putStrLn "2. Subtraction"
    putStrLn "3. Multiplication"
    putStrLn "4. Division"
    putStrLn "5. Square Root"
    putStrLn "6. Exit"

    let choice = readLn Int
    case choice of
        1 -> do
            putStrLn "Enter two numbers:"
            let num1 = readLn Double
            let num2 = readLn Double
            putStrLn $ "Result: " ++ show (num1 + num2)

        2 -> do
            putStrLn "Enter two numbers:"
            let num1 = readLn Double
            let num2 = readLn Double
            putStrLn $ "Result: " ++ show (num1 - num2)

        3 -> do
            putStrLn "Enter two numbers:"
            let num1 = readLn Double
            let num2 = readLn Double
            putStrLn $ "Result: " ++ show (num1 * num2)

        4 -> do
            putStrLn "Enter two numbers:"
            let num1 = readLn Double
            let num2 = readLn Double
            if num2 == 0 then
            putStrLn "Error: Division by zero"
            else
                putStrLn $ "Result: " ++ show (num1 / num2)

        5 -> do
        putStrLn "Enter a number:"
        let num = readLn Double
        if num < 0 then
            putStrLn "Error: Negative number"
        else
        putStrLn $ "Result: " ++ show (sqrt num)

        6 -> exitWith ()
        _ -> do
            putStrLn "Invalid choice. Please try again."
            main)


