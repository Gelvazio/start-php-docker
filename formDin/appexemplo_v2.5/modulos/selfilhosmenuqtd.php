<?php
/**
 * System generated by SysGen (System Generator with Formdin Framework) 
 * Download SysGen: https://github.com/bjverde/sysgen
 * Download Formdin Framework: https://github.com/bjverde/formDin
 * 
 * SysGen  Version: 1.9.0-alpha
 * FormDin Version: 4.7.5-alpha
 * 
 * System appev2 created in: 2019-09-01 16:03:50
 */

defined('APLICATIVO') or die();
require_once 'modulos/includes/acesso_view_allowed.php';

$frm = new TForm('selfilhosmenuqtd',800,950);
$frm->setShowCloseButton(false);
$frm->setFlat(true);
$frm->setMaximize(true);


$frm->addHiddenField( 'BUSCAR' ); //Campo oculto para buscas
$frm->addTextField('QTD', 'QTD',50,false,50);
$frm->addTextField('IDMENU_PAI', 'IDMENU_PAI',50,false,50);

$frm->addButton('Executar', null, 'Executar', null, null, true, false);
$frm->addButton('Limpar', null, 'Limpar', null, null, false, false);


$acao = isset($acao) ? $acao : null;
switch( $acao ) {
    //--------------------------------------------------------------------------------
    case 'Limpar':
        $frm->clearFields();
    break;
    //--------------------------------------------------------------------------------
    case 'Executar':
        try{
            if ( $frm->validate() ) {
                $vo = new SelfilhosmenuqtdVO();
                $frm->setVo( $vo );
                $controller = new Selfilhosmenuqtd();
                $resultado = $controller->execProcedure( $vo );
                if($resultado==true) {
                    $frm->setMessage(Message::GENERIC_EXEC);
                    $frm->clearFields();
                }else{
                    $frm->setMessage($resultado);
                }
            }
        }
        catch (DomainException $e) {
            $frm->setMessage( $e->getMessage() );
        }
        catch (Exception $e) {
            MessageHelper::logRecord($e);
            $frm->setMessage( $e->getMessage() );
        }
    break;
}

$frm->show();
?>