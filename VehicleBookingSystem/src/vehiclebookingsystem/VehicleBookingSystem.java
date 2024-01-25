package vehiclebookingsystem;
import vehiclebookingsystem.Screen;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
package vehiclebookingsystem;
import apps.login;
/**
 *
 * @author RAMAN
 */
public class VehicleBookingSystem {
//    /**
//     * @param args the command line arguments
//     */
    public static void main(String args[]) {
        Screen obj=new Screen();
        obj.setVisible(true);

      try
      {
       for(int i=0;i<=100;i++)
       {
        Thread.sleep(100);
        obj.jProgressBar1.setValue(i);
       }
       obj.dispose();
       login lw=new login();
       lw.setVisible(true);
      }
      catch(Exception e)
        {
         e.printStackTrace();
        }
      }


    private static class String {
    }
}
