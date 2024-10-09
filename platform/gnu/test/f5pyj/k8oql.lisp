;; name project k8oql
;; name program k8
;; name extension oql
;; name description "A K8s OQL (OpenQuery Language) client"
;; name version 0.1.0
;; name author "Your Name <your-email@example.com>"

(use k8)
(use k8oql)

;; Define the main function
(function main() {
  ;; Set the K8s API server URL
  (k8.set-api-server-url "https://kubernetes.default.svc")

  ;; Create a K8s client
  (let [client (k8.create-client)]

    ;; Define the query
    (let [query "SELECT * FROM pods WHERE status.phase = 'Running'"]

      ;; Execute the query and print the results
      (println (k8oql.execute-query client query))
    )
  )

  ;; Exit the program
  (System/exit 0))
