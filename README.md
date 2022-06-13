<h1 align="center">
  <br>Z_FORMAT_USD_TO_BRL</h1>

Hi, good to see you around! This repository contains a function that imports a value in USD format (I_USD_VALUE) and exports the same value in BRL format (E_BRL_VALUE).
<br>
<br>
Note: this function does not convert currency, it is specifically for formatting. If you want this, check out the CONVERT_TO_LOCAL_CURRENCY function. 

## Function: 

![image](https://user-images.githubusercontent.com/86369677/173429901-c03a64c4-15a1-4f50-b590-924f9f4c91d8.png)
<br>
![image](https://user-images.githubusercontent.com/86369677/173430058-ca2d6136-7243-4f66-b2da-4ac31ea0f6f1.png)

### Depending on the scenario, you do not need a function. Try to apply a mask on your field. See the above example:

  TYPES: BEGIN OF ty_saida,                   <br>
           value        TYPE KBETR,           <br>
         END OF ty_saida.                     <br>     
  MOVE sap_vtb_market-value TO lt_saida-value.<br>
  
  ✨ Thanks for your attention! ✨
