using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BobWebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            string firstName, lastName, result; //single line declaring all veriables.
            firstName = firstNameTextbox.Text; //getting the user's first name.
            lastName = lastNameTextBox.Text; //getting the user's last name.
            result = "Hello " + firstName + " " + lastName; //concatenate both
            resultLabel.Text = result; //publish result. 
        }
    }
}