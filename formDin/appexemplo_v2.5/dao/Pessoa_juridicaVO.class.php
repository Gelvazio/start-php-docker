<?php
/**
 * System generated by SysGen (System Generator with Formdin Framework) 
 * Download SysGen: https://github.com/bjverde/sysgen
 * Download Formdin Framework: https://github.com/bjverde/formDin
 * 
 * SysGen  Version: 1.9.0-alpha
 * FormDin Version: 4.7.5
 * 
 * System appev2 created in: 2019-09-10 09:04:47
 */
class Pessoa_juridicaVO
{
    private $idpessoa_juridica = null;
    private $cnpj = null;
    private $idpessoa = null;
    private $cnae = null;
    private $idnatureza_juridica = null;
    public function __construct( $idpessoa_juridica=null, $cnpj=null, $idpessoa=null, $cnae=null, $idnatureza_juridica=null ) {
        $this->setIdpessoa_juridica( $idpessoa_juridica );
        $this->setCnpj( $cnpj );
        $this->setIdpessoa( $idpessoa );
        $this->setCnae( $cnae );
        $this->setIdnatureza_juridica( $idnatureza_juridica );
    }
    //--------------------------------------------------------------------------------
    public function setIdpessoa_juridica( $strNewValue = null )
    {
        $this->idpessoa_juridica = $strNewValue;
    }
    public function getIdpessoa_juridica()
    {
        return $this->idpessoa_juridica;
    }
    //--------------------------------------------------------------------------------
    public function setCnpj( $strNewValue = null )
    {
        $this->cnpj = preg_replace('/[^0-9]/','',$strNewValue);
    }
    public function getCnpj()
    {
        return $this->cnpj;
    }
    //--------------------------------------------------------------------------------
    public function setIdpessoa( $strNewValue = null )
    {
        $this->idpessoa = $strNewValue;
    }
    public function getIdpessoa()
    {
        return $this->idpessoa;
    }
    //--------------------------------------------------------------------------------
    public function setCnae( $strNewValue = null )
    {
        $this->cnae = $strNewValue;
    }
    public function getCnae()
    {
        return $this->cnae;
    }
    //--------------------------------------------------------------------------------
    public function setIdnatureza_juridica( $strNewValue = null )
    {
        $this->idnatureza_juridica = $strNewValue;
    }
    public function getIdnatureza_juridica()
    {
        return $this->idnatureza_juridica;
    }
    //--------------------------------------------------------------------------------
}
?>