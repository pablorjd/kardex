package scik.controlador.unidad;

import javax.swing.JTextField;

/**
 * Interfaz de la modificación de unidad
 * 
 * Métodos disponibles para el controlador de moficación de unidad
 *  
 * @author Yuliana Apaza
 * @version 2.0
 * @since 2015-10-05
 */

public interface IUnidadMod
{
    public void cargar(JTextField txtUniCod, JTextField txtUniDes);
    public void aceptar(JTextField txtUniDes);
    public void cancelar();
}
