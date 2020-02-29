; Auto-generated. Do not edit!


(cl:in-package learning_communication-msg)


;//! \htmlinclude Score.msg.html

(cl:defclass <Score> (roslisp-msg-protocol:ros-message)
  ((classes
    :reader classes
    :initarg :classes
    :type cl:string
    :initform "")
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass Score (<Score>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Score>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Score)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_communication-msg:<Score> is deprecated: use learning_communication-msg:Score instead.")))

(cl:ensure-generic-function 'classes-val :lambda-list '(m))
(cl:defmethod classes-val ((m <Score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_communication-msg:classes-val is deprecated.  Use learning_communication-msg:classes instead.")
  (classes m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Score>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_communication-msg:score-val is deprecated.  Use learning_communication-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Score>) ostream)
  "Serializes a message object of type '<Score>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'classes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'classes))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Score>) istream)
  "Deserializes a message object of type '<Score>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'classes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Score>)))
  "Returns string type for a message object of type '<Score>"
  "learning_communication/Score")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Score)))
  "Returns string type for a message object of type 'Score"
  "learning_communication/Score")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Score>)))
  "Returns md5sum for a message object of type '<Score>"
  "9c81dd8d900f3622d702e378825806a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Score)))
  "Returns md5sum for a message object of type 'Score"
  "9c81dd8d900f3622d702e378825806a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Score>)))
  "Returns full string definition for message of type '<Score>"
  (cl:format cl:nil "string classes~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Score)))
  "Returns full string definition for message of type 'Score"
  (cl:format cl:nil "string classes~%float32 score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Score>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'classes))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Score>))
  "Converts a ROS message object to a list"
  (cl:list 'Score
    (cl:cons ':classes (classes msg))
    (cl:cons ':score (score msg))
))
