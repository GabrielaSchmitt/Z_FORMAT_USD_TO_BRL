FUNCTION z_format_usd_to_brl.
*"----------------------------------------------------------------------
*"*"Interface local:
*"  IMPORTING
*"     REFERENCE(I_USD_VALUE) TYPE  STRING
*"  EXPORTING
*"     REFERENCE(I_BRL_VALUE) TYPE  STRING
*"----------------------------------------------------------------------
  DATA: v_usd    TYPE string,
        v_format TYPE string,
        i        TYPE i,
        v_div    TYPE p DECIMALS 2.

  v_usd = i_usd_value.

  REPLACE '.' IN v_usd WITH ','.
  SPLIT v_usd AT ',' INTO DATA(v_antes) DATA(v_depois).
  v_depois = v_depois(2).
  DATA(v_tam) = strlen( v_antes ).

  i = 3.
  IF v_tam MOD 3 = 0.
    WHILE ( v_tam MOD 3 = 0 ) AND ( v_tam <> 0 ).
      IF v_tam = 3.
        v_format =  |{ v_format }| & |{ v_antes(i) }|.
      ELSE.
        v_format =  |{ v_format }| & |{ v_antes(i) }| & |.|. "conta 3 add ponto
      ENDIF.
      v_antes = v_antes+3.
      v_tam = v_tam - 3.
    ENDWHILE.

  ELSE.
    v_div = FLOOR( v_tam / 3 ).
    i = v_tam.
      DO v_div TIMES.
        i = i - 3.
        v_format =  |.| & |{ v_antes+i(3) }| & |{ v_format }|.
      ENDDO.
     v_format = |{ v_antes(i) }| & |{ v_format }|.
  ENDIF.


v_format = |{ v_format }| & |,| & |{ v_depois }|.
I_BRL_VALUE = v_format.

ENDFUNCTION.
