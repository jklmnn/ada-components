
with Gneiss.Types;
with Gneiss.Block;
with Gneiss.Block.Client;
with Gneiss.Log;
with Run;

generic
   with package Block is new Gneiss.Block (<>);
   with package Client is new Block.Client (<>);
   Request_Count : Block.Count;
   Iterations    : Positive;
package Rwr is

   package RR1 is new Run (Block, Client, Request_Count, Iterations, Block.Read);
   package WR is new Run (Block, Client, Request_Count, Iterations, Block.Write);
   package RR2 is new Run (Block, Client, Request_Count, Iterations, Block.Read);

   type Rwr_Run is limited record
      R1 : RR1.Run_Type;
      W : WR.Run_Type;
      R2 : RR2.Run_Type;
   end record;

   procedure Initialize (R : out Rwr_Run;
                         C :     Gneiss.Types.Capability);

   procedure Run (C   : in out Block.Client_Session;
                  R   : in out Rwr_Run;
                  Log : in out Gneiss.Log.Client_Session);

   function Finished (R : Rwr_Run) return Boolean;

   procedure Xml (Xml_Log : in out Gneiss.Log.Client_Session;
                  R       : Rwr_Run;
                  Log     : in out Gneiss.Log.Client_Session);

end Rwr;
