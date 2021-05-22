<?php
/**
 * System generated by SysGen (System Generator with Formdin Framework) 
 * Download SysGen: https://github.com/bjverde/sysgen
 * Download Formdin Framework: https://github.com/bjverde/formDin
 * 
 * SysGen  Version: 1.9.0-alpha
 * FormDin Version: 4.7.5
 * 
 * System appev2 created in: 2019-09-10 11:31:31
 */
class PedidoDAO 
{

    private static $sqlBasicSelect = 'select
                                      idpedido
                                     ,idpessoa
									 ,nom_pessoa
									 ,idtipo_pagamento
									 ,des_tipo_pagamento
                                     ,dat_pedido
									 from ( 
										select
											pe.idpedido
									   		,pe.idpessoa
									   		,p.nome as nom_pessoa
									   		,pe.idtipo_pagamento
									   		,t.descricao as des_tipo_pagamento
									   		,DATE_FORMAT(pe.dat_pedido, \'%d/%m/%Y\') as dat_pedido
									   from form_exemplo.pedido as pe
									   		,form_exemplo.pessoa as p
									   		,form_exemplo.tipo as t
									   where p.idpessoa = pe.idpessoa
									   and t.idtipo = pe.idtipo_pagamento
                                       ) as r';
                                       
    private $tpdo = null;

    public function __construct($tpdo=null)
    {
        $this->validateObjType($tpdo);
        if( empty($tpdo) ){
            $tpdo = New TPDOConnectionObj();
        }
        $this->setTPDOConnection($tpdo);
    }
    public function getTPDOConnection()
    {
        return $this->tpdo;
    }
    public function setTPDOConnection($tpdo)
    {
        $this->validateObjType($tpdo);
        $this->tpdo = $tpdo;
    }
    public function validateObjType($tpdo)
    {
        $typeObjWrong = !($tpdo instanceof TPDOConnectionObj);
        if( !is_null($tpdo) && $typeObjWrong ){
            throw new InvalidArgumentException('class:'.__METHOD__);
        }
    }
    private function processWhereGridParameters( $whereGrid )
    {
        $result = $whereGrid;
        if ( is_array($whereGrid) ){
            $where = ' 1=1 ';
            $where = SqlHelper::getAtributeWhereGridParameters($where, $whereGrid, 'IDPEDIDO', SqlHelper::SQL_TYPE_NUMERIC);
            $where = SqlHelper::getAtributeWhereGridParameters($where, $whereGrid, 'IDPESSOA', SqlHelper::SQL_TYPE_NUMERIC);
            $where = SqlHelper::getAtributeWhereGridParameters($where, $whereGrid, 'DAT_PEDIDO', SqlHelper::SQL_TYPE_TEXT_LIKE);
            $where = SqlHelper::getAtributeWhereGridParameters($where, $whereGrid, 'IDTIPO_PAGAMENTO', SqlHelper::SQL_TYPE_NUMERIC);
            $result = $where;
        }
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function selectById( $id )
    {
        if( empty($id) || !is_numeric($id) ){
            throw new InvalidArgumentException(Message::TYPE_NOT_INT.'class:'.__METHOD__);
        }
        $values = array($id);
        $sql = self::$sqlBasicSelect.' where idpedido = ?';
        $result = $this->tpdo->executeSql($sql, $values);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function selectCount( $where=null )
    {
        $where = $this->processWhereGridParameters($where);
        $sql = 'select count(idpedido) as qtd from form_exemplo.pedido';
        $sql = $sql.( ($where)? ' where '.$where:'');
        $result = $this->tpdo->executeSql($sql);
        return $result['QTD'][0];
    }
    //--------------------------------------------------------------------------------
    public function selectAllPagination( $orderBy=null, $where=null, $page=null,  $rowsPerPage= null )
    {
        $rowStart = SqlHelper::getRowStart($page,$rowsPerPage);
        $where = $this->processWhereGridParameters($where);

        $sql = self::$sqlBasicSelect
        .( ($where)? ' where '.$where:'')
        .( ($orderBy) ? ' order by '.$orderBy:'')
        .( ' LIMIT '.$rowStart.','.$rowsPerPage);

        $result = $this->tpdo->executeSql($sql);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function selectAll( $orderBy=null, $where=null )
    {
        $where = $this->processWhereGridParameters($where);
        $sql = self::$sqlBasicSelect
        .( ($where)? ' where '.$where:'')
        .( ($orderBy) ? ' order by '.$orderBy:'');

        $result = $this->tpdo->executeSql($sql);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function insert( PedidoVO $objVo )
    {
        $values = array(  $objVo->getIdpessoa() 
                        , $objVo->getDat_pedido() 
                        , $objVo->getIdtipo_pagamento() 
                        );
        $sql = 'insert into form_exemplo.pedido(
                                 idpessoa
                                ,dat_pedido
                                ,idtipo_pagamento
                                ) values (?,?,?)';
        $result = $this->tpdo->executeSql($sql, $values);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function update ( PedidoVO $objVo )
    {
        $values = array( $objVo->getIdpessoa()
                        ,$objVo->getDat_pedido()
                        ,$objVo->getIdtipo_pagamento()
                        ,$objVo->getIdpedido() );
        $sql = 'update form_exemplo.pedido set 
                                 idpessoa = ?
                                ,dat_pedido = ?
                                ,idtipo_pagamento = ?
                                where idpedido = ?';
        $result = $this->tpdo->executeSql($sql, $values);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function delete( $id )
    {
        if( empty($id) || !is_numeric($id) ){
            throw new InvalidArgumentException(Message::TYPE_NOT_INT.'class:'.__METHOD__);
        }
        $values = array($id);
        $sql = 'delete from form_exemplo.pedido where idpedido = ?';
        $result = $this->tpdo->executeSql($sql, $values);
        return $result;
    }
    //--------------------------------------------------------------------------------
    public function getVoById( $id )
    {
        if( empty($id) || !is_numeric($id) ){
            throw new InvalidArgumentException(Message::TYPE_NOT_INT.'class:'.__METHOD__);
        }
        $result = $this->selectById( $id );
        $result = \ArrayHelper::convertArrayFormDin2Pdo($result,false);
        $result = $result[0];
        $vo = new PedidoVO();
        $vo = \FormDinHelper::setPropertyVo($result,$vo);
        return $vo;
    }
}
?>