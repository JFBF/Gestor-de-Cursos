namespace Institucion.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Extraattributes : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "Nombre", c => c.String());
            AddColumn("dbo.AspNetUsers", "Apellido", c => c.String());
            AddColumn("dbo.AspNetUsers", "Cedula", c => c.String());
            AddColumn("dbo.AspNetUsers", "FechaNacimiento", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "FechaNacimiento");
            DropColumn("dbo.AspNetUsers", "Cedula");
            DropColumn("dbo.AspNetUsers", "Apellido");
            DropColumn("dbo.AspNetUsers", "Nombre");
        }
    }
}
