<h1 align="center">
  <br>Z_FORMAT_USD_TO_BRL</h1>


Import a value in USD format and get the same value in BRL format (no conversion). 

## Function: 

![image](https://user-images.githubusercontent.com/86369677/173426813-016f3ded-b448-40ea-8793-48cb0c37acc6.png)
<br>
![image](https://user-images.githubusercontent.com/86369677/173426886-724ede51-12c5-4f59-b90c-854c43e6e497.png)

### Depending on the cenario, you do not need a function. Try to apply a mask on your field. See the above example: 

  TYPES: BEGIN OF ty_saida,                   <br>
           value        TYPE KBETR,           <br>
         END OF ty_saida.                     <br>     
  MOVE sap_vtb_market-value TO lt_saida-value.<br>
