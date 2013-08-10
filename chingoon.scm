(define chins (round (max 0 (string->number (car (reverse (argv)))))))
(define (display-nl x) (display x) (newline))
(define (get-chins chins)
  (define head (list
                " __________"
                "(--[ .]-[ .]"
                ))
  (define fatty
    "(       O  )")
  (define slim
    "(_______O__)")
  (define middle
    "(          )")
  (define chin
    "(__________)")
  (append head
          (list (if (> chins 0) fatty slim))
          (let loop ((i 1) (face '()))
            (if (>= i chins) face
                (loop (+ i 1) (cons middle face))))
          (if (> chins 0) (list chin) '()) ))

(map  display-nl (get-chins chins))
(exit)
