#lang racket

; Perguntar números e armazená-los em uma lista
(define numbers (list))
(define (ask-numbers)
  (display "Insira um número: ")
  (define number (read))
  (set! numbers (cons number numbers)))

; Separar os pares e ímpares
(define pares (list))
(define impares (list))
(define (separar-pares-impares)
  (for ([number numbers])
    (if (even? number)
        (set! pares (cons number pares))
        (set! impares (cons number impares)))))

; Ordenar cada lista
(define (ordenar-pares)
  (sort pares <))

(define (ordenar-impares)
  (sort impares <))

; Mostrar os resultados
(display "Pares: ")
(for ([par pares])
  (display par)
  (newline))

(display "Ímpares: ")
(for ([impar impares])
  (display impar)
  (newline))