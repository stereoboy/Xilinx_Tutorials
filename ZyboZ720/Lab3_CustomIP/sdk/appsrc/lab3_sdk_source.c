#include "xparameters.h"
//#include "xgpio.h"
#include "led_controller.h"
#include "xil_io.h"
//====================================================

int main (void) 
{

   int i;
   u32 led_val =0;
	
   xil_printf("-- AAA Start of the Program --\r\n");
 


   while (1)
   {
	   while(led_val<=16)
	   {
		   xil_printf("-- LED_Value:%d --\r\n", led_val);
		   // output dip switches value on LED_ip device
		   LED_CONTROLLER_mWriteReg(XPAR_LED_CONTROLLER_0_S00_AXI_BASEADDR, 0, led_val);
		   //we are just sending led_value to 4bit wide LED as of our block design
		   led_val++;
		   //lets have some delay
		   for (i=0; i<9999999; i++);

		   if(led_val > 16) led_val = 0;
	   }
   }
return 1;
}

