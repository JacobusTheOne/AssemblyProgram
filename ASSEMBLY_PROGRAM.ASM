.MODEL SMALL
.STACK 100H

.DATA
	PROMPT_1 DB "Enter the character: $"
	PROMPT_2 DB 0DH,0AH,"The ASCII code of the given number in binary is: $"
	PROMPT_3 DB 0DH,0AH,"The number of 1 bits in ASCII code is: $"
.CODE
	MAIN PROC
		;Change cursor Position to column 10 row 0
		mov  dl, 10                 ;SCREEN COLUMN 18 (X).
		mov  dh, 0                  ;SCREEN ROW 2 (Y).
		mov  ah, 2                  ;SET CURSOR POSITION.
		mov  bh, 0                  ;VIDEO PAGE.
		int  10h                    ;BIOS SERVICES.
		
        
                MOV AH, 06h ;Scroll up function
                XOR AL, AL ;CLEAR THE ENTIRE SCREEN
                XOR CX, CX      ;UPPER LEFT CORNER
                MOV DX, 184FH   ;LOWER RIGHT CORNER
                MOV BH, 1Eh     ;YELLOW ON BLUE

