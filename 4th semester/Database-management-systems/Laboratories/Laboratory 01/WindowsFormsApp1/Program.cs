﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    static class Program
    {
        /* 
        <summary>
        Assignment 1:
        assigned: weeks 1/2; due: weeks 5/6
        Create a C# Windows Forms application that uses ADO.NET to interact with the database you developed in the 1st semester. 
        The application must contain a form allowing the user to manipulate data in 2 tables that are in a 1:n relationship 
        (parent table and child table). 
        The application must provide the following functionalities:
        – display all the records in the parent table;
        – display the child records for a specific (i.e., selected) parent record;
        – add / remove / update child records for a specific parent record.

        You must use the DataSet and SqlDataAdapter classes. You are free to use any controls on the form.
        Obs. If you don’t have a database from the previous semester, imagine a simple application that requires a database. 
        Represent the application data in a relational structure and implement the structure in a SQL Server database. 
        The database must contain at least: 10 tables, two 1:n relationships, one m:n relationship.
        </summary>
        */
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());

            String connectionString = "";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                Console.WriteLine("ServerVersion: {0}", connection.ServerVersion);
                Console.WriteLine("State: {0}", connection.State);
            }
        }
    }
}
