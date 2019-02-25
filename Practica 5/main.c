/*-----------------------------------------------------------------
**
**  Fichero:
**    main.c  10/6/2014
**
**    Fundamentos de Computadores
**    Dpto. de Arquitectura de Computadores y Automática
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Propósito:
**    Hace paradear los leds a una frecuencia de 1 Hz
**
**  Notas de diseño:
**
**---------------------------------------------------------------*/

#include "leds.h"
#include "button.h"
#include "D8Led.h"
#include "utils.h"

/*int main(void)//en este main nos lo da el , quitar un while y pulsar un boton del maletin para hacer algo lo siguiente despues del comentado hecho por mi, escribe FC.MASTER EN el display pulsando el boton izquierdo una e¡vez gracias al while de la j
{

	/* Opción 1
	int segmento=0;
	int direccion=1;
	int movimiento=1;
	
	/* Opción 2
	int cadena = 0;
	int p = 1;
	int car = 0;

	/* Ambas
	int muestras = 0;
	unsigned int pulsador;
		
    leds_init();
    button_init();
    D8Led_init();

	/* Guiones
    while( 1 ){
        leds_switch();
        // espera 1s
        Delay( 1000 );
    }
	
	/* Opción 1
	while( 1 ){
		muestras++;
		// no esperamos
		pulsador = read_button( 0 );
		if( pulsador & PULSADOR1 ){
			direccion = -direccion;
		}
		if( pulsador & PULSADOR2 ){
			if( movimiento )
				movimiento = 0;
			else
				movimiento = 1;
		}
		if( muestras == 5 ){
			muestras = 0;
			leds_switch();
			D8Led_segment( segmento );

			segmento = (segmento + 1*direccion*movimiento);
			if( segmento == -1 )
				segmento = 5;
			else if ( segmento == 6 )
				segmento = 0;
		}
		// espera 200ms
		Delay( 200 );
	}

	
    return 0;
}*/
//a partir de aqui esta la modificacion que era lo del nombre
#include "leds.h"
#include "button.h"
#include "D8Led.h"
#include "utils.h"

/*int main(void)
{

	/* Opción 1
	int segmento=0;
	int direccion=1;
	int movimiento=1;

	/* Opción 2
	int cadena = 0;
	int p = 1;
	int car = 0;

	/* Ambas
	int muestras = 0;
	unsigned int pulsador;

    leds_init();
    button_init();
    D8Led_init();

	/* Guiones
    while( 1 ){
        leds_switch();
        // espera 1s
        Delay( 1000 );
    }

	/* Opción 1
	while( 1 ){
		muestras++;
		// no esperamos
		pulsador = read_button( 0 );
		if( pulsador & PULSADOR1 ){
			direccion = -direccion;
		}
		if( pulsador & PULSADOR2 ){
			if( movimiento )
				movimiento = 0;
			else
				movimiento = 1;
		}
		if( muestras == 5 ){
			muestras = 0;
			leds_switch();
			D8Led_segment( segmento );

			segmento = (segmento + 1*direccion*movimiento);
			if( segmento == -1 )
				segmento = 5;
			else if ( segmento == 6 )
				segmento = 0;
		}
		// espera 200ms
		Delay( 200 );
	}


    return 0;
}*/


int main(void)
{
	/* Opción 1 */
		int segmento=0;
		int direccion=1;
		int movimiento=1;

		/* Opción 2 */
		int cadena = 0;
		int p = 1;
		int car = 0;

		/* Ambas */
		int muestras = 0;
		unsigned int pulsador;

		/* Nuestras */
		int i = 15;

	    leds_init();
	    button_init();
	    D8Led_init();
	    /* Guiones */
	        /*while( 1 ){
	            leds_switch();
	            // espera 1s
	            Delay( 1000 );
	        }*/

	    	/* Opción 1 */
	    	/*while( 1 ){
	    		muestras++;
	    		// no esperamos
	    		pulsador = read_button( 0 );
	    		if( pulsador & PULSADOR1 ){
	    			direccion = -direccion;
	    		}
	    		if( pulsador & PULSADOR2 ){
	    			if( movimiento )
	    				movimiento = 0;
	    			else
	    			movimiento = 1;
		}
		if( muestras == 5 ){
			muestras = 0;
			leds_switch();
			D8Led_segment( segmento );

			segmento = (segmento + 1*direccion*movimiento);
			if( segmento == -1 )
				segmento = 5;
			else if ( segmento == 6 )
				segmento = 0;
		}
		// espera 200ms
		Delay( 200 );
	}*/
    int j=0;
    while (1)
    {
    	pulsador = read_button (0);


    	if (pulsador & PULSADOR1)
    	{
    	    		while (j<9){
    	    		D8Led_digit (i);
    	    		pulsador = read_button (0);

    	    		if (i == 15)
    	    		{
    	    			i = 12;
    	    			Delay(1000);
    	    		}
    	    		else if (i == 12)
    	    		{

    	    			i = 16;
    	    			Delay(1000);
    	    		}
    	    		else if (i == 16)
    	    		    		{

    	    		    			i = 17;
    	    		    			Delay(1000);
    	    		    		}
    	    		else if (i == 17)
    	    		    		{
    	    			i = 10;
    	    			    		    			Delay(1000);
    	    			    		    		}
    	    			    		else if (i == 10)
    	    			    		    		{

    	    			    		    			i = 5;
    	    			    		    			Delay(1000);
    	    			    		    		}
    	    			    		else if (i == 5)
    	    			    		    		    		{

    	    			    		    		    			i = 18;
    	    			    		    		    			Delay(1000);
    	    			    		    		    		}
    	    			    		else if (i == 18)
    	    			    		    		    		{

    	    			    		    		    			i = 14;
    	    			    		    		    			Delay(1000);
    	    			    		    		    		}
    	    			    		else if (i == 14)
    	    			    		    		    		    		{

    	    			    		    		    		    			i = 19;
    	    			    		    		    		    			Delay(1000);
    	    			    		    		    		    		}


    	    			    		    		else if (i == 19){
    	    			    		    			i = 15;
    	    			    		    			Delay (1000);
    	    			    		    		}

    	    			    		    	    }

    	    			    		    	j++;
    	    			    		    	}

    	    			    		    	if (pulsador & PULSADOR2)
    	    			    		    	{
    	    			    		    		D8Led_digit (1);
    	    			    		    	}
    	    			    		       	Delay (200);
    	    			    		        }


    	    			    		        return 0;
    	    			    		    }
    	    		    		}
}


