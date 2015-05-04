# learning-COBOL
	
      *This source is a attempt for learn basic of COBOL*
      *use OpenCOBOL compiler*
      *Author: Luiz Carlos Ferreira Junior*
      *font:http://www.tutorialspoint.com/cobol/cobol_data_types.htm*
      
      --almost there is no support for that language on the internet

      +COBOL is like latin, everybody already heard, nobody understand and is a dead language


	*vars, i think..*
      *---------------------------------------------------------*
      *___LVL___|_________________DESC__________________________*
      *01 	|	Record description entry		*
      *02~49	|	Group and Elementary items		* <~~~~commom vars...
      *66	|	Rename Clause items			*
      *77	|	Items which cannot be sub-divided	*
      *88	|	Condition name entry			*
      *---------------------------------------------------------*
      *Picture Clause:						*
      *Symbol 	Description					*
      *9 	Numeric						*<~~~~~int and double...
      *A 	Alphabetic					*<~~~~~String without numbers
      *X 	Alphanumeric					*<~~~~~Strings like C
      *V 	Implicit Decimal				*
      *S 	Sign						*
      *P 	Assumed Decimal					*
      *---------------------------------------------------------*

      *Elementary items cannot be divided further. Level number, 
      *Data name, Picture clause and Value clause (optional) are used
      *to describe an elementary item.
      
      *Group items consist of one or more elementary items.
      *Level number, Data name, and Value clause (optional) are used
      *to describe a group item. Group level number is always 01.

      *Struct of this shit(most explicit): 
      *[DataType] (name) {PIC group} |length(bytes)|
      *Optional: pic, length and value default (VALUE X)
	WORKING-STORAGE SECTION.
        01 rec. 
         02 aux2 PIC 999.
         02 aux1 PIC 999.
         02 n1 PIC 999.
         02 n2 PIC 999.
         02 result PIC 999.
        77 nex PIC X VALUE 'Y'.

	*print and scan
	DISPLAY ¨foo¨ <~~~~print
	ACEPPT var    <~~~~scan

	*loop, like a while...
		PERFORM UNTIL nex = 'N' OR 'n'
           		... 
        	END-PERFORM.



