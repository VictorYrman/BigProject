using Microsoft.AspNetCore.Mvc;
using SiteOfCompany.DAL.Interfaces;
using SiteOfCompany.Domain.Entity;
using SiteOfCompany.Service.Interfaces;

namespace SiteOfCompany.Controllers
{
    public class ProjectController : Controller
    {
        private readonly IProjectService _projectService;
        public ProjectController(IProjectService projectService)
        {
            _projectService = projectService;
        }

        [HttpGet] //Разобраться
        public IActionResult GetProjects()
        {
            var response = _projectService.GetProjects();

            return View(response);
        }
    }
}
