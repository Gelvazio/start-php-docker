<?php

echo 'chegou aqui';

return;

$filePathHtmlLogin = 'ajuda/info_login_pt-br.php';
$filePathHtmlInfo  = 'ajuda/info_start_pt-br.php';

$frm = new TForm('Acesso ao Sistema',500,540);
$frm->hideCloseButton();
$frm->addTextField('login'		,'Login:',20,true,20,'admin');
$frm->addPasswordField('senha'	,'Senha:',20,true,20,'admin');
$frm->addHtmlField('htmlLogin', null, $filePathHtmlLogin, null, null, null);
//$frm->addHtmlField('htmlInfo' , null, $filePathHtmlInfo, null, null, null)->setClass('boxAlert',true);
//$frm->addButton('Entrar','login',null);
$frm->addButtonAjax('Entrar',null,'fwValidateFields()','resultado','login','Validando informações','json',false);

$acao = isset($acao) ? $acao : null;
if( $acao =='login'){
    $bteste = true;
    if($bteste){
        $_SESSION[APLICATIVO]['conectado']=true;
        prepareReturnAjax(1);
    } else {
        sleep(1);
        $nom_user = $frm->get('login');
        $pwd_user = $frm->get('senha');
        $msg = Acesso::login($nom_user,$pwd_user);;
        if( $msg == 1 ) {
            $_SESSION[APLICATIVO]['conectado']=true;
            prepareReturnAjax(1);
        }
        else {
            //$frm->setShowMessageForm(true);
            $frm->setMessage('Login Inválido');
            //prepareReturnAjax(0);
        }
    }
}

$frm->show();

?>

<script>

function resultado(res) {
    if( res.status==1) {
        fwApplicationRestart();
    }
    else {
        fwAlert('Login Inválido');
    }
}
</script>
