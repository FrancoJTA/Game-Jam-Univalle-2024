texto_ancho = string_width(texto_mostrado);

// Dibujamos el texto centrado respecto a las coordenadas (x, y)
draw_set_color(c_white); // Establecemos el color del texto
draw_text(x - texto_ancho / 2, y -70, texto_mostrado);
draw_self();