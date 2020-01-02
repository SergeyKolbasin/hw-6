<?php
/*
 * Функции для работы калькуляторов
 */
    require_once '../config/config.php';
    // Функция сложения
    function fMathAdd($a = 0, $b = 0) {
        $result = $a + $b;
        return $result;
    }
    // Функция вычитания
    function fMathSub ($a = 0, $b = 0) {
        $result = $a - $b;
        return $result;
    }
    // Функция умножения
    function fMathMul ($a = 0, $b = 0) {
        $result = $a * $b;
        return $result;
    }
    // Функция деления
    function fMathDiv ($a = 0, $b = 1) {
        if ($b == 0) {
            $result = 'на 0 делить нельзя!';
        } else {
            $result = $a / $b;
        }
        return $result;
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
                if (isset($argA) AND isset($argB)) {
                    return fMathAdd($argA, $argB);
                }
                break;
            case '-':                                   // Вычитание
                if (isset($argA) AND isset($argB)) {
                    return fMathSub($argA, $argB);
                }
                break;
            case '*':                                   // Умножение
                if (isset($argA) AND isset($argB)) {
                    return fMathMul($argA, $argB);
                }
                break;
            case '/':                                   // Деление
                if (isset($argA) AND isset($argB)) {
                    return fMathDiv($argA, $argB);
                }
                break;
            default:
                return "Неверно задана операция";
        }
    }
    