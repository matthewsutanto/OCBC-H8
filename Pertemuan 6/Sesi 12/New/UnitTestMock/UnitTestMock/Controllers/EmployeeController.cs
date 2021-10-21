﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using UnitTestMock.Models;
using UnitTestMock.Services;

namespace UnitTestMock.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : Controller
    {
        #region Property
        private readonly IEmployeeService _employeeService;
        #endregion

        #region Constructor
        public EmployeeController(IEmployeeService employeeService)
        {
            _employeeService = employeeService;
        }
        #endregion

        [HttpGet(nameof(GetEmployeeById))]
        public async Task<string> GetEmployeeById(int EmpId)
        {
            var result = await _employeeService.GetEmployeeById(EmpId);
            return result;
        }

        [HttpGet(nameof(GetEmployeeDetails))]
        public async Task<Employee> GetEmployeeDetails(int EmpId)
        {
            var result = await _employeeService.GetEmployeeDetails(EmpId);
            return result;
        }
    }
}