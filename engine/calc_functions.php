<?php
/*
 * Функции для работы калькуляторов
 */
    require_once '../config/config.php';
    // Функция сложения
    function fMathAdd($a = 0, $b = 0) {
        return $a + $b;
    }
    // Функция вычитания
    function fMathSub ($a = 0, $b = 0) {
        return $a - $b;
    }
    // Функция умножения
    function fMathMul ($a = 0, $b = 0) {
        return $a * $b;
    }
    // Функция деления
    function fMathDiv ($a = 0, $b = 1) {
        if ($b == 0) {
            return 'На 0 делить нельзя!';
        } else {
            return $a / $b;
        }
    }
    // Функция вызова математических операций
    function fMathOperation(
        $argA,                  // аргумент A
        $argB,                  // аргумент B
        $mathOperation          // математическая операция: "+", "-", "*" или "/"
    )
    {
        switch ($mathOperation) {
            case '+':                                   // Сложение
                if (isset($argA) && isset($argB)) {
                    return fMathAdd($argA, $argB);
                }
                break;
            case '-':                                   // Вычитание
                if (isset($argA) && isset($argB)) {
                    return fMathSub($argA, $argB);
                }
                break;
            case '*':                                   // Умножение
                if (isset($argA) && isset($argB)) {
                    return fMathMul($argA, $argB);
                }
                break;
            case '/':                                   // Деление
                if (isset($argA) && isset($argB)) {
                    return fMathDiv($argA, $argB);
                }
                break;
            default:                                    // Если по какой-то причине операция не определена
                return "Неверно задана операция";
        }
    }
    