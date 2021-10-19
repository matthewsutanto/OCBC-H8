using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnitTestMock.Models;

namespace UnitTestMock.Services
{
    public interface IEmployeeService
    {
        Task<string> GetEmployeeById(int EmpId);
        Task<Employee> GetEmployeeDetails(int EmpId);
    }
}
