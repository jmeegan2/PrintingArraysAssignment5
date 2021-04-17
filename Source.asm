; EXTERNAL DEPENDENCIES
INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; EXECUTION MODE PARAMETERS
.386
.model flat, stdcall
.stack 4096

; PROTOTYPES
ExitProcess PROTO, dwExitCode:DWORD

;Data Segment
.data
arrayBYTE SBYTE -1,-2,-3,-4,-5,-6,-7,-8,-9,-10,-11,-12,-13,-14,-15,-16,-17,-18,-19,-20 		;These three balues are used to denote the contained binary encoding should be treated as a 'signed' value. 
arraySWORD SWORD -1, -2			;They are capable of representing a negative integer. PLesase keep in mind that this is only done for programmers
	
;CODE SEGMENT
.code 
main PROC

; SBYTE array displaying -1 to -20, This would be considered an instance where the example is mobing from element to element with offset ferived from the
;"TYPE" directive

MOVSX EAX, arrayBYTE
	MOV EBX, TYPE SBYTE			
	CALL WriteInt
	CALL Crlf
	MOVSX EAX,[arrayBYTE + 1]		;Adding to the array allows you to display the next number in the sequence -1 to -2 in this instance
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
	;so im gonna change this line then push to github
;SWORD array will display -1 to -20 using a static count and WriteDec
MOVZX EAX, [arraySWORD]
	CALL WriteInt
	CALL Crlf
	MOVZX EAX, [arraySWORD + 1]
	CALL WriteInt
	CALL Crlf
	 
INVOKE ExitProcess, 0
main ENDP
END main			;end of program OPCODES