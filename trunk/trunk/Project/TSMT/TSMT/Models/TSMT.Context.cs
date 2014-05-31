﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TSMT.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TSMTEntities : DbContext
    {
        public TSMTEntities()
            : base("name=TSMTEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Account> Accounts { get; set; }
        public DbSet<Article> Articles { get; set; }
        public DbSet<Candidate> Candidates { get; set; }
        public DbSet<Car> Cars { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<ChairitiesExam> ChairitiesExams { get; set; }
        public DbSet<Charity> Charities { get; set; }
        public DbSet<Comment> Comments { get; set; }
        public DbSet<District> Districts { get; set; }
        public DbSet<Examination> Examinations { get; set; }
        public DbSet<ExaminationsPaper> ExaminationsPapers { get; set; }
        public DbSet<Fund> Funds { get; set; }
        public DbSet<GroupRequest> GroupRequests { get; set; }
        public DbSet<Group> Groups { get; set; }
        public DbSet<Lodge> Lodges { get; set; }
        public DbSet<ParticipantVolunteer> ParticipantVolunteers { get; set; }
        public DbSet<Profile> Profiles { get; set; }
        public DbSet<Province> Provinces { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<Room> Rooms { get; set; }
        public DbSet<ScheduleExam> ScheduleExams { get; set; }
        public DbSet<Sponsor> Sponsors { get; set; }
        public DbSet<Station> Stations { get; set; }
        public DbSet<StationCar> StationCars { get; set; }
        public DbSet<University> Universities { get; set; }
        public DbSet<UniversitiesExamination> UniversitiesExaminations { get; set; }
        public DbSet<Venue> Venues { get; set; }
        public DbSet<Volunteer> Volunteers { get; set; }
    }
}
