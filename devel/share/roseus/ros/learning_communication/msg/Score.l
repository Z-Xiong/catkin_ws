;; Auto-generated. Do not edit!


(when (boundp 'learning_communication::Score)
  (if (not (find-package "LEARNING_COMMUNICATION"))
    (make-package "LEARNING_COMMUNICATION"))
  (shadow 'Score (find-package "LEARNING_COMMUNICATION")))
(unless (find-package "LEARNING_COMMUNICATION::SCORE")
  (make-package "LEARNING_COMMUNICATION::SCORE"))

(in-package "ROS")
;;//! \htmlinclude Score.msg.html


(defclass learning_communication::Score
  :super ros::object
  :slots (_classes _score ))

(defmethod learning_communication::Score
  (:init
   (&key
    ((:classes __classes) "")
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _classes (string __classes))
   (setq _score (float __score))
   self)
  (:classes
   (&optional __classes)
   (if __classes (setq _classes __classes)) _classes)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; string _classes
    4 (length _classes)
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _classes
       (write-long (length _classes) s) (princ _classes s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _classes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _classes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get learning_communication::Score :md5sum-) "9c81dd8d900f3622d702e378825806a6")
(setf (get learning_communication::Score :datatype-) "learning_communication/Score")
(setf (get learning_communication::Score :definition-)
      "string classes
float32 score

")



(provide :learning_communication/Score "9c81dd8d900f3622d702e378825806a6")


