;By James Meegan 
;Assignment 5

; EXTERNAL DEPENDENCIES
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096

; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD
;trynna get my git contributions up part 2
;Data Segment
.data
arrayBYTE SBYTE -1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15,-16,-17,-18,-19,-20 		;These three values are used to denote the contained binary encoding should be treated as a 'signed' value. 
arraySWORD			SWORD	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20				;The NEG instruction will be used to display this as a negative
arraySDWORD	SDWORD 	1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20						;The NEG instruction will be used to display this as a negative
;CODE SEGMENT
.code 
main PROC

;SBYTE data displayed here 

MOVSX EAX, arrayBYTE
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 1]		;The addition of the 1 is used to move onto the next number in the array
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 2]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 3]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 4]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 5]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 6]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 7]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 8]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 9]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 10]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 11]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 12]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 13]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 14]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 15]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 16]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 17]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 18]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 19]
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	CALL crlf
	
;SWORD data displayed here 

	MOVSX EAX, [arraySWORD]	;load number into the register 
	NEG eax					;NEG instruction used to negate eax and then will cause a negative number to be called in next line
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 2]			;The addition of the 2 is used to move onto the next number in the array
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 4]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 6]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 8]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 10]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 12]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 14]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 16]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 18]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 20]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 22]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 24]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 26]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 28]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 30]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 32]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 34]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 36]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOVSX EAX, [arraySWORD + 38]
	NEG eax
	CALL WriteInt
	CALL Crlf
	call crlf

;SDWORD data displayed here 

	MOV EAX, [arraySDWORD]
	NEG eax
	CALL WriteInt
	CALL Crlf

	
	MOV EAX, [arraySDWORD + 4]			;The addition of the 4 is used to move onto the next number in the array
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 8]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOV EAX, [arraySDWORD + 12]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 16]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 20]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 24]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 28]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 32]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 36]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 40]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 44]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 48]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 52]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 56]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 60]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 64]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 68]
	NEG eax
	CALL WriteInt
	CALL Crlf

	MOV EAX, [arraySDWORD + 72]
	NEG eax
	CALL WriteInt
	CALL Crlf
	
	MOV EAX, [arraySDWORD + 76]
	NEG eax
	CALL WriteInt
	CALL Crlf

	
	
	 
	 
INVOKE ExitProcess, 0
main ENDP


END main			;end of program OPCODES