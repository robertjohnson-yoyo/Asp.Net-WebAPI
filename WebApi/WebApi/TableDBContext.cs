namespace WebApi
{
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using WebApi.Models;

    public class TableDBContext : DbContext
    {
        public TableDBContext()
            : base("name=connectionString")
        {
        }

        public virtual DbSet<TableA> TableA { get; set; }

        protected override void OnModelCreating(DbModelBuilder dbModelBuilder)
        {
            dbModelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            
        }

    }

}