using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class _Default : Page
    {
        public int count = 0;

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Select"))
            {
                var t = Convert.ToInt32(e.CommandArgument.ToString());
                if (t == 0)
                {
                    GridViewRow row = GridView2.Rows[0];
                    row.Cells[3].ForeColor = System.Drawing.Color.Blue;
                }
                else if (t == 1)
                {
                    GridViewRow row1 = GridView2.Rows[1];
                    GridViewRow row2 = GridView2.Rows[2];
                    row1.Cells[3].ForeColor = System.Drawing.Color.Purple;
                    row2.Cells[3].ForeColor = System.Drawing.Color.Purple;
                }
                else if (t == 2)
                {
                    GridViewRow row = GridView2.Rows[3];
                    row.Cells[3].ForeColor = System.Drawing.Color.Green;
                }
            }
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            var userid = GridView1.DataKeys[e.RowIndex].Value.ToString();
            var NewData = e.NewValues.Values;
            string NewDCode = "", NewDepartment = "";
            count = 0;
            foreach (var item in NewData)
            {
                if (count == 0)
                {
                    NewDCode = item.ToString();
                    count++;
                }
                else if (count == 1)
                {
                    NewDepartment = item.ToString();
                }
            }
            SqlDataSourceDepartment.UpdateCommand = "UPDATE Department_Table SET DCode=@DCode, Department=@Department WHERE Id=@Id";

            SqlDataSourceDepartment.UpdateParameters.Add("ID", userid);
            SqlDataSourceDepartment.UpdateParameters.Add("DCode", NewDCode);
            SqlDataSourceDepartment.UpdateParameters.Add("Department", NewDepartment);

            SqlDataSourceDepartment.Update();
        }
    }
}