cdef extern from "SecurityFtdcUserApiDataType.h":
    # SSE[上交所] SZE[深交所] HGE[沪港通] SGE[深港通]
    cdef enum SECURITY_TE_RESUME_TYPE:
        SECURITY_TERT_RESTART = 0
        SECURITY_TERT_RESUME = 1
        SECURITY_TERT_QUICK = 2

    #########################################################################
    ###TFtdcErrorIDType是一个错误代码类型
    #########################################################################
    ctypedef int TSecurityFtdcErrorIDType;

    #########################################################################
    ###TFtdcErrorMsgType是一个错误信息类型
    #########################################################################
    ctypedef char TSecurityFtdcErrorMsgType[81];

    #########################################################################
    ###TFtdcExchangeIDType是一个交易所代码类型
    #########################################################################
    ctypedef char TSecurityFtdcExchangeIDType[9];

    #########################################################################
    ###TFtdcExchangeNameType是一个交易所名称类型
    #########################################################################
    ctypedef char TSecurityFtdcExchangeNameType[31];

    #########################################################################
    ###TFtdcExchangePropertyType是一个交易所属性类型
    #########################################################################
    ###正常
    #define SECURITY_FTDC_EXP_Normal '0'
    ###根据成交生成报单
    #define SECURITY_FTDC_EXP_GenOrderByTrade '1'

    ctypedef char TSecurityFtdcExchangePropertyType;

    #########################################################################
    ###TFtdcExchangeConnectStatusType是一个交易所连接状态类型
    #########################################################################
    ###没有任何连接
    #define SECURITY_FTDC_ECS_NoConnection '1'
    ###已经发出合约查询请求
    #define SECURITY_FTDC_ECS_QryInstrumentSent '2'
    ###已经获取信息
    #define SECURITY_FTDC_ECS_GotInformation '9'

    ctypedef char TSecurityFtdcExchangeConnectStatusType;

    #########################################################################
    ###TFtdcDateType是一个日期类型
    #########################################################################
    ctypedef char TSecurityFtdcDateType[9];

    #########################################################################
    ###TFtdcTimeType是一个时间类型
    #########################################################################
    ctypedef char TSecurityFtdcTimeType[9];

    #########################################################################
    ###TFtdcInstrumentIDType是一个合约代码类型
    #########################################################################
    ctypedef char TSecurityFtdcInstrumentIDType[31];

    #########################################################################
    ###TFtdcProductNameType是一个产品名称类型
    #########################################################################
    ctypedef char TSecurityFtdcProductNameType[21];

    #########################################################################
    ###TFtdcProductClassType是一个产品类型类型
    #########################################################################
    ###期货
    #define SECURITY_FTDC_PC_Futures '1'
    ###期权
    #define SECURITY_FTDC_PC_Options '2'
    ###组合
    #define SECURITY_FTDC_PC_Combination '3'
    ###即期
    #define SECURITY_FTDC_PC_Spot '4'
    ###期转现
    #define SECURITY_FTDC_PC_EFP '5'
    ###证券A股
    #define SECURITY_FTDC_PC_StockA '6'
    ###证券B股
    #define SECURITY_FTDC_PC_StockB '7'
    ###ETF
    #define SECURITY_FTDC_PC_ETF '8'
    ###ETF申赎
    #define SECURITY_FTDC_PC_ETFPurRed '9'

    ctypedef char TSecurityFtdcProductClassType;

    #########################################################################
    ###TFtdcVolumeMultipleType是一个合约数量乘数类型
    #########################################################################
    ctypedef int TSecurityFtdcVolumeMultipleType;

    #########################################################################
    ###TFtdcPriceType是一个价格类型
    #########################################################################
    ctypedef double TSecurityFtdcPriceType;

    #########################################################################
    ###TFtdcVolumeType是一个数量类型
    #########################################################################
    ctypedef int TSecurityFtdcVolumeType;

    #########################################################################
    ###TFtdcPositionTypeType是一个持仓类型类型
    #########################################################################
    ###净持仓
    #define SECURITY_FTDC_PT_Net '1'
    ###综合持仓
    #define SECURITY_FTDC_PT_Gross '2'

    ctypedef char TSecurityFtdcPositionTypeType;

    #########################################################################
    ###TFtdcPositionDateTypeType是一个持仓日期类型类型
    #########################################################################
    ###使用历史持仓
    #define SECURITY_FTDC_PDT_UseHistory '1'
    ###不使用历史持仓
    #define SECURITY_FTDC_PDT_NoUseHistory '2'

    ctypedef char TSecurityFtdcPositionDateTypeType;

    #########################################################################
    ###TFtdcExchangeInstIDType是一个合约在交易所的代码类型
    #########################################################################
    ctypedef char TSecurityFtdcExchangeInstIDType[31];

    #########################################################################
    ###TFtdcYearType是一个年份类型
    #########################################################################
    ctypedef int TSecurityFtdcYearType;

    #########################################################################
    ###TFtdcMonthType是一个月份类型
    #########################################################################
    ctypedef int TSecurityFtdcMonthType;

    #########################################################################
    ###TFtdcInstLifePhaseType是一个合约生命周期状态类型
    #########################################################################
    ###未上市
    #define SECURITY_FTDC_IP_NotStart '0'
    ###上市
    #define SECURITY_FTDC_IP_Started '1'
    ###停牌
    #define SECURITY_FTDC_IP_Pause '2'
    ###到期
    #define SECURITY_FTDC_IP_Expired '3'

    ctypedef char TSecurityFtdcInstLifePhaseType;

    #########################################################################
    ###TFtdcBoolType是一个布尔型类型
    #########################################################################
    ctypedef int TSecurityFtdcBoolType;

    #########################################################################
    ###TFtdcRightModelIDType是一个股票权限模版代码类型
    #########################################################################
    ctypedef char TSecurityFtdcRightModelIDType[31];

    #########################################################################
    ###TFtdcRightModelNameType是一个股票权限模版名称类型
    #########################################################################
    ctypedef char TSecurityFtdcRightModelNameType[161];

    #########################################################################
    ###TFtdcPosTradeTypeType是一个持仓交易类型类型
    #########################################################################
    ###今日新增持仓能卖出
    #define SECURITY_FTDC_PTT_CanSelTodayPos '1'
    ###今日新增持仓不能卖出
    #define SECURITY_FTDC_PTT_CannotSellTodayPos '2'

    ctypedef char TSecurityFtdcPosTradeTypeType;

    #########################################################################
    ###TFtdcTraderIDType是一个交易所交易员代码类型
    #########################################################################
    ctypedef char TSecurityFtdcTraderIDType[21];

    #########################################################################
    ###TFtdcParticipantIDType是一个会员代码类型
    #########################################################################
    ctypedef char TSecurityFtdcParticipantIDType[11];

    #########################################################################
    ###TFtdcPasswordType是一个密码类型
    #########################################################################
    ctypedef char TSecurityFtdcPasswordType[41];

    #########################################################################
    ###TFtdcBrokerIDType是一个经纪公司代码类型
    #########################################################################
    ctypedef char TSecurityFtdcBrokerIDType[11];

    #########################################################################
    ###TFtdcOrderLocalIDType是一个本地报单编号类型
    #########################################################################
    ctypedef char TSecurityFtdcOrderLocalIDType[13];

    #########################################################################
    ###TFtdcBrokerAbbrType是一个经纪公司简称类型
    #########################################################################
    ctypedef char TSecurityFtdcBrokerAbbrType[9];

    #########################################################################
    ###TFtdcBrokerNameType是一个经纪公司名称类型
    #########################################################################
    ctypedef char TSecurityFtdcBrokerNameType[81];

    #########################################################################
    ###TFtdcInvestorIDType是一个投资者代码类型
    #########################################################################
    ctypedef char TSecurityFtdcInvestorIDType[15];

    #########################################################################
    ###TFtdcPartyNameType是一个参与人名称类型
    #########################################################################
    ctypedef char TSecurityFtdcPartyNameType[81];

    #########################################################################
    ###TFtdcIdCardTypeType是一个证件类型类型
    #########################################################################
    ###组织机构代码
    #define SECURITY_FTDC_ICT_EID '0'
    ###身份证
    #define SECURITY_FTDC_ICT_IDCard '1'
    ###军官证
    #define SECURITY_FTDC_ICT_OfficerIDCard '2'
    ###警官证
    #define SECURITY_FTDC_ICT_PoliceIDCard '3'
    ###士兵证
    #define SECURITY_FTDC_ICT_SoldierIDCard '4'
    ###户口簿
    #define SECURITY_FTDC_ICT_HouseholdRegister  '5'
    ###护照
    #define SECURITY_FTDC_ICT_Passport '6'
    ###台胞证
    #define SECURITY_FTDC_ICT_TaiwanCompatriotIDCard  '7'
    ###回乡证
    #define SECURITY_FTDC_ICT_HomeComingCard '8'
    ###营业执照号
    #define SECURITY_FTDC_ICT_LicenseNo '9'
    ###税务登记号
    #define SECURITY_FTDC_ICT_TaxNo 'A'
    ###其他证件
    #define SECURITY_FTDC_ICT_OtherCard 'x'

    ctypedef char TSecurityFtdcIdCardTypeType;

    #########################################################################
    ###TFtdcIdentifiedCardNoType是一个证件号码类型
    #########################################################################
    ctypedef char TSecurityFtdcIdentifiedCardNoType[51];

    #########################################################################
    ###TFtdcClientIDType是一个交易编码类型
    #########################################################################
    ctypedef char TSecurityFtdcClientIDType[21];

    #########################################################################
    ###TFtdcAccountIDType是一个投资者帐号类型
    #########################################################################
    ctypedef char TSecurityFtdcAccountIDType[15];

    #########################################################################
    ###TFtdcClientTypeType是一个交易编码类型类型
    #########################################################################
    ###普通
    #define SECURITY_FTDC_CLT_Normal '1'
    ###信用交易
    #define SECURITY_FTDC_CLT_Credit '2'
    ###衍生品账户
    #define SECURITY_FTDC_CLT_Derive '3'
    ###其他类型
    #define SECURITY_FTDC_CLT_Other '4'

    ctypedef char TSecurityFtdcClientTypeType;

    #########################################################################
    ###TFtdcInvestorGroupNameType是一个投资者分组名称类型
    #########################################################################
    ctypedef char TSecurityFtdcInvestorGroupNameType[41];

    #########################################################################
    ###TFtdcUserIDType是一个用户代码类型
    #########################################################################
    ctypedef char TSecurityFtdcUserIDType[16];

    #########################################################################
    ###TFtdcUserNameType是一个用户名称类型
    #########################################################################
    ctypedef char TSecurityFtdcUserNameType[81];

    #########################################################################
    ###TFtdcFunctionCodeType是一个功能代码类型
    #########################################################################
    ###强制用户登出
    #define SECURITY_FTDC_FC_ForceUserLogout '2'
    ###变更管理用户口令
    #define SECURITY_FTDC_FC_UserPasswordUpdate '3'
    ###变更经纪公司口令
    #define SECURITY_FTDC_FC_BrokerPasswordUpdate '4'
    ###变更投资者口令
    #define SECURITY_FTDC_FC_InvestorPasswordUpdate '5'
    ###报单插入
    #define SECURITY_FTDC_FC_OrderInsert '6'
    ###报单操作
    #define SECURITY_FTDC_FC_OrderAction '7'
    ###同步系统数据
    #define SECURITY_FTDC_FC_SyncSystemData '8'
    ###同步经纪公司数据
    #define SECURITY_FTDC_FC_SyncBrokerData '9'
    ###超级查询
    #define SECURITY_FTDC_FC_SuperQuery 'B'
    ###报单插入
    #define SECURITY_FTDC_FC_ParkedOrderInsert 'C'
    ###报单操作
    #define SECURITY_FTDC_FC_ParkedOrderAction 'D'
    ###同步动态令牌
    #define SECURITY_FTDC_FC_SyncOTP 'E'
    ###未知单操作
    #define SECURITY_FTDC_FC_UnkownOrderAction 'F'
    ###转托管
    #define SECURITY_FTDC_FC_DepositoryTransfer 'G'
    ###余券划转
    #define SECURITY_FTDC_FC_ExcessStockTransfer 'H'
    ###资金回拨
    #define SECURITY_FTDC_FC_FundBack 'I'

    ctypedef char TSecurityFtdcFunctionCodeType;

    #########################################################################
    ###TFtdcUserTypeType是一个用户类型类型
    #########################################################################
    ###投资者
    #define SECURITY_FTDC_UT_Investor '0'
    ###操作员
    #define SECURITY_FTDC_UT_Operator '1'
    ###管理员
    #define SECURITY_FTDC_UT_SuperUser '2'

    ctypedef char TSecurityFtdcUserTypeType;

    #########################################################################
    ###TFtdcBrokerFunctionCodeType是一个经纪公司功能代码类型
    #########################################################################
    ###强制用户登出
    #define SECURITY_FTDC_BFC_ForceUserLogout '1'
    ###变更用户口令
    #define SECURITY_FTDC_BFC_UserPasswordUpdate '2'
    ###同步经纪公司数据
    #define SECURITY_FTDC_BFC_SyncBrokerData '3'
    ###报单插入
    #define SECURITY_FTDC_BFC_OrderInsert '5'
    ###报单操作
    #define SECURITY_FTDC_BFC_OrderAction '6'
    ###全部查询
    #define SECURITY_FTDC_BFC_AllQuery '7'
    ###未知单操作
    #define SECURITY_FTDC_BFC_UnkownOrderAction '8'
    ###转托管
    #define SECURITY_FTDC_BFC_DepositoryTransfer '9'
    ###余券划转
    #define SECURITY_FTDC_BFC_ExcessStockTransfer 'A'
    ###资金内转
    #define SECURITY_FTDC_BFC_FundInterTransfer 'B'
    ###资金回拨
    #define SECURITY_FTDC_BFC_FundBack 'C'
    ###系统功能：登入/登出/修改密码等
    #define SECURITY_FTDC_BFC_log 'a'
    ###基本查询：查询基础数据，如合约，交易所等常量
    #define SECURITY_FTDC_BFC_BaseQry 'b'
    ###交易查询：如查成交，委托
    #define SECURITY_FTDC_BFC_TradeQry 'c'
    ###交易功能：报单，撤单
    #define SECURITY_FTDC_BFC_Trade 'd'
    ###转账
    #define SECURITY_FTDC_BFC_Virement 'e'
    ###查询/管理：查询会话，踢人等
    #define SECURITY_FTDC_BFC_Session 'g'
    ###同步动态令牌
    #define SECURITY_FTDC_BFC_SyncOTP 'E'

    ctypedef char TSecurityFtdcBrokerFunctionCodeType;

    #########################################################################
    ###TFtdcCurrencyCodeType是一个币种类型
    #########################################################################
    ctypedef char TSecurityFtdcCurrencyCodeType[4];

    #########################################################################
    ###TFtdcMoneyType是一个资金类型
    #########################################################################
    ctypedef double TSecurityFtdcMoneyType;

    #########################################################################
    ###TFtdcRatioType是一个比率类型
    #########################################################################
    ctypedef double TSecurityFtdcRatioType;

    #########################################################################
    ###TFtdcAccountTypeType是一个账户类型类型
    #########################################################################
    ###普通账户
    #define SECURITY_FTDC_AcT_Normal '1'
    ###信用账户
    #define SECURITY_FTDC_AcT_Credit '2'
    ###衍生品账户
    #define SECURITY_FTDC_AcT_Derive '3'
    ###其他类型
    #define SECURITY_FTDC_AcT_Other '4'

    ctypedef char TSecurityFtdcAccountTypeType;

    #########################################################################
    ###TFtdcDepartmentRangeType是一个投资者范围类型
    #########################################################################
    ###所有
    #define SECURITY_FTDC_DR_All '1'
    ###组织架构
    #define SECURITY_FTDC_DR_Group '2'
    ###单一投资者
    #define SECURITY_FTDC_DR_Single '3'

    ctypedef char TSecurityFtdcDepartmentRangeType;

    #########################################################################
    ###TFtdcUserRightTypeType是一个客户权限类型类型
    #########################################################################
    ###登录
    #define SECURITY_FTDC_URT_Logon '1'
    ###银期转帐
    #define SECURITY_FTDC_URT_Transfer '2'
    ###邮寄结算单
    #define SECURITY_FTDC_URT_EMail '3'
    ###传真结算单
    #define SECURITY_FTDC_URT_Fax '4'
    ###条件单
    #define SECURITY_FTDC_URT_ConditionOrder '5'

    ctypedef char TSecurityFtdcUserRightTypeType;

    #########################################################################
    ###TFtdcProductInfoType是一个产品信息类型
    #########################################################################
    ctypedef char TSecurityFtdcProductInfoType[11];

    #########################################################################
    ###TFtdcAuthCodeType是一个客户端认证码类型
    #########################################################################
    ctypedef char TSecurityFtdcAuthCodeType[17];

    #########################################################################
    ###TFtdcLargeVolumeType是一个大额数量类型
    #########################################################################
    ctypedef double TSecurityFtdcLargeVolumeType;

    #########################################################################
    ###TFtdcMillisecType是一个时间（毫秒）类型
    #########################################################################
    ctypedef int TSecurityFtdcMillisecType;

    #########################################################################
    ###TFtdcHedgeFlagType是一个投机套保标志类型
    #########################################################################
    ###投机
    #define SECURITY_FTDC_HF_Speculation '1'
    ###套保
    #define SECURITY_FTDC_HF_Hedge '3'

    ctypedef char TSecurityFtdcHedgeFlagType;

    #########################################################################
    ###TFtdcDirectionType是一个买卖方向类型
    #########################################################################
    ###买
    #define SECURITY_FTDC_D_Buy '0'
    ###卖
    #define SECURITY_FTDC_D_Sell '1'
    ###ETF申购
    #define SECURITY_FTDC_D_ETFPur '2'
    ###ETF赎回
    #define SECURITY_FTDC_D_ETFRed '3'
    ###现金替代，只用作回报
    #define SECURITY_FTDC_D_CashIn '4'
    ###债券入库
    #define SECURITY_FTDC_D_PledgeBondIn '5'
    ###债券出库
    #define SECURITY_FTDC_D_PledgeBondOut '6'
    ###配股
    #define SECURITY_FTDC_D_Rationed '7'
    ###转托管
    #define SECURITY_FTDC_D_DepositoryTransfer '8'
    ###信用账户配股
    #define SECURITY_FTDC_D_CreditRationed '9'
    ###担保品买入
    #define SECURITY_FTDC_D_BuyCollateral 'A'
    ###担保品卖出
    #define SECURITY_FTDC_D_SellCollateral 'B'
    ###担保品转入
    #define SECURITY_FTDC_D_CollateralTransferIn 'C'
    ###担保品转出
    #define SECURITY_FTDC_D_CollateralTransferOut 'D'
    ###融资买入
    #define SECURITY_FTDC_D_MarginTrade 'E'
    ###融券卖出
    #define SECURITY_FTDC_D_ShortSell 'F'
    ###卖券还款
    #define SECURITY_FTDC_D_RepayMargin 'G'
    ###买券还券
    #define SECURITY_FTDC_D_RepayStock 'H'
    ###直接还款
    #define SECURITY_FTDC_D_DirectRepayMargin 'I'
    ###直接还券
    #define SECURITY_FTDC_D_DirectRepayStock 'J'
    ###余券划转
    #define SECURITY_FTDC_D_ExcessStockTransfer 'K'
    ###OF申购
    #define SECURITY_FTDC_D_OFPur 'L'
    ###OF赎回
    #define SECURITY_FTDC_D_OFRed 'M'
    ###SF拆分
    #define SECURITY_FTDC_D_SFSplit 'N'
    ###SF合并
    #define SECURITY_FTDC_D_SFMerge 'O'
    ###备兑
    #define SECURITY_FTDC_D_Covered 'P'
    ###证券冻结(开)/解冻(平)
    #define SECURITY_FTDC_D_Freeze 'Q'
    ###行权
    #define SECURITY_FTDC_D_Execute 'R'
    ###CB回售
    #define SECURITY_FTDC_D_CBRed 'S'
    ###CB转股
    #define SECURITY_FTDC_D_CBConv 'T'
    ###OF认购
    #define SECURITY_FTDC_D_OFSub 'U'
    ###场外申购
    #define SECURITY_FTDC_D_OTCPur 'V'
    ###场外赎回
    #define SECURITY_FTDC_D_OTCRed 'W'

    ctypedef char TSecurityFtdcDirectionType;

    #########################################################################
    ###TFtdcTradeIDType是一个成交编号类型
    #########################################################################
    ctypedef char TSecurityFtdcTradeIDType[21];

    #########################################################################
    ###TFtdcTradeTypeType是一个成交类型类型
    #########################################################################
    ###普通成交
    #define SECURITY_FTDC_TRDT_Common '0'
    ###期权执行
    #define SECURITY_FTDC_TRDT_OptionsExecution '1'
    ###OTC成交
    #define SECURITY_FTDC_TRDT_OTC '2'
    ###期转现衍生成交
    #define SECURITY_FTDC_TRDT_EFPDerived '3'
    ###组合衍生成交
    #define SECURITY_FTDC_TRDT_CombinationDerived '4'
    ###ETF申购
    #define SECURITY_FTDC_TRDT_EFTPurchase '5'
    ###ETF赎回
    #define SECURITY_FTDC_TRDT_EFTRedem '6'

    ctypedef char TSecurityFtdcTradeTypeType;

    #########################################################################
    ###TFtdcCreationredemptionStatusType是一个基金当天申购赎回状态类型
    #########################################################################
    ###不允许申购赎回
    #define SECURITY_FTDC_CDS_Forbidden '0'
    ###表示允许申购和赎回
    #define SECURITY_FTDC_CDS_Allow '1'
    ###允许申购、不允许赎回
    #define SECURITY_FTDC_CDS_OnlyPurchase '2'
    ###不允许申购、允许赎回
    #define SECURITY_FTDC_CDS_OnlyRedeem '3'

    ctypedef char TSecurityFtdcCreationredemptionStatusType;

    #########################################################################
    ###TFtdcETFCurrenceReplaceStatusType是一个ETF现金替代标志类型
    #########################################################################
    ###禁止现金替代
    #define SECURITY_FTDC_ETFCRS_Forbidden '0'
    ###可以现金替代
    #define SECURITY_FTDC_ETFCRS_Allow '1'
    ###必须现金替代
    #define SECURITY_FTDC_ETFCRS_Force '2'
    ###跨市场股票退补现金替代
    #define SECURITY_FTDC_ETFCRS_CrossMarketComp '3'
    ###跨市场必须现金替代
    #define SECURITY_FTDC_ETFCRS_CrossMarketFroce '4'
    ###非沪深市场成分证券退补现金替代
    #define SECURITY_FTDC_ETFCRS_OtherMarketComp '5'
    ###非沪深市场成份证券必须现金替代
    #define SECURITY_FTDC_ETFCRS_OtherMarketFroce '6'

    ctypedef char TSecurityFtdcETFCurrenceReplaceStatusType;

    #########################################################################
    ###TFtdcInterestType是一个利息类型
    #########################################################################
    ctypedef double TSecurityFtdcInterestType;

    #########################################################################
    ###TFtdcRepurchaseMaxTimesType是一个正回购放大倍数类型
    #########################################################################
    ctypedef double TSecurityFtdcRepurchaseMaxTimesType;

    #########################################################################
    ###TFtdcCapitalStockTypeType是一个股本类型类型
    #########################################################################
    ###总通股本
    #define SECURITY_FTDC_CPTSTOCK_TOTALSTOCK '1'
    ###流通股本
    #define SECURITY_FTDC_CPTSTOCK_CIRCULATION '2'

    ctypedef char TSecurityFtdcCapitalStockTypeType;

    #########################################################################
    ###TFtdcMarginPriceTypeType是一个保证金价格类型类型
    #########################################################################
    ###昨结算价
    #define SECURITY_FTDC_MPT_PreSettlementPrice '1'
    ###最新价
    #define SECURITY_FTDC_MPT_SettlementPrice '2'
    ###成交均价
    #define SECURITY_FTDC_MPT_AveragePrice '3'
    ###开仓价
    #define SECURITY_FTDC_MPT_OpenPrice '4'

    ctypedef char TSecurityFtdcMarginPriceTypeType;

    #########################################################################
    ###TFtdcAlgorithmType是一个盈亏算法类型
    #########################################################################
    ###浮盈浮亏都计算
    #define SECURITY_FTDC_AG_All '1'
    ###浮盈不计，浮亏计
    #define SECURITY_FTDC_AG_OnlyLost '2'
    ###浮盈计，浮亏不计
    #define SECURITY_FTDC_AG_OnlyGain '3'
    ###浮盈浮亏都不计算
    #define SECURITY_FTDC_AG_None '4'

    ctypedef char TSecurityFtdcAlgorithmType;

    #########################################################################
    ###TFtdcIncludeCloseProfitType是一个是否包含平仓盈利类型
    #########################################################################
    ###包含平仓盈利
    #define SECURITY_FTDC_ICP_Include '0'
    ###不包含平仓盈利
    #define SECURITY_FTDC_ICP_NotInclude '2'

    ctypedef char TSecurityFtdcIncludeCloseProfitType;

    #########################################################################
    ###TFtdcAllWithoutTradeType是一个是否受可提比例限制类型
    #########################################################################
    ###不受可提比例限制
    #define SECURITY_FTDC_AWT_Enable '0'
    ###受可提比例限制
    #define SECURITY_FTDC_AWT_Disable '2'
    ###无仓不受可提比例限制
    #define SECURITY_FTDC_AWT_NoHoldEnable '3'

    ctypedef char TSecurityFtdcAllWithoutTradeType;

    #########################################################################
    ###TFtdcHandlePositionAlgoIDType是一个持仓处理算法编号类型
    #########################################################################
    ###基本
    #define SECURITY_FTDC_HPA_Base '1'
    ###非交易
    #define SECURITY_FTDC_HPA_NoneTrade '4'
    ###证券
    #define SECURITY_FTDC_HPA_Stock '5'

    ctypedef char TSecurityFtdcHandlePositionAlgoIDType;

    #########################################################################
    ###TFtdcOpenRestrictTypeType是一个期权开仓限制类型类型
    #########################################################################
    ###买入开仓
    #define SECURITY_FTDC_ORT_BuyOpen '0'
    ###所有开仓
    #define SECURITY_FTDC_ORT_AllOpen '1'

    ctypedef char TSecurityFtdcOpenRestrictTypeType;

    #########################################################################
    ###TFtdcTradeParamIDType是一个交易系统参数代码类型
    #########################################################################
    ###系统加密算法
    #define SECURITY_FTDC_TPID_EncryptionStandard 'E'
    ###用户最大会话数
    #define SECURITY_FTDC_TPID_SingleUserSessionMaxNum 'S'
    ###最大连续登录失败数
    #define SECURITY_FTDC_TPID_LoginFailMaxNum 'L'
    ###是否强制认证
    #define SECURITY_FTDC_TPID_IsAuthForce 'A'
    ###是否生成用户事件
    #define SECURITY_FTDC_TPID_GenUserEvent 'G'
    ###起始报单本地编号
    #define SECURITY_FTDC_TPID_StartOrderLocalID 'O'
    ###融资融券买券还券算法
    #define SECURITY_FTDC_TPID_RepayStockAlgo 'R'
    ###衍生品账户资金提取线
    #define SECURITY_FTDC_TPID_DeriveWithdrawRatio 'D'
    ###期权行权冻结可用起始时间
    #define SECURITY_FTDC_TPID_ExecuteStartTime 'T'
    ###只可偿还历史融券负债
    #define SECURITY_FTDC_TPID_OnlyRepayHisStock 'H'
    ###期权开仓限制类型
    #define SECURITY_FTDC_TPID_OpenRestrictType 'X'
    ###市值配售是否冻结资金
    #define SECURITY_FTDC_TPID_IPOFrozeCash 'I'
    ###资金回拨起始时间
    #define SECURITY_FTDC_TPID_FundBackStartTime 'F'
    ###上交所起始系统编号
    #define SECURITY_FTDC_TPID_SSEStartIndex 'U'
    ###深交所起始系统编号
    #define SECURITY_FTDC_TPID_SZEStartIndex 'V'

    ctypedef char TSecurityFtdcTradeParamIDType;

    #########################################################################
    ###TFtdcSettlementParamValueType是一个参数代码值类型
    #########################################################################
    ctypedef char TSecurityFtdcSettlementParamValueType[256];

    #########################################################################
    ###TFtdcMemoType是一个备注类型
    #########################################################################
    ctypedef char TSecurityFtdcMemoType[161];

    #########################################################################
    ###TFtdcPriorityType是一个优先级类型
    #########################################################################
    ctypedef int TSecurityFtdcPriorityType;

    #########################################################################
    ###TFtdcOrderRefType是一个报单引用类型
    #########################################################################
    ctypedef char TSecurityFtdcOrderRefType[13];

    #########################################################################
    ###TFtdcMarketIDType是一个市场代码类型
    #########################################################################
    ctypedef char TSecurityFtdcMarketIDType[31];

    #########################################################################
    ###TFtdcMacAddressType是一个Mac地址类型
    #########################################################################
    ctypedef char TSecurityFtdcMacAddressType[21];

    #########################################################################
    ###TFtdcHDSerialNumberType是一个硬盘序列号类型
    #########################################################################
    ctypedef char TSecurityFtdcHDSerialNumberType[21];

    #########################################################################
    ###TFtdcInstrumentNameType是一个合约名称类型
    #########################################################################
    ctypedef char TSecurityFtdcInstrumentNameType[21];

    #########################################################################
    ###TFtdcOrderSysIDType是一个报单编号类型
    #########################################################################
    ctypedef char TSecurityFtdcOrderSysIDType[21];

    #########################################################################
    ###TFtdcIPAddressType是一个IP地址类型
    #########################################################################
    ctypedef char TSecurityFtdcIPAddressType[16];

    #########################################################################
    ###TFtdcIPPortType是一个IP端口类型
    #########################################################################
    ctypedef int TSecurityFtdcIPPortType;

    #########################################################################
    ###TFtdcProtocolInfoType是一个协议信息类型
    #########################################################################
    ctypedef char TSecurityFtdcProtocolInfoType[11];

    #########################################################################
    ###TFtdcDepositSeqNoType是一个出入金流水号类型
    #########################################################################
    ctypedef char TSecurityFtdcDepositSeqNoType[15];

    #########################################################################
    ###TFtdcSystemNameType是一个系统名称类型
    #########################################################################
    ctypedef char TSecurityFtdcSystemNameType[41];

    #########################################################################
    ###TFtdcInvestorRangeType是一个投资者范围类型
    #########################################################################
    ###所有
    #define SECURITY_FTDC_IR_All '1'
    ###投资者组
    #define SECURITY_FTDC_IR_Group '2'
    ###单一投资者
    #define SECURITY_FTDC_IR_Single '3'

    ctypedef char TSecurityFtdcInvestorRangeType;

    #########################################################################
    ###TFtdcDataSyncStatusType是一个数据同步状态类型
    #########################################################################
    ###未同步
    #define SECURITY_FTDC_DS_Asynchronous '1'
    ###同步中
    #define SECURITY_FTDC_DS_Synchronizing '2'
    ###已同步
    #define SECURITY_FTDC_DS_Synchronized '3'

    ctypedef char TSecurityFtdcDataSyncStatusType;

    #########################################################################
    ###TFtdcTraderConnectStatusType是一个交易所交易员连接状态类型
    #########################################################################
    ###没有任何连接
    #define SECURITY_FTDC_TCS_NotConnected '1'
    ###已经连接
    #define SECURITY_FTDC_TCS_Connected '2'
    ###已经发出合约查询请求
    #define SECURITY_FTDC_TCS_QryInstrumentSent '3'
    ###订阅私有流
    #define SECURITY_FTDC_TCS_SubPrivateFlow '4'

    ctypedef char TSecurityFtdcTraderConnectStatusType;

    #########################################################################
    ###TFtdcOrderActionStatusType是一个报单操作状态类型
    #########################################################################
    ###已经提交
    #define SECURITY_FTDC_OAS_Submitted 'a'
    ###已经接受
    #define SECURITY_FTDC_OAS_Accepted 'b'
    ###已经被拒绝
    #define SECURITY_FTDC_OAS_Rejected 'c'

    ctypedef char TSecurityFtdcOrderActionStatusType;

    #########################################################################
    ###TFtdcOrderStatusType是一个报单状态类型
    #########################################################################
    ###全部成交
    #define SECURITY_FTDC_OST_AllTraded '0'
    ###部分成交还在队列中
    #define SECURITY_FTDC_OST_PartTradedQueueing '1'
    ###部分成交不在队列中
    #define SECURITY_FTDC_OST_PartTradedNotQueueing '2'
    ###未成交还在队列中
    #define SECURITY_FTDC_OST_NoTradeQueueing '3'
    ###未成交不在队列中
    #define SECURITY_FTDC_OST_NoTradeNotQueueing '4'
    ###撤单
    #define SECURITY_FTDC_OST_Canceled '5'
    ###未知
    #define SECURITY_FTDC_OST_Unknown 'a'
    ###尚未触发
    #define SECURITY_FTDC_OST_NotTouched 'b'
    ###已触发
    #define SECURITY_FTDC_OST_Touched 'c'

    ctypedef char TSecurityFtdcOrderStatusType;

    #########################################################################
    ###TFtdcOrderSubmitStatusType是一个报单提交状态类型
    #########################################################################
    ###已经提交
    #define SECURITY_FTDC_OSS_InsertSubmitted '0'
    ###撤单已经提交
    #define SECURITY_FTDC_OSS_CancelSubmitted '1'
    ###修改已经提交
    #define SECURITY_FTDC_OSS_ModifySubmitted '2'
    ###已经接受
    #define SECURITY_FTDC_OSS_Accepted '3'
    ###报单已经被拒绝
    #define SECURITY_FTDC_OSS_InsertRejected '4'
    ###撤单已经被拒绝
    #define SECURITY_FTDC_OSS_CancelRejected '5'
    ###改单已经被拒绝
    #define SECURITY_FTDC_OSS_ModifyRejected '6'

    ctypedef char TSecurityFtdcOrderSubmitStatusType;

    #########################################################################
    ###TFtdcPositionDateType是一个持仓日期类型
    #########################################################################
    ###今日持仓
    #define SECURITY_FTDC_PSD_Today '1'
    ###历史持仓
    #define SECURITY_FTDC_PSD_History '2'

    ctypedef char TSecurityFtdcPositionDateType;

    #########################################################################
    ###TFtdcTradingRoleType是一个交易角色类型
    #########################################################################
    ###代理
    #define SECURITY_FTDC_ER_Broker '1'
    ###自营
    #define SECURITY_FTDC_ER_Host '2'
    ###做市商
    #define SECURITY_FTDC_ER_Maker '3'

    ctypedef char TSecurityFtdcTradingRoleType;

    #########################################################################
    ###TFtdcPosiDirectionType是一个持仓多空方向类型
    #########################################################################
    ###净
    #define SECURITY_FTDC_PD_Net '1'
    ###多头
    #define SECURITY_FTDC_PD_Long '2'
    ###空头
    #define SECURITY_FTDC_PD_Short '3'
    ###备兑
    #define SECURITY_FTDC_PD_Covered '4'

    ctypedef char TSecurityFtdcPosiDirectionType;

    #########################################################################
    ###TFtdcOrderPriceTypeType是一个报单价格条件类型
    #########################################################################
    ###即时成交剩余撤销市价单
    #define SECURITY_FTDC_OPT_AnyPrice '1'
    ###限价
    #define SECURITY_FTDC_OPT_LimitPrice '2'
    ###最优五档即时成交剩余撤销市价单
    #define SECURITY_FTDC_OPT_BestPrice '3'
    ###最优五档即时成交剩余转限价市价单
    #define SECURITY_FTDC_OPT_BestLimitPrice '4'
    ###全部成交或撤销市价单
    #define SECURITY_FTDC_OPT_AllPrice '5'
    ###本方最优价格市价单
    #define SECURITY_FTDC_OPT_ForwardBestPrice '6'
    ###对方最优价格市价单
    #define SECURITY_FTDC_OPT_ReverseBestPrice '7'
    ###即时成交剩余转限价市价单
    #define SECURITY_FTDC_OPT_Any2LimitPrice '8'
    ###全部成交或撤销限价单
    #define SECURITY_FTDC_OPT_AllLimitPrice '9'
    ###增强限价单
    #define SECURITY_FTDC_OPT_EnhancedLimitPrice 'A'
    ###零股限价单
    #define SECURITY_FTDC_OPT_FractionLimitPrice 'B'
    ###激活A股网络密码服务代码
    #define SECURITY_FTDC_OPT_ActiveANetPassSvrCode 'G'
    ###注销A股网络密码服务代码
    #define SECURITY_FTDC_OPT_InactiveANetPassSvrCode 'H'
    ###激活B股网络密码服务代码
    #define SECURITY_FTDC_OPT_ActiveBNetPassSvrCode 'I'
    ###注销B股网络密码服务代码
    #define SECURITY_FTDC_OPT_InactiveBNetPassSvrCode 'J'
    ###回购注销
    #define SECURITY_FTDC_OPT_Repurchase 'K'
    ###指定撤销
    #define SECURITY_FTDC_OPT_DesignatedCancel 'L'
    ###指定登记
    #define SECURITY_FTDC_OPT_Designated 'M'
    ###证券参与申购
    #define SECURITY_FTDC_OPT_SubscribingShares 'N'
    ###证券参与配股
    #define SECURITY_FTDC_OPT_Split 'O'
    ###要约收购登记
    #define SECURITY_FTDC_OPT_TenderOffer 'P'
    ###要约收购撤销
    #define SECURITY_FTDC_OPT_TenderOfferCancel 'Q'
    ###证券投票
    #define SECURITY_FTDC_OPT_Ballot 'R'
    ###可转债转换登记
    #define SECURITY_FTDC_OPT_ConvertibleBondsConvet 'S'
    ###可转债回售登记
    #define SECURITY_FTDC_OPT_ConvertibleBondsRepurchase 'T'
    ###权证行权
    #define SECURITY_FTDC_OPT_Exercise 'U'
    ###开放式基金申购
    #define SECURITY_FTDC_OPT_PurchasingFunds 'V'
    ###开放式基金赎回
    #define SECURITY_FTDC_OPT_RedemingFunds 'W'
    ###开放式基金认购
    #define SECURITY_FTDC_OPT_SubscribingFunds 'X'
    ###开放式基金转托管转出
    #define SECURITY_FTDC_OPT_LOFIssue 'Y'
    ###开放式基金设置分红方式
    #define SECURITY_FTDC_OPT_LOFSetBonusType 'Z'
    ###开放式基金转换为其他基金
    #define SECURITY_FTDC_OPT_LOFConvert 'a'
    ###债券入库
    #define SECURITY_FTDC_OPT_DebentureStockIn 'b'
    ###债券出库
    #define SECURITY_FTDC_OPT_DebentureStockOut 'c'
    ###ETF申购
    #define SECURITY_FTDC_OPT_PurchasesETF  'd'
    ###ETF赎回
    #define SECURITY_FTDC_OPT_RedeemETF 'e'

    ctypedef char TSecurityFtdcOrderPriceTypeType;

    #########################################################################
    ###TFtdcOffsetFlagType是一个开平标志类型
    #########################################################################
    ###开仓
    #define SECURITY_FTDC_OF_Open '0'
    ###平仓
    #define SECURITY_FTDC_OF_Close '1'
    ###强平
    #define SECURITY_FTDC_OF_ForceClose '2'
    ###平今
    #define SECURITY_FTDC_OF_CloseToday '3'
    ###平昨
    #define SECURITY_FTDC_OF_CloseYesterday '4'
    ###强减
    #define SECURITY_FTDC_OF_ForceOff '5'
    ###本地强平
    #define SECURITY_FTDC_OF_LocalForceClose '6'

    ctypedef char TSecurityFtdcOffsetFlagType;

    #########################################################################
    ###TFtdcForceCloseReasonType是一个强平原因类型
    #########################################################################
    ###非强平
    #define SECURITY_FTDC_FCC_NotForceClose '0'
    ###资金不足
    #define SECURITY_FTDC_FCC_LackDeposit '1'
    ###客户超仓
    #define SECURITY_FTDC_FCC_ClientOverPositionLimit '2'
    ###会员超仓
    #define SECURITY_FTDC_FCC_MemberOverPositionLimit '3'
    ###持仓非整数倍
    #define SECURITY_FTDC_FCC_NotMultiple '4'
    ###违规
    #define SECURITY_FTDC_FCC_Violation '5'
    ###其它
    #define SECURITY_FTDC_FCC_Other '6'
    ###自然人临近交割
    #define SECURITY_FTDC_FCC_PersonDeliv '7'

    ctypedef char TSecurityFtdcForceCloseReasonType;

    #########################################################################
    ###TFtdcOrderTypeType是一个报单类型类型
    #########################################################################
    ###正常
    #define SECURITY_FTDC_ORDT_Normal '0'
    ###报价衍生
    #define SECURITY_FTDC_ORDT_DeriveFromQuote '1'
    ###组合衍生
    #define SECURITY_FTDC_ORDT_DeriveFromCombination '2'
    ###组合报单
    #define SECURITY_FTDC_ORDT_Combination '3'
    ###条件单
    #define SECURITY_FTDC_ORDT_ConditionalOrder '4'
    ###互换单
    #define SECURITY_FTDC_ORDT_Swap '5'

    ctypedef char TSecurityFtdcOrderTypeType;

    #########################################################################
    ###TFtdcTimeConditionType是一个有效期类型类型
    #########################################################################
    ###立即完成，否则撤销
    #define SECURITY_FTDC_TC_IOC '1'
    ###本节有效
    #define SECURITY_FTDC_TC_GFS '2'
    ###当日有效
    #define SECURITY_FTDC_TC_GFD '3'
    ###指定日期前有效
    #define SECURITY_FTDC_TC_GTD '4'
    ###撤销前有效
    #define SECURITY_FTDC_TC_GTC '5'
    ###集合竞价有效
    #define SECURITY_FTDC_TC_GFA '6'

    ctypedef char TSecurityFtdcTimeConditionType;

    #########################################################################
    ###TFtdcVolumeConditionType是一个成交量类型类型
    #########################################################################
    ###任何数量
    #define SECURITY_FTDC_VC_AV '1'
    ###最小数量
    #define SECURITY_FTDC_VC_MV '2'
    ###全部数量
    #define SECURITY_FTDC_VC_CV '3'

    ctypedef char TSecurityFtdcVolumeConditionType;

    #########################################################################
    ###TFtdcContingentConditionType是一个触发条件类型
    #########################################################################
    ###立即
    #define SECURITY_FTDC_CC_Immediately '1'
    ###止损
    #define SECURITY_FTDC_CC_Touch '2'
    ###止赢
    #define SECURITY_FTDC_CC_TouchProfit '3'
    ###预埋单
    #define SECURITY_FTDC_CC_ParkedOrder '4'
    ###最新价大于条件价
    #define SECURITY_FTDC_CC_LastPriceGreaterThanStopPrice '5'
    ###最新价大于等于条件价
    #define SECURITY_FTDC_CC_LastPriceGreaterEqualStopPrice '6'
    ###最新价小于条件价
    #define SECURITY_FTDC_CC_LastPriceLesserThanStopPrice '7'
    ###最新价小于等于条件价
    #define SECURITY_FTDC_CC_LastPriceLesserEqualStopPrice '8'
    ###卖一价大于条件价
    #define SECURITY_FTDC_CC_AskPriceGreaterThanStopPrice '9'
    ###卖一价大于等于条件价
    #define SECURITY_FTDC_CC_AskPriceGreaterEqualStopPrice 'A'
    ###卖一价小于条件价
    #define SECURITY_FTDC_CC_AskPriceLesserThanStopPrice 'B'
    ###卖一价小于等于条件价
    #define SECURITY_FTDC_CC_AskPriceLesserEqualStopPrice 'C'
    ###买一价大于条件价
    #define SECURITY_FTDC_CC_BidPriceGreaterThanStopPrice 'D'
    ###买一价大于等于条件价
    #define SECURITY_FTDC_CC_BidPriceGreaterEqualStopPrice 'E'
    ###买一价小于条件价
    #define SECURITY_FTDC_CC_BidPriceLesserThanStopPrice 'F'
    ###买一价小于等于条件价
    #define SECURITY_FTDC_CC_BidPriceLesserEqualStopPrice 'H'

    ctypedef char TSecurityFtdcContingentConditionType;

    #########################################################################
    ###TFtdcActionFlagType是一个操作标志类型
    #########################################################################
    ###删除
    #define SECURITY_FTDC_AF_Delete '0'
    ###修改
    #define SECURITY_FTDC_AF_Modify '3'

    ctypedef char TSecurityFtdcActionFlagType;

    #########################################################################
    ###TFtdcTradingRightType是一个交易权限类型
    #########################################################################
    ###可以交易
    #define SECURITY_FTDC_TR_Allow '0'
    ###不能交易
    #define SECURITY_FTDC_TR_Forbidden '2'

    ctypedef char TSecurityFtdcTradingRightType;

    #########################################################################
    ###TFtdcOrderSourceType是一个报单来源类型
    #########################################################################
    ###来自参与者
    #define SECURITY_FTDC_OSRC_Participant '0'
    ###来自管理员
    #define SECURITY_FTDC_OSRC_Administrator '1'

    ctypedef char TSecurityFtdcOrderSourceType;

    #########################################################################
    ###TFtdcPriceSourceType是一个成交价来源类型
    #########################################################################
    ###前成交价
    #define SECURITY_FTDC_PSRC_LastPrice '0'
    ###买委托价
    #define SECURITY_FTDC_PSRC_Buy '1'
    ###卖委托价
    #define SECURITY_FTDC_PSRC_Sell '2'

    ctypedef char TSecurityFtdcPriceSourceType;

    #########################################################################
    ###TFtdcOrderActionRefType是一个报单操作引用类型
    #########################################################################
    ctypedef int TSecurityFtdcOrderActionRefType;

    #########################################################################
    ###TFtdcFrontIDType是一个前置编号类型
    #########################################################################
    ctypedef int TSecurityFtdcFrontIDType;

    #########################################################################
    ###TFtdcSessionIDType是一个会话编号类型
    #########################################################################
    ctypedef int TSecurityFtdcSessionIDType;

    #########################################################################
    ###TFtdcInstallIDType是一个安装编号类型
    #########################################################################
    ctypedef int TSecurityFtdcInstallIDType;

    #########################################################################
    ###TFtdcSequenceNoType是一个序号类型
    #########################################################################
    ctypedef int TSecurityFtdcSequenceNoType;

    #########################################################################
    ###TFtdcRequestIDType是一个请求编号类型
    #########################################################################
    ctypedef int TSecurityFtdcRequestIDType;

    #########################################################################
    ###TFtdcCombOffsetFlagType是一个组合开平标志类型
    #########################################################################
    ctypedef char TSecurityFtdcCombOffsetFlagType[5];

    #########################################################################
    ###TFtdcCombHedgeFlagType是一个组合投机套保标志类型
    #########################################################################
    ctypedef char TSecurityFtdcCombHedgeFlagType[5];

    #########################################################################
    ###TFtdcSequenceSeriesType是一个序列系列号类型
    #########################################################################
    ctypedef short TSecurityFtdcSequenceSeriesType;

    #########################################################################
    ###TFtdcCommPhaseNoType是一个通讯时段编号类型
    #########################################################################
    ctypedef short TSecurityFtdcCommPhaseNoType;

    #########################################################################
    ###TFtdcUserEventTypeType是一个用户事件类型类型
    #########################################################################
    ###登录
    #define SECURITY_FTDC_UET_Login '1'
    ###登出
    #define SECURITY_FTDC_UET_Logout '2'
    ###交易成功
    #define SECURITY_FTDC_UET_Trading '3'
    ###交易失败
    #define SECURITY_FTDC_UET_TradingError '4'
    ###修改密码
    #define SECURITY_FTDC_UET_UpdatePassword '5'
    ###客户端认证
    #define SECURITY_FTDC_UET_Authenticate '6'
    ###其他
    #define SECURITY_FTDC_UET_Other '9'

    ctypedef char TSecurityFtdcUserEventTypeType;

    #########################################################################
    ###TFtdcUserEventInfoType是一个用户事件信息类型
    #########################################################################
    ctypedef char TSecurityFtdcUserEventInfoType[1025];

    #########################################################################
    ###TFtdcOTPTypeType是一个动态令牌类型类型
    #########################################################################
    ###无动态令牌
    #define SECURITY_FTDC_OTP_NONE '0'
    ###时间令牌
    #define SECURITY_FTDC_OTP_TOTP '1'

    ctypedef char TSecurityFtdcOTPTypeType;

    #########################################################################
    ###TFtdcTradeSourceType是一个成交来源类型
    #########################################################################
    ###来自交易所普通回报
    #define SECURITY_FTDC_TSRC_NORMAL '0'
    ###来自查询
    #define SECURITY_FTDC_TSRC_QUERY '1'

    ctypedef char TSecurityFtdcTradeSourceType;

    #########################################################################
    ###TFtdcBranchIDType是一个营业部编号类型
    #########################################################################
    ctypedef char TSecurityFtdcBranchIDType[9];

    #########################################################################
    ###TFtdcStockPriceType是一个证券交易价格类型
    #########################################################################
    ctypedef char TSecurityFtdcStockPriceType[16];

    #########################################################################
    ###TFtdcRightModelIDType是一个股票权限模版代码类型
    #########################################################################
    ctypedef char TSecurityFtdcRightModelIDType[31];

    #########################################################################
    ###TFtdcSerialNumberType是一个序列号类型
    #########################################################################
    ctypedef char TSecurityFtdcSerialNumberType[17];

    #########################################################################
    ###TFtdcInstrumentRangeType是一个股票权限分类类型
    #########################################################################
    ###所有
    #define SECURITY_FTDC_INR_All '1'
    ###产品
    #define SECURITY_FTDC_INR_Product '2'
    ###股票权限模版
    #define SECURITY_FTDC_INR_Model '3'
    ###股票
    #define SECURITY_FTDC_INR_Stock '4'
    ###市场
    #define SECURITY_FTDC_INR_Market '5'

    ctypedef char TSecurityFtdcInstrumentRangeType;

    #########################################################################
    ###TFtdcBusinessUnitType是一个业务单元类型
    #########################################################################
    ctypedef char TSecurityFtdcBusinessUnitType[21];

    #########################################################################
    ###TFtdcOTPVendorsIDType是一个动态令牌提供商类型
    #########################################################################
    ctypedef char TSecurityFtdcOTPVendorsIDType[2];

    #########################################################################
    ###TFtdcLastDriftType是一个上次OTP漂移值类型
    #########################################################################
    ctypedef int TSecurityFtdcLastDriftType;

    #########################################################################
    ###TFtdcLastSuccessType是一个上次OTP成功值类型
    #########################################################################
    ctypedef int TSecurityFtdcLastSuccessType;

    #########################################################################
    ###TFtdcAuthKeyType是一个令牌密钥类型
    #########################################################################
    ctypedef char TSecurityFtdcAuthKeyType[41];

    #########################################################################
    ###TFtdcUserSessionHashType是一个用户会话Hash值类型
    #########################################################################
    ctypedef int TSecurityFtdcUserSessionHashType;

    #########################################################################
    ###TFtdcStockTradeTypeType是一个证券交易类型类型
    #########################################################################
    ###可交易证券
    #define SECURITY_FTDC_STT_Stock '0'
    ###买入网络密码服务
    #define SECURITY_FTDC_STT_BuyNetService '1'
    ###回购注销
    #define SECURITY_FTDC_STT_CancelRepurchase '2'
    ###指定撤销
    #define SECURITY_FTDC_STT_CancelRegister '3'
    ###指定登记
    #define SECURITY_FTDC_STT_Register '4'
    ###买入发行申购
    #define SECURITY_FTDC_STT_PurchaseIssue '5'
    ###卖出配股
    #define SECURITY_FTDC_STT_Allotment '6'
    ###卖出要约收购
    #define SECURITY_FTDC_STT_SellTender '7'
    ###买入要约收购
    #define SECURITY_FTDC_STT_BuyTender '8'
    ###网上投票
    #define SECURITY_FTDC_STT_NetVote '9'
    ###卖出可转债回售
    #define SECURITY_FTDC_STT_SellConvertibleBonds 'a'
    ###权证行权代码
    #define SECURITY_FTDC_STT_OptionExecute 'b'
    ###开放式基金申购
    #define SECURITY_FTDC_STT_PurchaseOF 'c'
    ###开放式基金赎回
    #define SECURITY_FTDC_STT_RedeemOF 'd'
    ###开放式基金认购
    #define SECURITY_FTDC_STT_SubscribeOF 'e'
    ###开放式基金转托管转出
    #define SECURITY_FTDC_STT_OFCustodianTranfer 'f'
    ###开放式基金分红设置
    #define SECURITY_FTDC_STT_OFDividendConfig  'g'
    ###开放式基金转成其他基金
    #define SECURITY_FTDC_STT_OFTransfer 'h'
    ###债券入库
    #define SECURITY_FTDC_STT_BondsIn 'i'
    ###债券出库
    #define SECURITY_FTDC_STT_BondsOut 'j'
    ###EFT申购
    #define SECURITY_FTDC_STT_PurchaseETF 'k'
    ###EFT赎回
    #define SECURITY_FTDC_STT_RedeemETF 'l'
    ###可转债回售登记
    #define SECURITY_FTDC_STT_ConvertibleRegister 'm'

    ctypedef char TSecurityFtdcStockTradeTypeType;

    #########################################################################
    ###TFtdcHandleTradingAccountAlgoIDType是一个资金处理算法编号类型
    #########################################################################
    ###基本
    #define SECURITY_FTDC_HTAA_Base '1'

    ctypedef char TSecurityFtdcHandleTradingAccountAlgoIDType;

    #########################################################################
    ###TFtdcStockWthType是一个股票使用流水号类型
    #########################################################################
    ctypedef int TSecurityFtdcStockWthType;

    #########################################################################
    ###TFtdcStockSeqType是一个股票使用流水号类型
    #########################################################################
    ctypedef char TSecurityFtdcStockSeqType[17];

    #########################################################################
    ###TFtdcWTFSType是一个委托方式类型
    #########################################################################
    ctypedef int TSecurityFtdcWTFSType;

    #########################################################################
    ###TFtdcWTLBType是一个委托类别类型
    #########################################################################
    ctypedef int TSecurityFtdcWTLBType;

    #########################################################################
    ###TFtdcWTRQType是一个委托日期类型
    #########################################################################
    ctypedef int TSecurityFtdcWTRQType;

    #########################################################################
    ###TFtdcINTEGERType是一个一般整型类型
    #########################################################################
    ctypedef int TSecurityFtdcINTEGERType;

    #########################################################################
    ###TFtdcINT3Type是一个三位数整型类型
    #########################################################################
    ctypedef int TSecurityFtdcINT3Type;

    #########################################################################
    ###TFtdcINT6Type是一个六位数整型类型
    #########################################################################
    ctypedef int TSecurityFtdcINT6Type;

    #########################################################################
    ###TFtdcINT12Type是一个十二位数整型类型
    #########################################################################
    ctypedef int TSecurityFtdcINT12Type;

    #########################################################################
    ###TFtdcCHAR1Type是一个一字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR1Type[2];

    #########################################################################
    ###TFtdcCHAR2Type是一个二字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR2Type[3];

    #########################################################################
    ###TFtdcCHAR3Type是一个三字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR3Type[4];

    #########################################################################
    ###TFtdcCHAR4Type是一个四字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR4Type[5];

    #########################################################################
    ###TFtdcCHAR5Type是一个五字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR5Type[6];

    #########################################################################
    ###TFtdcCHAR6Type是一个六字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR6Type[7];

    #########################################################################
    ###TFtdcCHAR8Type是一个八字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR8Type[9];

    #########################################################################
    ###TFtdcCHAR10Type是一个十字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR10Type[11];

    #########################################################################
    ###TFtdcCHAR11Type是一个十一字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR11Type[12];

    #########################################################################
    ###TFtdcCHAR12Type是一个十二字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR12Type[13];

    #########################################################################
    ###TFtdcCHAR13Type是一个十三字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR13Type[14];

    #########################################################################
    ###TFtdcCHAR14Type是一个十四字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR14Type[15];

    #########################################################################
    ###TFtdcCHAR16Type是一个十六字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR16Type[17];

    #########################################################################
    ###TFtdcCHAR19Type是一个十九字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR19Type[20];

    #########################################################################
    ###TFtdcCHAR20Type是一个二十字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR20Type[21];

    #########################################################################
    ###TFtdcCHAR21Type是一个二十一字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR21Type[22];

    #########################################################################
    ###TFtdcCHAR23Type是一个二十三字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR23Type[24];

    #########################################################################
    ###TFtdcCHAR30Type是一个三十字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR30Type[31];

    #########################################################################
    ###TFtdcCHAR32Type是一个三十二字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR32Type[33];

    #########################################################################
    ###TFtdcCHAR50Type是一个五十字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR50Type[51];

    #########################################################################
    ###TFtdcCHAR64Type是一个六十四字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR64Type[65];

    #########################################################################
    ###TFtdcCHAR65Type是一个六十五字节CHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcCHAR65Type[66];

    #########################################################################
    ###TFtdcVCHAR4Type是一个四字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR4Type[5];

    #########################################################################
    ###TFtdcVCHAR6Type是一个六字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR6Type[7];

    #########################################################################
    ###TFtdcVCHAR8Type是一个八字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR8Type[9];

    #########################################################################
    ###TFtdcVCHAR10Type是一个十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR10Type[11];

    #########################################################################
    ###TFtdcVCHAR12Type是一个十二字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR12Type[13];

    #########################################################################
    ###TFtdcVCHAR16Type是一个十六字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR16Type[17];

    #########################################################################
    ###TFtdcVCHAR20Type是一个二十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR20Type[21];

    #########################################################################
    ###TFtdcVCHAR30Type是一个三十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR30Type[31];

    #########################################################################
    ###TFtdcVCHAR50Type是一个五十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR50Type[51];

    #########################################################################
    ###TFtdcVCHAR60Type是一个六十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR60Type[61];

    #########################################################################
    ###TFtdcVCHAR65Type是一个六十五字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR65Type[66];

    #########################################################################
    ###TFtdcVCHAR80Type是一个八十字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR80Type[81];

    #########################################################################
    ###TFtdcVCHAR84Type是一个八十四字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR84Type[85];

    #########################################################################
    ###TFtdcVCHAR255Type是一个二五五字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR255Type[256];

    #########################################################################
    ###TFtdcVCHAR1024Type是一个一零二四字节VCHAR类型
    #########################################################################
    ctypedef char TSecurityFtdcVCHAR1024Type[1025];

    #########################################################################
    ###TFtdcREAL8P3Type是一个八点三实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL8P3Type;

    #########################################################################
    ###TFtdcREAL9P3Type是一个九点三实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL9P3Type;

    #########################################################################
    ###TFtdcREAL9P6Type是一个九点六实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL9P6Type;

    #########################################################################
    ###TFtdcREAL10P4Type是一个十点四实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL10P4Type;

    #########################################################################
    ###TFtdcREAL16P2Type是一个十六点二实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL16P2Type;

    #########################################################################
    ###TFtdcREAL16P8Type是一个十六点八实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL16P8Type;

    #########################################################################
    ###TFtdcREAL22P2Type是一个二十二点二实型类型
    #########################################################################
    ctypedef double TSecurityFtdcREAL22P2Type;

    #########################################################################
    ###TFtdcCommandNoType是一个DB命令序号类型
    #########################################################################
    ctypedef int TSecurityFtdcCommandNoType;

    #########################################################################
    ###TFtdcCommandTypeType是一个DB命令类型类型
    #########################################################################
    ctypedef char TSecurityFtdcCommandTypeType[65];

    #########################################################################
    ###TFtdcSettlementGroupIDType是一个结算组代码类型
    #########################################################################
    ctypedef char TSecurityFtdcSettlementGroupIDType[9];

    #########################################################################
    ###TFtdcFieldNameType是一个字段名类型
    #########################################################################
    ctypedef char TSecurityFtdcFieldNameType[2049];

    #########################################################################
    ###TFtdcFieldContentType是一个字段内容类型
    #########################################################################
    ctypedef char TSecurityFtdcFieldContentType[2049];

    #########################################################################
    ###TFtdcBankIDType是一个银行代码类型
    #########################################################################
    ctypedef char TSecurityFtdcBankIDType[4];

    #########################################################################
    ###TFtdcBankNameType是一个银行名称类型
    #########################################################################
    ctypedef char TSecurityFtdcBankNameType[101];

    #########################################################################
    ###TFtdcBankBrchIDType是一个银行分中心代码类型
    #########################################################################
    ctypedef char TSecurityFtdcBankBrchIDType[5];

    #########################################################################
    ###TFtdcLiberSerialType是一个Liber系统流水号类型
    #########################################################################
    ctypedef int TSecurityFtdcLiberSerialType;

    #########################################################################
    ###TFtdcRoleIDType是一个角色编号类型
    #########################################################################
    ctypedef char TSecurityFtdcRoleIDType[11];

    #########################################################################
    ###TFtdcRoleNameType是一个角色名称类型
    #########################################################################
    ctypedef char TSecurityFtdcRoleNameType[41];

    #########################################################################
    ###TFtdcDescriptionType是一个描述类型
    #########################################################################
    ctypedef char TSecurityFtdcDescriptionType[401];

    #########################################################################
    ###TFtdcFunctionIDType是一个功能代码类型
    #########################################################################
    ctypedef char TSecurityFtdcFunctionIDType[25];

    #########################################################################
    ###TFtdcBillNoType是一个票据号类型
    #########################################################################
    ctypedef char TSecurityFtdcBillNoType[15];

    #########################################################################
    ###TFtdcFundIOTypeType是一个出入金类型类型
    #########################################################################
    ###出入金
    #define SECURITY_FTDC_FIOT_FundIO '1'
    ###银期转帐
    #define SECURITY_FTDC_FIOT_Transfer '2'

    ctypedef char TSecurityFtdcFundIOTypeType;

    #########################################################################
    ###TFtdcFundTypeType是一个资金类型类型
    #########################################################################
    ###银行存款
    #define SECURITY_FTDC_FT_Deposite '1'
    ###分项资金
    #define SECURITY_FTDC_FT_ItemFund '2'
    ###公司调整
    #define SECURITY_FTDC_FT_Company '3'

    ctypedef char TSecurityFtdcFundTypeType;

    #########################################################################
    ###TFtdcFundDirectionType是一个出入金方向类型
    #########################################################################
    ###入金
    #define SECURITY_FTDC_FD_In '1'
    ###出金
    #define SECURITY_FTDC_FD_Out '2'

    ctypedef char TSecurityFtdcFundDirectionType;

    #########################################################################
    ###TFtdcBankFlagType是一个银行统一标识类型类型
    #########################################################################
    ###工商银行
    #define SECURITY_FTDC_BF_ICBC '1'
    ###农业银行
    #define SECURITY_FTDC_BF_ABC '2'
    ###中国银行
    #define SECURITY_FTDC_BF_BC '3'
    ###建设银行
    #define SECURITY_FTDC_BF_CBC '4'
    ###交通银行
    #define SECURITY_FTDC_BF_BOC '5'
    ###其他银行
    #define SECURITY_FTDC_BF_Other 'Z'

    ctypedef char TSecurityFtdcBankFlagType;

    #########################################################################
    ###TFtdcOperationMemoType是一个操作摘要类型
    #########################################################################
    ctypedef char TSecurityFtdcOperationMemoType[1025];

    #########################################################################
    ###TFtdcFundStatusType是一个资金状态类型
    #########################################################################
    ###已录入
    #define SECURITY_FTDC_FS_Record '1'
    ###已复核
    #define SECURITY_FTDC_FS_Check '2'
    ###已冲销
    #define SECURITY_FTDC_FS_Charge '3'

    ctypedef char TSecurityFtdcFundStatusType;

    #########################################################################
    ###TFtdcFundProjectIDType是一个资金项目编号类型
    #########################################################################
    ctypedef char TSecurityFtdcFundProjectIDType[5];

    #########################################################################
    ###TFtdcOperatorIDType是一个操作员代码类型
    #########################################################################
    ctypedef char TSecurityFtdcOperatorIDType[65];

    #########################################################################
    ###TFtdcCounterIDType是一个计数器代码类型
    #########################################################################
    ctypedef char TSecurityFtdcCounterIDType[33];

    #########################################################################
    ###TFtdcFunctionNameType是一个功能名称类型
    #########################################################################
    ctypedef char TSecurityFtdcFunctionNameType[65];

    #########################################################################
    ###TFtdcTradeCodeType是一个交易代码类型
    #########################################################################
    ctypedef char TSecurityFtdcTradeCodeType[7];

    #########################################################################
    ###TFtdcBrokerBranchIDType是一个经纪公司分支机构代码类型
    #########################################################################
    ctypedef char TSecurityFtdcBrokerBranchIDType[31];

    #########################################################################
    ###TFtdcTradeDateType是一个交易日期类型
    #########################################################################
    ctypedef char TSecurityFtdcTradeDateType[9];

    #########################################################################
    ###TFtdcTradeTimeType是一个交易时间类型
    #########################################################################
    ctypedef char TSecurityFtdcTradeTimeType[9];

    #########################################################################
    ###TFtdcBankSerialType是一个银行流水号类型
    #########################################################################
    ctypedef char TSecurityFtdcBankSerialType[13];

    #########################################################################
    ###TFtdcSerialType是一个流水号类型
    #########################################################################
    ctypedef int TSecurityFtdcSerialType;

    #########################################################################
    ###TFtdcLastFragmentType是一个最后分片标志类型
    #########################################################################
    ###是最后分片
    #define SECURITY_FTDC_LF_Yes '0'
    ###不是最后分片
    #define SECURITY_FTDC_LF_No '1'

    ctypedef char TSecurityFtdcLastFragmentType;

    #########################################################################
    ###TFtdcIndividualNameType是一个个人姓名类型
    #########################################################################
    ctypedef char TSecurityFtdcIndividualNameType[51];

    #########################################################################
    ###TFtdcCustTypeType是一个客户类型类型
    #########################################################################
    ###自然人
    #define SECURITY_FTDC_CUSTT_Person '0'
    ###机构户
    #define SECURITY_FTDC_CUSTT_Institution '1'

    ctypedef char TSecurityFtdcCustTypeType;

    #########################################################################
    ###TFtdcBankAccountType是一个银行账户类型
    #########################################################################
    ctypedef char TSecurityFtdcBankAccountType[41];

    #########################################################################
    ###TFtdcYesNoIndicatorType是一个是或否标识类型
    #########################################################################
    ###是
    #define SECURITY_FTDC_YNI_Yes '0'
    ###否
    #define SECURITY_FTDC_YNI_No '1'

    ctypedef char TSecurityFtdcYesNoIndicatorType;

    #########################################################################
    ###TFtdcTradeAmountType是一个交易金额（元）类型
    #########################################################################
    ctypedef double TSecurityFtdcTradeAmountType;

    #########################################################################
    ###TFtdcCustFeeType是一个应收客户费用（元）类型
    #########################################################################
    ctypedef double TSecurityFtdcCustFeeType;

    #########################################################################
    ###TFtdcBrokerFeeType是一个应收经纪公司费用（元）类型
    #########################################################################
    ctypedef double TSecurityFtdcBrokerFeeType;

    #########################################################################
    ###TFtdcFeePayFlagType是一个费用支付标志类型
    #########################################################################
    ###由受益方支付费用
    #define SECURITY_FTDC_FPF_BEN '0'
    ###由发送方支付费用
    #define SECURITY_FTDC_FPF_OUR '1'
    ###由发送方支付发起的费用，受益方支付接受的费用
    #define SECURITY_FTDC_FPF_SHA '2'

    ctypedef char TSecurityFtdcFeePayFlagType;

    #########################################################################
    ###TFtdcAddInfoType是一个附加信息类型
    #########################################################################
    ctypedef char TSecurityFtdcAddInfoType[129];

    #########################################################################
    ###TFtdcDigestType是一个摘要类型
    #########################################################################
    ctypedef char TSecurityFtdcDigestType[36];

    #########################################################################
    ###TFtdcBankAccTypeType是一个银行帐号类型类型
    #########################################################################
    ###银行存折
    #define SECURITY_FTDC_BAT_BankBook '1'
    ###储蓄卡
    #define SECURITY_FTDC_BAT_SavingCard '2'
    ###信用卡
    #define SECURITY_FTDC_BAT_CreditCard '3'

    ctypedef char TSecurityFtdcBankAccTypeType;

    #########################################################################
    ###TFtdcDeviceIDType是一个渠道标志类型
    #########################################################################
    ctypedef char TSecurityFtdcDeviceIDType[3];

    #########################################################################
    ###TFtdcPwdFlagType是一个密码核对标志类型
    #########################################################################
    ###不核对
    #define SECURITY_FTDC_BPWDF_NoCheck '0'
    ###明文核对
    #define SECURITY_FTDC_BPWDF_BlankCheck '1'
    ###密文核对
    #define SECURITY_FTDC_BPWDF_EncryptCheck '2'

    ctypedef char TSecurityFtdcPwdFlagType;

    #########################################################################
    ###TFtdcBankCodingForBrokerType是一个银行对经纪公司的编码类型
    #########################################################################
    ctypedef char TSecurityFtdcBankCodingForBrokerType[33];

    #########################################################################
    ###TFtdcOperNoType是一个交易柜员类型
    #########################################################################
    ctypedef char TSecurityFtdcOperNoType[17];

    #########################################################################
    ###TFtdcTIDType是一个交易ID类型
    #########################################################################
    ctypedef int TSecurityFtdcTIDType;

    #########################################################################
    ###TFtdcTransferStatusType是一个转账交易状态类型
    #########################################################################
    ###正常
    #define SECURITY_FTDC_TRFS_Normal '0'
    ###被冲正
    #define SECURITY_FTDC_TRFS_Repealed '1'

    ctypedef char TSecurityFtdcTransferStatusType;

    #########################################################################
    ###TFtdcPlateSerialType是一个平台流水号类型
    #########################################################################
    ctypedef int TSecurityFtdcPlateSerialType;

    #########################################################################
    ###TFtdcAvailabilityFlagType是一个有效标志类型
    #########################################################################
    ###未确认
    #define SECURITY_FTDC_AVAF_Invalid '0'
    ###有效
    #define SECURITY_FTDC_AVAF_Valid '1'
    ###冲正
    #define SECURITY_FTDC_AVAF_Repeal '2'

    ctypedef char TSecurityFtdcAvailabilityFlagType;

    #########################################################################
    ###TFtdcOperatorCodeType是一个操作员类型
    #########################################################################
    ctypedef char TSecurityFtdcOperatorCodeType[17];

    #########################################################################
    ###TFtdcRepayStockAlgoType是一个买券还券算法类型
    #########################################################################
    ###默认算法
    #define SECURITY_FTDC_RSA_Original '0'
    ###按还券比例计算
    #define SECURITY_FTDC_RSA_Ratio '1'
    ###Min[1,2]
    #define SECURITY_FTDC_RSA_Min '2'

    ctypedef char TSecurityFtdcRepayStockAlgoType;

    #########################################################################
    ###TFtdcTradeSpanType是一个交易时间段类型类型
    #########################################################################
    ###普通业务
    #define SECURITY_FTDC_TS_Common '1'
    ###转账
    #define SECURITY_FTDC_TS_Transfer '2'
    ###港股
    #define SECURITY_FTDC_TS_HK '3'

    ctypedef char TSecurityFtdcTradeSpanType;

    #########################################################################
    ###TFtdcSettleSystemTypeType是一个所属结算系统类型类型
    #########################################################################
    ###顶点系统
    #define SECURITY_FTDC_SST_Aboss '1'
    ###恒生系统
    #define SECURITY_FTDC_SST_HS '2'

    ctypedef char TSecurityFtdcSettleSystemTypeType;

    #########################################################################
    ###TFtdcLogLevelType是一个日志级别类型
    #########################################################################
    ctypedef char TSecurityFtdcLogLevelType[33];

    #########################################################################
    ###TFtdcProcessNameType是一个存储过程名称类型
    #########################################################################
    ctypedef char TSecurityFtdcProcessNameType[257];

    #########################################################################
    ###TFtdcTemplateIDType是一个模板代码类型
    #########################################################################
    ctypedef char TSecurityFtdcTemplateIDType[9];

    #########################################################################
    ###TFtdcTradeIndexType是一个成交序号类型
    #########################################################################
    ctypedef int TSecurityFtdcTradeIndexType;

    #########################################################################
    ###TFtdcSplitMergeStatusType是一个基金当天拆分合并状态类型
    #########################################################################
    ###表示允许拆分和合并
    #define SECURITY_FTDC_SMS_Allow '0'
    ###允许拆分、不允许合并
    #define SECURITY_FTDC_SMS_OnlySplit '1'
    ###不允许拆分、允许合并
    #define SECURITY_FTDC_SMS_OnlyMerge '2'
    ###不允许拆分和合并
    #define SECURITY_FTDC_SMS_Forbidden '3'

    ctypedef char TSecurityFtdcSplitMergeStatusType;

    #########################################################################
    ###TFtdcFundInterTransferTypeType是一个资金内转类型类型
    #########################################################################
    ###转入
    #define SECURITY_FTDC_FITT_TransferIn '0'
    ###转出
    #define SECURITY_FTDC_FITT_TransferOut '1'

    ctypedef char TSecurityFtdcFundInterTransferTypeType;

    #########################################################################
    ###TFtdcInstrumentTypeType是一个合约类型类型
    #########################################################################
    ###普通
    #define SECURITY_FTDC_IT_Normal '0'
    ###看涨期权
    #define SECURITY_FTDC_IT_CallOptions '1'
    ###看跌期权
    #define SECURITY_FTDC_IT_PutOptions '2'
    ###普通(STEP)
    #define SECURITY_FTDC_IT_Normal_STEP '3'
    ###债券分销
    #define SECURITY_FTDC_IT_BondsRation '4'
    ###质押式回购
    #define SECURITY_FTDC_IT_PledgedRep '5'
    ###密码服务
    #define SECURITY_FTDC_IT_Password '6'
    ###普通(DCOM)
    #define SECURITY_FTDC_IT_Normal_DCOM '7'

    ctypedef char TSecurityFtdcInstrumentTypeType;

    #########################################################################
    ###TFtdcInvestorLevelType是一个投资者期权交易等级类型
    #########################################################################
    ###一级
    #define SECURITY_FTDC_IL_Level_1 '0'
    ###二级
    #define SECURITY_FTDC_IL_Level_2 '1'
    ###三级
    #define SECURITY_FTDC_IL_Level_3 '2'

    ctypedef char TSecurityFtdcInvestorLevelType;

    #########################################################################
    ###TFtdcCloseDirectionType是一个平仓方向类型
    #########################################################################
    ###买平仓
    #define SECURITY_FTDC_CD_CloseBuy '!'
    ###卖平仓
    #define SECURITY_FTDC_CD_CloseSell '@'
    ###备兑平仓
    #define SECURITY_FTDC_CD_CloseCover '#'

    ctypedef char TSecurityFtdcCloseDirectionType;

    #########################################################################
    ###TFtdcDelivTypeType是一个交割类型类型
    #########################################################################
    ###看涨期权执行
    #define SECURITY_FTDC_DT_ExecCallOptions '0'
    ###看跌期权执行
    #define SECURITY_FTDC_DT_ExecPutOptions '1'
    ###在途证券
    #define SECURITY_FTDC_DT_UnavailStock '2'
    ###赎回在途资金
    #define SECURITY_FTDC_DT_UnavailRedMoney '3'

    ctypedef char TSecurityFtdcDelivTypeType;

    #########################################################################
    ###TFtdcExpireTypeType是一个到期类型类型
    #########################################################################
    ###正回购到期
    #define SECURITY_FTDC_ET_Repurchase '0'
    ###逆回购到期
    #define SECURITY_FTDC_ET_ReverseRepurch '1'
    ###债券到期
    #define SECURITY_FTDC_ET_Bond '2'

    ctypedef char TSecurityFtdcExpireTypeType;

    #########################################################################
    ###TFtdcFundClassType是一个基金类别类型
    #########################################################################
    ###发行期
    #define SECURITY_FTDC_FC_Subscription '0'
    ###普通型
    #define SECURITY_FTDC_FC_Normal '1'
    ###货币型
    #define SECURITY_FTDC_FC_Monetary '2'
    ###黄金ETF
    #define SECURITY_FTDC_FC_AuETF '3'
    ###跨市场ETF
    #define SECURITY_FTDC_FC_CrossMarket '4'

    ctypedef char TSecurityFtdcFundClassType;

    #########################################################################
    ###TFtdcTradingPhaseType是一个交易阶段类型
    #########################################################################
    ###非交易时段
    #define SECURITY_FTDC_TP_NonTrade '0'
    ###集合竞价时段
    #define SECURITY_FTDC_TP_Bidding '1'
    ###连续交易时段
    #define SECURITY_FTDC_TP_Continuous '2'
    ###停牌时段
    #define SECURITY_FTDC_TP_Suspension '3'
    ###波动性熔断时段
    #define SECURITY_FTDC_TP_Fuse '4'
    ###可恢复熔断时段
    #define SECURITY_FTDC_TP_RecovFuse '5'
    ###不可恢复熔断时段
    #define SECURITY_FTDC_TP_UnrecovFuse '6'
    ###集合竞价结束时段
    #define SECURITY_FTDC_TP_BiddingOver '7'
    ###临时停牌时段
    #define SECURITY_FTDC_TP_TempSuspension '8'
    ###市调机制时段
    #define SECURITY_FTDC_TP_VCM '9'

    ctypedef char TSecurityFtdcTradingPhaseType;

    #########################################################################
    ###TFtdcOpenRestrictionType是一个开仓限制类型
    #########################################################################
    ###无开仓限制
    #define SECURITY_FTDC_OR_None '0'
    ###限制备兑开仓
    #define SECURITY_FTDC_OR_NoCoverOpen '1'
    ###限制卖出开仓
    #define SECURITY_FTDC_OR_NoSellOpen '2'
    ###限制卖出开仓、备兑开仓
    #define SECURITY_FTDC_OR_NoSellAndCoverOpen '3'
    ###限制买入开仓
    #define SECURITY_FTDC_OR_NoBuyOpen '4'
    ###限制买入开仓、备兑开仓
    #define SECURITY_FTDC_OR_NoBuyAndCoverOpen '5'
    ###限制买入开仓、卖出开仓
    #define SECURITY_FTDC_OR_NoBuyAndSellOpen '6'
    ###限制买入开仓、卖出开仓、备兑开仓
    #define SECURITY_FTDC_OR_NoBuySellAndCoverOpen '7'

    ctypedef char TSecurityFtdcOpenRestrictionType;

    #########################################################################
    ###TFtdcOfferTypeType是一个报盘类型类型
    #########################################################################
    ###普通报盘
    #define SECURITY_FTDC_OT_Normal '0'
    ###期权报盘
    #define SECURITY_FTDC_OT_Options '1'
    ###非交易报盘
    #define SECURITY_FTDC_OT_NonTrade '2'

    ctypedef char TSecurityFtdcOfferTypeType;

    #########################################################################
    ###TFtdcAdjustStatusType是一个调整状态类型
    #########################################################################
    ###已录入
    #define SECURITY_FTDC_AS_Record '1'
    ###已复核
    #define SECURITY_FTDC_AS_Check '2'

    ctypedef char TSecurityFtdcAdjustStatusType;

    #########################################################################
    ###TFtdcTermTradeTargetType是一个终端交易标的类型
    #########################################################################
    ###无限制
    #define SECURITY_FTDC_TTT_None '0'
    ###仅期权交易
    #define SECURITY_FTDC_TTT_OnlyOptions '1'

    ctypedef char TSecurityFtdcTermTradeTargetType;

    #########################################################################
    ###TFtdcPlatformIDType是一个平台编号类型
    #########################################################################
    ###现货集中竞价交易平台
    #define SECURITY_FTDC_PI_Spot '1'
    ###综合金融服务平台
    #define SECURITY_FTDC_PI_CompFinancial '2'
    ###非交易处理平台
    #define SECURITY_FTDC_PI_NonTrade '3'
    ###衍生品集中竞价交易平台
    #define SECURITY_FTDC_PI_Derivative '4'

    ctypedef char TSecurityFtdcPlatformIDType;

    #########################################################################
    ###TFtdcPlatformStateType是一个平台状态类型
    #########################################################################
    ###未开放
    #define SECURITY_FTDC_PS_PreOpen '0'
    ###即将开放
    #define SECURITY_FTDC_PS_OpenUpComing '1'
    ###开放
    #define SECURITY_FTDC_PS_Open '2'
    ###暂停开放
    #define SECURITY_FTDC_PS_Halt  '3'
    ###关闭
    #define SECURITY_FTDC_PS_Close  '4'

    ctypedef char TSecurityFtdcPlatformStateType;
