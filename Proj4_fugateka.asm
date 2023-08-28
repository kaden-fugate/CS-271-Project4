; Author: Kaden Fugate
; Last Modified: July 14th, 2023
; OSU email address: fugateka@oregonstate.edu
; Course number/section:   CS271 Section 400
; Project Number: 1        Due Date: July 16th, 2023
; Description: This file will calculate simple arithmetic given 3 integers (A,B,C)
; Program will calculate A+B, A+C, B+C, A-B, A-C, B-C, A+B+C

INCLUDE Irvine32.inc

LO          = 7
HI          = 59
ARRAYSIZE   = 900

.data
    title   BYTE    "Generating, Sorting, and Counting Random integers! Programmed by Kaden Fugate", 0
    intro_1 BYTE    "This program generates 200 random integers between 15 and 50, inclusive.", 0
    intro_2 BYTE    "It then displays the original list, sorts the list, displays the median value of the list, displays the list sorted in ascending order, and finally displays the number of instances of each generated value, starting with the number of lowest.", 0

.code

main PROC

    ; Push intro messages onto stack, call introduction
    push    OFFSET  intro_2
    push    OFFSET  intro_1
    call    introduction
   
	exit

main ENDP

introduction PROC

    push    ebp
    mov     ebp,    esp
    pushad  

    ; move address of intro_1 into edx
    mov     edx,    [ebp + 8]
    call    WriteString
    call    CrLf

    ; move address of intro_2 into edx
    mov     esi,    [ebp + 12]
    call    WriteString
    call    CrLf

    popad   
    pop     ebp

    ret     8

introduction ENDP

END main
