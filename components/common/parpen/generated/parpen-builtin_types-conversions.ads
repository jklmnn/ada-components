--
--  Generated by RecordFlux 0.4.0-pre on 2020-03-07
--
--  Copyright (C) 2018-2020 Componolit GmbH
--
--  This file is distributed under the terms of the GNU Affero General Public License version 3.
--

package Parpen.Builtin_Types.Conversions is

   pragma Annotate (GNATprove, Terminating, Conversions);

   function Valid (Val : Boolean_Base) return Boolean is
     (case Val is
         when 0 | 1 =>
            True,
         when others =>
            False);

   function Convert (Enum : Boolean) return Boolean_Base is
     (case Enum is
         when False =>
            0,
         when True =>
            1);

   function Convert (Val : Boolean_Base) return Boolean is
     (case Val is
         when 0 =>
            False,
         when 1 =>
            True)
    with
     Pre =>
       Valid (Val);

end Parpen.Builtin_Types.Conversions;
