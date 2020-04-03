package Parpen.Protocol with
  SPARK_Mode
is

   type Esc_Char_Base is range 0 .. 2**8 - 1 with
     Size =>
       8;

   subtype Esc_Char is Esc_Char_Base range 27 .. 27;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Esc_Char return Parpen.Protocol.Esc_Char is
     (Parpen.Protocol.Esc_Char'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Esc_Char_Base) return Boolean is
     (Val >= 27
      and Val <= 27);

   function Convert (Val : Parpen.Protocol.Esc_Char_Base) return Parpen.Protocol.Esc_Char is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Connection_ID_Base is range 0 .. 2**32 - 1 with
     Size =>
       32;

   subtype Connection_ID is Connection_ID_Base range 1 .. 2**32 - 1;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Connection_ID return Parpen.Protocol.Connection_ID is
     (Parpen.Protocol.Connection_ID'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Connection_ID_Base) return Boolean is
     (Val >= 1);

   function Convert (Val : Parpen.Protocol.Connection_ID_Base) return Parpen.Protocol.Connection_ID is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Tag_Base is mod 2**8;

   type Tag is (T_HANDLE, T_BINDER, T_STATUS) with
     Size =>
       8;
   for Tag use (T_HANDLE => 0, T_BINDER => 1, T_STATUS => 2);

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Tag return Parpen.Protocol.Tag is
     (Parpen.Protocol.Tag'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Tag_Base) return Boolean is
     ((case Val is
         when 0 | 1 | 2 =>
            True,
         when others =>
            False));

   function Convert (Enum : Parpen.Protocol.Tag) return Parpen.Protocol.Tag_Base is
     ((case Enum is
         when T_HANDLE =>
            0,
         when T_BINDER =>
            1,
         when T_STATUS =>
            2));

   function Convert (Val : Parpen.Protocol.Tag_Base) return Parpen.Protocol.Tag is
     ((case Val is
         when 0 =>
            T_HANDLE,
         when 1 =>
            T_BINDER,
         when 2 =>
            T_STATUS,
         when others =>
            Unreachable_Protocol_Tag))
    with
     Pre =>
       Valid (Val);

   type Handle_Base is range 0 .. 2**32 - 1 with
     Size =>
       32;

   subtype Handle is Handle_Base range 0 .. 2**32 - 1;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Handle return Parpen.Protocol.Handle is
     (Parpen.Protocol.Handle'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Handle_Base) return Boolean is
     (True);

   function Convert (Val : Parpen.Protocol.Handle_Base) return Parpen.Protocol.Handle is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Binder is mod 2**64;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Binder return Parpen.Protocol.Binder is
     (Parpen.Protocol.Binder'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   pragma Warnings (Off, "unused variable ""Val""");

   function Valid (Val : Parpen.Protocol.Binder) return Boolean is
     (True);

   pragma Warnings (On, "unused variable ""Val""");

   function Convert (Val : Parpen.Protocol.Binder) return Parpen.Protocol.Binder is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Status_Base is mod 2**8;

   type Status is (STATUS_OK, STATUS_UNKNOWN_ERROR, STATUS_PROTOCOL_VIOLATION, STATUS_INVALID_REQUEST, STATUS_INVALID_HANDLE, STATUS_INVALID_BINDER, STATUS_INVALID_METHOD, STATUS_OFFSET_OUT_OF_RANGE, STATUS_RECEIVER_NOT_READY, STATUS_RECEIVE_BUFFER_TOO_SMALL, STATUS_OVERFLOW) with
     Size =>
       8;
   for Status use (STATUS_OK => 0, STATUS_UNKNOWN_ERROR => 1, STATUS_PROTOCOL_VIOLATION => 2, STATUS_INVALID_REQUEST => 3, STATUS_INVALID_HANDLE => 4, STATUS_INVALID_BINDER => 5, STATUS_INVALID_METHOD => 6, STATUS_OFFSET_OUT_OF_RANGE => 7, STATUS_RECEIVER_NOT_READY => 8, STATUS_RECEIVE_BUFFER_TOO_SMALL => 9, STATUS_OVERFLOW => 10);

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Status return Parpen.Protocol.Status is
     (Parpen.Protocol.Status'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Status_Base) return Boolean is
     ((case Val is
         when 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 =>
            True,
         when others =>
            False));

   function Convert (Enum : Parpen.Protocol.Status) return Parpen.Protocol.Status_Base is
     ((case Enum is
         when STATUS_OK =>
            0,
         when STATUS_UNKNOWN_ERROR =>
            1,
         when STATUS_PROTOCOL_VIOLATION =>
            2,
         when STATUS_INVALID_REQUEST =>
            3,
         when STATUS_INVALID_HANDLE =>
            4,
         when STATUS_INVALID_BINDER =>
            5,
         when STATUS_INVALID_METHOD =>
            6,
         when STATUS_OFFSET_OUT_OF_RANGE =>
            7,
         when STATUS_RECEIVER_NOT_READY =>
            8,
         when STATUS_RECEIVE_BUFFER_TOO_SMALL =>
            9,
         when STATUS_OVERFLOW =>
            10));

   function Convert (Val : Parpen.Protocol.Status_Base) return Parpen.Protocol.Status is
     ((case Val is
         when 0 =>
            STATUS_OK,
         when 1 =>
            STATUS_UNKNOWN_ERROR,
         when 2 =>
            STATUS_PROTOCOL_VIOLATION,
         when 3 =>
            STATUS_INVALID_REQUEST,
         when 4 =>
            STATUS_INVALID_HANDLE,
         when 5 =>
            STATUS_INVALID_BINDER,
         when 6 =>
            STATUS_INVALID_METHOD,
         when 7 =>
            STATUS_OFFSET_OUT_OF_RANGE,
         when 8 =>
            STATUS_RECEIVER_NOT_READY,
         when 9 =>
            STATUS_RECEIVE_BUFFER_TOO_SMALL,
         when 10 =>
            STATUS_OVERFLOW,
         when others =>
            Unreachable_Protocol_Status))
    with
     Pre =>
       Valid (Val);

   type Method_Base is range 0 .. 2**32 - 1 with
     Size =>
       32;

   subtype Method is Method_Base range 0 .. 2**32 - 1;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Method return Parpen.Protocol.Method is
     (Parpen.Protocol.Method'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Method_Base) return Boolean is
     (True);

   function Convert (Val : Parpen.Protocol.Method_Base) return Parpen.Protocol.Method is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Cookie is mod 2**64;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Cookie return Parpen.Protocol.Cookie is
     (Parpen.Protocol.Cookie'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   pragma Warnings (Off, "unused variable ""Val""");

   function Valid (Val : Parpen.Protocol.Cookie) return Boolean is
     (True);

   pragma Warnings (On, "unused variable ""Val""");

   function Convert (Val : Parpen.Protocol.Cookie) return Parpen.Protocol.Cookie is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Offset is mod 2**64;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Offset return Parpen.Protocol.Offset is
     (Parpen.Protocol.Offset'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   pragma Warnings (Off, "unused variable ""Val""");

   function Valid (Val : Parpen.Protocol.Offset) return Boolean is
     (True);

   pragma Warnings (On, "unused variable ""Val""");

   function Convert (Val : Parpen.Protocol.Offset) return Parpen.Protocol.Offset is
     (Val)
    with
     Pre =>
       Valid (Val);

   type Length_Base is range 0 .. 2**32 - 1 with
     Size =>
       32;

   subtype Length is Length_Base range 0 .. 2**32 - 1;

   pragma Warnings (Off, "precondition is statically false");

   function Unreachable_Protocol_Length return Parpen.Protocol.Length is
     (Parpen.Protocol.Length'First)
    with
     Pre =>
       False;

   pragma Warnings (On, "precondition is statically false");

   function Valid (Val : Parpen.Protocol.Length_Base) return Boolean is
     (True);

   function Convert (Val : Parpen.Protocol.Length_Base) return Parpen.Protocol.Length is
     (Val)
    with
     Pre =>
       Valid (Val);

end Parpen.Protocol;
