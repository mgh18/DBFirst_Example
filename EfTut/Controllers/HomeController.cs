
using EfTut.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataLayer;
namespace EfTut.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            List<studenModel> studentList = new List<studenModel>();
            using (EF_DBEntities db = new EF_DBEntities())
            {
                var students = db.student.ToList();

                foreach (var student in students)
                {
                    studenModel model = new studenModel();
                    model.id = student.StudentId;
                    model.FirstName = student.firstName;
                    model.LastName = student.lastName;
                    model.Department = student.departmant;
                    model.Email = student.Email;

                    studentList.Add(model);

                }
            }
            return View(studentList);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult CreateStudent()
        {
            studenModel model = new studenModel();

            return View(model);
        }
        [HttpPost]
        public ActionResult CreateStudent(studenModel model)
        {
            using (EF_DBEntities db = new EF_DBEntities())
            {
                student st = new student();
                st.firstName = model.FirstName;
                st.lastName = model.LastName;
                st.departmant = model.Department;
                st.Email = model.Email;

                db.student.Add(st);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

        }

        public ActionResult UpdateStudent(int? id)
        {
            studenModel model = new studenModel();

            using (EF_DBEntities db = new EF_DBEntities())
            {
                var students = db.student.FirstOrDefault(x => x.StudentId == id);
                if (students != null)
                {
                    model.id = students.StudentId;
                    model.FirstName = students.firstName;
                    model.LastName = students.lastName;
                    model.Department = students.departmant;
                    model.Email = students.Email;
                }

            }
            return View(model);

        }
        [HttpPost]
        public ActionResult UpdateStudent(studenModel model)
        {
            using (EF_DBEntities db = new EF_DBEntities())
            {

                var st = db.student.FirstOrDefault(x => x.StudentId == model.id);
                st.firstName = model.FirstName;
                st.lastName = model.LastName;
                st.departmant = model.Department;
                st.Email = model.Email;
                db.Entry(st).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }

        }

        public ActionResult Details(int? id)
        {
            studenModel model = new studenModel();
            using (EF_DBEntities db = new EF_DBEntities())
            {
                var st = db.student.FirstOrDefault(x => x.StudentId == id);
                if(st != null)
                {

                    model.id = st.StudentId;
                    model.FirstName = st.firstName;
                    model.LastName = st.lastName;
                    model.Department = st.departmant;
                    model.Email = st.Email;

                }



            }
            return View(model);
        }


    }  
        }