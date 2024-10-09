;; name project r4mz
;; name program r4
;; name extension mz
;; name version 1.0

(module r4mz
  (import "mz.r4" as mz)

  ;; Define a new record type for a MZ record
  (record MzRecord
    (fields
      (field id mz/Int)
      (field name mz/String)
      (field age mz/Int)))

      ;; Define a function to create a new MZRecord
      (func create-record (param id mz/Int) (param name mz/String) (param age mz/Int) (result mz/MzRecord))
      (mz/let ((record (mz/make mzRecord (mz/int id) (mz/string name) (mz/int age))))
        record))


      ;; Define a function to print a MZRecord
      (func print-record (param record mz/MzRecord))
      (mz/print (mz/string "ID: ") (mz/int-to-string (mz/id record)))
      (mz/print (mz/string ", Name: "))
      (mz/print (mz/string record.name))
      (mz/print (mz/string ", Age: "))
      (mz/print (mz/int-to-string record.age))
      (mz/print (mz/string "\n"))

  ;; Define a function to sort a list of MZRecords by age
  (func sort-records (param records (list mz/MzRecord)) (result (list mz/MzRecord)))
  (mz/let ((sorted-records (mz/sort records (mz/compare-ints (lambda (record1 record2) (record1.age record2.age))))))
  sorted-records)

  ;; Define a function to filter a list of MZRecords by age
  (func filter-records (param records (list mz/MzRecord)) (param min-age mz/Int) (result (list mz/MzRecord)))
  (mz/let ((filtered-records (mz/filter records (lambda (record) (> (record.age) min-age)))))
  filtered-records)

  ;; Define a function to find the oldest MZRecord in a list
  (func find-oldest-record (param records (list mz/MzRecord)) (result mz/MzRecord))
  (mz/let ((oldest-record (mz/reduce records (mz/compare-ints (lambda (record1 record2) (record1.age record2.age))) record1
  oldest-record))))

  ;; Define a function to find the youngest MZRecord in a list))))
  (func find-youngest-record (param records (list mz/MzRecord)) (result mz/MzRecord))
  (mz/let ((youngest-record (mz/reduce records (mz/compare-ints (lambda (record1 record2) (< (record1.age) record2.age>)))))))

  ;; Define a function to find the average age of MZRecords in a list
  (func find-average-age (param records (list mz/MzRecord)) (result f64))
  (mz/let ((sum (mz/reduce records (mz/add-floats (lambda (record1 record2) (+ (record1.age) (record2.age))))
  0.0))
  (mz/let ((count (mz/length records)))
  (/ sum count))))

  ;; Define a function to find the median age of MZRecords in a list
  (func find-median-age (param records (list mz/MzRecord)) (result f64))
  (mz/let ((sorted-records (sort-records records))
  (mz/let ((count (mz/length records)))
  (mz/let ((mid-index (floor (/ count 2.0))))
  (mz/let ((median-age (if (> count 2.0) (mz/get sorted-records mid-index) (mz/get sorted-records (floor (/ count
  - 1.0))))))
  median-age)))))

  ;; Define a function to find the mode age of MZRecords in a list
  (func find-mode-age (param records (list mz/MzRecord)) (result (list mz/Int)))
  (mz/let ((count-map (mz/reduce records (mz/add-floats (lambda (record1 record2) (mz/get record2.age count-map
  (or (mz/get record1.age count-map 0) 0))))))))
  (mz/let ((max-count 0))
  (mz/let ((modes (mz/filter count-map (lambda (count) (> count max-count))))))
  (mz/let ((mode-ages (mz/map (lambda (count age) (mz/if (> count max-count) (mz/list age) modes)) count-map))))
  mode-ages)

  ;; Define a function to find the range of ages of MZRecords in a list
  (func find-range-age (param records (list mz/MzRecord)) (result f64))
  (mz/let ((min-age (mz/reduce records (mz/min-floats (lambda (record1 record2) (record1.age record2.age))) 0
  (mz/let ((max-age (mz/reduce records (mz/max-floats (lambda (record1 record2) (record1.age record2.age))) 0))))))))

  ;; Define a function to find the standard deviation of ages of MZRecords in a list
  (func find-standard-deviation (param records (list mz/MzRecord)) (result f64))
  (mz/let ((average-age (find-average-age records))))

  (mz/let ((variance (mz/reduce records (mz/add-floats (lambda (record1 record2) (mz/square (- (record1.age) average-age
  (record2.age))))))))
  (mz/let ((standard-deviation (sqrt variance))))
  standard-deviation)

  ;; Define a function to find the correlation coefficient of two MZRecord fields
  (func find-correlation-coefficient (param records1 (list mz/MzRecord) param records2 (list mz/MzRecord) (param field1 mz/String) (
  param field2 mz/String) (result f64))
  (mz/let ((count (mz/length records1)))))

  (mz/let ((sum1 (mz/reduce records1 (mz/add-floats (lambda (record1 record2) (mz/get record1 field1 count-map
  (or (mz/get record2 field1 count-map 0) 0))))))))
  (mz/let ((sum2 (mz/reduce records2 (mz/add-floats (lambda (record1 record2) (mz/get record1 field2 count-map)))))))
  (mz/let ((sum1-sq (mz/reduce records1 (mz/add-floats (lambda (record1 record2) (mz/square (- (mz/get record)))))))))
  (mz/let ((sum2-sq (mz/reduce records2 (mz/add-floats (lambda (record1 record2) (mz/square (- (mz/get record)))))))))
  (mz/let ((sum-product (mz/reduce records1 (mz/add-floats (lambda (record1 record2) (* (mz/get record1 field1) ())))))))
  (mz/let ((count-sq (mz/reduce records1 (mz/add-floats (lambda (record1 record2) (mz/square (mz/length records1))))))))
  (mz/let ((denominator (sqrt (* count-sq (- sum1-sq) (- sum2-sq)))))
  (/ sum-product denominator))

