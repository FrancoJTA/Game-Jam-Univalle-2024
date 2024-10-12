if (indice_texto < array_length_1d(textos) && talk=1) {

	texto_actual = textos[indice_texto];

	contador += 1;

	if (contador >= velocidad && indice_caracter < string_length(texto_actual)) {
	    texto_mostrado += string_char_at(texto_actual, indice_caracter + 1);
	    indice_caracter += 1;
	    contador = 0;
	}

	if (indice_caracter >= string_length(texto_actual) && alarm[0]=-1) {
		alarm[0]=btw_t;
	}
}
else{
	talk=0;
}