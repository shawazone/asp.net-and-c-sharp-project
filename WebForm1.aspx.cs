using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace finalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        static List<string> list = new List<string>();// list to store the code and nb of credits
        static string code, credit; // to store and code and credit after spiliting the array list 
        static int totalNbCredits; // total number of credits
        static int flag = 0; // flag for loops


       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAdd_Click(object sender, EventArgs e)
        {
           flag = 0;        // the flag is for warning that if the item exists in the list or not  0 for not exist and 1 for exist
            foreach (ListItem item in listOfModules.Items)  // loop through the list 
            {
                if (item.Text == textBoxCourseCode.Text) // if the item in the text  box exists in the list it sets the flag to 1 
                {
                   
                    flag = 1;
                     
                    break;
                }
            }
            if (flag == 0)  // the flag is 0 so the item does not exist in the list so it will be added to to list box 
            {
               
                listOfModules.Items.Add(textBoxCourseCode.Text);
                list.Add(textBoxCourseCode.Text+" "+textBoxCreditNb.Text); // plus , i add it to an array list to sava the code and nb of credis
            }


          

        }

        protected void buttonClear_Click(object sender, EventArgs e)
        {  // clear button it resets the text box values
            textBoxCourseCode.Text = " ";
            textBoxCreditNb.Text = "0";
        }

        protected void buttonRegister_Click(object sender, EventArgs e)
        {
            string temp = listOfModules.SelectedValue; // temporal string store the selected value in the list of modules 
           flag = 0;   //flag for loop

            foreach (string str in list) // first loop for accessing the array list that stores the courses the the nb if credits
            {
            
                foreach (ListItem item in listOfRegisteredCourses.Items)  // 2nd loop to access the list of registred courses
                {
                    if (item.Text == temp)
                    {  // if the selected value in the list of modules already exists in the list of registred courses it sets the flag to 1
                        flag = 1;
                        break;
                    }
                }

                code = str.Split(' ')[0];  //gets the  value of the course from the the array list
                credit = str.Split(' ')[1]; // gets the vlaue of the credits from the array list 

                int numberOfCredits = Convert.ToInt32(labelTotalNbOfCredits.Text);   // converts the content of the label to int 

          
                
                    if (temp == code && flag == 0) // check for the requirments 1. the selected coures   2. it's not already registred   
                    {
                        


                        totalNbCredits = numberOfCredits + Convert.ToInt32(credit);  // the sum of the current number of credits and the the added one  
                    if (totalNbCredits <= 36)  // 3. the number of credits are less then 35
                    {
                        listOfRegisteredCourses.Items.Add(code);    // adds the selected course to the list of registred courses
                        labelTotalNbOfCredits.Text = totalNbCredits.ToString();    // places the calculated value in the label
                    } else
                    {
                      
                        break;
                    }

                   
                }

               
            }

          




        }

        protected void buttonDeleteAll_Click(object sender, EventArgs e)
        {
            flag = 0;
            for (int i = listOfRegisteredCourses.Items.Count - 1; i >0; i--) // remove all courses exept the --order--
            {
               

               listOfRegisteredCourses.Items.RemoveAt(i);
            }
            labelTotalNbOfCredits.Text = "0"; // set the nb of credits to 0
        }

        protected void buttonUp_Click(object sender, EventArgs e)
        {
     
            int index = listOfRegisteredCourses.SelectedIndex;  // get the index of the selected item
            string listBoxItemText = listOfRegisteredCourses.SelectedItem.ToString();  // get the value of the selected item
            if(index > 1) // exept the --order--
            {
                listOfRegisteredCourses.Items.RemoveAt(index); // remove the selected value form the it's index
                listOfRegisteredCourses.Items.Insert(index - 1, listBoxItemText); // insert the selected value in the next index
                
            }
        }

        protected void buttonDown_Click(object sender, EventArgs e)
        {
          
            int index = listOfRegisteredCourses.SelectedIndex;        // get the index of the selected item
            string listBoxItemText = listOfRegisteredCourses.SelectedItem.ToString();  // get the value of the selected item
            if (index >= 1)
            {
                listOfRegisteredCourses.Items.RemoveAt(index);  // remove the selected value form the it's index
                listOfRegisteredCourses.Items.Insert(index + 1, listBoxItemText); // insert the selected value in the prevoius index

            }
        }

        protected void buttonDelete_Click(object sender, EventArgs e)
        {
           
            if (listOfRegisteredCourses.SelectedIndex == 0)  // index 0 is for the -- oreder --
            {
                
            }
            else
            {
                string temp = listOfRegisteredCourses.SelectedItem.ToString();  // temporal string for the selected item to be deleted

                foreach (string str in list) // loop throug the array list
                {


                    if (str.Split(' ')[0] == temp)   // if the course from the list is equal to the item to be deleted 
                    {
                        string creditToDelete = str.Split(' ')[1];  //get the number of the credits of the course you want to delete 
                        totalNbCredits = Convert.ToInt32(labelTotalNbOfCredits.Text) - Convert.ToInt32(creditToDelete); // subtruct the credits of the courese from the ones in the label
                        labelTotalNbOfCredits.Text = totalNbCredits.ToString();  // convert the converted value to string in the label
                    }
                }
                listOfRegisteredCourses.Items.Remove(listOfRegisteredCourses.SelectedItem);  // then remove the course from the list
               
            }
        }
    }
}
