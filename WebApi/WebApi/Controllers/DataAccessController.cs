using System.Linq;
using System.Web.Http;
using WebApi.Models;

namespace WebApi.Controllers
{
    public class DataAccessController : ApiController
    {

        public IHttpActionResult GetData()
        {
            using (TableDBContext db = new TableDBContext())
            {
                var result = db.Database.SqlQuery<TableA>("GetRecord").ToList();
                return Ok(result);
            }
        }

    }
}
