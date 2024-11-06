.data		
			ascii_code: .space 4
			ascii_code_counter: .space 4
			passwordBinary: .space 10000
			passwordLenght: .space 4
			keyLenghtBits: .space 4
			passwordLenghtBits: .space 4
			passwordLenghtHex: .space 4
			mesajCriptat: .space 1000
			letter: .space 4
			mLines: .space 4
			nColumns: .space 4
			mLinesProcedura: .space 4
			nColumnsProcedura: .space 4
			bazaZece: .space 4
			putere: .space 4
			p: .space 4
			x: .space 4
			y: .space 4
			k: .space 4
			s: .space 32
			password: .space 100
			xMinus: .space 4
			yMinus: .space 4
			xPlus: .space 4
			yPlus: .space 4
			lineIndex : .space 4
			columnIndex : .space 4
			lineIndex2: .space 4
			columnIndex2: .space 4
			letterIncex: .space 4
			matrix : .space 1600
			matrixEvolved: .space 1600
			criptareDecriptare: .space 4
			vectorASCII: .space 300
			passwordBinaryIndex: .long 0
			A: .asciz "A"
			B: .asciz "B"
			C: .asciz "C"
			D: .asciz "D"
			E: .asciz "E"
			F: .asciz "F"
			hex: .asciz "0x"

			newLine: .asciz "\n"
			formatScanf: .asciz "%d"
			passwordScanf: .asciz "%s"
			formatPrintf: .asciz "%d "
			bitPrintf: .asciz "%d"
			celulaScanf: .asciz "(%d,%d)"
			stringPrintf: .asciz "%s"
			celulaPrintf: .asciz "(x,y) = (%d,%d)\n"


.text		
			conversieBaza16Baza2:
			
			#movl $passwordBinary, %edi
			
			cmpl $48, %ebx
			je adaugare_biti_0
			
			cmpl $49, %ebx
			je adaugare_biti_1
			
			cmpl $50, %ebx
			je adaugare_biti_2
			
			cmpl $51, %ebx
			je adaugare_biti_3
			
			cmpl $52, %ebx
			je adaugare_biti_4
			
			cmpl $53, %ebx
			je adaugare_biti_5
			
			cmpl $54, %ebx
			je adaugare_biti_6
			
			cmpl $55, %ebx
			je adaugare_biti_7
			
			cmpl $56, %ebx
			je adaugare_biti_8
			
			cmpl $57, %ebx
			je adaugare_biti_9
			
			cmpl $65, %ebx
			je adaugare_biti_A
			
			cmpl $66, %ebx
			je adaugare_biti_B
			
			cmpl $67, %ebx
			je adaugare_biti_C
			
			cmpl $68, %ebx
			je adaugare_biti_D
			
			cmpl $69, %ebx
			je adaugare_biti_E
			
			cmpl $70, %ebx
			je adaugare_biti_F
			
			jmp iesire_conversie_baza_2_baza_16

			adaugare_biti_0:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $0, 4(%edi)
			movl $0, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_1:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $0, 4(%edi)
			movl $0, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_2:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $0, 4(%edi)
			movl $1, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_3:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $0, 4(%edi)
			movl $1, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_4:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $1, 4(%edi)
			movl $0, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_5:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $1, 4(%edi)
			movl $0, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_6:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $1, 4(%edi)
			movl $1, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_7:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $0, (%edi)
			movl $1, 4(%edi)
			movl $1, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_8:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $0, 4(%edi)
			movl $0, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_9:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $0, 4(%edi)
			movl $0, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_A:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $0, 4(%edi)
			movl $1, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_B:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $0, 4(%edi)
			movl $1, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_C:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $1, 4(%edi)
			movl $0, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_D:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $1, 4(%edi)
			movl $0, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_E:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $1, 4(%edi)
			movl $1, 8(%edi)
			movl $0, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			adaugare_biti_F:

			push %edi
			movl $passwordBinary, %edi
			addl passwordBinaryIndex, %edi
			movl $1, (%edi)
			movl $1, 4(%edi)
			movl $1, 8(%edi)
			movl $1, 12(%edi)
			addl $16, passwordBinaryIndex
			pop %edi
			
			jmp iesire_conversie_baza_2_baza_16
			
			iesire_conversie_baza_2_baza_16:
			
			ret





			conversieBaza16:
			
			movl bazaZece, %eax
			cmp $10, %eax
			je afisare_A
			
			movl bazaZece, %eax
			cmp $11, %eax
			je afisare_B
			
			movl bazaZece, %eax
			cmp $12, %eax
			je afisare_C
			
			movl bazaZece, %eax
			cmp $13, %eax
			je afisare_D
			
			movl bazaZece, %eax
			cmp $14, %eax
			je afisare_E
			
			movl bazaZece, %eax
			cmp $15, %eax
			je afisare_F
			
			push %eax
			push $bitPrintf
			call printf
			pop %ebx
			pop %ebx
			
			jmp iesire_conversie_baza_16
			
			afisare_A:
			
			movl $4, %eax
			movl $1, %ebx
			movl $A, %ecx
			movl $2, %edx
			int $0x80
			
			jmp iesire_conversie_baza_16
			
			afisare_B:
			
			movl $4, %eax
			movl $1, %ebx
			movl $B, %ecx
			movl $2, %edx
			int $0x80
			
			jmp iesire_conversie_baza_16
			
			afisare_C:
			
			movl $4, %eax
			movl $1, %ebx
			movl $C, %ecx
			movl $2, %edx
			int $0x80
			
			jmp iesire_conversie_baza_16
			
			afisare_D:
			
			movl $4, %eax
			movl $1, %ebx
			movl $D, %ecx
			movl $2, %edx
			int $0x80
			
			jmp iesire_conversie_baza_16
			
			afisare_E:
			
			movl $4, %eax
			movl $1, %ebx
			movl $E, %ecx
			movl $2, %edx
			int $0x80
			
			jmp iesire_conversie_baza_16
			
			afisare_F:
			
			movl $4, %eax
			movl $1, %ebx
			movl $F, %ecx
			movl $2, %edx
			int $0x80
			
			iesire_conversie_baza_16:
						
			ret
			
			
			
			
			
			optBitibazaZece:
			
			movl $7, %ecx
			movl $1, %eax
			movl $0, putere
			movl $0, bazaZece
			
			for_adunare_8_biti:
			
			cmp $-1, %ecx
			je iesire_adunare_8_biti
			
			movl $0, %ebx
			movl $1, %eax
			
			for_ridicare_la_putere_2:
			
			movl $2, %edx
			
			cmp putere, %ebx
			je adunare_2
			
			mull %edx
			
			incl %ebx
			jmp for_ridicare_la_putere_2
			
			adunare_2:
			
			addl $1, putere
			
			movl (%edi, %ecx, 4), %ebx
			
			mull %ebx
			
			addl %eax, bazaZece
			decl %ecx
			
			jmp for_adunare_8_biti
			
			iesire_adunare_8_biti:
			
			ret





			patruBitibazaZece:
			
			movl $3, %ecx
			movl $1, %eax
			movl $0, putere
			movl $0, bazaZece
			
			for_adunare_4_biti:
			
			cmp $-1, %ecx
			je iesire_adunare_4_biti
			
			movl $0, %ebx
			movl $1, %eax
			
			for_ridicare_la_putere:
			
			movl $2, %edx
			
			cmp putere, %ebx
			je adunare
			
			mull %edx
			
			incl %ebx
			jmp for_ridicare_la_putere
			
			adunare:
			
			addl $1, putere
			
			movl (%edi, %ecx, 4), %ebx
			
			mull %ebx
			
			addl %eax, bazaZece
			decl %ecx
			
			jmp for_adunare_4_biti
			
			iesire_adunare_4_biti:
			
			ret





			xoratPrintf:
			
			movl $mesajCriptat, %edi
			movl $0, %ecx
			
			for_xorat_printf:
			
			cmp passwordLenghtBits, %ecx
			je iesire_xorat_printf
			
			movl (%edi, %ecx, 4), %ebx
			
			push %ecx
			
			push %ebx
			push $bitPrintf
			call printf
			pop %ebx
			pop %ebx
			
			push $0
			call fflush
			pop %ebx
			
			pop %ecx
			incl %ecx
			
			jmp for_xorat_printf
			
			iesire_xorat_printf:
			
			push $newLine
			call printf
			pop %ebx
			
			ret
				
			
			
			
			
			xorareParola:
			
			movl $0, %ecx
			
			for_xorare_parola:
			
			cmp passwordLenghtBits, %ecx
			je iesire_xorare_parola
			
			movl $matrix, %edi
			movl (%edi, %ecx, 4), %eax
			
			movl $passwordBinary, %edi
			movl (%edi, %ecx, 4), %ebx
			
			xor %ebx, %eax
			
			movl $mesajCriptat, %edi
			movl %eax, (%edi, %ecx, 4)
			
			incl %ecx
			
			jmp for_xorare_parola
			
			iesire_xorare_parola:
			
			ret
			
			
			concatenareCheie:
			
			movl $matrix, %edi
			movl keyLenghtBits, %ecx
			movl $0, %ebx
			movl keyLenghtBits, %eax
			movl $2, %edx
			mull %edx
			movl %eax, keyLenghtBits

			for_concatenare_cheie:
			
			cmp %ecx, keyLenghtBits
			je iesire_concatenare_cheie
			
			movl (%edi, %ebx, 4), %edx
			movl %edx, (%edi, %ecx, 4)
			
			incl %ebx
			incl %ecx
			
			jmp for_concatenare_cheie

			iesire_concatenare_cheie:
			
			ret
			
			
			
			

			wordLenght:
			
			movl $password, %edi
			movl $1, %ecx
			
			for_word_lenght:
			
			movb (%edi, %ecx, 1), %al
			cmp $0, %al
			je for_word_lenght_exit

			incl %ecx
			jmp for_word_lenght

			for_word_lenght_exit:
			
			movl %ecx, passwordLenght
			ret

			binaryConversion:
 
			movl $passwordBinary, %edi
			movl ascii_code, %eax
			movl $2, %ebx
			movl ascii_code_counter, %ecx
 
			binary_loop:
			movl $0, %edx
 
			cmp $0, %eax
			je iesire_procedura
 
			divl %ebx
			movl %edx, (%edi, %ecx, 4)
			subl $1, %ecx
 
			jmp binary_loop
 
			iesire_procedura:
			
			ret





			indexFind:

			pushl %ebp
			movl %esp, %ebp
			
			movb letter, %al
			movl $0, %ecx
			
			for_cautare_index_litera:
			
			movb (%edi, %ecx, 1), %bl
			cmp %bl, %al
			je afisare_index_litera
			
			push %eax
			push %ebx
			push %ecx
			
			push %ebx
			push $formatPrintf
			call printf
			pop %ebx
			pop %ebx
	
			pop %ecx
			pop %ebx
			pop %eax
			
			incl %ecx
			jmp for_cautare_index_litera
			
			afisare_index_litera:
			
			#push %ecx
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			popl %ebp
			ret




			
			keyPrintf:

			pushl %ebp
			movl %esp, %ebp
	
			movl $matrix, %edi
		
			movl $0, %ecx

			for_key_printf:
			
			cmp keyLenghtBits, %ecx
			je continuare_procedura6
			
			movl (%edi, %ecx, 4), %ebx
			
			push %ecx
			
			push %ebx
			push $bitPrintf
			call printf
			pop %ebx
			pop %ebx
			
			push $0
			call fflush
			pop %ebx
			
			pop %ecx
			incl %ecx
			
			jmp for_key_printf
			
			continuare_procedura6:
			
			push $newLine
			call printf
			pop %ebx
			
			popl %ebp
			ret
			
			
			
			
			resultPrintf:
			
			pushl %ebp
			movl %esp, %ebp
		
			movl $1, lineIndex

			for_lines_procedura5:
		
			movl lineIndex, %ecx
			addl $1, %ecx
			cmp mLines, %ecx
			je continuare_procedura5

			movl $1, columnIndex

			for_columns_procedura5:
		
			movl columnIndex, %ecx
			addl $1, %ecx
			cmp nColumns, %ecx
			je for_lines_procedura_continuare5

			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl (%edi, %eax, 4), %ebx

			push %ebx
			push $formatPrintf
			call printf
			pop %ebx
			pop %ebx

			incl columnIndex
			jmp for_columns_procedura5

			for_lines_procedura_continuare5:
			push $newLine
			call printf
			pop %ebx
				
			push $0
			call fflush
			pop %ebx

			incl lineIndex
			jmp for_lines_procedura5
			
			continuare_procedura5:
			
			push $newLine
			call printf
			pop %ebx
			
			popl %ebp
			ret	
	



			
			matrixReset:

			pushl %ebp
			movl %esp, %ebp
		
			movl $0, lineIndex

			for_lines_procedura4:
		
			movl lineIndex, %ecx
			cmp mLines, %ecx
			je continuare_procedura4

			movl $0, columnIndex

			for_columns_procedura4:
		
			movl columnIndex, %ecx
			cmp nColumns, %ecx
			je for_lines_procedura_continuare4

			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl $0, (%edi, %eax, 4)

			incl columnIndex
			jmp for_columns_procedura4

			for_lines_procedura_continuare4:
				
			push $0
			call fflush
			pop %ebx

			incl lineIndex
			jmp for_lines_procedura4
			
			continuare_procedura4:
			
			popl %ebp
			ret





			matrixPrintf:
	
			pushl %ebp
			movl %esp, %ebp
		
			movl $0, lineIndex

			for_lines_procedura:
		
			movl lineIndex, %ecx
			cmp mLines, %ecx
			je continuare_procedura

			movl $0, columnIndex

			for_columns_procedura:
		
			movl columnIndex, %ecx
			cmp nColumns, %ecx
			je for_lines_procedura_continuare

			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl (%edi, %eax, 4), %ebx

			push %ebx
			push $formatPrintf
			call printf
			pop %ebx
			pop %ebx

			incl columnIndex
			jmp for_columns_procedura

			for_lines_procedura_continuare:
			#push $newLine
			#call printf
			#pop %ebx
				
			push $0
			call fflush
			pop %ebx

			incl lineIndex
			jmp for_lines_procedura
			
			continuare_procedura:
			
			#push $newLine
			#call printf
			#pop %ebx
			
			popl %ebp
			ret
			
			
			
			
			
			cellValue:
			
			pushl %ebp
			movl %esp, %ebp
			
			movl lineIndex, %eax
			movl columnIndex, %ebx
			
			movl %eax, x
			movl %ebx, y
			
			subl $1, x
			movl x, %eax
			movl %eax, xMinus
			subl $1, y
			movl y, %ebx
			movl %ebx, yMinus
			
			addl $2, x
			movl x, %eax
			movl %eax, xPlus
			addl $2, y
			movl y, %ebx
			movl %ebx, yPlus
			
			subl $1, x
			subl $1, y
			
			
			movl $0, %ebx
			
			movl xMinus, %eax
			mull nColumns
			addl yMinus, %eax
			addl (%edi, %eax, 4), %ebx
			
			movl xMinus, %eax
			mull nColumns
			addl y, %eax
			addl (%edi, %eax, 4), %ebx
			
			movl xMinus, %eax
			mull nColumns
			addl yPlus, %eax
			addl (%edi, %eax, 4), %ebx

			movl x, %eax
			mull nColumns
			addl yMinus, %eax
			addl (%edi, %eax, 4), %ebx

			movl x, %eax
			mull nColumns
			addl yPlus, %eax
			addl (%edi, %eax, 4), %ebx

			movl xPlus, %eax
			mull nColumns
			addl yMinus, %eax
			addl (%edi, %eax, 4), %ebx

			movl xPlus, %eax
			mull nColumns
			addl y, %eax
			addl (%edi, %eax, 4), %ebx

			movl xPlus, %eax
			mull nColumns
			addl yPlus, %eax
			addl (%edi, %eax, 4), %ebx
			
			movl %ebx, s

			popl %ebp
			ret
			
			
			
			
			
			matrixEvolving:
			
			movl $1, lineIndex

			for_lines_procedura2:
		
			movl lineIndex, %ecx
			addl $1, %ecx
			cmp mLines, %ecx
			je continuare_procedura2

			movl $1, columnIndex

			for_columns_procedura2:
		
			movl columnIndex, %ecx
			addl $1, %ecx
			cmp nColumns, %ecx
			je for_lines_procedura_continuare2

			call cellValue
			
			#afisare valoare celula
			#push s
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl (%edi, %eax, 4), %ebx
			
			movl s, %edx
			cmp $3, %edx
			je celula_vie
			
			cmp $0, %ebx
			je pastrare_celula
			
			movl s, %edx
			
			cmp $1, %edx
			je celula_moarta
			
			cmp $2, %edx
			je celula_vie
			
			cmp $3, %edx
			je celula_vie
			
			cmp $3, %edx
			jg celula_moarta
			
			jmp continuare_modificare_matrice
			
			celula_moarta:
			
			movl $matrixEvolved, %edi
			
			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl $0, (%edi, %eax, 4)
			
			movl $matrix, %edi
			
			jmp continuare_modificare_matrice
			
			celula_vie:
			
			movl $matrixEvolved, %edi
			
			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl $1, (%edi, %eax, 4)
			
			movl $matrix, %edi
			
			jmp continuare_modificare_matrice
			
			pastrare_celula:
			
			movl $matrixEvolved, %edi
			
			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl %ebx, (%edi, %eax, 4)
			
			movl $matrix, %edi
			
			continuare_modificare_matrice:
			
			incl columnIndex
			jmp for_columns_procedura2

			for_lines_procedura_continuare2:
			#push $newLine
			#call printf
			#pop %ebx
			
			push $0
			call fflush
			pop %ebx

			incl lineIndex
			jmp for_lines_procedura2
			
			continuare_procedura2:
			
			#push $newLine
			#call printf
			#pop %ebx
			
			ret
			
			
			
			
			
			matrixDuplicate:
			
			pushl %ebp
			movl %esp, %ebp
		
			movl $0, lineIndex

			for_lines_procedura3:
		
			movl lineIndex, %ecx
			cmp mLines, %ecx
			je continuare_procedura3

			movl $0, columnIndex

			for_columns_procedura3:
		
			movl columnIndex, %ecx
			cmp nColumns, %ecx
			je for_lines_procedura_continuare3

			movl lineIndex, %eax
			mull nColumns
			addl columnIndex, %eax

			movl $matrixEvolved, %edx
			movl (%edx, %eax, 4), %ebx
			movl %ebx, (%edi, %eax, 4)

			incl columnIndex
			jmp for_columns_procedura3

			for_lines_procedura_continuare3:

			incl lineIndex
			jmp for_lines_procedura3
			
			continuare_procedura3:
			
			popl %ebp
			ret
			
					
			
			
							
.global main

main:		pushl $mLines
			pushl $formatScanf
			call scanf
			pop %ebx
			pop %ebx

			pushl $nColumns
			pushl $formatScanf
			call scanf
			pop %ebx
			pop %ebx

			pushl $p
			pushl $formatScanf
			call scanf
			pop %ebx
			pop %ebx

			#crearea matricei extinse
			addl $2, mLines
			addl $2, nColumns

			movl $0, %ecx
			mov $matrix, %edi

			for_citiri_celule_vii:
			
			cmp %ecx, p
			je et_continuare
				
			push %ecx
				
			pushl $x
			pushl $formatScanf
			call scanf
			pop %ebx
			pop %ebx

			pushl $y
			pushl $formatScanf
			call scanf
			pop %ebx
			pop %ebx

			pop %ecx

			#mutarea celulei in reprezentarea matricei extinse
			addl $1, x
			addl $1, y

			movl x, %eax
			mull nColumns
			addl y, %eax

			movl $1, (%edi, %eax, 4)

			incl %ecx
			jmp for_citiri_celule_vii

			et_continuare:
			
			push $k
			push $formatScanf
			call scanf
			pop %ebx
			pop %ebx
			
			push $criptareDecriptare
			push $formatScanf
			call scanf
			pop %ebx
			pop %ebx
			
			push $password
			push $passwordScanf
			call scanf
			pop %ebx
			pop %ebx
			
			call wordLenght
			movl passwordLenght, %eax
			movl $8, %ebx
			mull %ebx
			movl %eax, passwordLenghtBits
	
			#call matrixPrintf
			
			movl $0, %ecx
				
			evolutie_matrice:
			
			
			cmp %ecx, k
			je cerinta_2
			
			push %ecx
			
			call matrixEvolving
			call matrixDuplicate
			
			movl $matrixEvolved, %edi
			call matrixReset
			
			pop %ecx
			addl $1, %ecx
			
			jmp evolutie_matrice
			
			cerinta_2:
			
			movl criptareDecriptare, %eax
			cmp $1, %eax
			je decriptare
			
			movl $matrix, %edi
			#call resultPrintf

			#movl $4, %eax		
			#movl $1, %ebx
			#movl $password, %ecx
			#movl $100, %edx
			#int $0x80

			#push $newLine
			#call printf
			#pop %ebx
			
			movl $0, %ecx
			movl $password, %edi
			movl $7, ascii_code_counter
			
			parcurgere_parola_litera_cu_litera:
			
			cmp passwordLenght, %ecx
			je continuare_sir_biti
			
			push %ecx
			movb (%edi), %al
			movb %al, ascii_code
			
			#push ascii_code
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx
				
			#movl $4, %eax
			#movl $1, %ebx
			#movl %edi, %ecx
			#movl $1, %edx
			#int $0x80
			
			push %edi
			call binaryConversion
			pop %edi
			
			addl $1, %edi
			addl $8, ascii_code_counter
			
			#push $newLine
			#call printf
			#pop %ebx
			
			pop %ecx
			#subl %ecx, %edi
			incl %ecx
			jmp parcurgere_parola_litera_cu_litera
			
			continuare_sir_biti:
			
			movl $0, %ecx
			movl $passwordBinary, %edi
			
			afisare_parola_biti:
			
			cmp passwordLenghtBits, %ecx
			je lungime_sir
			
			movl (%edi, %ecx, 4), %ebx
			
			push %ecx
			#push %ebx
			#push $bitPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			push $0
			call fflush
			pop %ebx
			pop %ecx
						
			incl %ecx		
			jmp afisare_parola_biti
			
			lungime_sir:
			
			#push $newLine
			#call printf
			#pop %ebx
			
			movl mLines, %eax
			movl nColumns, %ebx
			mull %ebx
			movl %eax, keyLenghtBits
			
			concatenare:
			
			movl keyLenghtBits, %ecx
			cmp passwordLenghtBits, %ecx
			jg xorare 
			
			call concatenareCheie
			
			jmp concatenare
			
			xorare:
			
			#call keyPrintf
			call xorareParola
			#call xoratPrintf
			
			afisare_in_baza_16:
			
			movl $4, %eax
			movl $1, %ebx
			movl $hex, %ecx
			movl $3, %edx
			int $0x80
			
			movl passwordLenghtBits, %eax
			movl $4, %ebx
			movl $0, %edx
			divl %ebx
			movl %eax, passwordLenghtHex
			
			movl $0, %ecx
			movl $mesajCriptat, %edi
			
			loop_conversie_baza_10_16:
			
			cmp passwordLenghtHex, %ecx
			je gata
			
			push %ecx
			push %ebx
			push %eax
			
			call patruBitibazaZece
			call conversieBaza16
			
			#push bazaZece
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			push $0
			call fflush
			pop %ebx
			
			pop %eax
			pop %ebx
			pop %ecx
			
			incl %ecx
			addl $16, %edi
			jmp loop_conversie_baza_10_16
			
			decriptare:
			
			#subl $2, passwordLenght
			movl passwordLenght, %eax
			movl $4, %ebx
			mull %ebx
			movl %eax, passwordLenghtBits
			
			movl $password, %edi
			addl $2, %edi
			movl $2, %ecx
			
			parcurgere_parola_litera_cu_litera_2:
			
			movl $0, %eax
			cmp passwordLenght, %ecx
			je continuare_decriptare
			
			movb (%edi), %al
			movl %eax, %ebx
			
			push %ecx
			push %ebx
			call conversieBaza16Baza2
			pop %ebx
			pop %ecx
			
			push %ecx
			
			push %ebx
			#movl $4, %eax
			#movl $1, %ebx
			#movl %edi, %ecx
			#movl $1, %edx
			#int $0x80
			pop %ebx
				
			#push %ebx
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx	
			
			push $0
			call fflush
			pop %ebx
			
			addl $1, %edi
			
			pop %ecx
			incl %ecx
			jmp parcurgere_parola_litera_cu_litera_2
			
			continuare_decriptare:
			
			movl $0, %ecx
			movl $passwordBinary, %edi
			subl $2, passwordLenght
			subl $8, passwordLenghtBits
			
			afisare_hexa_binar:
			
			cmpl passwordLenghtBits, %ecx
			je xorare_2
			
			movl (%edi), %ebx
			
			push %ecx
			
			#push %ebx
			#push $bitPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			push $0
			call fflush
			pop %ebx
			
			pop %ecx
			incl %ecx
			addl $4, %edi
			
			jmp afisare_hexa_binar
			
			xorare_2:
			
			#push $newLine
			#call printf
			#pop %ebx
						
			movl mLines, %eax
			movl nColumns, %ebx
			mull %ebx
			movl %eax, keyLenghtBits
			
			#call keyPrintf
			
			concatenare_2:
			
			movl keyLenghtBits, %ecx
			cmp passwordLenghtBits, %ecx
			jg continuare_xorare_2
			
			call concatenareCheie
			
			jmp concatenare_2
			
			continuare_xorare_2:
			
			#call keyPrintf
			
			call xorareParola
			#call xoratPrintf
			
			movl passwordLenghtBits, %eax
			movl $8, %ebx
			movl $0, %edx
			divl %ebx
			movl %eax, passwordLenght
			
			movl $0, %ecx
			
			afisare_parola_decriptata:
			
			cmpl passwordLenght, %ecx
			je gata
			
			push %ecx		
			
			call optBitibazaZece
			
			#push bazaZece
			#push $formatPrintf
			#call printf
			#pop %ebx
			#pop %ebx
			
			movl $4, %eax
			movl $1, %ebx
			movl $bazaZece, %ecx
			movl $1, %edx
			int $0x80
						
			push $0
			call fflush
			pop %ebx
			
			pop %ecx
			
			addl $32, %edi
			addl $1, %ecx
			
			jmp afisare_parola_decriptata
			
			gata:
			
			push $newLine
			call printf
			pop %ebx
			
				
et_exit:	
			mov $1, %eax
			xor %ebx, %ebx
			int $0x80
