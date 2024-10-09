;; name project s53dt
;; name program s53
;; name extension dt
;; name extension s53

;; define the fields
(field 1 "Name" 10 L)
(field 2 "Type" 5 L)
(field 3 "Description" 30 L)

;; define the records
(record 1 "Project" "Project details")
(record 2 "Feature" "Feature details")
(record 3 "Layer" "Layer details")

;; define the relationships
(relationship 1 1 2)
(relationship 1 1 3)
(relationship 2 2 3)

;; define the data
(data 1 1 2)
(data 1 1 "Project 1")
(data 1 2 "Feature 1")
(data 1 3 "Layer 1")
(data 2 2 "Feature 2")
(data 2 3 "Layer 2")
(data 3 3 "Layer 3")


;; define the indexes
(index 1 1 "Name" 1)
(index 1 2 "Type" 1)
(index 1 3 "Description" 1)
(index 2 1 "Name" 1)
(index 2 2 "Type" 1)
(index 2 3 "Description" 1)
(index 3 1 "Name" 1)
(index 3 2 "Type" 1)
(index 3 3 "Description" 1)


;; define the views
(view 1 1 "Project Details")
(view 1 2 "Feature Details")
(view 1 3 "Layer Details")

(view 1 1 "Projects")
(view 1 2 "Features")
(view 1 3 "Layers")

(view 1 1 "Project Features")
(view 1 2 "Project Layers")

(view 1 1 "Feature Layers")


;; define the search terms
(search 1 1 "Project 1")
(search 1 2 "Feature 1")
(search 1 3 "Layer 1")
(search 1 1 "Project")
(search 1 2 "Feature")
(search 1 3 "Layer")


;; define the permissions
(permission 1 1 1 "read")
(permission 1 1 2 "read")
(permission 1 1 3 "read")
(permission 1 2 2 "read")
(permission 1 2 3 "read")
(permission 1 3 3 "read")
(permission 1 1 1 "write")
(permission 1 1 2 "write")
(permission 1 1 3 "write")
(permission 1 2 2 "write")
(permission 1 2 3 "write")
(permission 1 3 3 "write")



