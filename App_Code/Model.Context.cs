﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

public partial class BloodBankEntities : DbContext
{
    public BloodBankEntities()
        : base("name=BloodBankEntities")
    {
    }

    protected override void OnModelCreating(DbModelBuilder modelBuilder)
    {
        throw new UnintentionalCodeFirstException();
    }

    public DbSet<Tb_Admin> Tb_Admin { get; set; }
    public DbSet<Tb_Appointment> Tb_Appointment { get; set; }
    public DbSet<Tb_Donar> Tb_Donar { get; set; }
    public DbSet<Tb_Individuals> Tb_Individuals { get; set; }
    public DbSet<Tb_Receiver> Tb_Receiver { get; set; }
    public DbSet<Tb_Events> Tb_Events { get; set; }
    public DbSet<Tb_pannel> Tb_pannel { get; set; }
    public DbSet<Tb_Hospital> Tb_Hospital { get; set; }
}