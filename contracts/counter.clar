;; Variables
(define-data-var counter int 0)

;; Get Counter Value
(define-read-only (get-counter)
  (ok (var-get counter))
)

;; Increment the Counter Value
(define-public (increment)
  (begin
    (var-set counter (+ (var-get counter) 1))
    (ok (var-get counter))
  )
)

;; Decrement the Counter value
(define-public (decrement)
  (begin
    (var-set counter (- (var-get counter) 1))
    (ok (var-get counter))
  )
)