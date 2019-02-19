{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.ShoppingContent.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.ShoppingContent.Types.Product where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types.Sum

--
-- /See:/ 'ordersAcknowledgeRequest' smart constructor.
newtype OrdersAcknowledgeRequest =
  OrdersAcknowledgeRequest'
    { _oarOperationId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarOperationId'
ordersAcknowledgeRequest
    :: OrdersAcknowledgeRequest
ordersAcknowledgeRequest = OrdersAcknowledgeRequest' {_oarOperationId = Nothing}

-- | The ID of the operation. Unique across all operations for a given order.
oarOperationId :: Lens' OrdersAcknowledgeRequest (Maybe Text)
oarOperationId
  = lens _oarOperationId
      (\ s a -> s{_oarOperationId = a})

instance FromJSON OrdersAcknowledgeRequest where
        parseJSON
          = withObject "OrdersAcknowledgeRequest"
              (\ o ->
                 OrdersAcknowledgeRequest' <$> (o .:? "operationId"))

instance ToJSON OrdersAcknowledgeRequest where
        toJSON OrdersAcknowledgeRequest'{..}
          = object
              (catMaybes [("operationId" .=) <$> _oarOperationId])

-- | The tax settings of a merchant account. All methods require the admin
-- role.
--
-- /See:/ 'accountTax' smart constructor.
data AccountTax =
  AccountTax'
    { _atRules     :: !(Maybe [AccountTaxTaxRule])
    , _atKind      :: !Text
    , _atAccountId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountTax' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atRules'
--
-- * 'atKind'
--
-- * 'atAccountId'
accountTax
    :: AccountTax
accountTax =
  AccountTax'
    {_atRules = Nothing, _atKind = "content#accountTax", _atAccountId = Nothing}

-- | Tax rules. Updating the tax rules will enable US taxes (not reversible).
-- Defining no rules is equivalent to not charging tax at all.
atRules :: Lens' AccountTax [AccountTaxTaxRule]
atRules
  = lens _atRules (\ s a -> s{_atRules = a}) . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountTax\".
atKind :: Lens' AccountTax Text
atKind = lens _atKind (\ s a -> s{_atKind = a})

-- | The ID of the account to which these account tax settings belong.
atAccountId :: Lens' AccountTax (Maybe Word64)
atAccountId
  = lens _atAccountId (\ s a -> s{_atAccountId = a}) .
      mapping _Coerce

instance FromJSON AccountTax where
        parseJSON
          = withObject "AccountTax"
              (\ o ->
                 AccountTax' <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "kind" .!= "content#accountTax")
                     <*> (o .:? "accountId"))

instance ToJSON AccountTax where
        toJSON AccountTax'{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _atRules, Just ("kind" .= _atKind),
                  ("accountId" .=) <$> _atAccountId])

--
-- /See:/ 'orderinvoicesCreateRefundInvoiceResponse' smart constructor.
data OrderinvoicesCreateRefundInvoiceResponse =
  OrderinvoicesCreateRefundInvoiceResponse'
    { _ocrirKind            :: !Text
    , _ocrirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrirKind'
--
-- * 'ocrirExecutionStatus'
orderinvoicesCreateRefundInvoiceResponse
    :: OrderinvoicesCreateRefundInvoiceResponse
orderinvoicesCreateRefundInvoiceResponse =
  OrderinvoicesCreateRefundInvoiceResponse'
    { _ocrirKind = "content#orderinvoicesCreateRefundInvoiceResponse"
    , _ocrirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderinvoicesCreateRefundInvoiceResponse\".
ocrirKind :: Lens' OrderinvoicesCreateRefundInvoiceResponse Text
ocrirKind
  = lens _ocrirKind (\ s a -> s{_ocrirKind = a})

-- | The status of the execution.
ocrirExecutionStatus :: Lens' OrderinvoicesCreateRefundInvoiceResponse (Maybe Text)
ocrirExecutionStatus
  = lens _ocrirExecutionStatus
      (\ s a -> s{_ocrirExecutionStatus = a})

instance FromJSON
           OrderinvoicesCreateRefundInvoiceResponse
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateRefundInvoiceResponse"
              (\ o ->
                 OrderinvoicesCreateRefundInvoiceResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderinvoicesCreateRefundInvoiceResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON
           OrderinvoicesCreateRefundInvoiceResponse
         where
        toJSON OrderinvoicesCreateRefundInvoiceResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ocrirKind),
                  ("executionStatus" .=) <$> _ocrirExecutionStatus])

--
-- /See:/ 'ordersUpdateMerchantOrderIdRequest' smart constructor.
data OrdersUpdateMerchantOrderIdRequest =
  OrdersUpdateMerchantOrderIdRequest'
    { _oumoirMerchantOrderId :: !(Maybe Text)
    , _oumoirOperationId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirMerchantOrderId'
--
-- * 'oumoirOperationId'
ordersUpdateMerchantOrderIdRequest
    :: OrdersUpdateMerchantOrderIdRequest
ordersUpdateMerchantOrderIdRequest =
  OrdersUpdateMerchantOrderIdRequest'
    {_oumoirMerchantOrderId = Nothing, _oumoirOperationId = Nothing}

-- | The merchant order id to be assigned to the order. Must be unique per
-- merchant.
oumoirMerchantOrderId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirMerchantOrderId
  = lens _oumoirMerchantOrderId
      (\ s a -> s{_oumoirMerchantOrderId = a})

-- | The ID of the operation. Unique across all operations for a given order.
oumoirOperationId :: Lens' OrdersUpdateMerchantOrderIdRequest (Maybe Text)
oumoirOperationId
  = lens _oumoirOperationId
      (\ s a -> s{_oumoirOperationId = a})

instance FromJSON OrdersUpdateMerchantOrderIdRequest
         where
        parseJSON
          = withObject "OrdersUpdateMerchantOrderIdRequest"
              (\ o ->
                 OrdersUpdateMerchantOrderIdRequest' <$>
                   (o .:? "merchantOrderId") <*> (o .:? "operationId"))

instance ToJSON OrdersUpdateMerchantOrderIdRequest
         where
        toJSON OrdersUpdateMerchantOrderIdRequest'{..}
          = object
              (catMaybes
                 [("merchantOrderId" .=) <$> _oumoirMerchantOrderId,
                  ("operationId" .=) <$> _oumoirOperationId])

--
-- /See:/ 'orderReportTransaction' smart constructor.
data OrderReportTransaction =
  OrderReportTransaction'
    { _ortMerchantId               :: !(Maybe (Textual Word64))
    , _ortDisbursementId           :: !(Maybe Text)
    , _ortDisbursementCreationDate :: !(Maybe Text)
    , _ortTransactionDate          :: !(Maybe Text)
    , _ortDisbursementDate         :: !(Maybe Text)
    , _ortMerchantOrderId          :: !(Maybe Text)
    , _ortProductAmount            :: !(Maybe Amount)
    , _ortOrderId                  :: !(Maybe Text)
    , _ortDisbursementAmount       :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderReportTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ortMerchantId'
--
-- * 'ortDisbursementId'
--
-- * 'ortDisbursementCreationDate'
--
-- * 'ortTransactionDate'
--
-- * 'ortDisbursementDate'
--
-- * 'ortMerchantOrderId'
--
-- * 'ortProductAmount'
--
-- * 'ortOrderId'
--
-- * 'ortDisbursementAmount'
orderReportTransaction
    :: OrderReportTransaction
orderReportTransaction =
  OrderReportTransaction'
    { _ortMerchantId = Nothing
    , _ortDisbursementId = Nothing
    , _ortDisbursementCreationDate = Nothing
    , _ortTransactionDate = Nothing
    , _ortDisbursementDate = Nothing
    , _ortMerchantOrderId = Nothing
    , _ortProductAmount = Nothing
    , _ortOrderId = Nothing
    , _ortDisbursementAmount = Nothing
    }

-- | The ID of the managing account.
ortMerchantId :: Lens' OrderReportTransaction (Maybe Word64)
ortMerchantId
  = lens _ortMerchantId
      (\ s a -> s{_ortMerchantId = a})
      . mapping _Coerce

-- | The ID of the disbursement.
ortDisbursementId :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementId
  = lens _ortDisbursementId
      (\ s a -> s{_ortDisbursementId = a})

-- | The date the disbursement was created, in ISO 8601 format.
ortDisbursementCreationDate :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementCreationDate
  = lens _ortDisbursementCreationDate
      (\ s a -> s{_ortDisbursementCreationDate = a})

-- | The date of the transaction, in ISO 8601 format.
ortTransactionDate :: Lens' OrderReportTransaction (Maybe Text)
ortTransactionDate
  = lens _ortTransactionDate
      (\ s a -> s{_ortTransactionDate = a})

-- | The date the disbursement was initiated, in ISO 8601 format.
ortDisbursementDate :: Lens' OrderReportTransaction (Maybe Text)
ortDisbursementDate
  = lens _ortDisbursementDate
      (\ s a -> s{_ortDisbursementDate = a})

-- | Merchant-provided id of the order.
ortMerchantOrderId :: Lens' OrderReportTransaction (Maybe Text)
ortMerchantOrderId
  = lens _ortMerchantOrderId
      (\ s a -> s{_ortMerchantOrderId = a})

-- | Total amount for the items.
ortProductAmount :: Lens' OrderReportTransaction (Maybe Amount)
ortProductAmount
  = lens _ortProductAmount
      (\ s a -> s{_ortProductAmount = a})

-- | The id of the order.
ortOrderId :: Lens' OrderReportTransaction (Maybe Text)
ortOrderId
  = lens _ortOrderId (\ s a -> s{_ortOrderId = a})

-- | The disbursement amount.
ortDisbursementAmount :: Lens' OrderReportTransaction (Maybe Price)
ortDisbursementAmount
  = lens _ortDisbursementAmount
      (\ s a -> s{_ortDisbursementAmount = a})

instance FromJSON OrderReportTransaction where
        parseJSON
          = withObject "OrderReportTransaction"
              (\ o ->
                 OrderReportTransaction' <$>
                   (o .:? "merchantId") <*> (o .:? "disbursementId") <*>
                     (o .:? "disbursementCreationDate")
                     <*> (o .:? "transactionDate")
                     <*> (o .:? "disbursementDate")
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "productAmount")
                     <*> (o .:? "orderId")
                     <*> (o .:? "disbursementAmount"))

instance ToJSON OrderReportTransaction where
        toJSON OrderReportTransaction'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _ortMerchantId,
                  ("disbursementId" .=) <$> _ortDisbursementId,
                  ("disbursementCreationDate" .=) <$>
                    _ortDisbursementCreationDate,
                  ("transactionDate" .=) <$> _ortTransactionDate,
                  ("disbursementDate" .=) <$> _ortDisbursementDate,
                  ("merchantOrderId" .=) <$> _ortMerchantOrderId,
                  ("productAmount" .=) <$> _ortProductAmount,
                  ("orderId" .=) <$> _ortOrderId,
                  ("disbursementAmount" .=) <$>
                    _ortDisbursementAmount])

--
-- /See:/ 'ordersAdvanceTestOrderResponse' smart constructor.
newtype OrdersAdvanceTestOrderResponse =
  OrdersAdvanceTestOrderResponse'
    { _oatorKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersAdvanceTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oatorKind'
ordersAdvanceTestOrderResponse
    :: OrdersAdvanceTestOrderResponse
ordersAdvanceTestOrderResponse =
  OrdersAdvanceTestOrderResponse'
    {_oatorKind = "content#ordersAdvanceTestOrderResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAdvanceTestOrderResponse\".
oatorKind :: Lens' OrdersAdvanceTestOrderResponse Text
oatorKind
  = lens _oatorKind (\ s a -> s{_oatorKind = a})

instance FromJSON OrdersAdvanceTestOrderResponse
         where
        parseJSON
          = withObject "OrdersAdvanceTestOrderResponse"
              (\ o ->
                 OrdersAdvanceTestOrderResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersAdvanceTestOrderResponse"))

instance ToJSON OrdersAdvanceTestOrderResponse where
        toJSON OrdersAdvanceTestOrderResponse'{..}
          = object (catMaybes [Just ("kind" .= _oatorKind)])

--
-- /See:/ 'productsCustomBatchResponse' smart constructor.
data ProductsCustomBatchResponse =
  ProductsCustomBatchResponse'
    { _pcbrEntries :: !(Maybe [ProductsCustomBatchResponseEntry])
    , _pcbrKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrEntries'
--
-- * 'pcbrKind'
productsCustomBatchResponse
    :: ProductsCustomBatchResponse
productsCustomBatchResponse =
  ProductsCustomBatchResponse'
    {_pcbrEntries = Nothing, _pcbrKind = "content#productsCustomBatchResponse"}

-- | The result of the execution of the batch requests.
pcbrEntries :: Lens' ProductsCustomBatchResponse [ProductsCustomBatchResponseEntry]
pcbrEntries
  = lens _pcbrEntries (\ s a -> s{_pcbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsCustomBatchResponse\".
pcbrKind :: Lens' ProductsCustomBatchResponse Text
pcbrKind = lens _pcbrKind (\ s a -> s{_pcbrKind = a})

instance FromJSON ProductsCustomBatchResponse where
        parseJSON
          = withObject "ProductsCustomBatchResponse"
              (\ o ->
                 ProductsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#productsCustomBatchResponse"))

instance ToJSON ProductsCustomBatchResponse where
        toJSON ProductsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _pcbrEntries,
                  Just ("kind" .= _pcbrKind)])

--
-- /See:/ 'orderMerchantProvidedAnnotation' smart constructor.
data OrderMerchantProvidedAnnotation =
  OrderMerchantProvidedAnnotation'
    { _ompaValue :: !(Maybe Text)
    , _ompaKey   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderMerchantProvidedAnnotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ompaValue'
--
-- * 'ompaKey'
orderMerchantProvidedAnnotation
    :: OrderMerchantProvidedAnnotation
orderMerchantProvidedAnnotation =
  OrderMerchantProvidedAnnotation' {_ompaValue = Nothing, _ompaKey = Nothing}

-- | Value for additional merchant provided (as key-value pairs) annotation
-- about the line item.
ompaValue :: Lens' OrderMerchantProvidedAnnotation (Maybe Text)
ompaValue
  = lens _ompaValue (\ s a -> s{_ompaValue = a})

-- | Key for additional merchant provided (as key-value pairs) annotation
-- about the line item.
ompaKey :: Lens' OrderMerchantProvidedAnnotation (Maybe Text)
ompaKey = lens _ompaKey (\ s a -> s{_ompaKey = a})

instance FromJSON OrderMerchantProvidedAnnotation
         where
        parseJSON
          = withObject "OrderMerchantProvidedAnnotation"
              (\ o ->
                 OrderMerchantProvidedAnnotation' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON OrderMerchantProvidedAnnotation where
        toJSON OrderMerchantProvidedAnnotation'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _ompaValue,
                  ("key" .=) <$> _ompaKey])

--
-- /See:/ 'testOrderCustomer' smart constructor.
data TestOrderCustomer =
  TestOrderCustomer'
    { _tocFullName            :: !(Maybe Text)
    , _tocEmail               :: !(Maybe Text)
    , _tocMarketingRightsInfo :: !(Maybe TestOrderCustomerMarketingRightsInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestOrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocFullName'
--
-- * 'tocEmail'
--
-- * 'tocMarketingRightsInfo'
testOrderCustomer
    :: TestOrderCustomer
testOrderCustomer =
  TestOrderCustomer'
    { _tocFullName = Nothing
    , _tocEmail = Nothing
    , _tocMarketingRightsInfo = Nothing
    }

-- | Full name of the customer.
tocFullName :: Lens' TestOrderCustomer (Maybe Text)
tocFullName
  = lens _tocFullName (\ s a -> s{_tocFullName = a})

-- | Deprecated.
tocEmail :: Lens' TestOrderCustomer (Maybe Text)
tocEmail = lens _tocEmail (\ s a -> s{_tocEmail = a})

-- | Customer\'s marketing preferences.
tocMarketingRightsInfo :: Lens' TestOrderCustomer (Maybe TestOrderCustomerMarketingRightsInfo)
tocMarketingRightsInfo
  = lens _tocMarketingRightsInfo
      (\ s a -> s{_tocMarketingRightsInfo = a})

instance FromJSON TestOrderCustomer where
        parseJSON
          = withObject "TestOrderCustomer"
              (\ o ->
                 TestOrderCustomer' <$>
                   (o .:? "fullName") <*> (o .:? "email") <*>
                     (o .:? "marketingRightsInfo"))

instance ToJSON TestOrderCustomer where
        toJSON TestOrderCustomer'{..}
          = object
              (catMaybes
                 [("fullName" .=) <$> _tocFullName,
                  ("email" .=) <$> _tocEmail,
                  ("marketingRightsInfo" .=) <$>
                    _tocMarketingRightsInfo])

--
-- /See:/ 'datafeedstatusesCustomBatchResponse' smart constructor.
data DatafeedstatusesCustomBatchResponse =
  DatafeedstatusesCustomBatchResponse'
    { _dcbrEntries :: !(Maybe [DatafeedstatusesCustomBatchResponseEntry])
    , _dcbrKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrEntries'
--
-- * 'dcbrKind'
datafeedstatusesCustomBatchResponse
    :: DatafeedstatusesCustomBatchResponse
datafeedstatusesCustomBatchResponse =
  DatafeedstatusesCustomBatchResponse'
    { _dcbrEntries = Nothing
    , _dcbrKind = "content#datafeedstatusesCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
dcbrEntries :: Lens' DatafeedstatusesCustomBatchResponse [DatafeedstatusesCustomBatchResponseEntry]
dcbrEntries
  = lens _dcbrEntries (\ s a -> s{_dcbrEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedstatusesCustomBatchResponse\".
dcbrKind :: Lens' DatafeedstatusesCustomBatchResponse Text
dcbrKind = lens _dcbrKind (\ s a -> s{_dcbrKind = a})

instance FromJSON DatafeedstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "DatafeedstatusesCustomBatchResponse"
              (\ o ->
                 DatafeedstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#datafeedstatusesCustomBatchResponse"))

instance ToJSON DatafeedstatusesCustomBatchResponse
         where
        toJSON DatafeedstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _dcbrEntries,
                  Just ("kind" .= _dcbrKind)])

--
-- /See:/ 'orderReturn' smart constructor.
data OrderReturn =
  OrderReturn'
    { _orQuantity     :: !(Maybe (Textual Word32))
    , _orActor        :: !(Maybe Text)
    , _orReason       :: !(Maybe Text)
    , _orCreationDate :: !(Maybe Text)
    , _orReasonText   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orQuantity'
--
-- * 'orActor'
--
-- * 'orReason'
--
-- * 'orCreationDate'
--
-- * 'orReasonText'
orderReturn
    :: OrderReturn
orderReturn =
  OrderReturn'
    { _orQuantity = Nothing
    , _orActor = Nothing
    , _orReason = Nothing
    , _orCreationDate = Nothing
    , _orReasonText = Nothing
    }

-- | Quantity that is returned.
orQuantity :: Lens' OrderReturn (Maybe Word32)
orQuantity
  = lens _orQuantity (\ s a -> s{_orQuantity = a}) .
      mapping _Coerce

-- | The actor that created the refund.
orActor :: Lens' OrderReturn (Maybe Text)
orActor = lens _orActor (\ s a -> s{_orActor = a})

-- | The reason for the return.
orReason :: Lens' OrderReturn (Maybe Text)
orReason = lens _orReason (\ s a -> s{_orReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
orCreationDate :: Lens' OrderReturn (Maybe Text)
orCreationDate
  = lens _orCreationDate
      (\ s a -> s{_orCreationDate = a})

-- | The explanation of the reason.
orReasonText :: Lens' OrderReturn (Maybe Text)
orReasonText
  = lens _orReasonText (\ s a -> s{_orReasonText = a})

instance FromJSON OrderReturn where
        parseJSON
          = withObject "OrderReturn"
              (\ o ->
                 OrderReturn' <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderReturn where
        toJSON OrderReturn'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orQuantity,
                  ("actor" .=) <$> _orActor,
                  ("reason" .=) <$> _orReason,
                  ("creationDate" .=) <$> _orCreationDate,
                  ("reasonText" .=) <$> _orReasonText])

-- | A batch entry encoding a single non-batch accounttax response.
--
-- /See:/ 'accounttaxCustomBatchResponseEntry' smart constructor.
data AccounttaxCustomBatchResponseEntry =
  AccounttaxCustomBatchResponseEntry'
    { _acbreAccountTax :: !(Maybe AccountTax)
    , _acbreKind       :: !Text
    , _acbreErrors     :: !(Maybe Errors)
    , _acbreBatchId    :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbreAccountTax'
--
-- * 'acbreKind'
--
-- * 'acbreErrors'
--
-- * 'acbreBatchId'
accounttaxCustomBatchResponseEntry
    :: AccounttaxCustomBatchResponseEntry
accounttaxCustomBatchResponseEntry =
  AccounttaxCustomBatchResponseEntry'
    { _acbreAccountTax = Nothing
    , _acbreKind = "content#accounttaxCustomBatchResponseEntry"
    , _acbreErrors = Nothing
    , _acbreBatchId = Nothing
    }

-- | The retrieved or updated account tax settings.
acbreAccountTax :: Lens' AccounttaxCustomBatchResponseEntry (Maybe AccountTax)
acbreAccountTax
  = lens _acbreAccountTax
      (\ s a -> s{_acbreAccountTax = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxCustomBatchResponseEntry\".
acbreKind :: Lens' AccounttaxCustomBatchResponseEntry Text
acbreKind
  = lens _acbreKind (\ s a -> s{_acbreKind = a})

-- | A list of errors defined if and only if the request failed.
acbreErrors :: Lens' AccounttaxCustomBatchResponseEntry (Maybe Errors)
acbreErrors
  = lens _acbreErrors (\ s a -> s{_acbreErrors = a})

-- | The ID of the request entry this entry responds to.
acbreBatchId :: Lens' AccounttaxCustomBatchResponseEntry (Maybe Word32)
acbreBatchId
  = lens _acbreBatchId (\ s a -> s{_acbreBatchId = a})
      . mapping _Coerce

instance FromJSON AccounttaxCustomBatchResponseEntry
         where
        parseJSON
          = withObject "AccounttaxCustomBatchResponseEntry"
              (\ o ->
                 AccounttaxCustomBatchResponseEntry' <$>
                   (o .:? "accountTax") <*>
                     (o .:? "kind" .!=
                        "content#accounttaxCustomBatchResponseEntry")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchResponseEntry
         where
        toJSON AccounttaxCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _acbreAccountTax,
                  Just ("kind" .= _acbreKind),
                  ("errors" .=) <$> _acbreErrors,
                  ("batchId" .=) <$> _acbreBatchId])

--
-- /See:/ 'posSaleResponse' smart constructor.
data PosSaleResponse =
  PosSaleResponse'
    { _psrStoreCode       :: !(Maybe Text)
    , _psrKind            :: !Text
    , _psrItemId          :: !(Maybe Text)
    , _psrQuantity        :: !(Maybe (Textual Int64))
    , _psrTargetCountry   :: !(Maybe Text)
    , _psrGtin            :: !(Maybe Text)
    , _psrPrice           :: !(Maybe Price)
    , _psrContentLanguage :: !(Maybe Text)
    , _psrTimestamp       :: !(Maybe Text)
    , _psrSaleId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosSaleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrStoreCode'
--
-- * 'psrKind'
--
-- * 'psrItemId'
--
-- * 'psrQuantity'
--
-- * 'psrTargetCountry'
--
-- * 'psrGtin'
--
-- * 'psrPrice'
--
-- * 'psrContentLanguage'
--
-- * 'psrTimestamp'
--
-- * 'psrSaleId'
posSaleResponse
    :: PosSaleResponse
posSaleResponse =
  PosSaleResponse'
    { _psrStoreCode = Nothing
    , _psrKind = "content#posSaleResponse"
    , _psrItemId = Nothing
    , _psrQuantity = Nothing
    , _psrTargetCountry = Nothing
    , _psrGtin = Nothing
    , _psrPrice = Nothing
    , _psrContentLanguage = Nothing
    , _psrTimestamp = Nothing
    , _psrSaleId = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
psrStoreCode :: Lens' PosSaleResponse (Maybe Text)
psrStoreCode
  = lens _psrStoreCode (\ s a -> s{_psrStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posSaleResponse\".
psrKind :: Lens' PosSaleResponse Text
psrKind = lens _psrKind (\ s a -> s{_psrKind = a})

-- | A unique identifier for the item.
psrItemId :: Lens' PosSaleResponse (Maybe Text)
psrItemId
  = lens _psrItemId (\ s a -> s{_psrItemId = a})

-- | The relative change of the available quantity. Negative for items
-- returned.
psrQuantity :: Lens' PosSaleResponse (Maybe Int64)
psrQuantity
  = lens _psrQuantity (\ s a -> s{_psrQuantity = a}) .
      mapping _Coerce

-- | The CLDR territory code for the item.
psrTargetCountry :: Lens' PosSaleResponse (Maybe Text)
psrTargetCountry
  = lens _psrTargetCountry
      (\ s a -> s{_psrTargetCountry = a})

-- | Global Trade Item Number.
psrGtin :: Lens' PosSaleResponse (Maybe Text)
psrGtin = lens _psrGtin (\ s a -> s{_psrGtin = a})

-- | The price of the item.
psrPrice :: Lens' PosSaleResponse (Maybe Price)
psrPrice = lens _psrPrice (\ s a -> s{_psrPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
psrContentLanguage :: Lens' PosSaleResponse (Maybe Text)
psrContentLanguage
  = lens _psrContentLanguage
      (\ s a -> s{_psrContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
psrTimestamp :: Lens' PosSaleResponse (Maybe Text)
psrTimestamp
  = lens _psrTimestamp (\ s a -> s{_psrTimestamp = a})

-- | A unique ID to group items from the same sale event.
psrSaleId :: Lens' PosSaleResponse (Maybe Text)
psrSaleId
  = lens _psrSaleId (\ s a -> s{_psrSaleId = a})

instance FromJSON PosSaleResponse where
        parseJSON
          = withObject "PosSaleResponse"
              (\ o ->
                 PosSaleResponse' <$>
                   (o .:? "storeCode") <*>
                     (o .:? "kind" .!= "content#posSaleResponse")
                     <*> (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSaleResponse where
        toJSON PosSaleResponse'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psrStoreCode,
                  Just ("kind" .= _psrKind),
                  ("itemId" .=) <$> _psrItemId,
                  ("quantity" .=) <$> _psrQuantity,
                  ("targetCountry" .=) <$> _psrTargetCountry,
                  ("gtin" .=) <$> _psrGtin, ("price" .=) <$> _psrPrice,
                  ("contentLanguage" .=) <$> _psrContentLanguage,
                  ("timestamp" .=) <$> _psrTimestamp,
                  ("saleId" .=) <$> _psrSaleId])

--
-- /See:/ 'amount' smart constructor.
data Amount =
  Amount'
    { _aPretax :: !(Maybe Price)
    , _aTax    :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Amount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aPretax'
--
-- * 'aTax'
amount
    :: Amount
amount = Amount' {_aPretax = Nothing, _aTax = Nothing}

-- | [required] Value before taxes.
aPretax :: Lens' Amount (Maybe Price)
aPretax = lens _aPretax (\ s a -> s{_aPretax = a})

-- | [required] Tax value.
aTax :: Lens' Amount (Maybe Price)
aTax = lens _aTax (\ s a -> s{_aTax = a})

instance FromJSON Amount where
        parseJSON
          = withObject "Amount"
              (\ o ->
                 Amount' <$> (o .:? "pretax") <*> (o .:? "tax"))

instance ToJSON Amount where
        toJSON Amount'{..}
          = object
              (catMaybes
                 [("pretax" .=) <$> _aPretax, ("tax" .=) <$> _aTax])

--
-- /See:/ 'accountsAuthInfoResponse' smart constructor.
data AccountsAuthInfoResponse =
  AccountsAuthInfoResponse'
    { _aairKind               :: !Text
    , _aairAccountIdentifiers :: !(Maybe [AccountIdentifier])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsAuthInfoResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aairKind'
--
-- * 'aairAccountIdentifiers'
accountsAuthInfoResponse
    :: AccountsAuthInfoResponse
accountsAuthInfoResponse =
  AccountsAuthInfoResponse'
    { _aairKind = "content#accountsAuthInfoResponse"
    , _aairAccountIdentifiers = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsAuthInfoResponse\".
aairKind :: Lens' AccountsAuthInfoResponse Text
aairKind = lens _aairKind (\ s a -> s{_aairKind = a})

-- | The account identifiers corresponding to the authenticated user. - For
-- an individual account: only the merchant ID is defined - For an
-- aggregator: only the aggregator ID is defined - For a subaccount of an
-- MCA: both the merchant ID and the aggregator ID are defined.
aairAccountIdentifiers :: Lens' AccountsAuthInfoResponse [AccountIdentifier]
aairAccountIdentifiers
  = lens _aairAccountIdentifiers
      (\ s a -> s{_aairAccountIdentifiers = a})
      . _Default
      . _Coerce

instance FromJSON AccountsAuthInfoResponse where
        parseJSON
          = withObject "AccountsAuthInfoResponse"
              (\ o ->
                 AccountsAuthInfoResponse' <$>
                   (o .:? "kind" .!= "content#accountsAuthInfoResponse")
                     <*> (o .:? "accountIdentifiers" .!= mempty))

instance ToJSON AccountsAuthInfoResponse where
        toJSON AccountsAuthInfoResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aairKind),
                  ("accountIdentifiers" .=) <$>
                    _aairAccountIdentifiers])

-- | Order disbursement. All methods require the payment analyst role.
--
-- /See:/ 'orderReportDisbursement' smart constructor.
data OrderReportDisbursement =
  OrderReportDisbursement'
    { _ordMerchantId               :: !(Maybe (Textual Word64))
    , _ordDisbursementId           :: !(Maybe Text)
    , _ordDisbursementCreationDate :: !(Maybe Text)
    , _ordDisbursementDate         :: !(Maybe Text)
    , _ordDisbursementAmount       :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderReportDisbursement' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordMerchantId'
--
-- * 'ordDisbursementId'
--
-- * 'ordDisbursementCreationDate'
--
-- * 'ordDisbursementDate'
--
-- * 'ordDisbursementAmount'
orderReportDisbursement
    :: OrderReportDisbursement
orderReportDisbursement =
  OrderReportDisbursement'
    { _ordMerchantId = Nothing
    , _ordDisbursementId = Nothing
    , _ordDisbursementCreationDate = Nothing
    , _ordDisbursementDate = Nothing
    , _ordDisbursementAmount = Nothing
    }

-- | The ID of the managing account.
ordMerchantId :: Lens' OrderReportDisbursement (Maybe Word64)
ordMerchantId
  = lens _ordMerchantId
      (\ s a -> s{_ordMerchantId = a})
      . mapping _Coerce

-- | The ID of the disbursement.
ordDisbursementId :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementId
  = lens _ordDisbursementId
      (\ s a -> s{_ordDisbursementId = a})

-- | The disbursement date, in ISO 8601 format.
ordDisbursementCreationDate :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementCreationDate
  = lens _ordDisbursementCreationDate
      (\ s a -> s{_ordDisbursementCreationDate = a})

-- | The date the disbursement was initiated, in ISO 8601 format.
ordDisbursementDate :: Lens' OrderReportDisbursement (Maybe Text)
ordDisbursementDate
  = lens _ordDisbursementDate
      (\ s a -> s{_ordDisbursementDate = a})

-- | The disbursement amount.
ordDisbursementAmount :: Lens' OrderReportDisbursement (Maybe Price)
ordDisbursementAmount
  = lens _ordDisbursementAmount
      (\ s a -> s{_ordDisbursementAmount = a})

instance FromJSON OrderReportDisbursement where
        parseJSON
          = withObject "OrderReportDisbursement"
              (\ o ->
                 OrderReportDisbursement' <$>
                   (o .:? "merchantId") <*> (o .:? "disbursementId") <*>
                     (o .:? "disbursementCreationDate")
                     <*> (o .:? "disbursementDate")
                     <*> (o .:? "disbursementAmount"))

instance ToJSON OrderReportDisbursement where
        toJSON OrderReportDisbursement'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _ordMerchantId,
                  ("disbursementId" .=) <$> _ordDisbursementId,
                  ("disbursementCreationDate" .=) <$>
                    _ordDisbursementCreationDate,
                  ("disbursementDate" .=) <$> _ordDisbursementDate,
                  ("disbursementAmount" .=) <$>
                    _ordDisbursementAmount])

--
-- /See:/ 'unitInvoice' smart constructor.
data UnitInvoice =
  UnitInvoice'
    { _uiUnitPriceTaxes    :: !(Maybe [UnitInvoiceTaxLine])
    , _uiPromotions        :: !(Maybe [Promotion])
    , _uiAdditionalCharges :: !(Maybe [UnitInvoiceAdditionalCharge])
    , _uiUnitPricePretax   :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnitInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiUnitPriceTaxes'
--
-- * 'uiPromotions'
--
-- * 'uiAdditionalCharges'
--
-- * 'uiUnitPricePretax'
unitInvoice
    :: UnitInvoice
unitInvoice =
  UnitInvoice'
    { _uiUnitPriceTaxes = Nothing
    , _uiPromotions = Nothing
    , _uiAdditionalCharges = Nothing
    , _uiUnitPricePretax = Nothing
    }

-- | Tax amounts to apply to the unit price.
uiUnitPriceTaxes :: Lens' UnitInvoice [UnitInvoiceTaxLine]
uiUnitPriceTaxes
  = lens _uiUnitPriceTaxes
      (\ s a -> s{_uiUnitPriceTaxes = a})
      . _Default
      . _Coerce

-- | Promotions applied to a unit.
uiPromotions :: Lens' UnitInvoice [Promotion]
uiPromotions
  = lens _uiPromotions (\ s a -> s{_uiPromotions = a})
      . _Default
      . _Coerce

-- | Additional charges for a unit, e.g. shipping costs.
uiAdditionalCharges :: Lens' UnitInvoice [UnitInvoiceAdditionalCharge]
uiAdditionalCharges
  = lens _uiAdditionalCharges
      (\ s a -> s{_uiAdditionalCharges = a})
      . _Default
      . _Coerce

-- | [required] Price of the unit, before applying taxes.
uiUnitPricePretax :: Lens' UnitInvoice (Maybe Price)
uiUnitPricePretax
  = lens _uiUnitPricePretax
      (\ s a -> s{_uiUnitPricePretax = a})

instance FromJSON UnitInvoice where
        parseJSON
          = withObject "UnitInvoice"
              (\ o ->
                 UnitInvoice' <$>
                   (o .:? "unitPriceTaxes" .!= mempty) <*>
                     (o .:? "promotions" .!= mempty)
                     <*> (o .:? "additionalCharges" .!= mempty)
                     <*> (o .:? "unitPricePretax"))

instance ToJSON UnitInvoice where
        toJSON UnitInvoice'{..}
          = object
              (catMaybes
                 [("unitPriceTaxes" .=) <$> _uiUnitPriceTaxes,
                  ("promotions" .=) <$> _uiPromotions,
                  ("additionalCharges" .=) <$> _uiAdditionalCharges,
                  ("unitPricePretax" .=) <$> _uiUnitPricePretax])

-- | The change of the available quantity of an item at the given store.
--
-- /See:/ 'posSale' smart constructor.
data PosSale =
  PosSale'
    { _psStoreCode       :: !(Maybe Text)
    , _psKind            :: !Text
    , _psItemId          :: !(Maybe Text)
    , _psQuantity        :: !(Maybe (Textual Int64))
    , _psTargetCountry   :: !(Maybe Text)
    , _psGtin            :: !(Maybe Text)
    , _psPrice           :: !(Maybe Price)
    , _psContentLanguage :: !(Maybe Text)
    , _psTimestamp       :: !(Maybe Text)
    , _psSaleId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosSale' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psStoreCode'
--
-- * 'psKind'
--
-- * 'psItemId'
--
-- * 'psQuantity'
--
-- * 'psTargetCountry'
--
-- * 'psGtin'
--
-- * 'psPrice'
--
-- * 'psContentLanguage'
--
-- * 'psTimestamp'
--
-- * 'psSaleId'
posSale
    :: PosSale
posSale =
  PosSale'
    { _psStoreCode = Nothing
    , _psKind = "content#posSale"
    , _psItemId = Nothing
    , _psQuantity = Nothing
    , _psTargetCountry = Nothing
    , _psGtin = Nothing
    , _psPrice = Nothing
    , _psContentLanguage = Nothing
    , _psTimestamp = Nothing
    , _psSaleId = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
psStoreCode :: Lens' PosSale (Maybe Text)
psStoreCode
  = lens _psStoreCode (\ s a -> s{_psStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posSale\".
psKind :: Lens' PosSale Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | A unique identifier for the item.
psItemId :: Lens' PosSale (Maybe Text)
psItemId = lens _psItemId (\ s a -> s{_psItemId = a})

-- | The relative change of the available quantity. Negative for items
-- returned.
psQuantity :: Lens' PosSale (Maybe Int64)
psQuantity
  = lens _psQuantity (\ s a -> s{_psQuantity = a}) .
      mapping _Coerce

-- | The CLDR territory code for the item.
psTargetCountry :: Lens' PosSale (Maybe Text)
psTargetCountry
  = lens _psTargetCountry
      (\ s a -> s{_psTargetCountry = a})

-- | Global Trade Item Number.
psGtin :: Lens' PosSale (Maybe Text)
psGtin = lens _psGtin (\ s a -> s{_psGtin = a})

-- | The price of the item.
psPrice :: Lens' PosSale (Maybe Price)
psPrice = lens _psPrice (\ s a -> s{_psPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
psContentLanguage :: Lens' PosSale (Maybe Text)
psContentLanguage
  = lens _psContentLanguage
      (\ s a -> s{_psContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
psTimestamp :: Lens' PosSale (Maybe Text)
psTimestamp
  = lens _psTimestamp (\ s a -> s{_psTimestamp = a})

-- | A unique ID to group items from the same sale event.
psSaleId :: Lens' PosSale (Maybe Text)
psSaleId = lens _psSaleId (\ s a -> s{_psSaleId = a})

instance FromJSON PosSale where
        parseJSON
          = withObject "PosSale"
              (\ o ->
                 PosSale' <$>
                   (o .:? "storeCode") <*>
                     (o .:? "kind" .!= "content#posSale")
                     <*> (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSale where
        toJSON PosSale'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psStoreCode,
                  Just ("kind" .= _psKind),
                  ("itemId" .=) <$> _psItemId,
                  ("quantity" .=) <$> _psQuantity,
                  ("targetCountry" .=) <$> _psTargetCountry,
                  ("gtin" .=) <$> _psGtin, ("price" .=) <$> _psPrice,
                  ("contentLanguage" .=) <$> _psContentLanguage,
                  ("timestamp" .=) <$> _psTimestamp,
                  ("saleId" .=) <$> _psSaleId])

--
-- /See:/ 'accountStatusItemLevelIssue' smart constructor.
data AccountStatusItemLevelIssue =
  AccountStatusItemLevelIssue'
    { _asiliNumItems      :: !(Maybe (Textual Int64))
    , _asiliResolution    :: !(Maybe Text)
    , _asiliDocumentation :: !(Maybe Text)
    , _asiliCode          :: !(Maybe Text)
    , _asiliServability   :: !(Maybe Text)
    , _asiliAttributeName :: !(Maybe Text)
    , _asiliDescription   :: !(Maybe Text)
    , _asiliDetail        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountStatusItemLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asiliNumItems'
--
-- * 'asiliResolution'
--
-- * 'asiliDocumentation'
--
-- * 'asiliCode'
--
-- * 'asiliServability'
--
-- * 'asiliAttributeName'
--
-- * 'asiliDescription'
--
-- * 'asiliDetail'
accountStatusItemLevelIssue
    :: AccountStatusItemLevelIssue
accountStatusItemLevelIssue =
  AccountStatusItemLevelIssue'
    { _asiliNumItems = Nothing
    , _asiliResolution = Nothing
    , _asiliDocumentation = Nothing
    , _asiliCode = Nothing
    , _asiliServability = Nothing
    , _asiliAttributeName = Nothing
    , _asiliDescription = Nothing
    , _asiliDetail = Nothing
    }

-- | Number of items with this issue.
asiliNumItems :: Lens' AccountStatusItemLevelIssue (Maybe Int64)
asiliNumItems
  = lens _asiliNumItems
      (\ s a -> s{_asiliNumItems = a})
      . mapping _Coerce

-- | Whether the issue can be resolved by the merchant.
asiliResolution :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliResolution
  = lens _asiliResolution
      (\ s a -> s{_asiliResolution = a})

-- | The URL of a web page to help with resolving this issue.
asiliDocumentation :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDocumentation
  = lens _asiliDocumentation
      (\ s a -> s{_asiliDocumentation = a})

-- | The error code of the issue.
asiliCode :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliCode
  = lens _asiliCode (\ s a -> s{_asiliCode = a})

-- | How this issue affects serving of the offer.
asiliServability :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliServability
  = lens _asiliServability
      (\ s a -> s{_asiliServability = a})

-- | The attribute\'s name, if the issue is caused by a single attribute.
asiliAttributeName :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliAttributeName
  = lens _asiliAttributeName
      (\ s a -> s{_asiliAttributeName = a})

-- | A short issue description in English.
asiliDescription :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDescription
  = lens _asiliDescription
      (\ s a -> s{_asiliDescription = a})

-- | A detailed issue description in English.
asiliDetail :: Lens' AccountStatusItemLevelIssue (Maybe Text)
asiliDetail
  = lens _asiliDetail (\ s a -> s{_asiliDetail = a})

instance FromJSON AccountStatusItemLevelIssue where
        parseJSON
          = withObject "AccountStatusItemLevelIssue"
              (\ o ->
                 AccountStatusItemLevelIssue' <$>
                   (o .:? "numItems") <*> (o .:? "resolution") <*>
                     (o .:? "documentation")
                     <*> (o .:? "code")
                     <*> (o .:? "servability")
                     <*> (o .:? "attributeName")
                     <*> (o .:? "description")
                     <*> (o .:? "detail"))

instance ToJSON AccountStatusItemLevelIssue where
        toJSON AccountStatusItemLevelIssue'{..}
          = object
              (catMaybes
                 [("numItems" .=) <$> _asiliNumItems,
                  ("resolution" .=) <$> _asiliResolution,
                  ("documentation" .=) <$> _asiliDocumentation,
                  ("code" .=) <$> _asiliCode,
                  ("servability" .=) <$> _asiliServability,
                  ("attributeName" .=) <$> _asiliAttributeName,
                  ("description" .=) <$> _asiliDescription,
                  ("detail" .=) <$> _asiliDetail])

--
-- /See:/ 'liaSettingsRequestGmbAccessResponse' smart constructor.
newtype LiaSettingsRequestGmbAccessResponse =
  LiaSettingsRequestGmbAccessResponse'
    { _lsrgarKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsRequestGmbAccessResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrgarKind'
liaSettingsRequestGmbAccessResponse
    :: LiaSettingsRequestGmbAccessResponse
liaSettingsRequestGmbAccessResponse =
  LiaSettingsRequestGmbAccessResponse'
    {_lsrgarKind = "content#liasettingsRequestGmbAccessResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsRequestGmbAccessResponse\".
lsrgarKind :: Lens' LiaSettingsRequestGmbAccessResponse Text
lsrgarKind
  = lens _lsrgarKind (\ s a -> s{_lsrgarKind = a})

instance FromJSON LiaSettingsRequestGmbAccessResponse
         where
        parseJSON
          = withObject "LiaSettingsRequestGmbAccessResponse"
              (\ o ->
                 LiaSettingsRequestGmbAccessResponse' <$>
                   (o .:? "kind" .!=
                      "content#liasettingsRequestGmbAccessResponse"))

instance ToJSON LiaSettingsRequestGmbAccessResponse
         where
        toJSON LiaSettingsRequestGmbAccessResponse'{..}
          = object (catMaybes [Just ("kind" .= _lsrgarKind)])

--
-- /See:/ 'productStatusDestinationStatus' smart constructor.
data ProductStatusDestinationStatus =
  ProductStatusDestinationStatus'
    { _psdsDestination :: !(Maybe Text)
    , _psdsStatus      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductStatusDestinationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdsDestination'
--
-- * 'psdsStatus'
productStatusDestinationStatus
    :: ProductStatusDestinationStatus
productStatusDestinationStatus =
  ProductStatusDestinationStatus'
    {_psdsDestination = Nothing, _psdsStatus = Nothing}

-- | The name of the destination
psdsDestination :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsDestination
  = lens _psdsDestination
      (\ s a -> s{_psdsDestination = a})

psdsStatus :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsStatus
  = lens _psdsStatus (\ s a -> s{_psdsStatus = a})

instance FromJSON ProductStatusDestinationStatus
         where
        parseJSON
          = withObject "ProductStatusDestinationStatus"
              (\ o ->
                 ProductStatusDestinationStatus' <$>
                   (o .:? "destination") <*> (o .:? "status"))

instance ToJSON ProductStatusDestinationStatus where
        toJSON ProductStatusDestinationStatus'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _psdsDestination,
                  ("status" .=) <$> _psdsStatus])

-- | Tax calculation rule to apply in a state or province (USA only).
--
-- /See:/ 'accountTaxTaxRule' smart constructor.
data AccountTaxTaxRule =
  AccountTaxTaxRule'
    { _attrUseGlobalRate :: !(Maybe Bool)
    , _attrCountry       :: !(Maybe Text)
    , _attrShippingTaxed :: !(Maybe Bool)
    , _attrLocationId    :: !(Maybe (Textual Word64))
    , _attrRatePercent   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountTaxTaxRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'attrUseGlobalRate'
--
-- * 'attrCountry'
--
-- * 'attrShippingTaxed'
--
-- * 'attrLocationId'
--
-- * 'attrRatePercent'
accountTaxTaxRule
    :: AccountTaxTaxRule
accountTaxTaxRule =
  AccountTaxTaxRule'
    { _attrUseGlobalRate = Nothing
    , _attrCountry = Nothing
    , _attrShippingTaxed = Nothing
    , _attrLocationId = Nothing
    , _attrRatePercent = Nothing
    }

-- | Whether the tax rate is taken from a global tax table or specified
-- explicitly.
attrUseGlobalRate :: Lens' AccountTaxTaxRule (Maybe Bool)
attrUseGlobalRate
  = lens _attrUseGlobalRate
      (\ s a -> s{_attrUseGlobalRate = a})

-- | Country code in which tax is applicable.
attrCountry :: Lens' AccountTaxTaxRule (Maybe Text)
attrCountry
  = lens _attrCountry (\ s a -> s{_attrCountry = a})

-- | If true, shipping charges are also taxed.
attrShippingTaxed :: Lens' AccountTaxTaxRule (Maybe Bool)
attrShippingTaxed
  = lens _attrShippingTaxed
      (\ s a -> s{_attrShippingTaxed = a})

-- | State (or province) is which the tax is applicable, described by its
-- location id (also called criteria id).
attrLocationId :: Lens' AccountTaxTaxRule (Maybe Word64)
attrLocationId
  = lens _attrLocationId
      (\ s a -> s{_attrLocationId = a})
      . mapping _Coerce

-- | Explicit tax rate in percent, represented as a floating point number
-- without the percentage character. Must not be negative.
attrRatePercent :: Lens' AccountTaxTaxRule (Maybe Text)
attrRatePercent
  = lens _attrRatePercent
      (\ s a -> s{_attrRatePercent = a})

instance FromJSON AccountTaxTaxRule where
        parseJSON
          = withObject "AccountTaxTaxRule"
              (\ o ->
                 AccountTaxTaxRule' <$>
                   (o .:? "useGlobalRate") <*> (o .:? "country") <*>
                     (o .:? "shippingTaxed")
                     <*> (o .:? "locationId")
                     <*> (o .:? "ratePercent"))

instance ToJSON AccountTaxTaxRule where
        toJSON AccountTaxTaxRule'{..}
          = object
              (catMaybes
                 [("useGlobalRate" .=) <$> _attrUseGlobalRate,
                  ("country" .=) <$> _attrCountry,
                  ("shippingTaxed" .=) <$> _attrShippingTaxed,
                  ("locationId" .=) <$> _attrLocationId,
                  ("ratePercent" .=) <$> _attrRatePercent])

--
-- /See:/ 'postalCodeGroup' smart constructor.
data PostalCodeGroup =
  PostalCodeGroup'
    { _pcgCountry          :: !(Maybe Text)
    , _pcgPostalCodeRanges :: !(Maybe [PostalCodeRange])
    , _pcgName             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PostalCodeGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgCountry'
--
-- * 'pcgPostalCodeRanges'
--
-- * 'pcgName'
postalCodeGroup
    :: PostalCodeGroup
postalCodeGroup =
  PostalCodeGroup'
    {_pcgCountry = Nothing, _pcgPostalCodeRanges = Nothing, _pcgName = Nothing}

-- | The CLDR territory code of the country the postal code group applies to.
-- Required.
pcgCountry :: Lens' PostalCodeGroup (Maybe Text)
pcgCountry
  = lens _pcgCountry (\ s a -> s{_pcgCountry = a})

-- | A range of postal codes. Required.
pcgPostalCodeRanges :: Lens' PostalCodeGroup [PostalCodeRange]
pcgPostalCodeRanges
  = lens _pcgPostalCodeRanges
      (\ s a -> s{_pcgPostalCodeRanges = a})
      . _Default
      . _Coerce

-- | The name of the postal code group, referred to in headers. Required.
pcgName :: Lens' PostalCodeGroup (Maybe Text)
pcgName = lens _pcgName (\ s a -> s{_pcgName = a})

instance FromJSON PostalCodeGroup where
        parseJSON
          = withObject "PostalCodeGroup"
              (\ o ->
                 PostalCodeGroup' <$>
                   (o .:? "country") <*>
                     (o .:? "postalCodeRanges" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON PostalCodeGroup where
        toJSON PostalCodeGroup'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _pcgCountry,
                  ("postalCodeRanges" .=) <$> _pcgPostalCodeRanges,
                  ("name" .=) <$> _pcgName])

--
-- /See:/ 'datafeedsCustomBatchRequest' smart constructor.
newtype DatafeedsCustomBatchRequest =
  DatafeedsCustomBatchRequest'
    { _dEntries :: Maybe [DatafeedsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEntries'
datafeedsCustomBatchRequest
    :: DatafeedsCustomBatchRequest
datafeedsCustomBatchRequest = DatafeedsCustomBatchRequest' {_dEntries = Nothing}

-- | The request entries to be processed in the batch.
dEntries :: Lens' DatafeedsCustomBatchRequest [DatafeedsCustomBatchRequestEntry]
dEntries
  = lens _dEntries (\ s a -> s{_dEntries = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedsCustomBatchRequest where
        parseJSON
          = withObject "DatafeedsCustomBatchRequest"
              (\ o ->
                 DatafeedsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedsCustomBatchRequest where
        toJSON DatafeedsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _dEntries])

--
-- /See:/ 'orderpaymentsNotifyChargeRequest' smart constructor.
data OrderpaymentsNotifyChargeRequest =
  OrderpaymentsNotifyChargeRequest'
    { _oncrInvoiceIds  :: !(Maybe [Text])
    , _oncrChargeState :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyChargeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oncrInvoiceIds'
--
-- * 'oncrChargeState'
orderpaymentsNotifyChargeRequest
    :: OrderpaymentsNotifyChargeRequest
orderpaymentsNotifyChargeRequest =
  OrderpaymentsNotifyChargeRequest'
    {_oncrInvoiceIds = Nothing, _oncrChargeState = Nothing}

-- | Invoice IDs from the orderinvoices service that correspond to the
-- charge.
oncrInvoiceIds :: Lens' OrderpaymentsNotifyChargeRequest [Text]
oncrInvoiceIds
  = lens _oncrInvoiceIds
      (\ s a -> s{_oncrInvoiceIds = a})
      . _Default
      . _Coerce

-- | Whether charge was successful.
oncrChargeState :: Lens' OrderpaymentsNotifyChargeRequest (Maybe Text)
oncrChargeState
  = lens _oncrChargeState
      (\ s a -> s{_oncrChargeState = a})

instance FromJSON OrderpaymentsNotifyChargeRequest
         where
        parseJSON
          = withObject "OrderpaymentsNotifyChargeRequest"
              (\ o ->
                 OrderpaymentsNotifyChargeRequest' <$>
                   (o .:? "invoiceIds" .!= mempty) <*>
                     (o .:? "chargeState"))

instance ToJSON OrderpaymentsNotifyChargeRequest
         where
        toJSON OrderpaymentsNotifyChargeRequest'{..}
          = object
              (catMaybes
                 [("invoiceIds" .=) <$> _oncrInvoiceIds,
                  ("chargeState" .=) <$> _oncrChargeState])

--
-- /See:/ 'ordersCancelTestOrderByCustomerResponse' smart constructor.
newtype OrdersCancelTestOrderByCustomerResponse =
  OrdersCancelTestOrderByCustomerResponse'
    { _octobcrKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelTestOrderByCustomerResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octobcrKind'
ordersCancelTestOrderByCustomerResponse
    :: OrdersCancelTestOrderByCustomerResponse
ordersCancelTestOrderByCustomerResponse =
  OrdersCancelTestOrderByCustomerResponse'
    {_octobcrKind = "content#ordersCancelTestOrderByCustomerResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelTestOrderByCustomerResponse\".
octobcrKind :: Lens' OrdersCancelTestOrderByCustomerResponse Text
octobcrKind
  = lens _octobcrKind (\ s a -> s{_octobcrKind = a})

instance FromJSON
           OrdersCancelTestOrderByCustomerResponse
         where
        parseJSON
          = withObject
              "OrdersCancelTestOrderByCustomerResponse"
              (\ o ->
                 OrdersCancelTestOrderByCustomerResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersCancelTestOrderByCustomerResponse"))

instance ToJSON
           OrdersCancelTestOrderByCustomerResponse
         where
        toJSON OrdersCancelTestOrderByCustomerResponse'{..}
          = object (catMaybes [Just ("kind" .= _octobcrKind)])

--
-- /See:/ 'liaOnDisplayToOrderSettings' smart constructor.
data LiaOnDisplayToOrderSettings =
  LiaOnDisplayToOrderSettings'
    { _lodtosStatus                :: !(Maybe Text)
    , _lodtosShippingCostPolicyURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaOnDisplayToOrderSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lodtosStatus'
--
-- * 'lodtosShippingCostPolicyURL'
liaOnDisplayToOrderSettings
    :: LiaOnDisplayToOrderSettings
liaOnDisplayToOrderSettings =
  LiaOnDisplayToOrderSettings'
    {_lodtosStatus = Nothing, _lodtosShippingCostPolicyURL = Nothing}

-- | The status of the ?On display to order? feature.
lodtosStatus :: Lens' LiaOnDisplayToOrderSettings (Maybe Text)
lodtosStatus
  = lens _lodtosStatus (\ s a -> s{_lodtosStatus = a})

-- | Shipping cost and policy URL.
lodtosShippingCostPolicyURL :: Lens' LiaOnDisplayToOrderSettings (Maybe Text)
lodtosShippingCostPolicyURL
  = lens _lodtosShippingCostPolicyURL
      (\ s a -> s{_lodtosShippingCostPolicyURL = a})

instance FromJSON LiaOnDisplayToOrderSettings where
        parseJSON
          = withObject "LiaOnDisplayToOrderSettings"
              (\ o ->
                 LiaOnDisplayToOrderSettings' <$>
                   (o .:? "status") <*> (o .:? "shippingCostPolicyUrl"))

instance ToJSON LiaOnDisplayToOrderSettings where
        toJSON LiaOnDisplayToOrderSettings'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lodtosStatus,
                  ("shippingCostPolicyUrl" .=) <$>
                    _lodtosShippingCostPolicyURL])

--
-- /See:/ 'orderpaymentsNotifyAuthDeclinedResponse' smart constructor.
data OrderpaymentsNotifyAuthDeclinedResponse =
  OrderpaymentsNotifyAuthDeclinedResponse'
    { _onadrKind            :: !Text
    , _onadrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyAuthDeclinedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onadrKind'
--
-- * 'onadrExecutionStatus'
orderpaymentsNotifyAuthDeclinedResponse
    :: OrderpaymentsNotifyAuthDeclinedResponse
orderpaymentsNotifyAuthDeclinedResponse =
  OrderpaymentsNotifyAuthDeclinedResponse'
    { _onadrKind = "content#orderpaymentsNotifyAuthDeclinedResponse"
    , _onadrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderpaymentsNotifyAuthDeclinedResponse\".
onadrKind :: Lens' OrderpaymentsNotifyAuthDeclinedResponse Text
onadrKind
  = lens _onadrKind (\ s a -> s{_onadrKind = a})

-- | The status of the execution.
onadrExecutionStatus :: Lens' OrderpaymentsNotifyAuthDeclinedResponse (Maybe Text)
onadrExecutionStatus
  = lens _onadrExecutionStatus
      (\ s a -> s{_onadrExecutionStatus = a})

instance FromJSON
           OrderpaymentsNotifyAuthDeclinedResponse
         where
        parseJSON
          = withObject
              "OrderpaymentsNotifyAuthDeclinedResponse"
              (\ o ->
                 OrderpaymentsNotifyAuthDeclinedResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderpaymentsNotifyAuthDeclinedResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON
           OrderpaymentsNotifyAuthDeclinedResponse
         where
        toJSON OrderpaymentsNotifyAuthDeclinedResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _onadrKind),
                  ("executionStatus" .=) <$> _onadrExecutionStatus])

--
-- /See:/ 'accountAddress' smart constructor.
data AccountAddress =
  AccountAddress'
    { _aaStreetAddress :: !(Maybe Text)
    , _aaCountry       :: !(Maybe Text)
    , _aaPostalCode    :: !(Maybe Text)
    , _aaLocality      :: !(Maybe Text)
    , _aaRegion        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaStreetAddress'
--
-- * 'aaCountry'
--
-- * 'aaPostalCode'
--
-- * 'aaLocality'
--
-- * 'aaRegion'
accountAddress
    :: AccountAddress
accountAddress =
  AccountAddress'
    { _aaStreetAddress = Nothing
    , _aaCountry = Nothing
    , _aaPostalCode = Nothing
    , _aaLocality = Nothing
    , _aaRegion = Nothing
    }

-- | Street-level part of the address.
aaStreetAddress :: Lens' AccountAddress (Maybe Text)
aaStreetAddress
  = lens _aaStreetAddress
      (\ s a -> s{_aaStreetAddress = a})

-- | CLDR country code (e.g. \"US\").
aaCountry :: Lens' AccountAddress (Maybe Text)
aaCountry
  = lens _aaCountry (\ s a -> s{_aaCountry = a})

-- | Postal code or ZIP (e.g. \"94043\").
aaPostalCode :: Lens' AccountAddress (Maybe Text)
aaPostalCode
  = lens _aaPostalCode (\ s a -> s{_aaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
aaLocality :: Lens' AccountAddress (Maybe Text)
aaLocality
  = lens _aaLocality (\ s a -> s{_aaLocality = a})

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
aaRegion :: Lens' AccountAddress (Maybe Text)
aaRegion = lens _aaRegion (\ s a -> s{_aaRegion = a})

instance FromJSON AccountAddress where
        parseJSON
          = withObject "AccountAddress"
              (\ o ->
                 AccountAddress' <$>
                   (o .:? "streetAddress") <*> (o .:? "country") <*>
                     (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "region"))

instance ToJSON AccountAddress where
        toJSON AccountAddress'{..}
          = object
              (catMaybes
                 [("streetAddress" .=) <$> _aaStreetAddress,
                  ("country" .=) <$> _aaCountry,
                  ("postalCode" .=) <$> _aaPostalCode,
                  ("locality" .=) <$> _aaLocality,
                  ("region" .=) <$> _aaRegion])

--
-- /See:/ 'invoiceSummaryAdditionalChargeSummary' smart constructor.
data InvoiceSummaryAdditionalChargeSummary =
  InvoiceSummaryAdditionalChargeSummary'
    { _isacsTotalAmount :: !(Maybe Amount)
    , _isacsType        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InvoiceSummaryAdditionalChargeSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isacsTotalAmount'
--
-- * 'isacsType'
invoiceSummaryAdditionalChargeSummary
    :: InvoiceSummaryAdditionalChargeSummary
invoiceSummaryAdditionalChargeSummary =
  InvoiceSummaryAdditionalChargeSummary'
    {_isacsTotalAmount = Nothing, _isacsType = Nothing}

-- | [required] Total additional charge for this type.
isacsTotalAmount :: Lens' InvoiceSummaryAdditionalChargeSummary (Maybe Amount)
isacsTotalAmount
  = lens _isacsTotalAmount
      (\ s a -> s{_isacsTotalAmount = a})

-- | [required] Type of the additional charge.
isacsType :: Lens' InvoiceSummaryAdditionalChargeSummary (Maybe Text)
isacsType
  = lens _isacsType (\ s a -> s{_isacsType = a})

instance FromJSON
           InvoiceSummaryAdditionalChargeSummary
         where
        parseJSON
          = withObject "InvoiceSummaryAdditionalChargeSummary"
              (\ o ->
                 InvoiceSummaryAdditionalChargeSummary' <$>
                   (o .:? "totalAmount") <*> (o .:? "type"))

instance ToJSON InvoiceSummaryAdditionalChargeSummary
         where
        toJSON InvoiceSummaryAdditionalChargeSummary'{..}
          = object
              (catMaybes
                 [("totalAmount" .=) <$> _isacsTotalAmount,
                  ("type" .=) <$> _isacsType])

--
-- /See:/ 'refundReason' smart constructor.
data RefundReason =
  RefundReason'
    { _rrReasonCode  :: !(Maybe Text)
    , _rrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RefundReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrReasonCode'
--
-- * 'rrDescription'
refundReason
    :: RefundReason
refundReason = RefundReason' {_rrReasonCode = Nothing, _rrDescription = Nothing}

rrReasonCode :: Lens' RefundReason (Maybe Text)
rrReasonCode
  = lens _rrReasonCode (\ s a -> s{_rrReasonCode = a})

rrDescription :: Lens' RefundReason (Maybe Text)
rrDescription
  = lens _rrDescription
      (\ s a -> s{_rrDescription = a})

instance FromJSON RefundReason where
        parseJSON
          = withObject "RefundReason"
              (\ o ->
                 RefundReason' <$>
                   (o .:? "reasonCode") <*> (o .:? "description"))

instance ToJSON RefundReason where
        toJSON RefundReason'{..}
          = object
              (catMaybes
                 [("reasonCode" .=) <$> _rrReasonCode,
                  ("description" .=) <$> _rrDescription])

--
-- /See:/ 'orderLineItemShippingDetailsMethod' smart constructor.
data OrderLineItemShippingDetailsMethod =
  OrderLineItemShippingDetailsMethod'
    { _olisdmCarrier          :: !(Maybe Text)
    , _olisdmMethodName       :: !(Maybe Text)
    , _olisdmMaxDaysInTransit :: !(Maybe (Textual Word32))
    , _olisdmMinDaysInTransit :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemShippingDetailsMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdmCarrier'
--
-- * 'olisdmMethodName'
--
-- * 'olisdmMaxDaysInTransit'
--
-- * 'olisdmMinDaysInTransit'
orderLineItemShippingDetailsMethod
    :: OrderLineItemShippingDetailsMethod
orderLineItemShippingDetailsMethod =
  OrderLineItemShippingDetailsMethod'
    { _olisdmCarrier = Nothing
    , _olisdmMethodName = Nothing
    , _olisdmMaxDaysInTransit = Nothing
    , _olisdmMinDaysInTransit = Nothing
    }

-- | The carrier for the shipping. Optional. See shipments[].carrier for a
-- list of acceptable values.
olisdmCarrier :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmCarrier
  = lens _olisdmCarrier
      (\ s a -> s{_olisdmCarrier = a})

-- | The name of the shipping method.
olisdmMethodName :: Lens' OrderLineItemShippingDetailsMethod (Maybe Text)
olisdmMethodName
  = lens _olisdmMethodName
      (\ s a -> s{_olisdmMethodName = a})

-- | Maximum transit time.
olisdmMaxDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMaxDaysInTransit
  = lens _olisdmMaxDaysInTransit
      (\ s a -> s{_olisdmMaxDaysInTransit = a})
      . mapping _Coerce

-- | Minimum transit time.
olisdmMinDaysInTransit :: Lens' OrderLineItemShippingDetailsMethod (Maybe Word32)
olisdmMinDaysInTransit
  = lens _olisdmMinDaysInTransit
      (\ s a -> s{_olisdmMinDaysInTransit = a})
      . mapping _Coerce

instance FromJSON OrderLineItemShippingDetailsMethod
         where
        parseJSON
          = withObject "OrderLineItemShippingDetailsMethod"
              (\ o ->
                 OrderLineItemShippingDetailsMethod' <$>
                   (o .:? "carrier") <*> (o .:? "methodName") <*>
                     (o .:? "maxDaysInTransit")
                     <*> (o .:? "minDaysInTransit"))

instance ToJSON OrderLineItemShippingDetailsMethod
         where
        toJSON OrderLineItemShippingDetailsMethod'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _olisdmCarrier,
                  ("methodName" .=) <$> _olisdmMethodName,
                  ("maxDaysInTransit" .=) <$> _olisdmMaxDaysInTransit,
                  ("minDaysInTransit" .=) <$> _olisdmMinDaysInTransit])

-- | Datafeed configuration data.
--
-- /See:/ 'datafeed' smart constructor.
data Datafeed =
  Datafeed'
    { _dKind              :: !Text
    , _dFormat            :: !(Maybe DatafeedFormat)
    , _dAttributeLanguage :: !(Maybe Text)
    , _dFetchSchedule     :: !(Maybe DatafeedFetchSchedule)
    , _dName              :: !(Maybe Text)
    , _dTargets           :: !(Maybe [DatafeedTarget])
    , _dId                :: !(Maybe (Textual Int64))
    , _dContentType       :: !(Maybe Text)
    , _dFileName          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Datafeed' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dKind'
--
-- * 'dFormat'
--
-- * 'dAttributeLanguage'
--
-- * 'dFetchSchedule'
--
-- * 'dName'
--
-- * 'dTargets'
--
-- * 'dId'
--
-- * 'dContentType'
--
-- * 'dFileName'
datafeed
    :: Datafeed
datafeed =
  Datafeed'
    { _dKind = "content#datafeed"
    , _dFormat = Nothing
    , _dAttributeLanguage = Nothing
    , _dFetchSchedule = Nothing
    , _dName = Nothing
    , _dTargets = Nothing
    , _dId = Nothing
    , _dContentType = Nothing
    , _dFileName = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeed\".
dKind :: Lens' Datafeed Text
dKind = lens _dKind (\ s a -> s{_dKind = a})

-- | Format of the feed file.
dFormat :: Lens' Datafeed (Maybe DatafeedFormat)
dFormat = lens _dFormat (\ s a -> s{_dFormat = a})

-- | The two-letter ISO 639-1 language in which the attributes are defined in
-- the data feed.
dAttributeLanguage :: Lens' Datafeed (Maybe Text)
dAttributeLanguage
  = lens _dAttributeLanguage
      (\ s a -> s{_dAttributeLanguage = a})

-- | Fetch schedule for the feed file.
dFetchSchedule :: Lens' Datafeed (Maybe DatafeedFetchSchedule)
dFetchSchedule
  = lens _dFetchSchedule
      (\ s a -> s{_dFetchSchedule = a})

-- | A descriptive name of the data feed.
dName :: Lens' Datafeed (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The targets this feed should apply to (country, language, destinations).
dTargets :: Lens' Datafeed [DatafeedTarget]
dTargets
  = lens _dTargets (\ s a -> s{_dTargets = a}) .
      _Default
      . _Coerce

-- | The ID of the data feed.
dId :: Lens' Datafeed (Maybe Int64)
dId
  = lens _dId (\ s a -> s{_dId = a}) . mapping _Coerce

-- | The type of data feed. For product inventory feeds, only feeds for local
-- stores, not online stores, are supported.
dContentType :: Lens' Datafeed (Maybe Text)
dContentType
  = lens _dContentType (\ s a -> s{_dContentType = a})

-- | The filename of the feed. All feeds must have a unique file name.
dFileName :: Lens' Datafeed (Maybe Text)
dFileName
  = lens _dFileName (\ s a -> s{_dFileName = a})

instance FromJSON Datafeed where
        parseJSON
          = withObject "Datafeed"
              (\ o ->
                 Datafeed' <$>
                   (o .:? "kind" .!= "content#datafeed") <*>
                     (o .:? "format")
                     <*> (o .:? "attributeLanguage")
                     <*> (o .:? "fetchSchedule")
                     <*> (o .:? "name")
                     <*> (o .:? "targets" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "contentType")
                     <*> (o .:? "fileName"))

instance ToJSON Datafeed where
        toJSON Datafeed'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind), ("format" .=) <$> _dFormat,
                  ("attributeLanguage" .=) <$> _dAttributeLanguage,
                  ("fetchSchedule" .=) <$> _dFetchSchedule,
                  ("name" .=) <$> _dName, ("targets" .=) <$> _dTargets,
                  ("id" .=) <$> _dId,
                  ("contentType" .=) <$> _dContentType,
                  ("fileName" .=) <$> _dFileName])

--
-- /See:/ 'ordersCreateTestOrderResponse' smart constructor.
data OrdersCreateTestOrderResponse =
  OrdersCreateTestOrderResponse'
    { _octorKind    :: !Text
    , _octorOrderId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCreateTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorKind'
--
-- * 'octorOrderId'
ordersCreateTestOrderResponse
    :: OrdersCreateTestOrderResponse
ordersCreateTestOrderResponse =
  OrdersCreateTestOrderResponse'
    { _octorKind = "content#ordersCreateTestOrderResponse"
    , _octorOrderId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCreateTestOrderResponse\".
octorKind :: Lens' OrdersCreateTestOrderResponse Text
octorKind
  = lens _octorKind (\ s a -> s{_octorKind = a})

-- | The ID of the newly created test order.
octorOrderId :: Lens' OrdersCreateTestOrderResponse (Maybe Text)
octorOrderId
  = lens _octorOrderId (\ s a -> s{_octorOrderId = a})

instance FromJSON OrdersCreateTestOrderResponse where
        parseJSON
          = withObject "OrdersCreateTestOrderResponse"
              (\ o ->
                 OrdersCreateTestOrderResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersCreateTestOrderResponse")
                     <*> (o .:? "orderId"))

instance ToJSON OrdersCreateTestOrderResponse where
        toJSON OrdersCreateTestOrderResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _octorKind),
                  ("orderId" .=) <$> _octorOrderId])

-- | A batch entry encoding a single non-batch accounts response.
--
-- /See:/ 'accountsCustomBatchResponseEntry' smart constructor.
data AccountsCustomBatchResponseEntry =
  AccountsCustomBatchResponseEntry'
    { _aKind    :: !Text
    , _aAccount :: !(Maybe Account)
    , _aErrors  :: !(Maybe Errors)
    , _aBatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aKind'
--
-- * 'aAccount'
--
-- * 'aErrors'
--
-- * 'aBatchId'
accountsCustomBatchResponseEntry
    :: AccountsCustomBatchResponseEntry
accountsCustomBatchResponseEntry =
  AccountsCustomBatchResponseEntry'
    { _aKind = "content#accountsCustomBatchResponseEntry"
    , _aAccount = Nothing
    , _aErrors = Nothing
    , _aBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsCustomBatchResponseEntry\".
aKind :: Lens' AccountsCustomBatchResponseEntry Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The retrieved, created, or updated account. Not defined if the method
-- was delete, claimwebsite or link.
aAccount :: Lens' AccountsCustomBatchResponseEntry (Maybe Account)
aAccount = lens _aAccount (\ s a -> s{_aAccount = a})

-- | A list of errors defined if and only if the request failed.
aErrors :: Lens' AccountsCustomBatchResponseEntry (Maybe Errors)
aErrors = lens _aErrors (\ s a -> s{_aErrors = a})

-- | The ID of the request entry this entry responds to.
aBatchId :: Lens' AccountsCustomBatchResponseEntry (Maybe Word32)
aBatchId
  = lens _aBatchId (\ s a -> s{_aBatchId = a}) .
      mapping _Coerce

instance FromJSON AccountsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "AccountsCustomBatchResponseEntry"
              (\ o ->
                 AccountsCustomBatchResponseEntry' <$>
                   (o .:? "kind" .!=
                      "content#accountsCustomBatchResponseEntry")
                     <*> (o .:? "account")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccountsCustomBatchResponseEntry
         where
        toJSON AccountsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind),
                  ("account" .=) <$> _aAccount,
                  ("errors" .=) <$> _aErrors,
                  ("batchId" .=) <$> _aBatchId])

--
-- /See:/ 'gmbAccounts' smart constructor.
data GmbAccounts =
  GmbAccounts'
    { _gaGmbAccounts :: !(Maybe [GmbAccountsGmbAccount])
    , _gaAccountId   :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GmbAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaGmbAccounts'
--
-- * 'gaAccountId'
gmbAccounts
    :: GmbAccounts
gmbAccounts = GmbAccounts' {_gaGmbAccounts = Nothing, _gaAccountId = Nothing}

-- | A list of GMB accounts which are available to the merchant.
gaGmbAccounts :: Lens' GmbAccounts [GmbAccountsGmbAccount]
gaGmbAccounts
  = lens _gaGmbAccounts
      (\ s a -> s{_gaGmbAccounts = a})
      . _Default
      . _Coerce

-- | The ID of the account.
gaAccountId :: Lens' GmbAccounts (Maybe Word64)
gaAccountId
  = lens _gaAccountId (\ s a -> s{_gaAccountId = a}) .
      mapping _Coerce

instance FromJSON GmbAccounts where
        parseJSON
          = withObject "GmbAccounts"
              (\ o ->
                 GmbAccounts' <$>
                   (o .:? "gmbAccounts" .!= mempty) <*>
                     (o .:? "accountId"))

instance ToJSON GmbAccounts where
        toJSON GmbAccounts'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _gaGmbAccounts,
                  ("accountId" .=) <$> _gaAccountId])

--
-- /See:/ 'customerReturnReason' smart constructor.
data CustomerReturnReason =
  CustomerReturnReason'
    { _crrReasonCode  :: !(Maybe Text)
    , _crrDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomerReturnReason' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crrReasonCode'
--
-- * 'crrDescription'
customerReturnReason
    :: CustomerReturnReason
customerReturnReason =
  CustomerReturnReason' {_crrReasonCode = Nothing, _crrDescription = Nothing}

crrReasonCode :: Lens' CustomerReturnReason (Maybe Text)
crrReasonCode
  = lens _crrReasonCode
      (\ s a -> s{_crrReasonCode = a})

crrDescription :: Lens' CustomerReturnReason (Maybe Text)
crrDescription
  = lens _crrDescription
      (\ s a -> s{_crrDescription = a})

instance FromJSON CustomerReturnReason where
        parseJSON
          = withObject "CustomerReturnReason"
              (\ o ->
                 CustomerReturnReason' <$>
                   (o .:? "reasonCode") <*> (o .:? "description"))

instance ToJSON CustomerReturnReason where
        toJSON CustomerReturnReason'{..}
          = object
              (catMaybes
                 [("reasonCode" .=) <$> _crrReasonCode,
                  ("description" .=) <$> _crrDescription])

--
-- /See:/ 'accountIdentifier' smart constructor.
data AccountIdentifier =
  AccountIdentifier'
    { _aiMerchantId   :: !(Maybe (Textual Word64))
    , _aiAggregatorId :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiMerchantId'
--
-- * 'aiAggregatorId'
accountIdentifier
    :: AccountIdentifier
accountIdentifier =
  AccountIdentifier' {_aiMerchantId = Nothing, _aiAggregatorId = Nothing}

-- | The merchant account ID, set for individual accounts and subaccounts.
aiMerchantId :: Lens' AccountIdentifier (Maybe Word64)
aiMerchantId
  = lens _aiMerchantId (\ s a -> s{_aiMerchantId = a})
      . mapping _Coerce

-- | The aggregator ID, set for aggregators and subaccounts (in that case, it
-- represents the aggregator of the subaccount).
aiAggregatorId :: Lens' AccountIdentifier (Maybe Word64)
aiAggregatorId
  = lens _aiAggregatorId
      (\ s a -> s{_aiAggregatorId = a})
      . mapping _Coerce

instance FromJSON AccountIdentifier where
        parseJSON
          = withObject "AccountIdentifier"
              (\ o ->
                 AccountIdentifier' <$>
                   (o .:? "merchantId") <*> (o .:? "aggregatorId"))

instance ToJSON AccountIdentifier where
        toJSON AccountIdentifier'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _aiMerchantId,
                  ("aggregatorId" .=) <$> _aiAggregatorId])

--
-- /See:/ 'posCustomBatchRequest' smart constructor.
newtype PosCustomBatchRequest =
  PosCustomBatchRequest'
    { _pEntries :: Maybe [PosCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEntries'
posCustomBatchRequest
    :: PosCustomBatchRequest
posCustomBatchRequest = PosCustomBatchRequest' {_pEntries = Nothing}

-- | The request entries to be processed in the batch.
pEntries :: Lens' PosCustomBatchRequest [PosCustomBatchRequestEntry]
pEntries
  = lens _pEntries (\ s a -> s{_pEntries = a}) .
      _Default
      . _Coerce

instance FromJSON PosCustomBatchRequest where
        parseJSON
          = withObject "PosCustomBatchRequest"
              (\ o ->
                 PosCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON PosCustomBatchRequest where
        toJSON PosCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _pEntries])

--
-- /See:/ 'orderinvoicesCreateChargeInvoiceRequest' smart constructor.
data OrderinvoicesCreateChargeInvoiceRequest =
  OrderinvoicesCreateChargeInvoiceRequest'
    { _occirShipmentGroupId  :: !(Maybe Text)
    , _occirLineItemInvoices :: !(Maybe [ShipmentInvoiceLineItemInvoice])
    , _occirInvoiceId        :: !(Maybe Text)
    , _occirInvoiceSummary   :: !(Maybe InvoiceSummary)
    , _occirOperationId      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occirShipmentGroupId'
--
-- * 'occirLineItemInvoices'
--
-- * 'occirInvoiceId'
--
-- * 'occirInvoiceSummary'
--
-- * 'occirOperationId'
orderinvoicesCreateChargeInvoiceRequest
    :: OrderinvoicesCreateChargeInvoiceRequest
orderinvoicesCreateChargeInvoiceRequest =
  OrderinvoicesCreateChargeInvoiceRequest'
    { _occirShipmentGroupId = Nothing
    , _occirLineItemInvoices = Nothing
    , _occirInvoiceId = Nothing
    , _occirInvoiceSummary = Nothing
    , _occirOperationId = Nothing
    }

-- | [required] ID of the shipment group.
occirShipmentGroupId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirShipmentGroupId
  = lens _occirShipmentGroupId
      (\ s a -> s{_occirShipmentGroupId = a})

-- | [required] Invoice details per line item.
occirLineItemInvoices :: Lens' OrderinvoicesCreateChargeInvoiceRequest [ShipmentInvoiceLineItemInvoice]
occirLineItemInvoices
  = lens _occirLineItemInvoices
      (\ s a -> s{_occirLineItemInvoices = a})
      . _Default
      . _Coerce

-- | [required] The ID of the invoice.
occirInvoiceId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirInvoiceId
  = lens _occirInvoiceId
      (\ s a -> s{_occirInvoiceId = a})

-- | [required] Invoice summary.
occirInvoiceSummary :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe InvoiceSummary)
occirInvoiceSummary
  = lens _occirInvoiceSummary
      (\ s a -> s{_occirInvoiceSummary = a})

-- | [required] The ID of the operation, unique across all operations for a
-- given order.
occirOperationId :: Lens' OrderinvoicesCreateChargeInvoiceRequest (Maybe Text)
occirOperationId
  = lens _occirOperationId
      (\ s a -> s{_occirOperationId = a})

instance FromJSON
           OrderinvoicesCreateChargeInvoiceRequest
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateChargeInvoiceRequest"
              (\ o ->
                 OrderinvoicesCreateChargeInvoiceRequest' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "lineItemInvoices" .!= mempty)
                     <*> (o .:? "invoiceId")
                     <*> (o .:? "invoiceSummary")
                     <*> (o .:? "operationId"))

instance ToJSON
           OrderinvoicesCreateChargeInvoiceRequest
         where
        toJSON OrderinvoicesCreateChargeInvoiceRequest'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _occirShipmentGroupId,
                  ("lineItemInvoices" .=) <$> _occirLineItemInvoices,
                  ("invoiceId" .=) <$> _occirInvoiceId,
                  ("invoiceSummary" .=) <$> _occirInvoiceSummary,
                  ("operationId" .=) <$> _occirOperationId])

--
-- /See:/ 'orderLineItem' smart constructor.
data OrderLineItem =
  OrderLineItem'
    { _oliAnnotations       :: !(Maybe [OrderMerchantProvidedAnnotation])
    , _oliQuantityOrdered   :: !(Maybe (Textual Word32))
    , _oliReturnInfo        :: !(Maybe OrderLineItemReturnInfo)
    , _oliQuantityDelivered :: !(Maybe (Textual Word32))
    , _oliShippingDetails   :: !(Maybe OrderLineItemShippingDetails)
    , _oliQuantityPending   :: !(Maybe (Textual Word32))
    , _oliCancellations     :: !(Maybe [OrderCancellation])
    , _oliQuantityCanceled  :: !(Maybe (Textual Word32))
    , _oliId                :: !(Maybe Text)
    , _oliTax               :: !(Maybe Price)
    , _oliPrice             :: !(Maybe Price)
    , _oliQuantityShipped   :: !(Maybe (Textual Word32))
    , _oliQuantityReturned  :: !(Maybe (Textual Word32))
    , _oliProduct           :: !(Maybe OrderLineItemProduct)
    , _oliReturns           :: !(Maybe [OrderReturn])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliAnnotations'
--
-- * 'oliQuantityOrdered'
--
-- * 'oliReturnInfo'
--
-- * 'oliQuantityDelivered'
--
-- * 'oliShippingDetails'
--
-- * 'oliQuantityPending'
--
-- * 'oliCancellations'
--
-- * 'oliQuantityCanceled'
--
-- * 'oliId'
--
-- * 'oliTax'
--
-- * 'oliPrice'
--
-- * 'oliQuantityShipped'
--
-- * 'oliQuantityReturned'
--
-- * 'oliProduct'
--
-- * 'oliReturns'
orderLineItem
    :: OrderLineItem
orderLineItem =
  OrderLineItem'
    { _oliAnnotations = Nothing
    , _oliQuantityOrdered = Nothing
    , _oliReturnInfo = Nothing
    , _oliQuantityDelivered = Nothing
    , _oliShippingDetails = Nothing
    , _oliQuantityPending = Nothing
    , _oliCancellations = Nothing
    , _oliQuantityCanceled = Nothing
    , _oliId = Nothing
    , _oliTax = Nothing
    , _oliPrice = Nothing
    , _oliQuantityShipped = Nothing
    , _oliQuantityReturned = Nothing
    , _oliProduct = Nothing
    , _oliReturns = Nothing
    }

-- | Annotations that are attached to the line item.
oliAnnotations :: Lens' OrderLineItem [OrderMerchantProvidedAnnotation]
oliAnnotations
  = lens _oliAnnotations
      (\ s a -> s{_oliAnnotations = a})
      . _Default
      . _Coerce

-- | Number of items ordered.
oliQuantityOrdered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityOrdered
  = lens _oliQuantityOrdered
      (\ s a -> s{_oliQuantityOrdered = a})
      . mapping _Coerce

-- | Details of the return policy for the line item.
oliReturnInfo :: Lens' OrderLineItem (Maybe OrderLineItemReturnInfo)
oliReturnInfo
  = lens _oliReturnInfo
      (\ s a -> s{_oliReturnInfo = a})

-- | Number of items delivered.
oliQuantityDelivered :: Lens' OrderLineItem (Maybe Word32)
oliQuantityDelivered
  = lens _oliQuantityDelivered
      (\ s a -> s{_oliQuantityDelivered = a})
      . mapping _Coerce

-- | Details of the requested shipping for the line item.
oliShippingDetails :: Lens' OrderLineItem (Maybe OrderLineItemShippingDetails)
oliShippingDetails
  = lens _oliShippingDetails
      (\ s a -> s{_oliShippingDetails = a})

-- | Number of items pending.
oliQuantityPending :: Lens' OrderLineItem (Maybe Word32)
oliQuantityPending
  = lens _oliQuantityPending
      (\ s a -> s{_oliQuantityPending = a})
      . mapping _Coerce

-- | Cancellations of the line item.
oliCancellations :: Lens' OrderLineItem [OrderCancellation]
oliCancellations
  = lens _oliCancellations
      (\ s a -> s{_oliCancellations = a})
      . _Default
      . _Coerce

-- | Number of items canceled.
oliQuantityCanceled :: Lens' OrderLineItem (Maybe Word32)
oliQuantityCanceled
  = lens _oliQuantityCanceled
      (\ s a -> s{_oliQuantityCanceled = a})
      . mapping _Coerce

-- | The id of the line item.
oliId :: Lens' OrderLineItem (Maybe Text)
oliId = lens _oliId (\ s a -> s{_oliId = a})

-- | Total tax amount for the line item. For example, if two items are
-- purchased, and each have a cost tax of $2, the total tax amount will be
-- $4.
oliTax :: Lens' OrderLineItem (Maybe Price)
oliTax = lens _oliTax (\ s a -> s{_oliTax = a})

-- | Total price for the line item. For example, if two items for $10 are
-- purchased, the total price will be $20.
oliPrice :: Lens' OrderLineItem (Maybe Price)
oliPrice = lens _oliPrice (\ s a -> s{_oliPrice = a})

-- | Number of items shipped.
oliQuantityShipped :: Lens' OrderLineItem (Maybe Word32)
oliQuantityShipped
  = lens _oliQuantityShipped
      (\ s a -> s{_oliQuantityShipped = a})
      . mapping _Coerce

-- | Number of items returned.
oliQuantityReturned :: Lens' OrderLineItem (Maybe Word32)
oliQuantityReturned
  = lens _oliQuantityReturned
      (\ s a -> s{_oliQuantityReturned = a})
      . mapping _Coerce

-- | Product data as seen by customer from the time of the order placement.
-- Note that certain attributes values (e.g. title or gtin) might be
-- reformatted and no longer match values submitted via product feed.
oliProduct :: Lens' OrderLineItem (Maybe OrderLineItemProduct)
oliProduct
  = lens _oliProduct (\ s a -> s{_oliProduct = a})

-- | Returns of the line item.
oliReturns :: Lens' OrderLineItem [OrderReturn]
oliReturns
  = lens _oliReturns (\ s a -> s{_oliReturns = a}) .
      _Default
      . _Coerce

instance FromJSON OrderLineItem where
        parseJSON
          = withObject "OrderLineItem"
              (\ o ->
                 OrderLineItem' <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "quantityOrdered")
                     <*> (o .:? "returnInfo")
                     <*> (o .:? "quantityDelivered")
                     <*> (o .:? "shippingDetails")
                     <*> (o .:? "quantityPending")
                     <*> (o .:? "cancellations" .!= mempty)
                     <*> (o .:? "quantityCanceled")
                     <*> (o .:? "id")
                     <*> (o .:? "tax")
                     <*> (o .:? "price")
                     <*> (o .:? "quantityShipped")
                     <*> (o .:? "quantityReturned")
                     <*> (o .:? "product")
                     <*> (o .:? "returns" .!= mempty))

instance ToJSON OrderLineItem where
        toJSON OrderLineItem'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _oliAnnotations,
                  ("quantityOrdered" .=) <$> _oliQuantityOrdered,
                  ("returnInfo" .=) <$> _oliReturnInfo,
                  ("quantityDelivered" .=) <$> _oliQuantityDelivered,
                  ("shippingDetails" .=) <$> _oliShippingDetails,
                  ("quantityPending" .=) <$> _oliQuantityPending,
                  ("cancellations" .=) <$> _oliCancellations,
                  ("quantityCanceled" .=) <$> _oliQuantityCanceled,
                  ("id" .=) <$> _oliId, ("tax" .=) <$> _oliTax,
                  ("price" .=) <$> _oliPrice,
                  ("quantityShipped" .=) <$> _oliQuantityShipped,
                  ("quantityReturned" .=) <$> _oliQuantityReturned,
                  ("product" .=) <$> _oliProduct,
                  ("returns" .=) <$> _oliReturns])

--
-- /See:/ 'service' smart constructor.
data Service =
  Service'
    { _sDeliveryCountry   :: !(Maybe Text)
    , _sRateGroups        :: !(Maybe [RateGroup])
    , _sDeliveryTime      :: !(Maybe DeliveryTime)
    , _sActive            :: !(Maybe Bool)
    , _sName              :: !(Maybe Text)
    , _sCurrency          :: !(Maybe Text)
    , _sEligibility       :: !(Maybe Text)
    , _sMinimumOrderValue :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Service' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sDeliveryCountry'
--
-- * 'sRateGroups'
--
-- * 'sDeliveryTime'
--
-- * 'sActive'
--
-- * 'sName'
--
-- * 'sCurrency'
--
-- * 'sEligibility'
--
-- * 'sMinimumOrderValue'
service
    :: Service
service =
  Service'
    { _sDeliveryCountry = Nothing
    , _sRateGroups = Nothing
    , _sDeliveryTime = Nothing
    , _sActive = Nothing
    , _sName = Nothing
    , _sCurrency = Nothing
    , _sEligibility = Nothing
    , _sMinimumOrderValue = Nothing
    }

-- | The CLDR territory code of the country to which the service applies.
-- Required.
sDeliveryCountry :: Lens' Service (Maybe Text)
sDeliveryCountry
  = lens _sDeliveryCountry
      (\ s a -> s{_sDeliveryCountry = a})

-- | Shipping rate group definitions. Only the last one is allowed to have an
-- empty applicableShippingLabels, which means \"everything else\". The
-- other applicableShippingLabels must not overlap.
sRateGroups :: Lens' Service [RateGroup]
sRateGroups
  = lens _sRateGroups (\ s a -> s{_sRateGroups = a}) .
      _Default
      . _Coerce

-- | Time spent in various aspects from order to the delivery of the product.
-- Required.
sDeliveryTime :: Lens' Service (Maybe DeliveryTime)
sDeliveryTime
  = lens _sDeliveryTime
      (\ s a -> s{_sDeliveryTime = a})

-- | A boolean exposing the active status of the shipping service. Required.
sActive :: Lens' Service (Maybe Bool)
sActive = lens _sActive (\ s a -> s{_sActive = a})

-- | Free-form name of the service. Must be unique within target account.
-- Required.
sName :: Lens' Service (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | The CLDR code of the currency to which this service applies. Must match
-- that of the prices in rate groups.
sCurrency :: Lens' Service (Maybe Text)
sCurrency
  = lens _sCurrency (\ s a -> s{_sCurrency = a})

-- | Eligibility for this service.
sEligibility :: Lens' Service (Maybe Text)
sEligibility
  = lens _sEligibility (\ s a -> s{_sEligibility = a})

-- | Minimum order value for this service. If set, indicates that customers
-- will have to spend at least this amount. All prices within a service
-- must have the same currency.
sMinimumOrderValue :: Lens' Service (Maybe Price)
sMinimumOrderValue
  = lens _sMinimumOrderValue
      (\ s a -> s{_sMinimumOrderValue = a})

instance FromJSON Service where
        parseJSON
          = withObject "Service"
              (\ o ->
                 Service' <$>
                   (o .:? "deliveryCountry") <*>
                     (o .:? "rateGroups" .!= mempty)
                     <*> (o .:? "deliveryTime")
                     <*> (o .:? "active")
                     <*> (o .:? "name")
                     <*> (o .:? "currency")
                     <*> (o .:? "eligibility")
                     <*> (o .:? "minimumOrderValue"))

instance ToJSON Service where
        toJSON Service'{..}
          = object
              (catMaybes
                 [("deliveryCountry" .=) <$> _sDeliveryCountry,
                  ("rateGroups" .=) <$> _sRateGroups,
                  ("deliveryTime" .=) <$> _sDeliveryTime,
                  ("active" .=) <$> _sActive, ("name" .=) <$> _sName,
                  ("currency" .=) <$> _sCurrency,
                  ("eligibility" .=) <$> _sEligibility,
                  ("minimumOrderValue" .=) <$> _sMinimumOrderValue])

--
-- /See:/ 'productstatusesCustomBatchResponse' smart constructor.
data ProductstatusesCustomBatchResponse =
  ProductstatusesCustomBatchResponse'
    { _proEntries :: !(Maybe [ProductstatusesCustomBatchResponseEntry])
    , _proKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proEntries'
--
-- * 'proKind'
productstatusesCustomBatchResponse
    :: ProductstatusesCustomBatchResponse
productstatusesCustomBatchResponse =
  ProductstatusesCustomBatchResponse'
    { _proEntries = Nothing
    , _proKind = "content#productstatusesCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
proEntries :: Lens' ProductstatusesCustomBatchResponse [ProductstatusesCustomBatchResponseEntry]
proEntries
  = lens _proEntries (\ s a -> s{_proEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesCustomBatchResponse\".
proKind :: Lens' ProductstatusesCustomBatchResponse Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

instance FromJSON ProductstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchResponse"
              (\ o ->
                 ProductstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#productstatusesCustomBatchResponse"))

instance ToJSON ProductstatusesCustomBatchResponse
         where
        toJSON ProductstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _proEntries,
                  Just ("kind" .= _proKind)])

--
-- /See:/ 'productUnitPricingMeasure' smart constructor.
data ProductUnitPricingMeasure =
  ProductUnitPricingMeasure'
    { _pupmValue :: !(Maybe (Textual Double))
    , _pupmUnit  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductUnitPricingMeasure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupmValue'
--
-- * 'pupmUnit'
productUnitPricingMeasure
    :: ProductUnitPricingMeasure
productUnitPricingMeasure =
  ProductUnitPricingMeasure' {_pupmValue = Nothing, _pupmUnit = Nothing}

-- | The measure of an item.
pupmValue :: Lens' ProductUnitPricingMeasure (Maybe Double)
pupmValue
  = lens _pupmValue (\ s a -> s{_pupmValue = a}) .
      mapping _Coerce

-- | The unit of the measure.
pupmUnit :: Lens' ProductUnitPricingMeasure (Maybe Text)
pupmUnit = lens _pupmUnit (\ s a -> s{_pupmUnit = a})

instance FromJSON ProductUnitPricingMeasure where
        parseJSON
          = withObject "ProductUnitPricingMeasure"
              (\ o ->
                 ProductUnitPricingMeasure' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingMeasure where
        toJSON ProductUnitPricingMeasure'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupmValue,
                  ("unit" .=) <$> _pupmUnit])

--
-- /See:/ 'ordersUpdateShipmentRequest' smart constructor.
data OrdersUpdateShipmentRequest =
  OrdersUpdateShipmentRequest'
    { _ousrCarrier      :: !(Maybe Text)
    , _ousrStatus       :: !(Maybe Text)
    , _ousrTrackingId   :: !(Maybe Text)
    , _ousrShipmentId   :: !(Maybe Text)
    , _ousrDeliveryDate :: !(Maybe Text)
    , _ousrOperationId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateShipmentRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrCarrier'
--
-- * 'ousrStatus'
--
-- * 'ousrTrackingId'
--
-- * 'ousrShipmentId'
--
-- * 'ousrDeliveryDate'
--
-- * 'ousrOperationId'
ordersUpdateShipmentRequest
    :: OrdersUpdateShipmentRequest
ordersUpdateShipmentRequest =
  OrdersUpdateShipmentRequest'
    { _ousrCarrier = Nothing
    , _ousrStatus = Nothing
    , _ousrTrackingId = Nothing
    , _ousrShipmentId = Nothing
    , _ousrDeliveryDate = Nothing
    , _ousrOperationId = Nothing
    }

-- | The carrier handling the shipment. Not updated if missing. See
-- shipments[].carrier in the Orders resource representation for a list of
-- acceptable values.
ousrCarrier :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrCarrier
  = lens _ousrCarrier (\ s a -> s{_ousrCarrier = a})

-- | New status for the shipment. Not updated if missing.
ousrStatus :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrStatus
  = lens _ousrStatus (\ s a -> s{_ousrStatus = a})

-- | The tracking id for the shipment. Not updated if missing.
ousrTrackingId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrTrackingId
  = lens _ousrTrackingId
      (\ s a -> s{_ousrTrackingId = a})

-- | The ID of the shipment.
ousrShipmentId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrShipmentId
  = lens _ousrShipmentId
      (\ s a -> s{_ousrShipmentId = a})

-- | Date on which the shipment has been delivered, in ISO 8601 format.
-- Optional and can be provided only if status is delivered.
ousrDeliveryDate :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrDeliveryDate
  = lens _ousrDeliveryDate
      (\ s a -> s{_ousrDeliveryDate = a})

-- | The ID of the operation. Unique across all operations for a given order.
ousrOperationId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrOperationId
  = lens _ousrOperationId
      (\ s a -> s{_ousrOperationId = a})

instance FromJSON OrdersUpdateShipmentRequest where
        parseJSON
          = withObject "OrdersUpdateShipmentRequest"
              (\ o ->
                 OrdersUpdateShipmentRequest' <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "trackingId")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "deliveryDate")
                     <*> (o .:? "operationId"))

instance ToJSON OrdersUpdateShipmentRequest where
        toJSON OrdersUpdateShipmentRequest'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ousrCarrier,
                  ("status" .=) <$> _ousrStatus,
                  ("trackingId" .=) <$> _ousrTrackingId,
                  ("shipmentId" .=) <$> _ousrShipmentId,
                  ("deliveryDate" .=) <$> _ousrDeliveryDate,
                  ("operationId" .=) <$> _ousrOperationId])

--
-- /See:/ 'orderShipmentLineItemShipment' smart constructor.
data OrderShipmentLineItemShipment =
  OrderShipmentLineItemShipment'
    { _oslisQuantity   :: !(Maybe (Textual Word32))
    , _oslisLineItemId :: !(Maybe Text)
    , _oslisProductId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderShipmentLineItemShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslisQuantity'
--
-- * 'oslisLineItemId'
--
-- * 'oslisProductId'
orderShipmentLineItemShipment
    :: OrderShipmentLineItemShipment
orderShipmentLineItemShipment =
  OrderShipmentLineItemShipment'
    { _oslisQuantity = Nothing
    , _oslisLineItemId = Nothing
    , _oslisProductId = Nothing
    }

-- | The quantity that is shipped.
oslisQuantity :: Lens' OrderShipmentLineItemShipment (Maybe Word32)
oslisQuantity
  = lens _oslisQuantity
      (\ s a -> s{_oslisQuantity = a})
      . mapping _Coerce

-- | The id of the line item that is shipped. Either lineItemId or productId
-- is required.
oslisLineItemId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisLineItemId
  = lens _oslisLineItemId
      (\ s a -> s{_oslisLineItemId = a})

-- | The ID of the product to ship. This is the REST ID used in the products
-- service. Either lineItemId or productId is required.
oslisProductId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisProductId
  = lens _oslisProductId
      (\ s a -> s{_oslisProductId = a})

instance FromJSON OrderShipmentLineItemShipment where
        parseJSON
          = withObject "OrderShipmentLineItemShipment"
              (\ o ->
                 OrderShipmentLineItemShipment' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "productId"))

instance ToJSON OrderShipmentLineItemShipment where
        toJSON OrderShipmentLineItemShipment'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oslisQuantity,
                  ("lineItemId" .=) <$> _oslisLineItemId,
                  ("productId" .=) <$> _oslisProductId])

--
-- /See:/ 'orderreportsListTransactionsResponse' smart constructor.
data OrderreportsListTransactionsResponse =
  OrderreportsListTransactionsResponse'
    { _oltrNextPageToken :: !(Maybe Text)
    , _oltrTransactions  :: !(Maybe [OrderReportTransaction])
    , _oltrKind          :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderreportsListTransactionsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oltrNextPageToken'
--
-- * 'oltrTransactions'
--
-- * 'oltrKind'
orderreportsListTransactionsResponse
    :: OrderreportsListTransactionsResponse
orderreportsListTransactionsResponse =
  OrderreportsListTransactionsResponse'
    { _oltrNextPageToken = Nothing
    , _oltrTransactions = Nothing
    , _oltrKind = "content#orderreportsListTransactionsResponse"
    }

-- | The token for the retrieval of the next page of transactions.
oltrNextPageToken :: Lens' OrderreportsListTransactionsResponse (Maybe Text)
oltrNextPageToken
  = lens _oltrNextPageToken
      (\ s a -> s{_oltrNextPageToken = a})

-- | The list of transactions.
oltrTransactions :: Lens' OrderreportsListTransactionsResponse [OrderReportTransaction]
oltrTransactions
  = lens _oltrTransactions
      (\ s a -> s{_oltrTransactions = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreportsListTransactionsResponse\".
oltrKind :: Lens' OrderreportsListTransactionsResponse Text
oltrKind = lens _oltrKind (\ s a -> s{_oltrKind = a})

instance FromJSON
           OrderreportsListTransactionsResponse
         where
        parseJSON
          = withObject "OrderreportsListTransactionsResponse"
              (\ o ->
                 OrderreportsListTransactionsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "transactions" .!= mempty)
                     <*>
                     (o .:? "kind" .!=
                        "content#orderreportsListTransactionsResponse"))

instance ToJSON OrderreportsListTransactionsResponse
         where
        toJSON OrderreportsListTransactionsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oltrNextPageToken,
                  ("transactions" .=) <$> _oltrTransactions,
                  Just ("kind" .= _oltrKind)])

--
-- /See:/ 'liaSettingsCustomBatchResponse' smart constructor.
data LiaSettingsCustomBatchResponse =
  LiaSettingsCustomBatchResponse'
    { _lscbrEntries :: !(Maybe [LiaSettingsCustomBatchResponseEntry])
    , _lscbrKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscbrEntries'
--
-- * 'lscbrKind'
liaSettingsCustomBatchResponse
    :: LiaSettingsCustomBatchResponse
liaSettingsCustomBatchResponse =
  LiaSettingsCustomBatchResponse'
    { _lscbrEntries = Nothing
    , _lscbrKind = "content#liasettingsCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
lscbrEntries :: Lens' LiaSettingsCustomBatchResponse [LiaSettingsCustomBatchResponseEntry]
lscbrEntries
  = lens _lscbrEntries (\ s a -> s{_lscbrEntries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsCustomBatchResponse\".
lscbrKind :: Lens' LiaSettingsCustomBatchResponse Text
lscbrKind
  = lens _lscbrKind (\ s a -> s{_lscbrKind = a})

instance FromJSON LiaSettingsCustomBatchResponse
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchResponse"
              (\ o ->
                 LiaSettingsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#liasettingsCustomBatchResponse"))

instance ToJSON LiaSettingsCustomBatchResponse where
        toJSON LiaSettingsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _lscbrEntries,
                  Just ("kind" .= _lscbrKind)])

--
-- /See:/ 'loyaltyPoints' smart constructor.
data LoyaltyPoints =
  LoyaltyPoints'
    { _lpRatio       :: !(Maybe (Textual Double))
    , _lpPointsValue :: !(Maybe (Textual Int64))
    , _lpName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LoyaltyPoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpRatio'
--
-- * 'lpPointsValue'
--
-- * 'lpName'
loyaltyPoints
    :: LoyaltyPoints
loyaltyPoints =
  LoyaltyPoints'
    {_lpRatio = Nothing, _lpPointsValue = Nothing, _lpName = Nothing}

-- | The ratio of a point when converted to currency. Google assumes currency
-- based on Merchant Center settings. If ratio is left out, it defaults to
-- 1.0.
lpRatio :: Lens' LoyaltyPoints (Maybe Double)
lpRatio
  = lens _lpRatio (\ s a -> s{_lpRatio = a}) .
      mapping _Coerce

-- | The retailer\'s loyalty points in absolute value.
lpPointsValue :: Lens' LoyaltyPoints (Maybe Int64)
lpPointsValue
  = lens _lpPointsValue
      (\ s a -> s{_lpPointsValue = a})
      . mapping _Coerce

-- | Name of loyalty points program. It is recommended to limit the name to
-- 12 full-width characters or 24 Roman characters.
lpName :: Lens' LoyaltyPoints (Maybe Text)
lpName = lens _lpName (\ s a -> s{_lpName = a})

instance FromJSON LoyaltyPoints where
        parseJSON
          = withObject "LoyaltyPoints"
              (\ o ->
                 LoyaltyPoints' <$>
                   (o .:? "ratio") <*> (o .:? "pointsValue") <*>
                     (o .:? "name"))

instance ToJSON LoyaltyPoints where
        toJSON LoyaltyPoints'{..}
          = object
              (catMaybes
                 [("ratio" .=) <$> _lpRatio,
                  ("pointsValue" .=) <$> _lpPointsValue,
                  ("name" .=) <$> _lpName])

--
-- /See:/ 'liaSettingsSetPosDataProviderResponse' smart constructor.
newtype LiaSettingsSetPosDataProviderResponse =
  LiaSettingsSetPosDataProviderResponse'
    { _lsspdprKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsSetPosDataProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsspdprKind'
liaSettingsSetPosDataProviderResponse
    :: LiaSettingsSetPosDataProviderResponse
liaSettingsSetPosDataProviderResponse =
  LiaSettingsSetPosDataProviderResponse'
    {_lsspdprKind = "content#liasettingsSetPosDataProviderResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsSetPosDataProviderResponse\".
lsspdprKind :: Lens' LiaSettingsSetPosDataProviderResponse Text
lsspdprKind
  = lens _lsspdprKind (\ s a -> s{_lsspdprKind = a})

instance FromJSON
           LiaSettingsSetPosDataProviderResponse
         where
        parseJSON
          = withObject "LiaSettingsSetPosDataProviderResponse"
              (\ o ->
                 LiaSettingsSetPosDataProviderResponse' <$>
                   (o .:? "kind" .!=
                      "content#liasettingsSetPosDataProviderResponse"))

instance ToJSON LiaSettingsSetPosDataProviderResponse
         where
        toJSON LiaSettingsSetPosDataProviderResponse'{..}
          = object (catMaybes [Just ("kind" .= _lsspdprKind)])

-- | The status of an account, i.e., information about its products, which is
-- computed offline and not returned immediately at insertion time.
--
-- /See:/ 'accountStatus' smart constructor.
data AccountStatus =
  AccountStatus'
    { _asAccountLevelIssues :: !(Maybe [AccountStatusAccountLevelIssue])
    , _asKind               :: !Text
    , _asAccountId          :: !(Maybe Text)
    , _asProducts           :: !(Maybe [AccountStatusProducts])
    , _asWebsiteClaimed     :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asAccountLevelIssues'
--
-- * 'asKind'
--
-- * 'asAccountId'
--
-- * 'asProducts'
--
-- * 'asWebsiteClaimed'
accountStatus
    :: AccountStatus
accountStatus =
  AccountStatus'
    { _asAccountLevelIssues = Nothing
    , _asKind = "content#accountStatus"
    , _asAccountId = Nothing
    , _asProducts = Nothing
    , _asWebsiteClaimed = Nothing
    }

-- | A list of account level issues.
asAccountLevelIssues :: Lens' AccountStatus [AccountStatusAccountLevelIssue]
asAccountLevelIssues
  = lens _asAccountLevelIssues
      (\ s a -> s{_asAccountLevelIssues = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountStatus\".
asKind :: Lens' AccountStatus Text
asKind = lens _asKind (\ s a -> s{_asKind = a})

-- | The ID of the account for which the status is reported.
asAccountId :: Lens' AccountStatus (Maybe Text)
asAccountId
  = lens _asAccountId (\ s a -> s{_asAccountId = a})

-- | List of product-related data by channel, destination, and country. Data
-- in this field may be delayed by up to 30 minutes.
asProducts :: Lens' AccountStatus [AccountStatusProducts]
asProducts
  = lens _asProducts (\ s a -> s{_asProducts = a}) .
      _Default
      . _Coerce

-- | Whether the account\'s website is claimed or not.
asWebsiteClaimed :: Lens' AccountStatus (Maybe Bool)
asWebsiteClaimed
  = lens _asWebsiteClaimed
      (\ s a -> s{_asWebsiteClaimed = a})

instance FromJSON AccountStatus where
        parseJSON
          = withObject "AccountStatus"
              (\ o ->
                 AccountStatus' <$>
                   (o .:? "accountLevelIssues" .!= mempty) <*>
                     (o .:? "kind" .!= "content#accountStatus")
                     <*> (o .:? "accountId")
                     <*> (o .:? "products" .!= mempty)
                     <*> (o .:? "websiteClaimed"))

instance ToJSON AccountStatus where
        toJSON AccountStatus'{..}
          = object
              (catMaybes
                 [("accountLevelIssues" .=) <$> _asAccountLevelIssues,
                  Just ("kind" .= _asKind),
                  ("accountId" .=) <$> _asAccountId,
                  ("products" .=) <$> _asProducts,
                  ("websiteClaimed" .=) <$> _asWebsiteClaimed])

-- | A batch entry encoding a single non-batch shippingsettings request.
--
-- /See:/ 'shippingSettingsCustomBatchRequestEntry' smart constructor.
data ShippingSettingsCustomBatchRequestEntry =
  ShippingSettingsCustomBatchRequestEntry'
    { _sscbreMerchantId       :: !(Maybe (Textual Word64))
    , _sscbreAccountId        :: !(Maybe (Textual Word64))
    , _sscbreMethod           :: !(Maybe Text)
    , _sscbreShippingSettings :: !(Maybe ShippingSettings)
    , _sscbreBatchId          :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscbreMerchantId'
--
-- * 'sscbreAccountId'
--
-- * 'sscbreMethod'
--
-- * 'sscbreShippingSettings'
--
-- * 'sscbreBatchId'
shippingSettingsCustomBatchRequestEntry
    :: ShippingSettingsCustomBatchRequestEntry
shippingSettingsCustomBatchRequestEntry =
  ShippingSettingsCustomBatchRequestEntry'
    { _sscbreMerchantId = Nothing
    , _sscbreAccountId = Nothing
    , _sscbreMethod = Nothing
    , _sscbreShippingSettings = Nothing
    , _sscbreBatchId = Nothing
    }

-- | The ID of the managing account.
sscbreMerchantId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word64)
sscbreMerchantId
  = lens _sscbreMerchantId
      (\ s a -> s{_sscbreMerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account shipping
-- settings.
sscbreAccountId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word64)
sscbreAccountId
  = lens _sscbreAccountId
      (\ s a -> s{_sscbreAccountId = a})
      . mapping _Coerce

sscbreMethod :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Text)
sscbreMethod
  = lens _sscbreMethod (\ s a -> s{_sscbreMethod = a})

-- | The account shipping settings to update. Only defined if the method is
-- update.
sscbreShippingSettings :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe ShippingSettings)
sscbreShippingSettings
  = lens _sscbreShippingSettings
      (\ s a -> s{_sscbreShippingSettings = a})

-- | An entry ID, unique within the batch request.
sscbreBatchId :: Lens' ShippingSettingsCustomBatchRequestEntry (Maybe Word32)
sscbreBatchId
  = lens _sscbreBatchId
      (\ s a -> s{_sscbreBatchId = a})
      . mapping _Coerce

instance FromJSON
           ShippingSettingsCustomBatchRequestEntry
         where
        parseJSON
          = withObject
              "ShippingSettingsCustomBatchRequestEntry"
              (\ o ->
                 ShippingSettingsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "method")
                     <*> (o .:? "shippingSettings")
                     <*> (o .:? "batchId"))

instance ToJSON
           ShippingSettingsCustomBatchRequestEntry
         where
        toJSON ShippingSettingsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _sscbreMerchantId,
                  ("accountId" .=) <$> _sscbreAccountId,
                  ("method" .=) <$> _sscbreMethod,
                  ("shippingSettings" .=) <$> _sscbreShippingSettings,
                  ("batchId" .=) <$> _sscbreBatchId])

--
-- /See:/ 'posInventoryResponse' smart constructor.
data PosInventoryResponse =
  PosInventoryResponse'
    { _pirStoreCode       :: !(Maybe Text)
    , _pirKind            :: !Text
    , _pirItemId          :: !(Maybe Text)
    , _pirQuantity        :: !(Maybe (Textual Int64))
    , _pirTargetCountry   :: !(Maybe Text)
    , _pirGtin            :: !(Maybe Text)
    , _pirPrice           :: !(Maybe Price)
    , _pirContentLanguage :: !(Maybe Text)
    , _pirTimestamp       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosInventoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pirStoreCode'
--
-- * 'pirKind'
--
-- * 'pirItemId'
--
-- * 'pirQuantity'
--
-- * 'pirTargetCountry'
--
-- * 'pirGtin'
--
-- * 'pirPrice'
--
-- * 'pirContentLanguage'
--
-- * 'pirTimestamp'
posInventoryResponse
    :: PosInventoryResponse
posInventoryResponse =
  PosInventoryResponse'
    { _pirStoreCode = Nothing
    , _pirKind = "content#posInventoryResponse"
    , _pirItemId = Nothing
    , _pirQuantity = Nothing
    , _pirTargetCountry = Nothing
    , _pirGtin = Nothing
    , _pirPrice = Nothing
    , _pirContentLanguage = Nothing
    , _pirTimestamp = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
pirStoreCode :: Lens' PosInventoryResponse (Maybe Text)
pirStoreCode
  = lens _pirStoreCode (\ s a -> s{_pirStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posInventoryResponse\".
pirKind :: Lens' PosInventoryResponse Text
pirKind = lens _pirKind (\ s a -> s{_pirKind = a})

-- | A unique identifier for the item.
pirItemId :: Lens' PosInventoryResponse (Maybe Text)
pirItemId
  = lens _pirItemId (\ s a -> s{_pirItemId = a})

-- | The available quantity of the item.
pirQuantity :: Lens' PosInventoryResponse (Maybe Int64)
pirQuantity
  = lens _pirQuantity (\ s a -> s{_pirQuantity = a}) .
      mapping _Coerce

-- | The CLDR territory code for the item.
pirTargetCountry :: Lens' PosInventoryResponse (Maybe Text)
pirTargetCountry
  = lens _pirTargetCountry
      (\ s a -> s{_pirTargetCountry = a})

-- | Global Trade Item Number.
pirGtin :: Lens' PosInventoryResponse (Maybe Text)
pirGtin = lens _pirGtin (\ s a -> s{_pirGtin = a})

-- | The current price of the item.
pirPrice :: Lens' PosInventoryResponse (Maybe Price)
pirPrice = lens _pirPrice (\ s a -> s{_pirPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
pirContentLanguage :: Lens' PosInventoryResponse (Maybe Text)
pirContentLanguage
  = lens _pirContentLanguage
      (\ s a -> s{_pirContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
pirTimestamp :: Lens' PosInventoryResponse (Maybe Text)
pirTimestamp
  = lens _pirTimestamp (\ s a -> s{_pirTimestamp = a})

instance FromJSON PosInventoryResponse where
        parseJSON
          = withObject "PosInventoryResponse"
              (\ o ->
                 PosInventoryResponse' <$>
                   (o .:? "storeCode") <*>
                     (o .:? "kind" .!= "content#posInventoryResponse")
                     <*> (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventoryResponse where
        toJSON PosInventoryResponse'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _pirStoreCode,
                  Just ("kind" .= _pirKind),
                  ("itemId" .=) <$> _pirItemId,
                  ("quantity" .=) <$> _pirQuantity,
                  ("targetCountry" .=) <$> _pirTargetCountry,
                  ("gtin" .=) <$> _pirGtin, ("price" .=) <$> _pirPrice,
                  ("contentLanguage" .=) <$> _pirContentLanguage,
                  ("timestamp" .=) <$> _pirTimestamp])

--
-- /See:/ 'accountstatusesCustomBatchRequest' smart constructor.
newtype AccountstatusesCustomBatchRequest =
  AccountstatusesCustomBatchRequest'
    { _acbrEntries :: Maybe [AccountstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrEntries'
accountstatusesCustomBatchRequest
    :: AccountstatusesCustomBatchRequest
accountstatusesCustomBatchRequest =
  AccountstatusesCustomBatchRequest' {_acbrEntries = Nothing}

-- | The request entries to be processed in the batch.
acbrEntries :: Lens' AccountstatusesCustomBatchRequest [AccountstatusesCustomBatchRequestEntry]
acbrEntries
  = lens _acbrEntries (\ s a -> s{_acbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequest"
              (\ o ->
                 AccountstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountstatusesCustomBatchRequest
         where
        toJSON AccountstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _acbrEntries])

--
-- /See:/ 'accounttaxListResponse' smart constructor.
data AccounttaxListResponse =
  AccounttaxListResponse'
    { _alrNextPageToken :: !(Maybe Text)
    , _alrKind          :: !Text
    , _alrResources     :: !(Maybe [AccountTax])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrNextPageToken'
--
-- * 'alrKind'
--
-- * 'alrResources'
accounttaxListResponse
    :: AccounttaxListResponse
accounttaxListResponse =
  AccounttaxListResponse'
    { _alrNextPageToken = Nothing
    , _alrKind = "content#accounttaxListResponse"
    , _alrResources = Nothing
    }

-- | The token for the retrieval of the next page of account tax settings.
alrNextPageToken :: Lens' AccounttaxListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxListResponse\".
alrKind :: Lens' AccounttaxListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

alrResources :: Lens' AccounttaxListResponse [AccountTax]
alrResources
  = lens _alrResources (\ s a -> s{_alrResources = a})
      . _Default
      . _Coerce

instance FromJSON AccounttaxListResponse where
        parseJSON
          = withObject "AccounttaxListResponse"
              (\ o ->
                 AccounttaxListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#accounttaxListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccounttaxListResponse where
        toJSON AccounttaxListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  Just ("kind" .= _alrKind),
                  ("resources" .=) <$> _alrResources])

--
-- /See:/ 'liaSettingsRequestInventoryVerificationResponse' smart constructor.
newtype LiaSettingsRequestInventoryVerificationResponse =
  LiaSettingsRequestInventoryVerificationResponse'
    { _lsrivrKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsRequestInventoryVerificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrivrKind'
liaSettingsRequestInventoryVerificationResponse
    :: LiaSettingsRequestInventoryVerificationResponse
liaSettingsRequestInventoryVerificationResponse =
  LiaSettingsRequestInventoryVerificationResponse'
    {_lsrivrKind = "content#liasettingsRequestInventoryVerificationResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsRequestInventoryVerificationResponse\".
lsrivrKind :: Lens' LiaSettingsRequestInventoryVerificationResponse Text
lsrivrKind
  = lens _lsrivrKind (\ s a -> s{_lsrivrKind = a})

instance FromJSON
           LiaSettingsRequestInventoryVerificationResponse
         where
        parseJSON
          = withObject
              "LiaSettingsRequestInventoryVerificationResponse"
              (\ o ->
                 LiaSettingsRequestInventoryVerificationResponse' <$>
                   (o .:? "kind" .!=
                      "content#liasettingsRequestInventoryVerificationResponse"))

instance ToJSON
           LiaSettingsRequestInventoryVerificationResponse
         where
        toJSON
          LiaSettingsRequestInventoryVerificationResponse'{..}
          = object (catMaybes [Just ("kind" .= _lsrivrKind)])

--
-- /See:/ 'orderinvoicesCreateChargeInvoiceResponse' smart constructor.
data OrderinvoicesCreateChargeInvoiceResponse =
  OrderinvoicesCreateChargeInvoiceResponse'
    { _occirKind            :: !Text
    , _occirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCreateChargeInvoiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'occirKind'
--
-- * 'occirExecutionStatus'
orderinvoicesCreateChargeInvoiceResponse
    :: OrderinvoicesCreateChargeInvoiceResponse
orderinvoicesCreateChargeInvoiceResponse =
  OrderinvoicesCreateChargeInvoiceResponse'
    { _occirKind = "content#orderinvoicesCreateChargeInvoiceResponse"
    , _occirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderinvoicesCreateChargeInvoiceResponse\".
occirKind :: Lens' OrderinvoicesCreateChargeInvoiceResponse Text
occirKind
  = lens _occirKind (\ s a -> s{_occirKind = a})

-- | The status of the execution.
occirExecutionStatus :: Lens' OrderinvoicesCreateChargeInvoiceResponse (Maybe Text)
occirExecutionStatus
  = lens _occirExecutionStatus
      (\ s a -> s{_occirExecutionStatus = a})

instance FromJSON
           OrderinvoicesCreateChargeInvoiceResponse
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateChargeInvoiceResponse"
              (\ o ->
                 OrderinvoicesCreateChargeInvoiceResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderinvoicesCreateChargeInvoiceResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON
           OrderinvoicesCreateChargeInvoiceResponse
         where
        toJSON OrderinvoicesCreateChargeInvoiceResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _occirKind),
                  ("executionStatus" .=) <$> _occirExecutionStatus])

--
-- /See:/ 'datafeedsFetchNowResponse' smart constructor.
newtype DatafeedsFetchNowResponse =
  DatafeedsFetchNowResponse'
    { _dfnrKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsFetchNowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfnrKind'
datafeedsFetchNowResponse
    :: DatafeedsFetchNowResponse
datafeedsFetchNowResponse =
  DatafeedsFetchNowResponse' {_dfnrKind = "content#datafeedsFetchNowResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsFetchNowResponse\".
dfnrKind :: Lens' DatafeedsFetchNowResponse Text
dfnrKind = lens _dfnrKind (\ s a -> s{_dfnrKind = a})

instance FromJSON DatafeedsFetchNowResponse where
        parseJSON
          = withObject "DatafeedsFetchNowResponse"
              (\ o ->
                 DatafeedsFetchNowResponse' <$>
                   (o .:? "kind" .!=
                      "content#datafeedsFetchNowResponse"))

instance ToJSON DatafeedsFetchNowResponse where
        toJSON DatafeedsFetchNowResponse'{..}
          = object (catMaybes [Just ("kind" .= _dfnrKind)])

--
-- /See:/ 'ordersGetTestOrderTemplateResponse' smart constructor.
data OrdersGetTestOrderTemplateResponse =
  OrdersGetTestOrderTemplateResponse'
    { _ogtotrKind     :: !Text
    , _ogtotrTemplate :: !(Maybe TestOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersGetTestOrderTemplateResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogtotrKind'
--
-- * 'ogtotrTemplate'
ordersGetTestOrderTemplateResponse
    :: OrdersGetTestOrderTemplateResponse
ordersGetTestOrderTemplateResponse =
  OrdersGetTestOrderTemplateResponse'
    { _ogtotrKind = "content#ordersGetTestOrderTemplateResponse"
    , _ogtotrTemplate = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetTestOrderTemplateResponse\".
ogtotrKind :: Lens' OrdersGetTestOrderTemplateResponse Text
ogtotrKind
  = lens _ogtotrKind (\ s a -> s{_ogtotrKind = a})

-- | The requested test order template.
ogtotrTemplate :: Lens' OrdersGetTestOrderTemplateResponse (Maybe TestOrder)
ogtotrTemplate
  = lens _ogtotrTemplate
      (\ s a -> s{_ogtotrTemplate = a})

instance FromJSON OrdersGetTestOrderTemplateResponse
         where
        parseJSON
          = withObject "OrdersGetTestOrderTemplateResponse"
              (\ o ->
                 OrdersGetTestOrderTemplateResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersGetTestOrderTemplateResponse")
                     <*> (o .:? "template"))

instance ToJSON OrdersGetTestOrderTemplateResponse
         where
        toJSON OrdersGetTestOrderTemplateResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ogtotrKind),
                  ("template" .=) <$> _ogtotrTemplate])

-- | A batch entry encoding a single non-batch accounts request.
--
-- /See:/ 'accountsCustomBatchRequestEntry' smart constructor.
data AccountsCustomBatchRequestEntry =
  AccountsCustomBatchRequestEntry'
    { _accMerchantId  :: !(Maybe (Textual Word64))
    , _accForce       :: !(Maybe Bool)
    , _accAccount     :: !(Maybe Account)
    , _accAccountId   :: !(Maybe (Textual Word64))
    , _accMethod      :: !(Maybe Text)
    , _accOverwrite   :: !(Maybe Bool)
    , _accBatchId     :: !(Maybe (Textual Word32))
    , _accLinkRequest :: !(Maybe AccountsCustomBatchRequestEntryLinkRequest)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accMerchantId'
--
-- * 'accForce'
--
-- * 'accAccount'
--
-- * 'accAccountId'
--
-- * 'accMethod'
--
-- * 'accOverwrite'
--
-- * 'accBatchId'
--
-- * 'accLinkRequest'
accountsCustomBatchRequestEntry
    :: AccountsCustomBatchRequestEntry
accountsCustomBatchRequestEntry =
  AccountsCustomBatchRequestEntry'
    { _accMerchantId = Nothing
    , _accForce = Nothing
    , _accAccount = Nothing
    , _accAccountId = Nothing
    , _accMethod = Nothing
    , _accOverwrite = Nothing
    , _accBatchId = Nothing
    , _accLinkRequest = Nothing
    }

-- | The ID of the managing account.
accMerchantId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accMerchantId
  = lens _accMerchantId
      (\ s a -> s{_accMerchantId = a})
      . mapping _Coerce

-- | Whether the account should be deleted if the account has offers. Only
-- applicable if the method is delete.
accForce :: Lens' AccountsCustomBatchRequestEntry (Maybe Bool)
accForce = lens _accForce (\ s a -> s{_accForce = a})

-- | The account to create or update. Only defined if the method is insert or
-- update.
accAccount :: Lens' AccountsCustomBatchRequestEntry (Maybe Account)
accAccount
  = lens _accAccount (\ s a -> s{_accAccount = a})

-- | The ID of the targeted account. Only defined if the method is not
-- insert.
accAccountId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})
      . mapping _Coerce

-- | The method of the batch entry.
accMethod :: Lens' AccountsCustomBatchRequestEntry (Maybe Text)
accMethod
  = lens _accMethod (\ s a -> s{_accMethod = a})

-- | Only applicable if the method is claimwebsite. Indicates whether or not
-- to take the claim from another account in case there is a conflict.
accOverwrite :: Lens' AccountsCustomBatchRequestEntry (Maybe Bool)
accOverwrite
  = lens _accOverwrite (\ s a -> s{_accOverwrite = a})

-- | An entry ID, unique within the batch request.
accBatchId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word32)
accBatchId
  = lens _accBatchId (\ s a -> s{_accBatchId = a}) .
      mapping _Coerce

-- | Details about the link request.
accLinkRequest :: Lens' AccountsCustomBatchRequestEntry (Maybe AccountsCustomBatchRequestEntryLinkRequest)
accLinkRequest
  = lens _accLinkRequest
      (\ s a -> s{_accLinkRequest = a})

instance FromJSON AccountsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccountsCustomBatchRequestEntry"
              (\ o ->
                 AccountsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "force") <*>
                     (o .:? "account")
                     <*> (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "overwrite")
                     <*> (o .:? "batchId")
                     <*> (o .:? "linkRequest"))

instance ToJSON AccountsCustomBatchRequestEntry where
        toJSON AccountsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _accMerchantId,
                  ("force" .=) <$> _accForce,
                  ("account" .=) <$> _accAccount,
                  ("accountId" .=) <$> _accAccountId,
                  ("method" .=) <$> _accMethod,
                  ("overwrite" .=) <$> _accOverwrite,
                  ("batchId" .=) <$> _accBatchId,
                  ("linkRequest" .=) <$> _accLinkRequest])

--
-- /See:/ 'weight' smart constructor.
data Weight =
  Weight'
    { _wValue :: !(Maybe Text)
    , _wUnit  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Weight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wValue'
--
-- * 'wUnit'
weight
    :: Weight
weight = Weight' {_wValue = Nothing, _wUnit = Nothing}

-- | The weight represented as a number.
wValue :: Lens' Weight (Maybe Text)
wValue = lens _wValue (\ s a -> s{_wValue = a})

-- | The weight unit.
wUnit :: Lens' Weight (Maybe Text)
wUnit = lens _wUnit (\ s a -> s{_wUnit = a})

instance FromJSON Weight where
        parseJSON
          = withObject "Weight"
              (\ o ->
                 Weight' <$> (o .:? "value") <*> (o .:? "unit"))

instance ToJSON Weight where
        toJSON Weight'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _wValue, ("unit" .=) <$> _wUnit])

--
-- /See:/ 'orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
    { _ocbrecriroReason      :: !(Maybe Text)
    , _ocbrecriroDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecriroReason'
--
-- * 'ocbrecriroDescription'
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
    :: OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
    {_ocbrecriroReason = Nothing, _ocbrecriroDescription = Nothing}

-- | [required] Reason for the refund.
ocbrecriroReason :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (Maybe Text)
ocbrecriroReason
  = lens _ocbrecriroReason
      (\ s a -> s{_ocbrecriroReason = a})

-- | Optional description of the refund reason.
ocbrecriroDescription :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption (Maybe Text)
ocbrecriroDescription
  = lens _ocbrecriroDescription
      (\ s a -> s{_ocbrecriroDescription = a})

instance FromJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
         where
        parseJSON
          = withObject
              "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption"
              (\ o ->
                 OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'
                   <$> (o .:? "reason") <*> (o .:? "description"))

instance ToJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption
         where
        toJSON
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocbrecriroReason,
                  ("description" .=) <$> _ocbrecriroDescription])

--
-- /See:/ 'liaSettingsListResponse' smart constructor.
data LiaSettingsListResponse =
  LiaSettingsListResponse'
    { _lslrNextPageToken :: !(Maybe Text)
    , _lslrKind          :: !Text
    , _lslrResources     :: !(Maybe [LiaSettings])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslrNextPageToken'
--
-- * 'lslrKind'
--
-- * 'lslrResources'
liaSettingsListResponse
    :: LiaSettingsListResponse
liaSettingsListResponse =
  LiaSettingsListResponse'
    { _lslrNextPageToken = Nothing
    , _lslrKind = "content#liasettingsListResponse"
    , _lslrResources = Nothing
    }

-- | The token for the retrieval of the next page of LIA settings.
lslrNextPageToken :: Lens' LiaSettingsListResponse (Maybe Text)
lslrNextPageToken
  = lens _lslrNextPageToken
      (\ s a -> s{_lslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsListResponse\".
lslrKind :: Lens' LiaSettingsListResponse Text
lslrKind = lens _lslrKind (\ s a -> s{_lslrKind = a})

lslrResources :: Lens' LiaSettingsListResponse [LiaSettings]
lslrResources
  = lens _lslrResources
      (\ s a -> s{_lslrResources = a})
      . _Default
      . _Coerce

instance FromJSON LiaSettingsListResponse where
        parseJSON
          = withObject "LiaSettingsListResponse"
              (\ o ->
                 LiaSettingsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#liasettingsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON LiaSettingsListResponse where
        toJSON LiaSettingsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lslrNextPageToken,
                  Just ("kind" .= _lslrKind),
                  ("resources" .=) <$> _lslrResources])

-- | An error returned by the API.
--
-- /See:/ 'error'' smart constructor.
data Error' =
  Error''
    { _eDomain  :: !(Maybe Text)
    , _eReason  :: !(Maybe Text)
    , _eMessage :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Error' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'eDomain'
--
-- * 'eReason'
--
-- * 'eMessage'
error'
    :: Error'
error' = Error'' {_eDomain = Nothing, _eReason = Nothing, _eMessage = Nothing}

-- | The domain of the error.
eDomain :: Lens' Error' (Maybe Text)
eDomain = lens _eDomain (\ s a -> s{_eDomain = a})

-- | The error code.
eReason :: Lens' Error' (Maybe Text)
eReason = lens _eReason (\ s a -> s{_eReason = a})

-- | A description of the error.
eMessage :: Lens' Error' (Maybe Text)
eMessage = lens _eMessage (\ s a -> s{_eMessage = a})

instance FromJSON Error' where
        parseJSON
          = withObject "Error"
              (\ o ->
                 Error'' <$>
                   (o .:? "domain") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON Error' where
        toJSON Error''{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _eDomain,
                  ("reason" .=) <$> _eReason,
                  ("message" .=) <$> _eMessage])

--
-- /See:/ 'productstatusesListResponse' smart constructor.
data ProductstatusesListResponse =
  ProductstatusesListResponse'
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind          :: !Text
    , _plrResources     :: !(Maybe [ProductStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrNextPageToken'
--
-- * 'plrKind'
--
-- * 'plrResources'
productstatusesListResponse
    :: ProductstatusesListResponse
productstatusesListResponse =
  ProductstatusesListResponse'
    { _plrNextPageToken = Nothing
    , _plrKind = "content#productstatusesListResponse"
    , _plrResources = Nothing
    }

-- | The token for the retrieval of the next page of products statuses.
plrNextPageToken :: Lens' ProductstatusesListResponse (Maybe Text)
plrNextPageToken
  = lens _plrNextPageToken
      (\ s a -> s{_plrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesListResponse\".
plrKind :: Lens' ProductstatusesListResponse Text
plrKind = lens _plrKind (\ s a -> s{_plrKind = a})

plrResources :: Lens' ProductstatusesListResponse [ProductStatus]
plrResources
  = lens _plrResources (\ s a -> s{_plrResources = a})
      . _Default
      . _Coerce

instance FromJSON ProductstatusesListResponse where
        parseJSON
          = withObject "ProductstatusesListResponse"
              (\ o ->
                 ProductstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#productstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON ProductstatusesListResponse where
        toJSON ProductstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  Just ("kind" .= _plrKind),
                  ("resources" .=) <$> _plrResources])

--
-- /See:/ 'orderPromotionItem' smart constructor.
data OrderPromotionItem =
  OrderPromotionItem'
    { _opiQuantity   :: !(Maybe (Textual Int32))
    , _opiLineItemId :: !(Maybe Text)
    , _opiProductId  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderPromotionItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opiQuantity'
--
-- * 'opiLineItemId'
--
-- * 'opiProductId'
orderPromotionItem
    :: OrderPromotionItem
orderPromotionItem =
  OrderPromotionItem'
    {_opiQuantity = Nothing, _opiLineItemId = Nothing, _opiProductId = Nothing}

-- | The quantity of the associated product.
opiQuantity :: Lens' OrderPromotionItem (Maybe Int32)
opiQuantity
  = lens _opiQuantity (\ s a -> s{_opiQuantity = a}) .
      mapping _Coerce

opiLineItemId :: Lens' OrderPromotionItem (Maybe Text)
opiLineItemId
  = lens _opiLineItemId
      (\ s a -> s{_opiLineItemId = a})

opiProductId :: Lens' OrderPromotionItem (Maybe Text)
opiProductId
  = lens _opiProductId (\ s a -> s{_opiProductId = a})

instance FromJSON OrderPromotionItem where
        parseJSON
          = withObject "OrderPromotionItem"
              (\ o ->
                 OrderPromotionItem' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "productId"))

instance ToJSON OrderPromotionItem where
        toJSON OrderPromotionItem'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _opiQuantity,
                  ("lineItemId" .=) <$> _opiLineItemId,
                  ("productId" .=) <$> _opiProductId])

--
-- /See:/ 'posCustomBatchResponse' smart constructor.
data PosCustomBatchResponse =
  PosCustomBatchResponse'
    { _posEntries :: !(Maybe [PosCustomBatchResponseEntry])
    , _posKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posEntries'
--
-- * 'posKind'
posCustomBatchResponse
    :: PosCustomBatchResponse
posCustomBatchResponse =
  PosCustomBatchResponse'
    {_posEntries = Nothing, _posKind = "content#posCustomBatchResponse"}

-- | The result of the execution of the batch requests.
posEntries :: Lens' PosCustomBatchResponse [PosCustomBatchResponseEntry]
posEntries
  = lens _posEntries (\ s a -> s{_posEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posCustomBatchResponse\".
posKind :: Lens' PosCustomBatchResponse Text
posKind = lens _posKind (\ s a -> s{_posKind = a})

instance FromJSON PosCustomBatchResponse where
        parseJSON
          = withObject "PosCustomBatchResponse"
              (\ o ->
                 PosCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!= "content#posCustomBatchResponse"))

instance ToJSON PosCustomBatchResponse where
        toJSON PosCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _posEntries,
                  Just ("kind" .= _posKind)])

--
-- /See:/ 'ordersCreateTestOrderRequest' smart constructor.
data OrdersCreateTestOrderRequest =
  OrdersCreateTestOrderRequest'
    { _octorTemplateName :: !(Maybe Text)
    , _octorCountry      :: !(Maybe Text)
    , _octorTestOrder    :: !(Maybe TestOrder)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCreateTestOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorTemplateName'
--
-- * 'octorCountry'
--
-- * 'octorTestOrder'
ordersCreateTestOrderRequest
    :: OrdersCreateTestOrderRequest
ordersCreateTestOrderRequest =
  OrdersCreateTestOrderRequest'
    { _octorTemplateName = Nothing
    , _octorCountry = Nothing
    , _octorTestOrder = Nothing
    }

-- | The test order template to use. Specify as an alternative to testOrder
-- as a shortcut for retrieving a template and then creating an order using
-- that template.
octorTemplateName :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorTemplateName
  = lens _octorTemplateName
      (\ s a -> s{_octorTemplateName = a})

-- | The CLDR territory code of the country of the test order to create.
-- Affects the currency and addresses of orders created via template_name,
-- or the addresses of orders created via test_order. Acceptable values
-- are: - \"US\" - \"FR\" Defaults to US.
octorCountry :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorCountry
  = lens _octorCountry (\ s a -> s{_octorCountry = a})

-- | The test order to create.
octorTestOrder :: Lens' OrdersCreateTestOrderRequest (Maybe TestOrder)
octorTestOrder
  = lens _octorTestOrder
      (\ s a -> s{_octorTestOrder = a})

instance FromJSON OrdersCreateTestOrderRequest where
        parseJSON
          = withObject "OrdersCreateTestOrderRequest"
              (\ o ->
                 OrdersCreateTestOrderRequest' <$>
                   (o .:? "templateName") <*> (o .:? "country") <*>
                     (o .:? "testOrder"))

instance ToJSON OrdersCreateTestOrderRequest where
        toJSON OrdersCreateTestOrderRequest'{..}
          = object
              (catMaybes
                 [("templateName" .=) <$> _octorTemplateName,
                  ("country" .=) <$> _octorCountry,
                  ("testOrder" .=) <$> _octorTestOrder])

--
-- /See:/ 'accountUser' smart constructor.
data AccountUser =
  AccountUser'
    { _auAdmin        :: !(Maybe Bool)
    , _auEmailAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auAdmin'
--
-- * 'auEmailAddress'
accountUser
    :: AccountUser
accountUser = AccountUser' {_auAdmin = Nothing, _auEmailAddress = Nothing}

-- | Whether user is an admin.
auAdmin :: Lens' AccountUser (Maybe Bool)
auAdmin = lens _auAdmin (\ s a -> s{_auAdmin = a})

-- | User\'s email address.
auEmailAddress :: Lens' AccountUser (Maybe Text)
auEmailAddress
  = lens _auEmailAddress
      (\ s a -> s{_auEmailAddress = a})

instance FromJSON AccountUser where
        parseJSON
          = withObject "AccountUser"
              (\ o ->
                 AccountUser' <$>
                   (o .:? "admin") <*> (o .:? "emailAddress"))

instance ToJSON AccountUser where
        toJSON AccountUser'{..}
          = object
              (catMaybes
                 [("admin" .=) <$> _auAdmin,
                  ("emailAddress" .=) <$> _auEmailAddress])

--
-- /See:/ 'accountCustomerService' smart constructor.
data AccountCustomerService =
  AccountCustomerService'
    { _acsEmail       :: !(Maybe Text)
    , _acsURL         :: !(Maybe Text)
    , _acsPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountCustomerService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acsEmail'
--
-- * 'acsURL'
--
-- * 'acsPhoneNumber'
accountCustomerService
    :: AccountCustomerService
accountCustomerService =
  AccountCustomerService'
    {_acsEmail = Nothing, _acsURL = Nothing, _acsPhoneNumber = Nothing}

-- | Customer service email.
acsEmail :: Lens' AccountCustomerService (Maybe Text)
acsEmail = lens _acsEmail (\ s a -> s{_acsEmail = a})

-- | Customer service URL.
acsURL :: Lens' AccountCustomerService (Maybe Text)
acsURL = lens _acsURL (\ s a -> s{_acsURL = a})

-- | Customer service phone number.
acsPhoneNumber :: Lens' AccountCustomerService (Maybe Text)
acsPhoneNumber
  = lens _acsPhoneNumber
      (\ s a -> s{_acsPhoneNumber = a})

instance FromJSON AccountCustomerService where
        parseJSON
          = withObject "AccountCustomerService"
              (\ o ->
                 AccountCustomerService' <$>
                   (o .:? "email") <*> (o .:? "url") <*>
                     (o .:? "phoneNumber"))

instance ToJSON AccountCustomerService where
        toJSON AccountCustomerService'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _acsEmail, ("url" .=) <$> _acsURL,
                  ("phoneNumber" .=) <$> _acsPhoneNumber])

--
-- /See:/ 'gmbAccountsGmbAccount' smart constructor.
data GmbAccountsGmbAccount =
  GmbAccountsGmbAccount'
    { _gagaEmail        :: !(Maybe Text)
    , _gagaListingCount :: !(Maybe (Textual Word64))
    , _gagaName         :: !(Maybe Text)
    , _gagaType         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GmbAccountsGmbAccount' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gagaEmail'
--
-- * 'gagaListingCount'
--
-- * 'gagaName'
--
-- * 'gagaType'
gmbAccountsGmbAccount
    :: GmbAccountsGmbAccount
gmbAccountsGmbAccount =
  GmbAccountsGmbAccount'
    { _gagaEmail = Nothing
    , _gagaListingCount = Nothing
    , _gagaName = Nothing
    , _gagaType = Nothing
    }

-- | The email which identifies the GMB account.
gagaEmail :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaEmail
  = lens _gagaEmail (\ s a -> s{_gagaEmail = a})

-- | Number of listings under this account.
gagaListingCount :: Lens' GmbAccountsGmbAccount (Maybe Word64)
gagaListingCount
  = lens _gagaListingCount
      (\ s a -> s{_gagaListingCount = a})
      . mapping _Coerce

-- | The name of the GMB account.
gagaName :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaName = lens _gagaName (\ s a -> s{_gagaName = a})

-- | The type of the GMB account (User or Business).
gagaType :: Lens' GmbAccountsGmbAccount (Maybe Text)
gagaType = lens _gagaType (\ s a -> s{_gagaType = a})

instance FromJSON GmbAccountsGmbAccount where
        parseJSON
          = withObject "GmbAccountsGmbAccount"
              (\ o ->
                 GmbAccountsGmbAccount' <$>
                   (o .:? "email") <*> (o .:? "listingCount") <*>
                     (o .:? "name")
                     <*> (o .:? "type"))

instance ToJSON GmbAccountsGmbAccount where
        toJSON GmbAccountsGmbAccount'{..}
          = object
              (catMaybes
                 [("email" .=) <$> _gagaEmail,
                  ("listingCount" .=) <$> _gagaListingCount,
                  ("name" .=) <$> _gagaName,
                  ("type" .=) <$> _gagaType])

--
-- /See:/ 'ordersInStoreRefundLineItemResponse' smart constructor.
data OrdersInStoreRefundLineItemResponse =
  OrdersInStoreRefundLineItemResponse'
    { _oisrlirKind            :: !Text
    , _oisrlirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersInStoreRefundLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oisrlirKind'
--
-- * 'oisrlirExecutionStatus'
ordersInStoreRefundLineItemResponse
    :: OrdersInStoreRefundLineItemResponse
ordersInStoreRefundLineItemResponse =
  OrdersInStoreRefundLineItemResponse'
    { _oisrlirKind = "content#ordersInStoreRefundLineItemResponse"
    , _oisrlirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersInStoreRefundLineItemResponse\".
oisrlirKind :: Lens' OrdersInStoreRefundLineItemResponse Text
oisrlirKind
  = lens _oisrlirKind (\ s a -> s{_oisrlirKind = a})

-- | The status of the execution.
oisrlirExecutionStatus :: Lens' OrdersInStoreRefundLineItemResponse (Maybe Text)
oisrlirExecutionStatus
  = lens _oisrlirExecutionStatus
      (\ s a -> s{_oisrlirExecutionStatus = a})

instance FromJSON OrdersInStoreRefundLineItemResponse
         where
        parseJSON
          = withObject "OrdersInStoreRefundLineItemResponse"
              (\ o ->
                 OrdersInStoreRefundLineItemResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersInStoreRefundLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersInStoreRefundLineItemResponse
         where
        toJSON OrdersInStoreRefundLineItemResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oisrlirKind),
                  ("executionStatus" .=) <$> _oisrlirExecutionStatus])

-- | A batch entry encoding a single non-batch datafeeds request.
--
-- /See:/ 'datafeedsCustomBatchRequestEntry' smart constructor.
data DatafeedsCustomBatchRequestEntry =
  DatafeedsCustomBatchRequestEntry'
    { _dcbreMerchantId :: !(Maybe (Textual Word64))
    , _dcbreDatafeed   :: !(Maybe Datafeed)
    , _dcbreMethod     :: !(Maybe Text)
    , _dcbreDatafeedId :: !(Maybe (Textual Word64))
    , _dcbreBatchId    :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbreMerchantId'
--
-- * 'dcbreDatafeed'
--
-- * 'dcbreMethod'
--
-- * 'dcbreDatafeedId'
--
-- * 'dcbreBatchId'
datafeedsCustomBatchRequestEntry
    :: DatafeedsCustomBatchRequestEntry
datafeedsCustomBatchRequestEntry =
  DatafeedsCustomBatchRequestEntry'
    { _dcbreMerchantId = Nothing
    , _dcbreDatafeed = Nothing
    , _dcbreMethod = Nothing
    , _dcbreDatafeedId = Nothing
    , _dcbreBatchId = Nothing
    }

-- | The ID of the managing account.
dcbreMerchantId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word64)
dcbreMerchantId
  = lens _dcbreMerchantId
      (\ s a -> s{_dcbreMerchantId = a})
      . mapping _Coerce

-- | The data feed to insert.
dcbreDatafeed :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Datafeed)
dcbreDatafeed
  = lens _dcbreDatafeed
      (\ s a -> s{_dcbreDatafeed = a})

dcbreMethod :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Text)
dcbreMethod
  = lens _dcbreMethod (\ s a -> s{_dcbreMethod = a})

-- | The ID of the data feed to get, delete or fetch.
dcbreDatafeedId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word64)
dcbreDatafeedId
  = lens _dcbreDatafeedId
      (\ s a -> s{_dcbreDatafeedId = a})
      . mapping _Coerce

-- | An entry ID, unique within the batch request.
dcbreBatchId :: Lens' DatafeedsCustomBatchRequestEntry (Maybe Word32)
dcbreBatchId
  = lens _dcbreBatchId (\ s a -> s{_dcbreBatchId = a})
      . mapping _Coerce

instance FromJSON DatafeedsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "DatafeedsCustomBatchRequestEntry"
              (\ o ->
                 DatafeedsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "datafeed") <*>
                     (o .:? "method")
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchRequestEntry
         where
        toJSON DatafeedsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dcbreMerchantId,
                  ("datafeed" .=) <$> _dcbreDatafeed,
                  ("method" .=) <$> _dcbreMethod,
                  ("datafeedId" .=) <$> _dcbreDatafeedId,
                  ("batchId" .=) <$> _dcbreBatchId])

--
-- /See:/ 'orderCustomerMarketingRightsInfo' smart constructor.
data OrderCustomerMarketingRightsInfo =
  OrderCustomerMarketingRightsInfo'
    { _ocmriExplicitMarketingPreference :: !(Maybe Text)
    , _ocmriMarketingEmailAddress       :: !(Maybe Text)
    , _ocmriLastUpdatedTimestamp        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderCustomerMarketingRightsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocmriExplicitMarketingPreference'
--
-- * 'ocmriMarketingEmailAddress'
--
-- * 'ocmriLastUpdatedTimestamp'
orderCustomerMarketingRightsInfo
    :: OrderCustomerMarketingRightsInfo
orderCustomerMarketingRightsInfo =
  OrderCustomerMarketingRightsInfo'
    { _ocmriExplicitMarketingPreference = Nothing
    , _ocmriMarketingEmailAddress = Nothing
    , _ocmriLastUpdatedTimestamp = Nothing
    }

-- | Last known user selection regarding marketing preferences. In certain
-- cases this selection might not be known, so this field would be empty.
ocmriExplicitMarketingPreference :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriExplicitMarketingPreference
  = lens _ocmriExplicitMarketingPreference
      (\ s a -> s{_ocmriExplicitMarketingPreference = a})

-- | Email address that can be used for marketing purposes. This field is
-- only filled when explicitMarketingPreference is equal to \'granted\'.
ocmriMarketingEmailAddress :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriMarketingEmailAddress
  = lens _ocmriMarketingEmailAddress
      (\ s a -> s{_ocmriMarketingEmailAddress = a})

-- | Timestamp when last time marketing preference was updated. Could be
-- empty, if user wasn\'t offered a selection yet.
ocmriLastUpdatedTimestamp :: Lens' OrderCustomerMarketingRightsInfo (Maybe Text)
ocmriLastUpdatedTimestamp
  = lens _ocmriLastUpdatedTimestamp
      (\ s a -> s{_ocmriLastUpdatedTimestamp = a})

instance FromJSON OrderCustomerMarketingRightsInfo
         where
        parseJSON
          = withObject "OrderCustomerMarketingRightsInfo"
              (\ o ->
                 OrderCustomerMarketingRightsInfo' <$>
                   (o .:? "explicitMarketingPreference") <*>
                     (o .:? "marketingEmailAddress")
                     <*> (o .:? "lastUpdatedTimestamp"))

instance ToJSON OrderCustomerMarketingRightsInfo
         where
        toJSON OrderCustomerMarketingRightsInfo'{..}
          = object
              (catMaybes
                 [("explicitMarketingPreference" .=) <$>
                    _ocmriExplicitMarketingPreference,
                  ("marketingEmailAddress" .=) <$>
                    _ocmriMarketingEmailAddress,
                  ("lastUpdatedTimestamp" .=) <$>
                    _ocmriLastUpdatedTimestamp])

--
-- /See:/ 'merchantOrderReturnItem' smart constructor.
data MerchantOrderReturnItem =
  MerchantOrderReturnItem'
    { _moriReturnShipmentIds    :: !(Maybe [Text])
    , _moriMerchantReturnReason :: !(Maybe RefundReason)
    , _moriState                :: !(Maybe Text)
    , _moriCustomerReturnReason :: !(Maybe CustomerReturnReason)
    , _moriItemId               :: !(Maybe Text)
    , _moriProduct              :: !(Maybe OrderLineItemProduct)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MerchantOrderReturnItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'moriReturnShipmentIds'
--
-- * 'moriMerchantReturnReason'
--
-- * 'moriState'
--
-- * 'moriCustomerReturnReason'
--
-- * 'moriItemId'
--
-- * 'moriProduct'
merchantOrderReturnItem
    :: MerchantOrderReturnItem
merchantOrderReturnItem =
  MerchantOrderReturnItem'
    { _moriReturnShipmentIds = Nothing
    , _moriMerchantReturnReason = Nothing
    , _moriState = Nothing
    , _moriCustomerReturnReason = Nothing
    , _moriItemId = Nothing
    , _moriProduct = Nothing
    }

moriReturnShipmentIds :: Lens' MerchantOrderReturnItem [Text]
moriReturnShipmentIds
  = lens _moriReturnShipmentIds
      (\ s a -> s{_moriReturnShipmentIds = a})
      . _Default
      . _Coerce

moriMerchantReturnReason :: Lens' MerchantOrderReturnItem (Maybe RefundReason)
moriMerchantReturnReason
  = lens _moriMerchantReturnReason
      (\ s a -> s{_moriMerchantReturnReason = a})

moriState :: Lens' MerchantOrderReturnItem (Maybe Text)
moriState
  = lens _moriState (\ s a -> s{_moriState = a})

moriCustomerReturnReason :: Lens' MerchantOrderReturnItem (Maybe CustomerReturnReason)
moriCustomerReturnReason
  = lens _moriCustomerReturnReason
      (\ s a -> s{_moriCustomerReturnReason = a})

moriItemId :: Lens' MerchantOrderReturnItem (Maybe Text)
moriItemId
  = lens _moriItemId (\ s a -> s{_moriItemId = a})

moriProduct :: Lens' MerchantOrderReturnItem (Maybe OrderLineItemProduct)
moriProduct
  = lens _moriProduct (\ s a -> s{_moriProduct = a})

instance FromJSON MerchantOrderReturnItem where
        parseJSON
          = withObject "MerchantOrderReturnItem"
              (\ o ->
                 MerchantOrderReturnItem' <$>
                   (o .:? "returnShipmentIds" .!= mempty) <*>
                     (o .:? "merchantReturnReason")
                     <*> (o .:? "state")
                     <*> (o .:? "customerReturnReason")
                     <*> (o .:? "itemId")
                     <*> (o .:? "product"))

instance ToJSON MerchantOrderReturnItem where
        toJSON MerchantOrderReturnItem'{..}
          = object
              (catMaybes
                 [("returnShipmentIds" .=) <$> _moriReturnShipmentIds,
                  ("merchantReturnReason" .=) <$>
                    _moriMerchantReturnReason,
                  ("state" .=) <$> _moriState,
                  ("customerReturnReason" .=) <$>
                    _moriCustomerReturnReason,
                  ("itemId" .=) <$> _moriItemId,
                  ("product" .=) <$> _moriProduct])

--
-- /See:/ 'accountStatusAccountLevelIssue' smart constructor.
data AccountStatusAccountLevelIssue =
  AccountStatusAccountLevelIssue'
    { _asaliDestination   :: !(Maybe Text)
    , _asaliCountry       :: !(Maybe Text)
    , _asaliSeverity      :: !(Maybe Text)
    , _asaliDocumentation :: !(Maybe Text)
    , _asaliId            :: !(Maybe Text)
    , _asaliTitle         :: !(Maybe Text)
    , _asaliDetail        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountStatusAccountLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asaliDestination'
--
-- * 'asaliCountry'
--
-- * 'asaliSeverity'
--
-- * 'asaliDocumentation'
--
-- * 'asaliId'
--
-- * 'asaliTitle'
--
-- * 'asaliDetail'
accountStatusAccountLevelIssue
    :: AccountStatusAccountLevelIssue
accountStatusAccountLevelIssue =
  AccountStatusAccountLevelIssue'
    { _asaliDestination = Nothing
    , _asaliCountry = Nothing
    , _asaliSeverity = Nothing
    , _asaliDocumentation = Nothing
    , _asaliId = Nothing
    , _asaliTitle = Nothing
    , _asaliDetail = Nothing
    }

-- | The destination the issue applies to.
asaliDestination :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDestination
  = lens _asaliDestination
      (\ s a -> s{_asaliDestination = a})

-- | Country for which this issue is reported.
asaliCountry :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliCountry
  = lens _asaliCountry (\ s a -> s{_asaliCountry = a})

-- | Severity of the issue.
asaliSeverity :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliSeverity
  = lens _asaliSeverity
      (\ s a -> s{_asaliSeverity = a})

-- | The URL of a web page to help resolving this issue.
asaliDocumentation :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDocumentation
  = lens _asaliDocumentation
      (\ s a -> s{_asaliDocumentation = a})

-- | Issue identifier.
asaliId :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliId = lens _asaliId (\ s a -> s{_asaliId = a})

-- | Short description of the issue.
asaliTitle :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliTitle
  = lens _asaliTitle (\ s a -> s{_asaliTitle = a})

-- | Additional details about the issue.
asaliDetail :: Lens' AccountStatusAccountLevelIssue (Maybe Text)
asaliDetail
  = lens _asaliDetail (\ s a -> s{_asaliDetail = a})

instance FromJSON AccountStatusAccountLevelIssue
         where
        parseJSON
          = withObject "AccountStatusAccountLevelIssue"
              (\ o ->
                 AccountStatusAccountLevelIssue' <$>
                   (o .:? "destination") <*> (o .:? "country") <*>
                     (o .:? "severity")
                     <*> (o .:? "documentation")
                     <*> (o .:? "id")
                     <*> (o .:? "title")
                     <*> (o .:? "detail"))

instance ToJSON AccountStatusAccountLevelIssue where
        toJSON AccountStatusAccountLevelIssue'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _asaliDestination,
                  ("country" .=) <$> _asaliCountry,
                  ("severity" .=) <$> _asaliSeverity,
                  ("documentation" .=) <$> _asaliDocumentation,
                  ("id" .=) <$> _asaliId, ("title" .=) <$> _asaliTitle,
                  ("detail" .=) <$> _asaliDetail])

-- | The single value of a rate group or the value of a rate group table\'s
-- cell. Exactly one of noShipping, flatRate, pricePercentage,
-- carrierRateName, subtableName must be set.
--
-- /See:/ 'value' smart constructor.
data Value =
  Value'
    { _vPricePercentage :: !(Maybe Text)
    , _vCarrierRateName :: !(Maybe Text)
    , _vFlatRate        :: !(Maybe Price)
    , _vSubtableName    :: !(Maybe Text)
    , _vNoShipping      :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Value' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vPricePercentage'
--
-- * 'vCarrierRateName'
--
-- * 'vFlatRate'
--
-- * 'vSubtableName'
--
-- * 'vNoShipping'
value
    :: Value
value =
  Value'
    { _vPricePercentage = Nothing
    , _vCarrierRateName = Nothing
    , _vFlatRate = Nothing
    , _vSubtableName = Nothing
    , _vNoShipping = Nothing
    }

-- | A percentage of the price represented as a number in decimal notation
-- (e.g., \"5.4\"). Can only be set if all other fields are not set.
vPricePercentage :: Lens' Value (Maybe Text)
vPricePercentage
  = lens _vPricePercentage
      (\ s a -> s{_vPricePercentage = a})

-- | The name of a carrier rate referring to a carrier rate defined in the
-- same rate group. Can only be set if all other fields are not set.
vCarrierRateName :: Lens' Value (Maybe Text)
vCarrierRateName
  = lens _vCarrierRateName
      (\ s a -> s{_vCarrierRateName = a})

-- | A flat rate. Can only be set if all other fields are not set.
vFlatRate :: Lens' Value (Maybe Price)
vFlatRate
  = lens _vFlatRate (\ s a -> s{_vFlatRate = a})

-- | The name of a subtable. Can only be set in table cells (i.e., not for
-- single values), and only if all other fields are not set.
vSubtableName :: Lens' Value (Maybe Text)
vSubtableName
  = lens _vSubtableName
      (\ s a -> s{_vSubtableName = a})

-- | If true, then the product can\'t ship. Must be true when set, can only
-- be set if all other fields are not set.
vNoShipping :: Lens' Value (Maybe Bool)
vNoShipping
  = lens _vNoShipping (\ s a -> s{_vNoShipping = a})

instance FromJSON Value where
        parseJSON
          = withObject "Value"
              (\ o ->
                 Value' <$>
                   (o .:? "pricePercentage") <*>
                     (o .:? "carrierRateName")
                     <*> (o .:? "flatRate")
                     <*> (o .:? "subtableName")
                     <*> (o .:? "noShipping"))

instance ToJSON Value where
        toJSON Value'{..}
          = object
              (catMaybes
                 [("pricePercentage" .=) <$> _vPricePercentage,
                  ("carrierRateName" .=) <$> _vCarrierRateName,
                  ("flatRate" .=) <$> _vFlatRate,
                  ("subtableName" .=) <$> _vSubtableName,
                  ("noShipping" .=) <$> _vNoShipping])

--
-- /See:/ 'installment' smart constructor.
data Installment =
  Installment'
    { _iAmount :: !(Maybe Price)
    , _iMonths :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Installment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAmount'
--
-- * 'iMonths'
installment
    :: Installment
installment = Installment' {_iAmount = Nothing, _iMonths = Nothing}

-- | The amount the buyer has to pay per month.
iAmount :: Lens' Installment (Maybe Price)
iAmount = lens _iAmount (\ s a -> s{_iAmount = a})

-- | The number of installments the buyer has to pay.
iMonths :: Lens' Installment (Maybe Int64)
iMonths
  = lens _iMonths (\ s a -> s{_iMonths = a}) .
      mapping _Coerce

instance FromJSON Installment where
        parseJSON
          = withObject "Installment"
              (\ o ->
                 Installment' <$>
                   (o .:? "amount") <*> (o .:? "months"))

instance ToJSON Installment where
        toJSON Installment'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _iAmount,
                  ("months" .=) <$> _iMonths])

-- | The required fields vary based on the frequency of fetching. For a
-- monthly fetch schedule, day_of_month and hour are required. For a weekly
-- fetch schedule, weekday and hour are required. For a daily fetch
-- schedule, only hour is required.
--
-- /See:/ 'datafeedFetchSchedule' smart constructor.
data DatafeedFetchSchedule =
  DatafeedFetchSchedule'
    { _dfsFetchURL     :: !(Maybe Text)
    , _dfsUsername     :: !(Maybe Text)
    , _dfsMinuteOfHour :: !(Maybe (Textual Word32))
    , _dfsPassword     :: !(Maybe Text)
    , _dfsDayOfMonth   :: !(Maybe (Textual Word32))
    , _dfsHour         :: !(Maybe (Textual Word32))
    , _dfsWeekday      :: !(Maybe Text)
    , _dfsTimeZone     :: !(Maybe Text)
    , _dfsPaused       :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedFetchSchedule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsFetchURL'
--
-- * 'dfsUsername'
--
-- * 'dfsMinuteOfHour'
--
-- * 'dfsPassword'
--
-- * 'dfsDayOfMonth'
--
-- * 'dfsHour'
--
-- * 'dfsWeekday'
--
-- * 'dfsTimeZone'
--
-- * 'dfsPaused'
datafeedFetchSchedule
    :: DatafeedFetchSchedule
datafeedFetchSchedule =
  DatafeedFetchSchedule'
    { _dfsFetchURL = Nothing
    , _dfsUsername = Nothing
    , _dfsMinuteOfHour = Nothing
    , _dfsPassword = Nothing
    , _dfsDayOfMonth = Nothing
    , _dfsHour = Nothing
    , _dfsWeekday = Nothing
    , _dfsTimeZone = Nothing
    , _dfsPaused = Nothing
    }

-- | The URL where the feed file can be fetched. Google Merchant Center will
-- support automatic scheduled uploads using the HTTP, HTTPS, FTP, or SFTP
-- protocols, so the value will need to be a valid link using one of those
-- four protocols.
dfsFetchURL :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsFetchURL
  = lens _dfsFetchURL (\ s a -> s{_dfsFetchURL = a})

-- | An optional user name for fetch_url.
dfsUsername :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsUsername
  = lens _dfsUsername (\ s a -> s{_dfsUsername = a})

-- | The minute of the hour the feed file should be fetched (0-59).
-- Read-only.
dfsMinuteOfHour :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsMinuteOfHour
  = lens _dfsMinuteOfHour
      (\ s a -> s{_dfsMinuteOfHour = a})
      . mapping _Coerce

-- | An optional password for fetch_url.
dfsPassword :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsPassword
  = lens _dfsPassword (\ s a -> s{_dfsPassword = a})

-- | The day of the month the feed file should be fetched (1-31).
dfsDayOfMonth :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsDayOfMonth
  = lens _dfsDayOfMonth
      (\ s a -> s{_dfsDayOfMonth = a})
      . mapping _Coerce

-- | The hour of the day the feed file should be fetched (0-23).
dfsHour :: Lens' DatafeedFetchSchedule (Maybe Word32)
dfsHour
  = lens _dfsHour (\ s a -> s{_dfsHour = a}) .
      mapping _Coerce

-- | The day of the week the feed file should be fetched.
dfsWeekday :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsWeekday
  = lens _dfsWeekday (\ s a -> s{_dfsWeekday = a})

-- | Time zone used for schedule. UTC by default. E.g.,
-- \"America\/Los_Angeles\".
dfsTimeZone :: Lens' DatafeedFetchSchedule (Maybe Text)
dfsTimeZone
  = lens _dfsTimeZone (\ s a -> s{_dfsTimeZone = a})

-- | Whether the scheduled fetch is paused or not.
dfsPaused :: Lens' DatafeedFetchSchedule (Maybe Bool)
dfsPaused
  = lens _dfsPaused (\ s a -> s{_dfsPaused = a})

instance FromJSON DatafeedFetchSchedule where
        parseJSON
          = withObject "DatafeedFetchSchedule"
              (\ o ->
                 DatafeedFetchSchedule' <$>
                   (o .:? "fetchUrl") <*> (o .:? "username") <*>
                     (o .:? "minuteOfHour")
                     <*> (o .:? "password")
                     <*> (o .:? "dayOfMonth")
                     <*> (o .:? "hour")
                     <*> (o .:? "weekday")
                     <*> (o .:? "timeZone")
                     <*> (o .:? "paused"))

instance ToJSON DatafeedFetchSchedule where
        toJSON DatafeedFetchSchedule'{..}
          = object
              (catMaybes
                 [("fetchUrl" .=) <$> _dfsFetchURL,
                  ("username" .=) <$> _dfsUsername,
                  ("minuteOfHour" .=) <$> _dfsMinuteOfHour,
                  ("password" .=) <$> _dfsPassword,
                  ("dayOfMonth" .=) <$> _dfsDayOfMonth,
                  ("hour" .=) <$> _dfsHour,
                  ("weekday" .=) <$> _dfsWeekday,
                  ("timeZone" .=) <$> _dfsTimeZone,
                  ("paused" .=) <$> _dfsPaused])

-- | Store resource.
--
-- /See:/ 'posStore' smart constructor.
data PosStore =
  PosStore'
    { _pssStoreCode    :: !(Maybe Text)
    , _pssKind         :: !Text
    , _pssStoreAddress :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosStore' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pssStoreCode'
--
-- * 'pssKind'
--
-- * 'pssStoreAddress'
posStore
    :: PosStore
posStore =
  PosStore'
    { _pssStoreCode = Nothing
    , _pssKind = "content#posStore"
    , _pssStoreAddress = Nothing
    }

-- | A store identifier that is unique for the given merchant.
pssStoreCode :: Lens' PosStore (Maybe Text)
pssStoreCode
  = lens _pssStoreCode (\ s a -> s{_pssStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posStore\".
pssKind :: Lens' PosStore Text
pssKind = lens _pssKind (\ s a -> s{_pssKind = a})

-- | The street address of the store.
pssStoreAddress :: Lens' PosStore (Maybe Text)
pssStoreAddress
  = lens _pssStoreAddress
      (\ s a -> s{_pssStoreAddress = a})

instance FromJSON PosStore where
        parseJSON
          = withObject "PosStore"
              (\ o ->
                 PosStore' <$>
                   (o .:? "storeCode") <*>
                     (o .:? "kind" .!= "content#posStore")
                     <*> (o .:? "storeAddress"))

instance ToJSON PosStore where
        toJSON PosStore'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _pssStoreCode,
                  Just ("kind" .= _pssKind),
                  ("storeAddress" .=) <$> _pssStoreAddress])

--
-- /See:/ 'liaSettingsSetInventoryVerificationContactResponse' smart constructor.
newtype LiaSettingsSetInventoryVerificationContactResponse =
  LiaSettingsSetInventoryVerificationContactResponse'
    { _lssivcrKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsSetInventoryVerificationContactResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lssivcrKind'
liaSettingsSetInventoryVerificationContactResponse
    :: LiaSettingsSetInventoryVerificationContactResponse
liaSettingsSetInventoryVerificationContactResponse =
  LiaSettingsSetInventoryVerificationContactResponse'
    { _lssivcrKind =
        "content#liasettingsSetInventoryVerificationContactResponse"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsSetInventoryVerificationContactResponse\".
lssivcrKind :: Lens' LiaSettingsSetInventoryVerificationContactResponse Text
lssivcrKind
  = lens _lssivcrKind (\ s a -> s{_lssivcrKind = a})

instance FromJSON
           LiaSettingsSetInventoryVerificationContactResponse
         where
        parseJSON
          = withObject
              "LiaSettingsSetInventoryVerificationContactResponse"
              (\ o ->
                 LiaSettingsSetInventoryVerificationContactResponse'
                   <$>
                   (o .:? "kind" .!=
                      "content#liasettingsSetInventoryVerificationContactResponse"))

instance ToJSON
           LiaSettingsSetInventoryVerificationContactResponse
         where
        toJSON
          LiaSettingsSetInventoryVerificationContactResponse'{..}
          = object (catMaybes [Just ("kind" .= _lssivcrKind)])

--
-- /See:/ 'shippingSettingsGetSupportedCarriersResponse' smart constructor.
data ShippingSettingsGetSupportedCarriersResponse =
  ShippingSettingsGetSupportedCarriersResponse'
    { _ssgscrKind     :: !Text
    , _ssgscrCarriers :: !(Maybe [CarriersCarrier])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsGetSupportedCarriersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgscrKind'
--
-- * 'ssgscrCarriers'
shippingSettingsGetSupportedCarriersResponse
    :: ShippingSettingsGetSupportedCarriersResponse
shippingSettingsGetSupportedCarriersResponse =
  ShippingSettingsGetSupportedCarriersResponse'
    { _ssgscrKind = "content#shippingsettingsGetSupportedCarriersResponse"
    , _ssgscrCarriers = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsGetSupportedCarriersResponse\".
ssgscrKind :: Lens' ShippingSettingsGetSupportedCarriersResponse Text
ssgscrKind
  = lens _ssgscrKind (\ s a -> s{_ssgscrKind = a})

-- | A list of supported carriers. May be empty.
ssgscrCarriers :: Lens' ShippingSettingsGetSupportedCarriersResponse [CarriersCarrier]
ssgscrCarriers
  = lens _ssgscrCarriers
      (\ s a -> s{_ssgscrCarriers = a})
      . _Default
      . _Coerce

instance FromJSON
           ShippingSettingsGetSupportedCarriersResponse
         where
        parseJSON
          = withObject
              "ShippingSettingsGetSupportedCarriersResponse"
              (\ o ->
                 ShippingSettingsGetSupportedCarriersResponse' <$>
                   (o .:? "kind" .!=
                      "content#shippingsettingsGetSupportedCarriersResponse")
                     <*> (o .:? "carriers" .!= mempty))

instance ToJSON
           ShippingSettingsGetSupportedCarriersResponse
         where
        toJSON
          ShippingSettingsGetSupportedCarriersResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ssgscrKind),
                  ("carriers" .=) <$> _ssgscrCarriers])

--
-- /See:/ 'posDataProvidersPosDataProvider' smart constructor.
data PosDataProvidersPosDataProvider =
  PosDataProvidersPosDataProvider'
    { _pdppdpProviderId  :: !(Maybe (Textual Word64))
    , _pdppdpFullName    :: !(Maybe Text)
    , _pdppdpDisplayName :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosDataProvidersPosDataProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdppdpProviderId'
--
-- * 'pdppdpFullName'
--
-- * 'pdppdpDisplayName'
posDataProvidersPosDataProvider
    :: PosDataProvidersPosDataProvider
posDataProvidersPosDataProvider =
  PosDataProvidersPosDataProvider'
    { _pdppdpProviderId = Nothing
    , _pdppdpFullName = Nothing
    , _pdppdpDisplayName = Nothing
    }

-- | The ID of the account.
pdppdpProviderId :: Lens' PosDataProvidersPosDataProvider (Maybe Word64)
pdppdpProviderId
  = lens _pdppdpProviderId
      (\ s a -> s{_pdppdpProviderId = a})
      . mapping _Coerce

-- | The full name of this POS data Provider.
pdppdpFullName :: Lens' PosDataProvidersPosDataProvider (Maybe Text)
pdppdpFullName
  = lens _pdppdpFullName
      (\ s a -> s{_pdppdpFullName = a})

-- | The display name of Pos data Provider.
pdppdpDisplayName :: Lens' PosDataProvidersPosDataProvider (Maybe Text)
pdppdpDisplayName
  = lens _pdppdpDisplayName
      (\ s a -> s{_pdppdpDisplayName = a})

instance FromJSON PosDataProvidersPosDataProvider
         where
        parseJSON
          = withObject "PosDataProvidersPosDataProvider"
              (\ o ->
                 PosDataProvidersPosDataProvider' <$>
                   (o .:? "providerId") <*> (o .:? "fullName") <*>
                     (o .:? "displayName"))

instance ToJSON PosDataProvidersPosDataProvider where
        toJSON PosDataProvidersPosDataProvider'{..}
          = object
              (catMaybes
                 [("providerId" .=) <$> _pdppdpProviderId,
                  ("fullName" .=) <$> _pdppdpFullName,
                  ("displayName" .=) <$> _pdppdpDisplayName])

--
-- /See:/ 'holidaysHoliday' smart constructor.
data HolidaysHoliday =
  HolidaysHoliday'
    { _hhDeliveryGuaranteeHour :: !(Maybe (Textual Word64))
    , _hhDate                  :: !(Maybe Text)
    , _hhDeliveryGuaranteeDate :: !(Maybe Text)
    , _hhCountryCode           :: !(Maybe Text)
    , _hhId                    :: !(Maybe Text)
    , _hhType                  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HolidaysHoliday' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhDeliveryGuaranteeHour'
--
-- * 'hhDate'
--
-- * 'hhDeliveryGuaranteeDate'
--
-- * 'hhCountryCode'
--
-- * 'hhId'
--
-- * 'hhType'
holidaysHoliday
    :: HolidaysHoliday
holidaysHoliday =
  HolidaysHoliday'
    { _hhDeliveryGuaranteeHour = Nothing
    , _hhDate = Nothing
    , _hhDeliveryGuaranteeDate = Nothing
    , _hhCountryCode = Nothing
    , _hhId = Nothing
    , _hhType = Nothing
    }

-- | Hour of the day in the delivery location\'s timezone on the guaranteed
-- delivery date by which the order has to arrive at the customer\'s.
-- Possible values are: 0 (midnight), 1, ..., 12 (noon), 13, ..., 23.
-- Always present.
hhDeliveryGuaranteeHour :: Lens' HolidaysHoliday (Maybe Word64)
hhDeliveryGuaranteeHour
  = lens _hhDeliveryGuaranteeHour
      (\ s a -> s{_hhDeliveryGuaranteeHour = a})
      . mapping _Coerce

-- | Date of the holiday, in ISO 8601 format. E.g. \"2016-12-25\" for
-- Christmas 2016. Always present.
hhDate :: Lens' HolidaysHoliday (Maybe Text)
hhDate = lens _hhDate (\ s a -> s{_hhDate = a})

-- | Date on which the order has to arrive at the customer\'s, in ISO 8601
-- format. E.g. \"2016-12-24\" for 24th December 2016. Always present.
hhDeliveryGuaranteeDate :: Lens' HolidaysHoliday (Maybe Text)
hhDeliveryGuaranteeDate
  = lens _hhDeliveryGuaranteeDate
      (\ s a -> s{_hhDeliveryGuaranteeDate = a})

-- | The CLDR territory code of the country in which the holiday is
-- available. E.g. \"US\", \"DE\", \"GB\". A holiday cutoff can only be
-- configured in a shipping settings service with matching delivery
-- country. Always present.
hhCountryCode :: Lens' HolidaysHoliday (Maybe Text)
hhCountryCode
  = lens _hhCountryCode
      (\ s a -> s{_hhCountryCode = a})

-- | Unique identifier for the holiday to be used when configuring holiday
-- cutoffs. Always present.
hhId :: Lens' HolidaysHoliday (Maybe Text)
hhId = lens _hhId (\ s a -> s{_hhId = a})

-- | The holiday type. Always present.
hhType :: Lens' HolidaysHoliday (Maybe Text)
hhType = lens _hhType (\ s a -> s{_hhType = a})

instance FromJSON HolidaysHoliday where
        parseJSON
          = withObject "HolidaysHoliday"
              (\ o ->
                 HolidaysHoliday' <$>
                   (o .:? "deliveryGuaranteeHour") <*> (o .:? "date")
                     <*> (o .:? "deliveryGuaranteeDate")
                     <*> (o .:? "countryCode")
                     <*> (o .:? "id")
                     <*> (o .:? "type"))

instance ToJSON HolidaysHoliday where
        toJSON HolidaysHoliday'{..}
          = object
              (catMaybes
                 [("deliveryGuaranteeHour" .=) <$>
                    _hhDeliveryGuaranteeHour,
                  ("date" .=) <$> _hhDate,
                  ("deliveryGuaranteeDate" .=) <$>
                    _hhDeliveryGuaranteeDate,
                  ("countryCode" .=) <$> _hhCountryCode,
                  ("id" .=) <$> _hhId, ("type" .=) <$> _hhType])

--
-- /See:/ 'accountsListResponse' smart constructor.
data AccountsListResponse =
  AccountsListResponse'
    { _accNextPageToken :: !(Maybe Text)
    , _accKind          :: !Text
    , _accResources     :: !(Maybe [Account])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accNextPageToken'
--
-- * 'accKind'
--
-- * 'accResources'
accountsListResponse
    :: AccountsListResponse
accountsListResponse =
  AccountsListResponse'
    { _accNextPageToken = Nothing
    , _accKind = "content#accountsListResponse"
    , _accResources = Nothing
    }

-- | The token for the retrieval of the next page of accounts.
accNextPageToken :: Lens' AccountsListResponse (Maybe Text)
accNextPageToken
  = lens _accNextPageToken
      (\ s a -> s{_accNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsListResponse\".
accKind :: Lens' AccountsListResponse Text
accKind = lens _accKind (\ s a -> s{_accKind = a})

accResources :: Lens' AccountsListResponse [Account]
accResources
  = lens _accResources (\ s a -> s{_accResources = a})
      . _Default
      . _Coerce

instance FromJSON AccountsListResponse where
        parseJSON
          = withObject "AccountsListResponse"
              (\ o ->
                 AccountsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#accountsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccountsListResponse where
        toJSON AccountsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _accNextPageToken,
                  Just ("kind" .= _accKind),
                  ("resources" .=) <$> _accResources])

--
-- /See:/ 'orderpaymentsNotifyRefundRequest' smart constructor.
data OrderpaymentsNotifyRefundRequest =
  OrderpaymentsNotifyRefundRequest'
    { _onrrInvoiceIds  :: !(Maybe [Text])
    , _onrrRefundState :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyRefundRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onrrInvoiceIds'
--
-- * 'onrrRefundState'
orderpaymentsNotifyRefundRequest
    :: OrderpaymentsNotifyRefundRequest
orderpaymentsNotifyRefundRequest =
  OrderpaymentsNotifyRefundRequest'
    {_onrrInvoiceIds = Nothing, _onrrRefundState = Nothing}

-- | Invoice IDs from the orderinvoices service that correspond to the
-- refund.
onrrInvoiceIds :: Lens' OrderpaymentsNotifyRefundRequest [Text]
onrrInvoiceIds
  = lens _onrrInvoiceIds
      (\ s a -> s{_onrrInvoiceIds = a})
      . _Default
      . _Coerce

-- | Whether refund was successful.
onrrRefundState :: Lens' OrderpaymentsNotifyRefundRequest (Maybe Text)
onrrRefundState
  = lens _onrrRefundState
      (\ s a -> s{_onrrRefundState = a})

instance FromJSON OrderpaymentsNotifyRefundRequest
         where
        parseJSON
          = withObject "OrderpaymentsNotifyRefundRequest"
              (\ o ->
                 OrderpaymentsNotifyRefundRequest' <$>
                   (o .:? "invoiceIds" .!= mempty) <*>
                     (o .:? "refundState"))

instance ToJSON OrderpaymentsNotifyRefundRequest
         where
        toJSON OrderpaymentsNotifyRefundRequest'{..}
          = object
              (catMaybes
                 [("invoiceIds" .=) <$> _onrrInvoiceIds,
                  ("refundState" .=) <$> _onrrRefundState])

--
-- /See:/ 'accountBusinessInformation' smart constructor.
data AccountBusinessInformation =
  AccountBusinessInformation'
    { _abiAddress         :: !(Maybe AccountAddress)
    , _abiPhoneNumber     :: !(Maybe Text)
    , _abiCustomerService :: !(Maybe AccountCustomerService)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountBusinessInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'abiAddress'
--
-- * 'abiPhoneNumber'
--
-- * 'abiCustomerService'
accountBusinessInformation
    :: AccountBusinessInformation
accountBusinessInformation =
  AccountBusinessInformation'
    { _abiAddress = Nothing
    , _abiPhoneNumber = Nothing
    , _abiCustomerService = Nothing
    }

-- | The address of the business.
abiAddress :: Lens' AccountBusinessInformation (Maybe AccountAddress)
abiAddress
  = lens _abiAddress (\ s a -> s{_abiAddress = a})

-- | The phone number of the business.
abiPhoneNumber :: Lens' AccountBusinessInformation (Maybe Text)
abiPhoneNumber
  = lens _abiPhoneNumber
      (\ s a -> s{_abiPhoneNumber = a})

-- | The customer service information of the business.
abiCustomerService :: Lens' AccountBusinessInformation (Maybe AccountCustomerService)
abiCustomerService
  = lens _abiCustomerService
      (\ s a -> s{_abiCustomerService = a})

instance FromJSON AccountBusinessInformation where
        parseJSON
          = withObject "AccountBusinessInformation"
              (\ o ->
                 AccountBusinessInformation' <$>
                   (o .:? "address") <*> (o .:? "phoneNumber") <*>
                     (o .:? "customerService"))

instance ToJSON AccountBusinessInformation where
        toJSON AccountBusinessInformation'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _abiAddress,
                  ("phoneNumber" .=) <$> _abiPhoneNumber,
                  ("customerService" .=) <$> _abiCustomerService])

--
-- /See:/ 'carriersCarrier' smart constructor.
data CarriersCarrier =
  CarriersCarrier'
    { _ccCountry  :: !(Maybe Text)
    , _ccName     :: !(Maybe Text)
    , _ccServices :: !(Maybe [Text])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CarriersCarrier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccCountry'
--
-- * 'ccName'
--
-- * 'ccServices'
carriersCarrier
    :: CarriersCarrier
carriersCarrier =
  CarriersCarrier'
    {_ccCountry = Nothing, _ccName = Nothing, _ccServices = Nothing}

-- | The CLDR country code of the carrier (e.g., \"US\"). Always present.
ccCountry :: Lens' CarriersCarrier (Maybe Text)
ccCountry
  = lens _ccCountry (\ s a -> s{_ccCountry = a})

-- | The name of the carrier (e.g., \"UPS\"). Always present.
ccName :: Lens' CarriersCarrier (Maybe Text)
ccName = lens _ccName (\ s a -> s{_ccName = a})

-- | A list of supported services (e.g., \"ground\") for that carrier.
-- Contains at least one service.
ccServices :: Lens' CarriersCarrier [Text]
ccServices
  = lens _ccServices (\ s a -> s{_ccServices = a}) .
      _Default
      . _Coerce

instance FromJSON CarriersCarrier where
        parseJSON
          = withObject "CarriersCarrier"
              (\ o ->
                 CarriersCarrier' <$>
                   (o .:? "country") <*> (o .:? "name") <*>
                     (o .:? "services" .!= mempty))

instance ToJSON CarriersCarrier where
        toJSON CarriersCarrier'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _ccCountry,
                  ("name" .=) <$> _ccName,
                  ("services" .=) <$> _ccServices])

--
-- /See:/ 'carrierRate' smart constructor.
data CarrierRate =
  CarrierRate'
    { _crOriginPostalCode     :: !(Maybe Text)
    , _crFlatAdjustment       :: !(Maybe Price)
    , _crCarrierService       :: !(Maybe Text)
    , _crName                 :: !(Maybe Text)
    , _crPercentageAdjustment :: !(Maybe Text)
    , _crCarrierName          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CarrierRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crOriginPostalCode'
--
-- * 'crFlatAdjustment'
--
-- * 'crCarrierService'
--
-- * 'crName'
--
-- * 'crPercentageAdjustment'
--
-- * 'crCarrierName'
carrierRate
    :: CarrierRate
carrierRate =
  CarrierRate'
    { _crOriginPostalCode = Nothing
    , _crFlatAdjustment = Nothing
    , _crCarrierService = Nothing
    , _crName = Nothing
    , _crPercentageAdjustment = Nothing
    , _crCarrierName = Nothing
    }

-- | Shipping origin for this carrier rate. Required.
crOriginPostalCode :: Lens' CarrierRate (Maybe Text)
crOriginPostalCode
  = lens _crOriginPostalCode
      (\ s a -> s{_crOriginPostalCode = a})

-- | Additive shipping rate modifier. Can be negative. For example {
-- \"value\": \"1\", \"currency\" : \"USD\" } adds $1 to the rate, {
-- \"value\": \"-3\", \"currency\" : \"USD\" } removes $3 from the rate.
-- Optional.
crFlatAdjustment :: Lens' CarrierRate (Maybe Price)
crFlatAdjustment
  = lens _crFlatAdjustment
      (\ s a -> s{_crFlatAdjustment = a})

-- | Carrier service, such as \"ground\" or \"2 days\". The list of supported
-- services for a carrier can be retrieved via the getSupportedCarriers
-- method. Required.
crCarrierService :: Lens' CarrierRate (Maybe Text)
crCarrierService
  = lens _crCarrierService
      (\ s a -> s{_crCarrierService = a})

-- | Name of the carrier rate. Must be unique per rate group. Required.
crName :: Lens' CarrierRate (Maybe Text)
crName = lens _crName (\ s a -> s{_crName = a})

-- | Multiplicative shipping rate modifier as a number in decimal notation.
-- Can be negative. For example \"5.4\" increases the rate by 5.4%, \"-3\"
-- decreases the rate by 3%. Optional.
crPercentageAdjustment :: Lens' CarrierRate (Maybe Text)
crPercentageAdjustment
  = lens _crPercentageAdjustment
      (\ s a -> s{_crPercentageAdjustment = a})

-- | Carrier service, such as \"UPS\" or \"Fedex\". The list of supported
-- carriers can be retrieved via the getSupportedCarriers method. Required.
crCarrierName :: Lens' CarrierRate (Maybe Text)
crCarrierName
  = lens _crCarrierName
      (\ s a -> s{_crCarrierName = a})

instance FromJSON CarrierRate where
        parseJSON
          = withObject "CarrierRate"
              (\ o ->
                 CarrierRate' <$>
                   (o .:? "originPostalCode") <*>
                     (o .:? "flatAdjustment")
                     <*> (o .:? "carrierService")
                     <*> (o .:? "name")
                     <*> (o .:? "percentageAdjustment")
                     <*> (o .:? "carrierName"))

instance ToJSON CarrierRate where
        toJSON CarrierRate'{..}
          = object
              (catMaybes
                 [("originPostalCode" .=) <$> _crOriginPostalCode,
                  ("flatAdjustment" .=) <$> _crFlatAdjustment,
                  ("carrierService" .=) <$> _crCarrierService,
                  ("name" .=) <$> _crName,
                  ("percentageAdjustment" .=) <$>
                    _crPercentageAdjustment,
                  ("carrierName" .=) <$> _crCarrierName])

--
-- /See:/ 'shippingSettingsListResponse' smart constructor.
data ShippingSettingsListResponse =
  ShippingSettingsListResponse'
    { _sslrNextPageToken :: !(Maybe Text)
    , _sslrKind          :: !Text
    , _sslrResources     :: !(Maybe [ShippingSettings])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslrNextPageToken'
--
-- * 'sslrKind'
--
-- * 'sslrResources'
shippingSettingsListResponse
    :: ShippingSettingsListResponse
shippingSettingsListResponse =
  ShippingSettingsListResponse'
    { _sslrNextPageToken = Nothing
    , _sslrKind = "content#shippingsettingsListResponse"
    , _sslrResources = Nothing
    }

-- | The token for the retrieval of the next page of shipping settings.
sslrNextPageToken :: Lens' ShippingSettingsListResponse (Maybe Text)
sslrNextPageToken
  = lens _sslrNextPageToken
      (\ s a -> s{_sslrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsListResponse\".
sslrKind :: Lens' ShippingSettingsListResponse Text
sslrKind = lens _sslrKind (\ s a -> s{_sslrKind = a})

sslrResources :: Lens' ShippingSettingsListResponse [ShippingSettings]
sslrResources
  = lens _sslrResources
      (\ s a -> s{_sslrResources = a})
      . _Default
      . _Coerce

instance FromJSON ShippingSettingsListResponse where
        parseJSON
          = withObject "ShippingSettingsListResponse"
              (\ o ->
                 ShippingSettingsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#shippingsettingsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON ShippingSettingsListResponse where
        toJSON ShippingSettingsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _sslrNextPageToken,
                  Just ("kind" .= _sslrKind),
                  ("resources" .=) <$> _sslrResources])

--
-- /See:/ 'ordersCreateTestReturnResponse' smart constructor.
data OrdersCreateTestReturnResponse =
  OrdersCreateTestReturnResponse'
    { _octrrKind     :: !Text
    , _octrrReturnId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCreateTestReturnResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octrrKind'
--
-- * 'octrrReturnId'
ordersCreateTestReturnResponse
    :: OrdersCreateTestReturnResponse
ordersCreateTestReturnResponse =
  OrdersCreateTestReturnResponse'
    { _octrrKind = "content#ordersCreateTestReturnResponse"
    , _octrrReturnId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCreateTestReturnResponse\".
octrrKind :: Lens' OrdersCreateTestReturnResponse Text
octrrKind
  = lens _octrrKind (\ s a -> s{_octrrKind = a})

-- | The ID of the newly created test order return.
octrrReturnId :: Lens' OrdersCreateTestReturnResponse (Maybe Text)
octrrReturnId
  = lens _octrrReturnId
      (\ s a -> s{_octrrReturnId = a})

instance FromJSON OrdersCreateTestReturnResponse
         where
        parseJSON
          = withObject "OrdersCreateTestReturnResponse"
              (\ o ->
                 OrdersCreateTestReturnResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersCreateTestReturnResponse")
                     <*> (o .:? "returnId"))

instance ToJSON OrdersCreateTestReturnResponse where
        toJSON OrdersCreateTestReturnResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _octrrKind),
                  ("returnId" .=) <$> _octrrReturnId])

--
-- /See:/ 'ordersShipLineItemsRequest' smart constructor.
data OrdersShipLineItemsRequest =
  OrdersShipLineItemsRequest'
    { _oslirShipmentGroupId :: !(Maybe Text)
    , _oslirShipmentInfos   :: !(Maybe [OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo])
    , _oslirLineItems       :: !(Maybe [OrderShipmentLineItemShipment])
    , _oslirOperationId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersShipLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirShipmentGroupId'
--
-- * 'oslirShipmentInfos'
--
-- * 'oslirLineItems'
--
-- * 'oslirOperationId'
ordersShipLineItemsRequest
    :: OrdersShipLineItemsRequest
ordersShipLineItemsRequest =
  OrdersShipLineItemsRequest'
    { _oslirShipmentGroupId = Nothing
    , _oslirShipmentInfos = Nothing
    , _oslirLineItems = Nothing
    , _oslirOperationId = Nothing
    }

-- | ID of the shipment group. Required for orders that use the orderinvoices
-- service.
oslirShipmentGroupId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirShipmentGroupId
  = lens _oslirShipmentGroupId
      (\ s a -> s{_oslirShipmentGroupId = a})

-- | Shipment information. This field is repeated because a single line item
-- can be shipped in several packages (and have several tracking IDs).
oslirShipmentInfos :: Lens' OrdersShipLineItemsRequest [OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo]
oslirShipmentInfos
  = lens _oslirShipmentInfos
      (\ s a -> s{_oslirShipmentInfos = a})
      . _Default
      . _Coerce

-- | Line items to ship.
oslirLineItems :: Lens' OrdersShipLineItemsRequest [OrderShipmentLineItemShipment]
oslirLineItems
  = lens _oslirLineItems
      (\ s a -> s{_oslirLineItems = a})
      . _Default
      . _Coerce

-- | The ID of the operation. Unique across all operations for a given order.
oslirOperationId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirOperationId
  = lens _oslirOperationId
      (\ s a -> s{_oslirOperationId = a})

instance FromJSON OrdersShipLineItemsRequest where
        parseJSON
          = withObject "OrdersShipLineItemsRequest"
              (\ o ->
                 OrdersShipLineItemsRequest' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "shipmentInfos" .!= mempty)
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "operationId"))

instance ToJSON OrdersShipLineItemsRequest where
        toJSON OrdersShipLineItemsRequest'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _oslirShipmentGroupId,
                  ("shipmentInfos" .=) <$> _oslirShipmentInfos,
                  ("lineItems" .=) <$> _oslirLineItems,
                  ("operationId" .=) <$> _oslirOperationId])

--
-- /See:/ 'orderreturnsListResponse' smart constructor.
data OrderreturnsListResponse =
  OrderreturnsListResponse'
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrResources     :: !(Maybe [MerchantOrderReturn])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderreturnsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrResources'
orderreturnsListResponse
    :: OrderreturnsListResponse
orderreturnsListResponse =
  OrderreturnsListResponse'
    { _olrNextPageToken = Nothing
    , _olrKind = "content#orderreturnsListResponse"
    , _olrResources = Nothing
    }

-- | The token for the retrieval of the next page of returns.
olrNextPageToken :: Lens' OrderreturnsListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreturnsListResponse\".
olrKind :: Lens' OrderreturnsListResponse Text
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

olrResources :: Lens' OrderreturnsListResponse [MerchantOrderReturn]
olrResources
  = lens _olrResources (\ s a -> s{_olrResources = a})
      . _Default
      . _Coerce

instance FromJSON OrderreturnsListResponse where
        parseJSON
          = withObject "OrderreturnsListResponse"
              (\ o ->
                 OrderreturnsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#orderreturnsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON OrderreturnsListResponse where
        toJSON OrderreturnsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  Just ("kind" .= _olrKind),
                  ("resources" .=) <$> _olrResources])

--
-- /See:/ 'accountsCustomBatchResponse' smart constructor.
data AccountsCustomBatchResponse =
  AccountsCustomBatchResponse'
    { _acbrcEntries :: !(Maybe [AccountsCustomBatchResponseEntry])
    , _acbrcKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrcEntries'
--
-- * 'acbrcKind'
accountsCustomBatchResponse
    :: AccountsCustomBatchResponse
accountsCustomBatchResponse =
  AccountsCustomBatchResponse'
    { _acbrcEntries = Nothing
    , _acbrcKind = "content#accountsCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
acbrcEntries :: Lens' AccountsCustomBatchResponse [AccountsCustomBatchResponseEntry]
acbrcEntries
  = lens _acbrcEntries (\ s a -> s{_acbrcEntries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsCustomBatchResponse\".
acbrcKind :: Lens' AccountsCustomBatchResponse Text
acbrcKind
  = lens _acbrcKind (\ s a -> s{_acbrcKind = a})

instance FromJSON AccountsCustomBatchResponse where
        parseJSON
          = withObject "AccountsCustomBatchResponse"
              (\ o ->
                 AccountsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accountsCustomBatchResponse"))

instance ToJSON AccountsCustomBatchResponse where
        toJSON AccountsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbrcEntries,
                  Just ("kind" .= _acbrcKind)])

--
-- /See:/ 'orderpaymentsNotifyAuthApprovedRequest' smart constructor.
data OrderpaymentsNotifyAuthApprovedRequest =
  OrderpaymentsNotifyAuthApprovedRequest'
    { _onaarAuthAmountPretax :: !(Maybe Price)
    , _onaarAuthAmountTax    :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyAuthApprovedRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onaarAuthAmountPretax'
--
-- * 'onaarAuthAmountTax'
orderpaymentsNotifyAuthApprovedRequest
    :: OrderpaymentsNotifyAuthApprovedRequest
orderpaymentsNotifyAuthApprovedRequest =
  OrderpaymentsNotifyAuthApprovedRequest'
    {_onaarAuthAmountPretax = Nothing, _onaarAuthAmountTax = Nothing}

onaarAuthAmountPretax :: Lens' OrderpaymentsNotifyAuthApprovedRequest (Maybe Price)
onaarAuthAmountPretax
  = lens _onaarAuthAmountPretax
      (\ s a -> s{_onaarAuthAmountPretax = a})

onaarAuthAmountTax :: Lens' OrderpaymentsNotifyAuthApprovedRequest (Maybe Price)
onaarAuthAmountTax
  = lens _onaarAuthAmountTax
      (\ s a -> s{_onaarAuthAmountTax = a})

instance FromJSON
           OrderpaymentsNotifyAuthApprovedRequest
         where
        parseJSON
          = withObject "OrderpaymentsNotifyAuthApprovedRequest"
              (\ o ->
                 OrderpaymentsNotifyAuthApprovedRequest' <$>
                   (o .:? "authAmountPretax") <*>
                     (o .:? "authAmountTax"))

instance ToJSON
           OrderpaymentsNotifyAuthApprovedRequest
         where
        toJSON OrderpaymentsNotifyAuthApprovedRequest'{..}
          = object
              (catMaybes
                 [("authAmountPretax" .=) <$> _onaarAuthAmountPretax,
                  ("authAmountTax" .=) <$> _onaarAuthAmountTax])

--
-- /See:/ 'ordersUpdateLineItemShippingDetailsRequest' smart constructor.
data OrdersUpdateLineItemShippingDetailsRequest =
  OrdersUpdateLineItemShippingDetailsRequest'
    { _oulisdrShipByDate    :: !(Maybe Text)
    , _oulisdrLineItemId    :: !(Maybe Text)
    , _oulisdrDeliverByDate :: !(Maybe Text)
    , _oulisdrOperationId   :: !(Maybe Text)
    , _oulisdrProductId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulisdrShipByDate'
--
-- * 'oulisdrLineItemId'
--
-- * 'oulisdrDeliverByDate'
--
-- * 'oulisdrOperationId'
--
-- * 'oulisdrProductId'
ordersUpdateLineItemShippingDetailsRequest
    :: OrdersUpdateLineItemShippingDetailsRequest
ordersUpdateLineItemShippingDetailsRequest =
  OrdersUpdateLineItemShippingDetailsRequest'
    { _oulisdrShipByDate = Nothing
    , _oulisdrLineItemId = Nothing
    , _oulisdrDeliverByDate = Nothing
    , _oulisdrOperationId = Nothing
    , _oulisdrProductId = Nothing
    }

-- | Updated ship by date, in ISO 8601 format. If not specified only deliver
-- by date is updated.
oulisdrShipByDate :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrShipByDate
  = lens _oulisdrShipByDate
      (\ s a -> s{_oulisdrShipByDate = a})

-- | The ID of the line item to set metadata. Either lineItemId or productId
-- is required.
oulisdrLineItemId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrLineItemId
  = lens _oulisdrLineItemId
      (\ s a -> s{_oulisdrLineItemId = a})

-- | Updated delivery by date, in ISO 8601 format. If not specified only ship
-- by date is updated.
oulisdrDeliverByDate :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrDeliverByDate
  = lens _oulisdrDeliverByDate
      (\ s a -> s{_oulisdrDeliverByDate = a})

-- | The ID of the operation. Unique across all operations for a given order.
oulisdrOperationId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrOperationId
  = lens _oulisdrOperationId
      (\ s a -> s{_oulisdrOperationId = a})

-- | The ID of the product to set metadata. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oulisdrProductId :: Lens' OrdersUpdateLineItemShippingDetailsRequest (Maybe Text)
oulisdrProductId
  = lens _oulisdrProductId
      (\ s a -> s{_oulisdrProductId = a})

instance FromJSON
           OrdersUpdateLineItemShippingDetailsRequest
         where
        parseJSON
          = withObject
              "OrdersUpdateLineItemShippingDetailsRequest"
              (\ o ->
                 OrdersUpdateLineItemShippingDetailsRequest' <$>
                   (o .:? "shipByDate") <*> (o .:? "lineItemId") <*>
                     (o .:? "deliverByDate")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId"))

instance ToJSON
           OrdersUpdateLineItemShippingDetailsRequest
         where
        toJSON
          OrdersUpdateLineItemShippingDetailsRequest'{..}
          = object
              (catMaybes
                 [("shipByDate" .=) <$> _oulisdrShipByDate,
                  ("lineItemId" .=) <$> _oulisdrLineItemId,
                  ("deliverByDate" .=) <$> _oulisdrDeliverByDate,
                  ("operationId" .=) <$> _oulisdrOperationId,
                  ("productId" .=) <$> _oulisdrProductId])

--
-- /See:/ 'merchantOrderReturn' smart constructor.
data MerchantOrderReturn =
  MerchantOrderReturn'
    { _morReturnShipments :: !(Maybe [ReturnShipment])
    , _morMerchantOrderId :: !(Maybe Text)
    , _morReturnItems     :: !(Maybe [MerchantOrderReturnItem])
    , _morCreationDate    :: !(Maybe Text)
    , _morOrderId         :: !(Maybe Text)
    , _morOrderReturnId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'MerchantOrderReturn' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'morReturnShipments'
--
-- * 'morMerchantOrderId'
--
-- * 'morReturnItems'
--
-- * 'morCreationDate'
--
-- * 'morOrderId'
--
-- * 'morOrderReturnId'
merchantOrderReturn
    :: MerchantOrderReturn
merchantOrderReturn =
  MerchantOrderReturn'
    { _morReturnShipments = Nothing
    , _morMerchantOrderId = Nothing
    , _morReturnItems = Nothing
    , _morCreationDate = Nothing
    , _morOrderId = Nothing
    , _morOrderReturnId = Nothing
    }

morReturnShipments :: Lens' MerchantOrderReturn [ReturnShipment]
morReturnShipments
  = lens _morReturnShipments
      (\ s a -> s{_morReturnShipments = a})
      . _Default
      . _Coerce

morMerchantOrderId :: Lens' MerchantOrderReturn (Maybe Text)
morMerchantOrderId
  = lens _morMerchantOrderId
      (\ s a -> s{_morMerchantOrderId = a})

morReturnItems :: Lens' MerchantOrderReturn [MerchantOrderReturnItem]
morReturnItems
  = lens _morReturnItems
      (\ s a -> s{_morReturnItems = a})
      . _Default
      . _Coerce

morCreationDate :: Lens' MerchantOrderReturn (Maybe Text)
morCreationDate
  = lens _morCreationDate
      (\ s a -> s{_morCreationDate = a})

morOrderId :: Lens' MerchantOrderReturn (Maybe Text)
morOrderId
  = lens _morOrderId (\ s a -> s{_morOrderId = a})

morOrderReturnId :: Lens' MerchantOrderReturn (Maybe Text)
morOrderReturnId
  = lens _morOrderReturnId
      (\ s a -> s{_morOrderReturnId = a})

instance FromJSON MerchantOrderReturn where
        parseJSON
          = withObject "MerchantOrderReturn"
              (\ o ->
                 MerchantOrderReturn' <$>
                   (o .:? "returnShipments" .!= mempty) <*>
                     (o .:? "merchantOrderId")
                     <*> (o .:? "returnItems" .!= mempty)
                     <*> (o .:? "creationDate")
                     <*> (o .:? "orderId")
                     <*> (o .:? "orderReturnId"))

instance ToJSON MerchantOrderReturn where
        toJSON MerchantOrderReturn'{..}
          = object
              (catMaybes
                 [("returnShipments" .=) <$> _morReturnShipments,
                  ("merchantOrderId" .=) <$> _morMerchantOrderId,
                  ("returnItems" .=) <$> _morReturnItems,
                  ("creationDate" .=) <$> _morCreationDate,
                  ("orderId" .=) <$> _morOrderId,
                  ("orderReturnId" .=) <$> _morOrderReturnId])

--
-- /See:/ 'productTax' smart constructor.
data ProductTax =
  ProductTax'
    { _ptTaxShip    :: !(Maybe Bool)
    , _ptCountry    :: !(Maybe Text)
    , _ptPostalCode :: !(Maybe Text)
    , _ptRate       :: !(Maybe (Textual Double))
    , _ptRegion     :: !(Maybe Text)
    , _ptLocationId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductTax' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptTaxShip'
--
-- * 'ptCountry'
--
-- * 'ptPostalCode'
--
-- * 'ptRate'
--
-- * 'ptRegion'
--
-- * 'ptLocationId'
productTax
    :: ProductTax
productTax =
  ProductTax'
    { _ptTaxShip = Nothing
    , _ptCountry = Nothing
    , _ptPostalCode = Nothing
    , _ptRate = Nothing
    , _ptRegion = Nothing
    , _ptLocationId = Nothing
    }

-- | Set to true if tax is charged on shipping.
ptTaxShip :: Lens' ProductTax (Maybe Bool)
ptTaxShip
  = lens _ptTaxShip (\ s a -> s{_ptTaxShip = a})

-- | The country within which the item is taxed, specified as a CLDR
-- territory code.
ptCountry :: Lens' ProductTax (Maybe Text)
ptCountry
  = lens _ptCountry (\ s a -> s{_ptCountry = a})

-- | The postal code range that the tax rate applies to, represented by a ZIP
-- code, a ZIP code prefix using * wildcard, a range between two ZIP codes
-- or two ZIP code prefixes of equal length. Examples: 94114, 94*,
-- 94002-95460, 94*-95*.
ptPostalCode :: Lens' ProductTax (Maybe Text)
ptPostalCode
  = lens _ptPostalCode (\ s a -> s{_ptPostalCode = a})

-- | The percentage of tax rate that applies to the item price.
ptRate :: Lens' ProductTax (Maybe Double)
ptRate
  = lens _ptRate (\ s a -> s{_ptRate = a}) .
      mapping _Coerce

-- | The geographic region to which the tax rate applies.
ptRegion :: Lens' ProductTax (Maybe Text)
ptRegion = lens _ptRegion (\ s a -> s{_ptRegion = a})

-- | The numeric id of a location that the tax rate applies to as defined in
-- the AdWords API.
ptLocationId :: Lens' ProductTax (Maybe Int64)
ptLocationId
  = lens _ptLocationId (\ s a -> s{_ptLocationId = a})
      . mapping _Coerce

instance FromJSON ProductTax where
        parseJSON
          = withObject "ProductTax"
              (\ o ->
                 ProductTax' <$>
                   (o .:? "taxShip") <*> (o .:? "country") <*>
                     (o .:? "postalCode")
                     <*> (o .:? "rate")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductTax where
        toJSON ProductTax'{..}
          = object
              (catMaybes
                 [("taxShip" .=) <$> _ptTaxShip,
                  ("country" .=) <$> _ptCountry,
                  ("postalCode" .=) <$> _ptPostalCode,
                  ("rate" .=) <$> _ptRate, ("region" .=) <$> _ptRegion,
                  ("locationId" .=) <$> _ptLocationId])

--
-- /See:/ 'posCustomBatchRequestEntry' smart constructor.
data PosCustomBatchRequestEntry =
  PosCustomBatchRequestEntry'
    { _pcbreMerchantId       :: !(Maybe (Textual Word64))
    , _pcbreStoreCode        :: !(Maybe Text)
    , _pcbreTargetMerchantId :: !(Maybe (Textual Word64))
    , _pcbreMethod           :: !(Maybe Text)
    , _pcbreStore            :: !(Maybe PosStore)
    , _pcbreInventory        :: !(Maybe PosInventory)
    , _pcbreSale             :: !(Maybe PosSale)
    , _pcbreBatchId          :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbreMerchantId'
--
-- * 'pcbreStoreCode'
--
-- * 'pcbreTargetMerchantId'
--
-- * 'pcbreMethod'
--
-- * 'pcbreStore'
--
-- * 'pcbreInventory'
--
-- * 'pcbreSale'
--
-- * 'pcbreBatchId'
posCustomBatchRequestEntry
    :: PosCustomBatchRequestEntry
posCustomBatchRequestEntry =
  PosCustomBatchRequestEntry'
    { _pcbreMerchantId = Nothing
    , _pcbreStoreCode = Nothing
    , _pcbreTargetMerchantId = Nothing
    , _pcbreMethod = Nothing
    , _pcbreStore = Nothing
    , _pcbreInventory = Nothing
    , _pcbreSale = Nothing
    , _pcbreBatchId = Nothing
    }

-- | The ID of the POS data provider.
pcbreMerchantId :: Lens' PosCustomBatchRequestEntry (Maybe Word64)
pcbreMerchantId
  = lens _pcbreMerchantId
      (\ s a -> s{_pcbreMerchantId = a})
      . mapping _Coerce

-- | The store code. Set this only if the method is delete or get.
pcbreStoreCode :: Lens' PosCustomBatchRequestEntry (Maybe Text)
pcbreStoreCode
  = lens _pcbreStoreCode
      (\ s a -> s{_pcbreStoreCode = a})

-- | The ID of the account for which to get\/submit data.
pcbreTargetMerchantId :: Lens' PosCustomBatchRequestEntry (Maybe Word64)
pcbreTargetMerchantId
  = lens _pcbreTargetMerchantId
      (\ s a -> s{_pcbreTargetMerchantId = a})
      . mapping _Coerce

pcbreMethod :: Lens' PosCustomBatchRequestEntry (Maybe Text)
pcbreMethod
  = lens _pcbreMethod (\ s a -> s{_pcbreMethod = a})

-- | The store information to submit. Set this only if the method is insert.
pcbreStore :: Lens' PosCustomBatchRequestEntry (Maybe PosStore)
pcbreStore
  = lens _pcbreStore (\ s a -> s{_pcbreStore = a})

-- | The inventory to submit. Set this only if the method is inventory.
pcbreInventory :: Lens' PosCustomBatchRequestEntry (Maybe PosInventory)
pcbreInventory
  = lens _pcbreInventory
      (\ s a -> s{_pcbreInventory = a})

-- | The sale information to submit. Set this only if the method is sale.
pcbreSale :: Lens' PosCustomBatchRequestEntry (Maybe PosSale)
pcbreSale
  = lens _pcbreSale (\ s a -> s{_pcbreSale = a})

-- | An entry ID, unique within the batch request.
pcbreBatchId :: Lens' PosCustomBatchRequestEntry (Maybe Word32)
pcbreBatchId
  = lens _pcbreBatchId (\ s a -> s{_pcbreBatchId = a})
      . mapping _Coerce

instance FromJSON PosCustomBatchRequestEntry where
        parseJSON
          = withObject "PosCustomBatchRequestEntry"
              (\ o ->
                 PosCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "storeCode") <*>
                     (o .:? "targetMerchantId")
                     <*> (o .:? "method")
                     <*> (o .:? "store")
                     <*> (o .:? "inventory")
                     <*> (o .:? "sale")
                     <*> (o .:? "batchId"))

instance ToJSON PosCustomBatchRequestEntry where
        toJSON PosCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _pcbreMerchantId,
                  ("storeCode" .=) <$> _pcbreStoreCode,
                  ("targetMerchantId" .=) <$> _pcbreTargetMerchantId,
                  ("method" .=) <$> _pcbreMethod,
                  ("store" .=) <$> _pcbreStore,
                  ("inventory" .=) <$> _pcbreInventory,
                  ("sale" .=) <$> _pcbreSale,
                  ("batchId" .=) <$> _pcbreBatchId])

--
-- /See:/ 'orderShipment' smart constructor.
data OrderShipment =
  OrderShipment'
    { _osCarrier      :: !(Maybe Text)
    , _osStatus       :: !(Maybe Text)
    , _osTrackingId   :: !(Maybe Text)
    , _osLineItems    :: !(Maybe [OrderShipmentLineItemShipment])
    , _osId           :: !(Maybe Text)
    , _osCreationDate :: !(Maybe Text)
    , _osDeliveryDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'osCarrier'
--
-- * 'osStatus'
--
-- * 'osTrackingId'
--
-- * 'osLineItems'
--
-- * 'osId'
--
-- * 'osCreationDate'
--
-- * 'osDeliveryDate'
orderShipment
    :: OrderShipment
orderShipment =
  OrderShipment'
    { _osCarrier = Nothing
    , _osStatus = Nothing
    , _osTrackingId = Nothing
    , _osLineItems = Nothing
    , _osId = Nothing
    , _osCreationDate = Nothing
    , _osDeliveryDate = Nothing
    }

-- | The carrier handling the shipment. Acceptable values for US are: -
-- \"gsx\" - \"ups\" - \"usps\" - \"fedex\" - \"dhl\" - \"ecourier\" -
-- \"cxt\" - \"google\" - \"ontrac\" - \"emsy\" - \"ont\" - \"deliv\" -
-- \"dynamex\" - \"lasership\" - \"mpx\" - \"uds\" Acceptable values for FR
-- are: - \"colissimo\" - \"chronopost\"
osCarrier :: Lens' OrderShipment (Maybe Text)
osCarrier
  = lens _osCarrier (\ s a -> s{_osCarrier = a})

-- | The status of the shipment.
osStatus :: Lens' OrderShipment (Maybe Text)
osStatus = lens _osStatus (\ s a -> s{_osStatus = a})

-- | The tracking id for the shipment.
osTrackingId :: Lens' OrderShipment (Maybe Text)
osTrackingId
  = lens _osTrackingId (\ s a -> s{_osTrackingId = a})

-- | The line items that are shipped.
osLineItems :: Lens' OrderShipment [OrderShipmentLineItemShipment]
osLineItems
  = lens _osLineItems (\ s a -> s{_osLineItems = a}) .
      _Default
      . _Coerce

-- | The id of the shipment.
osId :: Lens' OrderShipment (Maybe Text)
osId = lens _osId (\ s a -> s{_osId = a})

-- | Date on which the shipment has been created, in ISO 8601 format.
osCreationDate :: Lens' OrderShipment (Maybe Text)
osCreationDate
  = lens _osCreationDate
      (\ s a -> s{_osCreationDate = a})

-- | Date on which the shipment has been delivered, in ISO 8601 format.
-- Present only if status is delivered
osDeliveryDate :: Lens' OrderShipment (Maybe Text)
osDeliveryDate
  = lens _osDeliveryDate
      (\ s a -> s{_osDeliveryDate = a})

instance FromJSON OrderShipment where
        parseJSON
          = withObject "OrderShipment"
              (\ o ->
                 OrderShipment' <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "trackingId")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "deliveryDate"))

instance ToJSON OrderShipment where
        toJSON OrderShipment'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _osCarrier,
                  ("status" .=) <$> _osStatus,
                  ("trackingId" .=) <$> _osTrackingId,
                  ("lineItems" .=) <$> _osLineItems,
                  ("id" .=) <$> _osId,
                  ("creationDate" .=) <$> _osCreationDate,
                  ("deliveryDate" .=) <$> _osDeliveryDate])

--
-- /See:/ 'accountsLinkResponse' smart constructor.
newtype AccountsLinkResponse =
  AccountsLinkResponse'
    { _alrlKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsLinkResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrlKind'
accountsLinkResponse
    :: AccountsLinkResponse
accountsLinkResponse =
  AccountsLinkResponse' {_alrlKind = "content#accountsLinkResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsLinkResponse\".
alrlKind :: Lens' AccountsLinkResponse Text
alrlKind = lens _alrlKind (\ s a -> s{_alrlKind = a})

instance FromJSON AccountsLinkResponse where
        parseJSON
          = withObject "AccountsLinkResponse"
              (\ o ->
                 AccountsLinkResponse' <$>
                   (o .:? "kind" .!= "content#accountsLinkResponse"))

instance ToJSON AccountsLinkResponse where
        toJSON AccountsLinkResponse'{..}
          = object (catMaybes [Just ("kind" .= _alrlKind)])

--
-- /See:/ 'orderLineItemReturnInfo' smart constructor.
data OrderLineItemReturnInfo =
  OrderLineItemReturnInfo'
    { _oliriIsReturnable :: !(Maybe Bool)
    , _oliriPolicyURL    :: !(Maybe Text)
    , _oliriDaysToReturn :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemReturnInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oliriIsReturnable'
--
-- * 'oliriPolicyURL'
--
-- * 'oliriDaysToReturn'
orderLineItemReturnInfo
    :: OrderLineItemReturnInfo
orderLineItemReturnInfo =
  OrderLineItemReturnInfo'
    { _oliriIsReturnable = Nothing
    , _oliriPolicyURL = Nothing
    , _oliriDaysToReturn = Nothing
    }

-- | Whether the item is returnable.
oliriIsReturnable :: Lens' OrderLineItemReturnInfo (Maybe Bool)
oliriIsReturnable
  = lens _oliriIsReturnable
      (\ s a -> s{_oliriIsReturnable = a})

-- | URL of the item return policy.
oliriPolicyURL :: Lens' OrderLineItemReturnInfo (Maybe Text)
oliriPolicyURL
  = lens _oliriPolicyURL
      (\ s a -> s{_oliriPolicyURL = a})

-- | How many days later the item can be returned.
oliriDaysToReturn :: Lens' OrderLineItemReturnInfo (Maybe Int32)
oliriDaysToReturn
  = lens _oliriDaysToReturn
      (\ s a -> s{_oliriDaysToReturn = a})
      . mapping _Coerce

instance FromJSON OrderLineItemReturnInfo where
        parseJSON
          = withObject "OrderLineItemReturnInfo"
              (\ o ->
                 OrderLineItemReturnInfo' <$>
                   (o .:? "isReturnable") <*> (o .:? "policyUrl") <*>
                     (o .:? "daysToReturn"))

instance ToJSON OrderLineItemReturnInfo where
        toJSON OrderLineItemReturnInfo'{..}
          = object
              (catMaybes
                 [("isReturnable" .=) <$> _oliriIsReturnable,
                  ("policyUrl" .=) <$> _oliriPolicyURL,
                  ("daysToReturn" .=) <$> _oliriDaysToReturn])

-- | Account data. After the creation of a new account it may take a few
-- minutes before it is fully operational. The methods delete, insert,
-- patch, and update require the admin role.
--
-- /See:/ 'account' smart constructor.
data Account =
  Account'
    { _aaUsers                :: !(Maybe [AccountUser])
    , _aaYouTubeChannelLinks  :: !(Maybe [AccountYouTubeChannelLink])
    , _aaKind                 :: !Text
    , _aaSellerId             :: !(Maybe Text)
    , _aaName                 :: !(Maybe Text)
    , _aaBusinessInformation  :: !(Maybe AccountBusinessInformation)
    , _aaId                   :: !(Maybe (Textual Word64))
    , _aaAdsLinks             :: !(Maybe [AccountAdsLink])
    , _aaWebsiteURL           :: !(Maybe Text)
    , _aaGoogleMyBusinessLink :: !(Maybe AccountGoogleMyBusinessLink)
    , _aaAdultContent         :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaUsers'
--
-- * 'aaYouTubeChannelLinks'
--
-- * 'aaKind'
--
-- * 'aaSellerId'
--
-- * 'aaName'
--
-- * 'aaBusinessInformation'
--
-- * 'aaId'
--
-- * 'aaAdsLinks'
--
-- * 'aaWebsiteURL'
--
-- * 'aaGoogleMyBusinessLink'
--
-- * 'aaAdultContent'
account
    :: Account
account =
  Account'
    { _aaUsers = Nothing
    , _aaYouTubeChannelLinks = Nothing
    , _aaKind = "content#account"
    , _aaSellerId = Nothing
    , _aaName = Nothing
    , _aaBusinessInformation = Nothing
    , _aaId = Nothing
    , _aaAdsLinks = Nothing
    , _aaWebsiteURL = Nothing
    , _aaGoogleMyBusinessLink = Nothing
    , _aaAdultContent = Nothing
    }

-- | Users with access to the account. Every account (except for subaccounts)
-- must have at least one admin user.
aaUsers :: Lens' Account [AccountUser]
aaUsers
  = lens _aaUsers (\ s a -> s{_aaUsers = a}) . _Default
      . _Coerce

-- | List of linked YouTube channels that are active or pending approval. To
-- create a new link request, add a new link with status active to the
-- list. It will remain in a pending state until approved or rejected in
-- the YT Creator Studio interface. To delete an active link, or to cancel
-- a link request, remove it from the list.
aaYouTubeChannelLinks :: Lens' Account [AccountYouTubeChannelLink]
aaYouTubeChannelLinks
  = lens _aaYouTubeChannelLinks
      (\ s a -> s{_aaYouTubeChannelLinks = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#account\".
aaKind :: Lens' Account Text
aaKind = lens _aaKind (\ s a -> s{_aaKind = a})

-- | Client-specific, locally-unique, internal ID for the child account.
aaSellerId :: Lens' Account (Maybe Text)
aaSellerId
  = lens _aaSellerId (\ s a -> s{_aaSellerId = a})

-- | Display name for the account.
aaName :: Lens' Account (Maybe Text)
aaName = lens _aaName (\ s a -> s{_aaName = a})

-- | The business information of the account.
aaBusinessInformation :: Lens' Account (Maybe AccountBusinessInformation)
aaBusinessInformation
  = lens _aaBusinessInformation
      (\ s a -> s{_aaBusinessInformation = a})

-- | Merchant Center account ID.
aaId :: Lens' Account (Maybe Word64)
aaId
  = lens _aaId (\ s a -> s{_aaId = a}) .
      mapping _Coerce

-- | List of linked Ads accounts that are active or pending approval. To
-- create a new link request, add a new link with status active to the
-- list. It will remain in a pending state until approved or rejected
-- either in the Ads interface or through the AdWords API. To delete an
-- active link, or to cancel a link request, remove it from the list.
aaAdsLinks :: Lens' Account [AccountAdsLink]
aaAdsLinks
  = lens _aaAdsLinks (\ s a -> s{_aaAdsLinks = a}) .
      _Default
      . _Coerce

-- | The merchant\'s website.
aaWebsiteURL :: Lens' Account (Maybe Text)
aaWebsiteURL
  = lens _aaWebsiteURL (\ s a -> s{_aaWebsiteURL = a})

-- | The GMB account which is linked or in the process of being linked with
-- the Merchant Center account.
aaGoogleMyBusinessLink :: Lens' Account (Maybe AccountGoogleMyBusinessLink)
aaGoogleMyBusinessLink
  = lens _aaGoogleMyBusinessLink
      (\ s a -> s{_aaGoogleMyBusinessLink = a})

-- | Indicates whether the merchant sells adult content.
aaAdultContent :: Lens' Account (Maybe Bool)
aaAdultContent
  = lens _aaAdultContent
      (\ s a -> s{_aaAdultContent = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account' <$>
                   (o .:? "users" .!= mempty) <*>
                     (o .:? "youtubeChannelLinks" .!= mempty)
                     <*> (o .:? "kind" .!= "content#account")
                     <*> (o .:? "sellerId")
                     <*> (o .:? "name")
                     <*> (o .:? "businessInformation")
                     <*> (o .:? "id")
                     <*> (o .:? "adsLinks" .!= mempty)
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "googleMyBusinessLink")
                     <*> (o .:? "adultContent"))

instance ToJSON Account where
        toJSON Account'{..}
          = object
              (catMaybes
                 [("users" .=) <$> _aaUsers,
                  ("youtubeChannelLinks" .=) <$>
                    _aaYouTubeChannelLinks,
                  Just ("kind" .= _aaKind),
                  ("sellerId" .=) <$> _aaSellerId,
                  ("name" .=) <$> _aaName,
                  ("businessInformation" .=) <$>
                    _aaBusinessInformation,
                  ("id" .=) <$> _aaId, ("adsLinks" .=) <$> _aaAdsLinks,
                  ("websiteUrl" .=) <$> _aaWebsiteURL,
                  ("googleMyBusinessLink" .=) <$>
                    _aaGoogleMyBusinessLink,
                  ("adultContent" .=) <$> _aaAdultContent])

--
-- /See:/ 'shipmentTrackingInfo' smart constructor.
data ShipmentTrackingInfo =
  ShipmentTrackingInfo'
    { _stiCarrier        :: !(Maybe Text)
    , _stiTrackingNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShipmentTrackingInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'stiCarrier'
--
-- * 'stiTrackingNumber'
shipmentTrackingInfo
    :: ShipmentTrackingInfo
shipmentTrackingInfo =
  ShipmentTrackingInfo' {_stiCarrier = Nothing, _stiTrackingNumber = Nothing}

stiCarrier :: Lens' ShipmentTrackingInfo (Maybe Text)
stiCarrier
  = lens _stiCarrier (\ s a -> s{_stiCarrier = a})

stiTrackingNumber :: Lens' ShipmentTrackingInfo (Maybe Text)
stiTrackingNumber
  = lens _stiTrackingNumber
      (\ s a -> s{_stiTrackingNumber = a})

instance FromJSON ShipmentTrackingInfo where
        parseJSON
          = withObject "ShipmentTrackingInfo"
              (\ o ->
                 ShipmentTrackingInfo' <$>
                   (o .:? "carrier") <*> (o .:? "trackingNumber"))

instance ToJSON ShipmentTrackingInfo where
        toJSON ShipmentTrackingInfo'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _stiCarrier,
                  ("trackingNumber" .=) <$> _stiTrackingNumber])

--
-- /See:/ 'ordersCancelLineItemRequest' smart constructor.
data OrdersCancelLineItemRequest =
  OrdersCancelLineItemRequest'
    { _oclirQuantity    :: !(Maybe (Textual Word32))
    , _oclirLineItemId  :: !(Maybe Text)
    , _oclirReason      :: !(Maybe Text)
    , _oclirOperationId :: !(Maybe Text)
    , _oclirProductId   :: !(Maybe Text)
    , _oclirReasonText  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirQuantity'
--
-- * 'oclirLineItemId'
--
-- * 'oclirReason'
--
-- * 'oclirOperationId'
--
-- * 'oclirProductId'
--
-- * 'oclirReasonText'
ordersCancelLineItemRequest
    :: OrdersCancelLineItemRequest
ordersCancelLineItemRequest =
  OrdersCancelLineItemRequest'
    { _oclirQuantity = Nothing
    , _oclirLineItemId = Nothing
    , _oclirReason = Nothing
    , _oclirOperationId = Nothing
    , _oclirProductId = Nothing
    , _oclirReasonText = Nothing
    }

-- | The quantity to cancel.
oclirQuantity :: Lens' OrdersCancelLineItemRequest (Maybe Word32)
oclirQuantity
  = lens _oclirQuantity
      (\ s a -> s{_oclirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to cancel. Either lineItemId or productId is
-- required.
oclirLineItemId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirLineItemId
  = lens _oclirLineItemId
      (\ s a -> s{_oclirLineItemId = a})

-- | The reason for the cancellation.
oclirReason :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReason
  = lens _oclirReason (\ s a -> s{_oclirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
oclirOperationId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirOperationId
  = lens _oclirOperationId
      (\ s a -> s{_oclirOperationId = a})

-- | The ID of the product to cancel. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oclirProductId :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirProductId
  = lens _oclirProductId
      (\ s a -> s{_oclirProductId = a})

-- | The explanation of the reason.
oclirReasonText :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReasonText
  = lens _oclirReasonText
      (\ s a -> s{_oclirReasonText = a})

instance FromJSON OrdersCancelLineItemRequest where
        parseJSON
          = withObject "OrdersCancelLineItemRequest"
              (\ o ->
                 OrdersCancelLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersCancelLineItemRequest where
        toJSON OrdersCancelLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oclirQuantity,
                  ("lineItemId" .=) <$> _oclirLineItemId,
                  ("reason" .=) <$> _oclirReason,
                  ("operationId" .=) <$> _oclirOperationId,
                  ("productId" .=) <$> _oclirProductId,
                  ("reasonText" .=) <$> _oclirReasonText])

--
-- /See:/ 'productShippingWeight' smart constructor.
data ProductShippingWeight =
  ProductShippingWeight'
    { _pswValue :: !(Maybe (Textual Double))
    , _pswUnit  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductShippingWeight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pswValue'
--
-- * 'pswUnit'
productShippingWeight
    :: ProductShippingWeight
productShippingWeight =
  ProductShippingWeight' {_pswValue = Nothing, _pswUnit = Nothing}

-- | The weight of the product used to calculate the shipping cost of the
-- item.
pswValue :: Lens' ProductShippingWeight (Maybe Double)
pswValue
  = lens _pswValue (\ s a -> s{_pswValue = a}) .
      mapping _Coerce

-- | The unit of value.
pswUnit :: Lens' ProductShippingWeight (Maybe Text)
pswUnit = lens _pswUnit (\ s a -> s{_pswUnit = a})

instance FromJSON ProductShippingWeight where
        parseJSON
          = withObject "ProductShippingWeight"
              (\ o ->
                 ProductShippingWeight' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingWeight where
        toJSON ProductShippingWeight'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pswValue,
                  ("unit" .=) <$> _pswUnit])

-- | A batch entry encoding a single non-batch accountstatuses request.
--
-- /See:/ 'accountstatusesCustomBatchRequestEntry' smart constructor.
data AccountstatusesCustomBatchRequestEntry =
  AccountstatusesCustomBatchRequestEntry'
    { _acbrecMerchantId   :: !(Maybe (Textual Word64))
    , _acbrecAccountId    :: !(Maybe (Textual Word64))
    , _acbrecDestinations :: !(Maybe [Text])
    , _acbrecMethod       :: !(Maybe Text)
    , _acbrecBatchId      :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrecMerchantId'
--
-- * 'acbrecAccountId'
--
-- * 'acbrecDestinations'
--
-- * 'acbrecMethod'
--
-- * 'acbrecBatchId'
accountstatusesCustomBatchRequestEntry
    :: AccountstatusesCustomBatchRequestEntry
accountstatusesCustomBatchRequestEntry =
  AccountstatusesCustomBatchRequestEntry'
    { _acbrecMerchantId = Nothing
    , _acbrecAccountId = Nothing
    , _acbrecDestinations = Nothing
    , _acbrecMethod = Nothing
    , _acbrecBatchId = Nothing
    }

-- | The ID of the managing account.
acbrecMerchantId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word64)
acbrecMerchantId
  = lens _acbrecMerchantId
      (\ s a -> s{_acbrecMerchantId = a})
      . mapping _Coerce

-- | The ID of the (sub-)account whose status to get.
acbrecAccountId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word64)
acbrecAccountId
  = lens _acbrecAccountId
      (\ s a -> s{_acbrecAccountId = a})
      . mapping _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
acbrecDestinations :: Lens' AccountstatusesCustomBatchRequestEntry [Text]
acbrecDestinations
  = lens _acbrecDestinations
      (\ s a -> s{_acbrecDestinations = a})
      . _Default
      . _Coerce

-- | The method (get).
acbrecMethod :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Text)
acbrecMethod
  = lens _acbrecMethod (\ s a -> s{_acbrecMethod = a})

-- | An entry ID, unique within the batch request.
acbrecBatchId :: Lens' AccountstatusesCustomBatchRequestEntry (Maybe Word32)
acbrecBatchId
  = lens _acbrecBatchId
      (\ s a -> s{_acbrecBatchId = a})
      . mapping _Coerce

instance FromJSON
           AccountstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequestEntry"
              (\ o ->
                 AccountstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "destinations" .!= mempty)
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON
           AccountstatusesCustomBatchRequestEntry
         where
        toJSON AccountstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _acbrecMerchantId,
                  ("accountId" .=) <$> _acbrecAccountId,
                  ("destinations" .=) <$> _acbrecDestinations,
                  ("method" .=) <$> _acbrecMethod,
                  ("batchId" .=) <$> _acbrecBatchId])

--
-- /See:/ 'deliveryTime' smart constructor.
data DeliveryTime =
  DeliveryTime'
    { _dtHolidayCutoffs        :: !(Maybe [HolidayCutoff])
    , _dtMinTransitTimeInDays  :: !(Maybe (Textual Word32))
    , _dtCutoffTime            :: !(Maybe CutoffTime)
    , _dtMinHandlingTimeInDays :: !(Maybe (Textual Word32))
    , _dtMaxTransitTimeInDays  :: !(Maybe (Textual Word32))
    , _dtMaxHandlingTimeInDays :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeliveryTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtHolidayCutoffs'
--
-- * 'dtMinTransitTimeInDays'
--
-- * 'dtCutoffTime'
--
-- * 'dtMinHandlingTimeInDays'
--
-- * 'dtMaxTransitTimeInDays'
--
-- * 'dtMaxHandlingTimeInDays'
deliveryTime
    :: DeliveryTime
deliveryTime =
  DeliveryTime'
    { _dtHolidayCutoffs = Nothing
    , _dtMinTransitTimeInDays = Nothing
    , _dtCutoffTime = Nothing
    , _dtMinHandlingTimeInDays = Nothing
    , _dtMaxTransitTimeInDays = Nothing
    , _dtMaxHandlingTimeInDays = Nothing
    }

-- | Holiday cutoff definitions. If configured, they specify order cutoff
-- times for holiday-specific shipping.
dtHolidayCutoffs :: Lens' DeliveryTime [HolidayCutoff]
dtHolidayCutoffs
  = lens _dtHolidayCutoffs
      (\ s a -> s{_dtHolidayCutoffs = a})
      . _Default
      . _Coerce

-- | Minimum number of business days that is spent in transit. 0 means same
-- day delivery, 1 means next day delivery. Required.
dtMinTransitTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMinTransitTimeInDays
  = lens _dtMinTransitTimeInDays
      (\ s a -> s{_dtMinTransitTimeInDays = a})
      . mapping _Coerce

-- | Business days cutoff time definition. If not configured the cutoff time
-- will be defaulted to 8AM PST.
dtCutoffTime :: Lens' DeliveryTime (Maybe CutoffTime)
dtCutoffTime
  = lens _dtCutoffTime (\ s a -> s{_dtCutoffTime = a})

-- | Minimum number of business days spent before an order is shipped. 0
-- means same day shipped, 1 means next day shipped.
dtMinHandlingTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMinHandlingTimeInDays
  = lens _dtMinHandlingTimeInDays
      (\ s a -> s{_dtMinHandlingTimeInDays = a})
      . mapping _Coerce

-- | Maximum number of business days that is spent in transit. 0 means same
-- day delivery, 1 means next day delivery. Must be greater than or equal
-- to minTransitTimeInDays. Required.
dtMaxTransitTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMaxTransitTimeInDays
  = lens _dtMaxTransitTimeInDays
      (\ s a -> s{_dtMaxTransitTimeInDays = a})
      . mapping _Coerce

-- | Maximum number of business days spent before an order is shipped. 0
-- means same day shipped, 1 means next day shipped. Must be greater than
-- or equal to minHandlingTimeInDays.
dtMaxHandlingTimeInDays :: Lens' DeliveryTime (Maybe Word32)
dtMaxHandlingTimeInDays
  = lens _dtMaxHandlingTimeInDays
      (\ s a -> s{_dtMaxHandlingTimeInDays = a})
      . mapping _Coerce

instance FromJSON DeliveryTime where
        parseJSON
          = withObject "DeliveryTime"
              (\ o ->
                 DeliveryTime' <$>
                   (o .:? "holidayCutoffs" .!= mempty) <*>
                     (o .:? "minTransitTimeInDays")
                     <*> (o .:? "cutoffTime")
                     <*> (o .:? "minHandlingTimeInDays")
                     <*> (o .:? "maxTransitTimeInDays")
                     <*> (o .:? "maxHandlingTimeInDays"))

instance ToJSON DeliveryTime where
        toJSON DeliveryTime'{..}
          = object
              (catMaybes
                 [("holidayCutoffs" .=) <$> _dtHolidayCutoffs,
                  ("minTransitTimeInDays" .=) <$>
                    _dtMinTransitTimeInDays,
                  ("cutoffTime" .=) <$> _dtCutoffTime,
                  ("minHandlingTimeInDays" .=) <$>
                    _dtMinHandlingTimeInDays,
                  ("maxTransitTimeInDays" .=) <$>
                    _dtMaxTransitTimeInDays,
                  ("maxHandlingTimeInDays" .=) <$>
                    _dtMaxHandlingTimeInDays])

--
-- /See:/ 'liaCountrySettings' smart constructor.
data LiaCountrySettings =
  LiaCountrySettings'
    { _lcsPosDataProvider             :: !(Maybe LiaPosDataProvider)
    , _lcsCountry                     :: !(Maybe Text)
    , _lcsStorePickupActive           :: !(Maybe Bool)
    , _lcsInventory                   :: !(Maybe LiaInventorySettings)
    , _lcsAbout                       :: !(Maybe LiaAboutPageSettings)
    , _lcsHostedLocalStorefrontActive :: !(Maybe Bool)
    , _lcsOnDisplayToOrder            :: !(Maybe LiaOnDisplayToOrderSettings)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaCountrySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lcsPosDataProvider'
--
-- * 'lcsCountry'
--
-- * 'lcsStorePickupActive'
--
-- * 'lcsInventory'
--
-- * 'lcsAbout'
--
-- * 'lcsHostedLocalStorefrontActive'
--
-- * 'lcsOnDisplayToOrder'
liaCountrySettings
    :: LiaCountrySettings
liaCountrySettings =
  LiaCountrySettings'
    { _lcsPosDataProvider = Nothing
    , _lcsCountry = Nothing
    , _lcsStorePickupActive = Nothing
    , _lcsInventory = Nothing
    , _lcsAbout = Nothing
    , _lcsHostedLocalStorefrontActive = Nothing
    , _lcsOnDisplayToOrder = Nothing
    }

-- | The POS data provider linked with this country.
lcsPosDataProvider :: Lens' LiaCountrySettings (Maybe LiaPosDataProvider)
lcsPosDataProvider
  = lens _lcsPosDataProvider
      (\ s a -> s{_lcsPosDataProvider = a})

-- | CLDR country code (e.g. \"US\").
lcsCountry :: Lens' LiaCountrySettings (Maybe Text)
lcsCountry
  = lens _lcsCountry (\ s a -> s{_lcsCountry = a})

-- | The status of the \"Store pickup\" feature.
lcsStorePickupActive :: Lens' LiaCountrySettings (Maybe Bool)
lcsStorePickupActive
  = lens _lcsStorePickupActive
      (\ s a -> s{_lcsStorePickupActive = a})

-- | LIA inventory verification settings.
lcsInventory :: Lens' LiaCountrySettings (Maybe LiaInventorySettings)
lcsInventory
  = lens _lcsInventory (\ s a -> s{_lcsInventory = a})

-- | The settings for the About page.
lcsAbout :: Lens' LiaCountrySettings (Maybe LiaAboutPageSettings)
lcsAbout = lens _lcsAbout (\ s a -> s{_lcsAbout = a})

-- | The status of the \"Merchant hosted local storefront\" feature.
lcsHostedLocalStorefrontActive :: Lens' LiaCountrySettings (Maybe Bool)
lcsHostedLocalStorefrontActive
  = lens _lcsHostedLocalStorefrontActive
      (\ s a -> s{_lcsHostedLocalStorefrontActive = a})

-- | LIA \"On Display To Order\" settings.
lcsOnDisplayToOrder :: Lens' LiaCountrySettings (Maybe LiaOnDisplayToOrderSettings)
lcsOnDisplayToOrder
  = lens _lcsOnDisplayToOrder
      (\ s a -> s{_lcsOnDisplayToOrder = a})

instance FromJSON LiaCountrySettings where
        parseJSON
          = withObject "LiaCountrySettings"
              (\ o ->
                 LiaCountrySettings' <$>
                   (o .:? "posDataProvider") <*> (o .:? "country") <*>
                     (o .:? "storePickupActive")
                     <*> (o .:? "inventory")
                     <*> (o .:? "about")
                     <*> (o .:? "hostedLocalStorefrontActive")
                     <*> (o .:? "onDisplayToOrder"))

instance ToJSON LiaCountrySettings where
        toJSON LiaCountrySettings'{..}
          = object
              (catMaybes
                 [("posDataProvider" .=) <$> _lcsPosDataProvider,
                  ("country" .=) <$> _lcsCountry,
                  ("storePickupActive" .=) <$> _lcsStorePickupActive,
                  ("inventory" .=) <$> _lcsInventory,
                  ("about" .=) <$> _lcsAbout,
                  ("hostedLocalStorefrontActive" .=) <$>
                    _lcsHostedLocalStorefrontActive,
                  ("onDisplayToOrder" .=) <$> _lcsOnDisplayToOrder])

--
-- /See:/ 'ordersReturnRefundLineItemResponse' smart constructor.
data OrdersReturnRefundLineItemResponse =
  OrdersReturnRefundLineItemResponse'
    { _orrlirKind            :: !Text
    , _orrlirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersReturnRefundLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirKind'
--
-- * 'orrlirExecutionStatus'
ordersReturnRefundLineItemResponse
    :: OrdersReturnRefundLineItemResponse
ordersReturnRefundLineItemResponse =
  OrdersReturnRefundLineItemResponse'
    { _orrlirKind = "content#ordersReturnRefundLineItemResponse"
    , _orrlirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersReturnRefundLineItemResponse\".
orrlirKind :: Lens' OrdersReturnRefundLineItemResponse Text
orrlirKind
  = lens _orrlirKind (\ s a -> s{_orrlirKind = a})

-- | The status of the execution.
orrlirExecutionStatus :: Lens' OrdersReturnRefundLineItemResponse (Maybe Text)
orrlirExecutionStatus
  = lens _orrlirExecutionStatus
      (\ s a -> s{_orrlirExecutionStatus = a})

instance FromJSON OrdersReturnRefundLineItemResponse
         where
        parseJSON
          = withObject "OrdersReturnRefundLineItemResponse"
              (\ o ->
                 OrdersReturnRefundLineItemResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersReturnRefundLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersReturnRefundLineItemResponse
         where
        toJSON OrdersReturnRefundLineItemResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _orrlirKind),
                  ("executionStatus" .=) <$> _orrlirExecutionStatus])

-- | A batch entry encoding a single non-batch productstatuses response.
--
-- /See:/ 'productstatusesCustomBatchResponseEntry' smart constructor.
data ProductstatusesCustomBatchResponseEntry =
  ProductstatusesCustomBatchResponseEntry'
    { _pKind          :: !Text
    , _pProductStatus :: !(Maybe ProductStatus)
    , _pErrors        :: !(Maybe Errors)
    , _pBatchId       :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pKind'
--
-- * 'pProductStatus'
--
-- * 'pErrors'
--
-- * 'pBatchId'
productstatusesCustomBatchResponseEntry
    :: ProductstatusesCustomBatchResponseEntry
productstatusesCustomBatchResponseEntry =
  ProductstatusesCustomBatchResponseEntry'
    { _pKind = "content#productstatusesCustomBatchResponseEntry"
    , _pProductStatus = Nothing
    , _pErrors = Nothing
    , _pBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesCustomBatchResponseEntry\".
pKind :: Lens' ProductstatusesCustomBatchResponseEntry Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

-- | The requested product status. Only defined if the request was
-- successful.
pProductStatus :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe ProductStatus)
pProductStatus
  = lens _pProductStatus
      (\ s a -> s{_pProductStatus = a})

-- | A list of errors, if the request failed.
pErrors :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Errors)
pErrors = lens _pErrors (\ s a -> s{_pErrors = a})

-- | The ID of the request entry this entry responds to.
pBatchId :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Word32)
pBatchId
  = lens _pBatchId (\ s a -> s{_pBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ProductstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "ProductstatusesCustomBatchResponseEntry"
              (\ o ->
                 ProductstatusesCustomBatchResponseEntry' <$>
                   (o .:? "kind" .!=
                      "content#productstatusesCustomBatchResponseEntry")
                     <*> (o .:? "productStatus")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
           ProductstatusesCustomBatchResponseEntry
         where
        toJSON ProductstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pKind),
                  ("productStatus" .=) <$> _pProductStatus,
                  ("errors" .=) <$> _pErrors,
                  ("batchId" .=) <$> _pBatchId])

--
-- /See:/ 'shippingSettingsGetSupportedHolidaysResponse' smart constructor.
data ShippingSettingsGetSupportedHolidaysResponse =
  ShippingSettingsGetSupportedHolidaysResponse'
    { _ssgshrKind     :: !Text
    , _ssgshrHolidays :: !(Maybe [HolidaysHoliday])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsGetSupportedHolidaysResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssgshrKind'
--
-- * 'ssgshrHolidays'
shippingSettingsGetSupportedHolidaysResponse
    :: ShippingSettingsGetSupportedHolidaysResponse
shippingSettingsGetSupportedHolidaysResponse =
  ShippingSettingsGetSupportedHolidaysResponse'
    { _ssgshrKind = "content#shippingsettingsGetSupportedHolidaysResponse"
    , _ssgshrHolidays = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsGetSupportedHolidaysResponse\".
ssgshrKind :: Lens' ShippingSettingsGetSupportedHolidaysResponse Text
ssgshrKind
  = lens _ssgshrKind (\ s a -> s{_ssgshrKind = a})

-- | A list of holidays applicable for delivery guarantees. May be empty.
ssgshrHolidays :: Lens' ShippingSettingsGetSupportedHolidaysResponse [HolidaysHoliday]
ssgshrHolidays
  = lens _ssgshrHolidays
      (\ s a -> s{_ssgshrHolidays = a})
      . _Default
      . _Coerce

instance FromJSON
           ShippingSettingsGetSupportedHolidaysResponse
         where
        parseJSON
          = withObject
              "ShippingSettingsGetSupportedHolidaysResponse"
              (\ o ->
                 ShippingSettingsGetSupportedHolidaysResponse' <$>
                   (o .:? "kind" .!=
                      "content#shippingsettingsGetSupportedHolidaysResponse")
                     <*> (o .:? "holidays" .!= mempty))

instance ToJSON
           ShippingSettingsGetSupportedHolidaysResponse
         where
        toJSON
          ShippingSettingsGetSupportedHolidaysResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ssgshrKind),
                  ("holidays" .=) <$> _ssgshrHolidays])

--
-- /See:/ 'liaPosDataProvider' smart constructor.
data LiaPosDataProvider =
  LiaPosDataProvider'
    { _lpdpPosExternalAccountId :: !(Maybe Text)
    , _lpdpPosDataProviderId    :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaPosDataProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lpdpPosExternalAccountId'
--
-- * 'lpdpPosDataProviderId'
liaPosDataProvider
    :: LiaPosDataProvider
liaPosDataProvider =
  LiaPosDataProvider'
    {_lpdpPosExternalAccountId = Nothing, _lpdpPosDataProviderId = Nothing}

-- | The account ID by which this merchant is known to the POS data provider.
lpdpPosExternalAccountId :: Lens' LiaPosDataProvider (Maybe Text)
lpdpPosExternalAccountId
  = lens _lpdpPosExternalAccountId
      (\ s a -> s{_lpdpPosExternalAccountId = a})

-- | The ID of the POS data provider.
lpdpPosDataProviderId :: Lens' LiaPosDataProvider (Maybe Word64)
lpdpPosDataProviderId
  = lens _lpdpPosDataProviderId
      (\ s a -> s{_lpdpPosDataProviderId = a})
      . mapping _Coerce

instance FromJSON LiaPosDataProvider where
        parseJSON
          = withObject "LiaPosDataProvider"
              (\ o ->
                 LiaPosDataProvider' <$>
                   (o .:? "posExternalAccountId") <*>
                     (o .:? "posDataProviderId"))

instance ToJSON LiaPosDataProvider where
        toJSON LiaPosDataProvider'{..}
          = object
              (catMaybes
                 [("posExternalAccountId" .=) <$>
                    _lpdpPosExternalAccountId,
                  ("posDataProviderId" .=) <$> _lpdpPosDataProviderId])

--
-- /See:/ 'datafeedFormat' smart constructor.
data DatafeedFormat =
  DatafeedFormat'
    { _dfQuotingMode     :: !(Maybe Text)
    , _dfFileEncoding    :: !(Maybe Text)
    , _dfColumnDelimiter :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedFormat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfQuotingMode'
--
-- * 'dfFileEncoding'
--
-- * 'dfColumnDelimiter'
datafeedFormat
    :: DatafeedFormat
datafeedFormat =
  DatafeedFormat'
    { _dfQuotingMode = Nothing
    , _dfFileEncoding = Nothing
    , _dfColumnDelimiter = Nothing
    }

-- | Specifies how double quotes are interpreted. If not specified, the mode
-- will be auto-detected. Ignored for non-DSV data feeds.
dfQuotingMode :: Lens' DatafeedFormat (Maybe Text)
dfQuotingMode
  = lens _dfQuotingMode
      (\ s a -> s{_dfQuotingMode = a})

-- | Character encoding scheme of the data feed. If not specified, the
-- encoding will be auto-detected.
dfFileEncoding :: Lens' DatafeedFormat (Maybe Text)
dfFileEncoding
  = lens _dfFileEncoding
      (\ s a -> s{_dfFileEncoding = a})

-- | Delimiter for the separation of values in a delimiter-separated values
-- feed. If not specified, the delimiter will be auto-detected. Ignored for
-- non-DSV data feeds.
dfColumnDelimiter :: Lens' DatafeedFormat (Maybe Text)
dfColumnDelimiter
  = lens _dfColumnDelimiter
      (\ s a -> s{_dfColumnDelimiter = a})

instance FromJSON DatafeedFormat where
        parseJSON
          = withObject "DatafeedFormat"
              (\ o ->
                 DatafeedFormat' <$>
                   (o .:? "quotingMode") <*> (o .:? "fileEncoding") <*>
                     (o .:? "columnDelimiter"))

instance ToJSON DatafeedFormat where
        toJSON DatafeedFormat'{..}
          = object
              (catMaybes
                 [("quotingMode" .=) <$> _dfQuotingMode,
                  ("fileEncoding" .=) <$> _dfFileEncoding,
                  ("columnDelimiter" .=) <$> _dfColumnDelimiter])

-- | Local Inventory ads (LIA) settings. All methods except
-- listposdataproviders require the admin role.
--
-- /See:/ 'liaSettings' smart constructor.
data LiaSettings =
  LiaSettings'
    { _lsCountrySettings :: !(Maybe [LiaCountrySettings])
    , _lsKind            :: !Text
    , _lsAccountId       :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsCountrySettings'
--
-- * 'lsKind'
--
-- * 'lsAccountId'
liaSettings
    :: LiaSettings
liaSettings =
  LiaSettings'
    { _lsCountrySettings = Nothing
    , _lsKind = "content#liaSettings"
    , _lsAccountId = Nothing
    }

-- | The LIA settings for each country.
lsCountrySettings :: Lens' LiaSettings [LiaCountrySettings]
lsCountrySettings
  = lens _lsCountrySettings
      (\ s a -> s{_lsCountrySettings = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liaSettings\".
lsKind :: Lens' LiaSettings Text
lsKind = lens _lsKind (\ s a -> s{_lsKind = a})

-- | The ID of the account to which these LIA settings belong. Ignored upon
-- update, always present in get request responses.
lsAccountId :: Lens' LiaSettings (Maybe Word64)
lsAccountId
  = lens _lsAccountId (\ s a -> s{_lsAccountId = a}) .
      mapping _Coerce

instance FromJSON LiaSettings where
        parseJSON
          = withObject "LiaSettings"
              (\ o ->
                 LiaSettings' <$>
                   (o .:? "countrySettings" .!= mempty) <*>
                     (o .:? "kind" .!= "content#liaSettings")
                     <*> (o .:? "accountId"))

instance ToJSON LiaSettings where
        toJSON LiaSettings'{..}
          = object
              (catMaybes
                 [("countrySettings" .=) <$> _lsCountrySettings,
                  Just ("kind" .= _lsKind),
                  ("accountId" .=) <$> _lsAccountId])

--
-- /See:/ 'productShipping' smart constructor.
data ProductShipping =
  ProductShipping'
    { _pService           :: !(Maybe Text)
    , _pLocationGroupName :: !(Maybe Text)
    , _pCountry           :: !(Maybe Text)
    , _pPostalCode        :: !(Maybe Text)
    , _pPrice             :: !(Maybe Price)
    , _pRegion            :: !(Maybe Text)
    , _pLocationId        :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductShipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pService'
--
-- * 'pLocationGroupName'
--
-- * 'pCountry'
--
-- * 'pPostalCode'
--
-- * 'pPrice'
--
-- * 'pRegion'
--
-- * 'pLocationId'
productShipping
    :: ProductShipping
productShipping =
  ProductShipping'
    { _pService = Nothing
    , _pLocationGroupName = Nothing
    , _pCountry = Nothing
    , _pPostalCode = Nothing
    , _pPrice = Nothing
    , _pRegion = Nothing
    , _pLocationId = Nothing
    }

-- | A free-form description of the service class or delivery speed.
pService :: Lens' ProductShipping (Maybe Text)
pService = lens _pService (\ s a -> s{_pService = a})

-- | The location where the shipping is applicable, represented by a location
-- group name.
pLocationGroupName :: Lens' ProductShipping (Maybe Text)
pLocationGroupName
  = lens _pLocationGroupName
      (\ s a -> s{_pLocationGroupName = a})

-- | The CLDR territory code of the country to which an item will ship.
pCountry :: Lens' ProductShipping (Maybe Text)
pCountry = lens _pCountry (\ s a -> s{_pCountry = a})

-- | The postal code range that the shipping rate applies to, represented by
-- a postal code, a postal code prefix followed by a * wildcard, a range
-- between two postal codes or two postal code prefixes of equal length.
pPostalCode :: Lens' ProductShipping (Maybe Text)
pPostalCode
  = lens _pPostalCode (\ s a -> s{_pPostalCode = a})

-- | Fixed shipping price, represented as a number.
pPrice :: Lens' ProductShipping (Maybe Price)
pPrice = lens _pPrice (\ s a -> s{_pPrice = a})

-- | The geographic region to which a shipping rate applies.
pRegion :: Lens' ProductShipping (Maybe Text)
pRegion = lens _pRegion (\ s a -> s{_pRegion = a})

-- | The numeric id of a location that the shipping rate applies to as
-- defined in the AdWords API.
pLocationId :: Lens' ProductShipping (Maybe Int64)
pLocationId
  = lens _pLocationId (\ s a -> s{_pLocationId = a}) .
      mapping _Coerce

instance FromJSON ProductShipping where
        parseJSON
          = withObject "ProductShipping"
              (\ o ->
                 ProductShipping' <$>
                   (o .:? "service") <*> (o .:? "locationGroupName") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "price")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductShipping where
        toJSON ProductShipping'{..}
          = object
              (catMaybes
                 [("service" .=) <$> _pService,
                  ("locationGroupName" .=) <$> _pLocationGroupName,
                  ("country" .=) <$> _pCountry,
                  ("postalCode" .=) <$> _pPostalCode,
                  ("price" .=) <$> _pPrice, ("region" .=) <$> _pRegion,
                  ("locationId" .=) <$> _pLocationId])

--
-- /See:/ 'shippingSettingsCustomBatchRequest' smart constructor.
newtype ShippingSettingsCustomBatchRequest =
  ShippingSettingsCustomBatchRequest'
    { _sscbrEntries :: Maybe [ShippingSettingsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sscbrEntries'
shippingSettingsCustomBatchRequest
    :: ShippingSettingsCustomBatchRequest
shippingSettingsCustomBatchRequest =
  ShippingSettingsCustomBatchRequest' {_sscbrEntries = Nothing}

-- | The request entries to be processed in the batch.
sscbrEntries :: Lens' ShippingSettingsCustomBatchRequest [ShippingSettingsCustomBatchRequestEntry]
sscbrEntries
  = lens _sscbrEntries (\ s a -> s{_sscbrEntries = a})
      . _Default
      . _Coerce

instance FromJSON ShippingSettingsCustomBatchRequest
         where
        parseJSON
          = withObject "ShippingSettingsCustomBatchRequest"
              (\ o ->
                 ShippingSettingsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ShippingSettingsCustomBatchRequest
         where
        toJSON ShippingSettingsCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _sscbrEntries])

--
-- /See:/ 'liaSettingsCustomBatchResponseEntry' smart constructor.
data LiaSettingsCustomBatchResponseEntry =
  LiaSettingsCustomBatchResponseEntry'
    { _lscbreGmbAccounts      :: !(Maybe GmbAccounts)
    , _lscbreKind             :: !Text
    , _lscbreLiaSettings      :: !(Maybe LiaSettings)
    , _lscbreErrors           :: !(Maybe Errors)
    , _lscbrePosDataProviders :: !(Maybe [PosDataProviders])
    , _lscbreBatchId          :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lscbreGmbAccounts'
--
-- * 'lscbreKind'
--
-- * 'lscbreLiaSettings'
--
-- * 'lscbreErrors'
--
-- * 'lscbrePosDataProviders'
--
-- * 'lscbreBatchId'
liaSettingsCustomBatchResponseEntry
    :: LiaSettingsCustomBatchResponseEntry
liaSettingsCustomBatchResponseEntry =
  LiaSettingsCustomBatchResponseEntry'
    { _lscbreGmbAccounts = Nothing
    , _lscbreKind = "content#liasettingsCustomBatchResponseEntry"
    , _lscbreLiaSettings = Nothing
    , _lscbreErrors = Nothing
    , _lscbrePosDataProviders = Nothing
    , _lscbreBatchId = Nothing
    }

-- | The the list of accessible GMB accounts.
lscbreGmbAccounts :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe GmbAccounts)
lscbreGmbAccounts
  = lens _lscbreGmbAccounts
      (\ s a -> s{_lscbreGmbAccounts = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsCustomBatchResponseEntry\".
lscbreKind :: Lens' LiaSettingsCustomBatchResponseEntry Text
lscbreKind
  = lens _lscbreKind (\ s a -> s{_lscbreKind = a})

-- | The retrieved or updated Lia settings.
lscbreLiaSettings :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe LiaSettings)
lscbreLiaSettings
  = lens _lscbreLiaSettings
      (\ s a -> s{_lscbreLiaSettings = a})

-- | A list of errors defined if, and only if, the request failed.
lscbreErrors :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe Errors)
lscbreErrors
  = lens _lscbreErrors (\ s a -> s{_lscbreErrors = a})

-- | The list of POS data providers.
lscbrePosDataProviders :: Lens' LiaSettingsCustomBatchResponseEntry [PosDataProviders]
lscbrePosDataProviders
  = lens _lscbrePosDataProviders
      (\ s a -> s{_lscbrePosDataProviders = a})
      . _Default
      . _Coerce

-- | The ID of the request entry to which this entry responds.
lscbreBatchId :: Lens' LiaSettingsCustomBatchResponseEntry (Maybe Word32)
lscbreBatchId
  = lens _lscbreBatchId
      (\ s a -> s{_lscbreBatchId = a})
      . mapping _Coerce

instance FromJSON LiaSettingsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchResponseEntry"
              (\ o ->
                 LiaSettingsCustomBatchResponseEntry' <$>
                   (o .:? "gmbAccounts") <*>
                     (o .:? "kind" .!=
                        "content#liasettingsCustomBatchResponseEntry")
                     <*> (o .:? "liaSettings")
                     <*> (o .:? "errors")
                     <*> (o .:? "posDataProviders" .!= mempty)
                     <*> (o .:? "batchId"))

instance ToJSON LiaSettingsCustomBatchResponseEntry
         where
        toJSON LiaSettingsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _lscbreGmbAccounts,
                  Just ("kind" .= _lscbreKind),
                  ("liaSettings" .=) <$> _lscbreLiaSettings,
                  ("errors" .=) <$> _lscbreErrors,
                  ("posDataProviders" .=) <$> _lscbrePosDataProviders,
                  ("batchId" .=) <$> _lscbreBatchId])

--
-- /See:/ 'accountsCustomBatchRequest' smart constructor.
newtype AccountsCustomBatchRequest =
  AccountsCustomBatchRequest'
    { _aEntries :: Maybe [AccountsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEntries'
accountsCustomBatchRequest
    :: AccountsCustomBatchRequest
accountsCustomBatchRequest = AccountsCustomBatchRequest' {_aEntries = Nothing}

-- | The request entries to be processed in the batch.
aEntries :: Lens' AccountsCustomBatchRequest [AccountsCustomBatchRequestEntry]
aEntries
  = lens _aEntries (\ s a -> s{_aEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountsCustomBatchRequest where
        parseJSON
          = withObject "AccountsCustomBatchRequest"
              (\ o ->
                 AccountsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountsCustomBatchRequest where
        toJSON AccountsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _aEntries])

--
-- /See:/ 'posCustomBatchResponseEntry' smart constructor.
data PosCustomBatchResponseEntry =
  PosCustomBatchResponseEntry'
    { _pcbrecKind      :: !Text
    , _pcbrecStore     :: !(Maybe PosStore)
    , _pcbrecInventory :: !(Maybe PosInventory)
    , _pcbrecErrors    :: !(Maybe Errors)
    , _pcbrecSale      :: !(Maybe PosSale)
    , _pcbrecBatchId   :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrecKind'
--
-- * 'pcbrecStore'
--
-- * 'pcbrecInventory'
--
-- * 'pcbrecErrors'
--
-- * 'pcbrecSale'
--
-- * 'pcbrecBatchId'
posCustomBatchResponseEntry
    :: PosCustomBatchResponseEntry
posCustomBatchResponseEntry =
  PosCustomBatchResponseEntry'
    { _pcbrecKind = "content#posCustomBatchResponseEntry"
    , _pcbrecStore = Nothing
    , _pcbrecInventory = Nothing
    , _pcbrecErrors = Nothing
    , _pcbrecSale = Nothing
    , _pcbrecBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posCustomBatchResponseEntry\".
pcbrecKind :: Lens' PosCustomBatchResponseEntry Text
pcbrecKind
  = lens _pcbrecKind (\ s a -> s{_pcbrecKind = a})

-- | The retrieved or updated store information.
pcbrecStore :: Lens' PosCustomBatchResponseEntry (Maybe PosStore)
pcbrecStore
  = lens _pcbrecStore (\ s a -> s{_pcbrecStore = a})

-- | The updated inventory information.
pcbrecInventory :: Lens' PosCustomBatchResponseEntry (Maybe PosInventory)
pcbrecInventory
  = lens _pcbrecInventory
      (\ s a -> s{_pcbrecInventory = a})

-- | A list of errors defined if, and only if, the request failed.
pcbrecErrors :: Lens' PosCustomBatchResponseEntry (Maybe Errors)
pcbrecErrors
  = lens _pcbrecErrors (\ s a -> s{_pcbrecErrors = a})

-- | The updated sale information.
pcbrecSale :: Lens' PosCustomBatchResponseEntry (Maybe PosSale)
pcbrecSale
  = lens _pcbrecSale (\ s a -> s{_pcbrecSale = a})

-- | The ID of the request entry to which this entry responds.
pcbrecBatchId :: Lens' PosCustomBatchResponseEntry (Maybe Word32)
pcbrecBatchId
  = lens _pcbrecBatchId
      (\ s a -> s{_pcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON PosCustomBatchResponseEntry where
        parseJSON
          = withObject "PosCustomBatchResponseEntry"
              (\ o ->
                 PosCustomBatchResponseEntry' <$>
                   (o .:? "kind" .!=
                      "content#posCustomBatchResponseEntry")
                     <*> (o .:? "store")
                     <*> (o .:? "inventory")
                     <*> (o .:? "errors")
                     <*> (o .:? "sale")
                     <*> (o .:? "batchId"))

instance ToJSON PosCustomBatchResponseEntry where
        toJSON PosCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pcbrecKind),
                  ("store" .=) <$> _pcbrecStore,
                  ("inventory" .=) <$> _pcbrecInventory,
                  ("errors" .=) <$> _pcbrecErrors,
                  ("sale" .=) <$> _pcbrecSale,
                  ("batchId" .=) <$> _pcbrecBatchId])

--
-- /See:/ 'orderpaymentsNotifyAuthApprovedResponse' smart constructor.
data OrderpaymentsNotifyAuthApprovedResponse =
  OrderpaymentsNotifyAuthApprovedResponse'
    { _onaarKind            :: !Text
    , _onaarExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyAuthApprovedResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onaarKind'
--
-- * 'onaarExecutionStatus'
orderpaymentsNotifyAuthApprovedResponse
    :: OrderpaymentsNotifyAuthApprovedResponse
orderpaymentsNotifyAuthApprovedResponse =
  OrderpaymentsNotifyAuthApprovedResponse'
    { _onaarKind = "content#orderpaymentsNotifyAuthApprovedResponse"
    , _onaarExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderpaymentsNotifyAuthApprovedResponse\".
onaarKind :: Lens' OrderpaymentsNotifyAuthApprovedResponse Text
onaarKind
  = lens _onaarKind (\ s a -> s{_onaarKind = a})

-- | The status of the execution.
onaarExecutionStatus :: Lens' OrderpaymentsNotifyAuthApprovedResponse (Maybe Text)
onaarExecutionStatus
  = lens _onaarExecutionStatus
      (\ s a -> s{_onaarExecutionStatus = a})

instance FromJSON
           OrderpaymentsNotifyAuthApprovedResponse
         where
        parseJSON
          = withObject
              "OrderpaymentsNotifyAuthApprovedResponse"
              (\ o ->
                 OrderpaymentsNotifyAuthApprovedResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderpaymentsNotifyAuthApprovedResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON
           OrderpaymentsNotifyAuthApprovedResponse
         where
        toJSON OrderpaymentsNotifyAuthApprovedResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _onaarKind),
                  ("executionStatus" .=) <$> _onaarExecutionStatus])

--
-- /See:/ 'orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' smart constructor.
data OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
    { _oReason      :: !(Maybe Text)
    , _oDescription :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oReason'
--
-- * 'oDescription'
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
    :: OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
orderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption =
  OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
    {_oReason = Nothing, _oDescription = Nothing}

-- | [required] Reason for the return.
oReason :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (Maybe Text)
oReason = lens _oReason (\ s a -> s{_oReason = a})

-- | Optional description of the return reason.
oDescription :: Lens' OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption (Maybe Text)
oDescription
  = lens _oDescription (\ s a -> s{_oDescription = a})

instance FromJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
         where
        parseJSON
          = withObject
              "OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption"
              (\ o ->
                 OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'
                   <$> (o .:? "reason") <*> (o .:? "description"))

instance ToJSON
           OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption
         where
        toJSON
          OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _oReason,
                  ("description" .=) <$> _oDescription])

--
-- /See:/ 'ordersListResponse' smart constructor.
data OrdersListResponse =
  OrdersListResponse'
    { _oNextPageToken :: !(Maybe Text)
    , _oKind          :: !Text
    , _oResources     :: !(Maybe [Order])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oNextPageToken'
--
-- * 'oKind'
--
-- * 'oResources'
ordersListResponse
    :: OrdersListResponse
ordersListResponse =
  OrdersListResponse'
    { _oNextPageToken = Nothing
    , _oKind = "content#ordersListResponse"
    , _oResources = Nothing
    }

-- | The token for the retrieval of the next page of orders.
oNextPageToken :: Lens' OrdersListResponse (Maybe Text)
oNextPageToken
  = lens _oNextPageToken
      (\ s a -> s{_oNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersListResponse\".
oKind :: Lens' OrdersListResponse Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

oResources :: Lens' OrdersListResponse [Order]
oResources
  = lens _oResources (\ s a -> s{_oResources = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersListResponse where
        parseJSON
          = withObject "OrdersListResponse"
              (\ o ->
                 OrdersListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#ordersListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON OrdersListResponse where
        toJSON OrdersListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oNextPageToken,
                  Just ("kind" .= _oKind),
                  ("resources" .=) <$> _oResources])

--
-- /See:/ 'ordersUpdateLineItemShippingDetailsResponse' smart constructor.
data OrdersUpdateLineItemShippingDetailsResponse =
  OrdersUpdateLineItemShippingDetailsResponse'
    { _oulisdrKind            :: !Text
    , _oulisdrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateLineItemShippingDetailsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulisdrKind'
--
-- * 'oulisdrExecutionStatus'
ordersUpdateLineItemShippingDetailsResponse
    :: OrdersUpdateLineItemShippingDetailsResponse
ordersUpdateLineItemShippingDetailsResponse =
  OrdersUpdateLineItemShippingDetailsResponse'
    { _oulisdrKind = "content#ordersUpdateLineItemShippingDetailsResponse"
    , _oulisdrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateLineItemShippingDetailsResponse\".
oulisdrKind :: Lens' OrdersUpdateLineItemShippingDetailsResponse Text
oulisdrKind
  = lens _oulisdrKind (\ s a -> s{_oulisdrKind = a})

-- | The status of the execution.
oulisdrExecutionStatus :: Lens' OrdersUpdateLineItemShippingDetailsResponse (Maybe Text)
oulisdrExecutionStatus
  = lens _oulisdrExecutionStatus
      (\ s a -> s{_oulisdrExecutionStatus = a})

instance FromJSON
           OrdersUpdateLineItemShippingDetailsResponse
         where
        parseJSON
          = withObject
              "OrdersUpdateLineItemShippingDetailsResponse"
              (\ o ->
                 OrdersUpdateLineItemShippingDetailsResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersUpdateLineItemShippingDetailsResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON
           OrdersUpdateLineItemShippingDetailsResponse
         where
        toJSON
          OrdersUpdateLineItemShippingDetailsResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oulisdrKind),
                  ("executionStatus" .=) <$> _oulisdrExecutionStatus])

-- | A non-empty list of row or column headers for a table. Exactly one of
-- prices, weights, numItems, postalCodeGroupNames, or locations must be
-- set.
--
-- /See:/ 'headers' smart constructor.
data Headers =
  Headers'
    { _hNumberOfItems        :: !(Maybe [Text])
    , _hPostalCodeGroupNames :: !(Maybe [Text])
    , _hPrices               :: !(Maybe [Price])
    , _hWeights              :: !(Maybe [Weight])
    , _hLocations            :: !(Maybe [LocationIdSet])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Headers' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hNumberOfItems'
--
-- * 'hPostalCodeGroupNames'
--
-- * 'hPrices'
--
-- * 'hWeights'
--
-- * 'hLocations'
headers
    :: Headers
headers =
  Headers'
    { _hNumberOfItems = Nothing
    , _hPostalCodeGroupNames = Nothing
    , _hPrices = Nothing
    , _hWeights = Nothing
    , _hLocations = Nothing
    }

-- | A list of inclusive number of items upper bounds. The last value can be
-- \"infinity\". For example [\"10\", \"50\", \"infinity\"] represents the
-- headers \"\<= 10 items\", \" 50 items\". Must be non-empty. Can only be
-- set if all other fields are not set.
hNumberOfItems :: Lens' Headers [Text]
hNumberOfItems
  = lens _hNumberOfItems
      (\ s a -> s{_hNumberOfItems = a})
      . _Default
      . _Coerce

-- | A list of postal group names. The last value can be \"all other
-- locations\". Example: [\"zone 1\", \"zone 2\", \"all other locations\"].
-- The referred postal code groups must match the delivery country of the
-- service. Must be non-empty. Can only be set if all other fields are not
-- set.
hPostalCodeGroupNames :: Lens' Headers [Text]
hPostalCodeGroupNames
  = lens _hPostalCodeGroupNames
      (\ s a -> s{_hPostalCodeGroupNames = a})
      . _Default
      . _Coerce

-- | A list of inclusive order price upper bounds. The last price\'s value
-- can be \"infinity\". For example [{\"value\": \"10\", \"currency\":
-- \"USD\"}, {\"value\": \"500\", \"currency\": \"USD\"}, {\"value\":
-- \"infinity\", \"currency\": \"USD\"}] represents the headers \"\<=
-- $10\", \" $500\". All prices within a service must have the same
-- currency. Must be non-empty. Can only be set if all other fields are not
-- set.
hPrices :: Lens' Headers [Price]
hPrices
  = lens _hPrices (\ s a -> s{_hPrices = a}) . _Default
      . _Coerce

-- | A list of inclusive order weight upper bounds. The last weight\'s value
-- can be \"infinity\". For example [{\"value\": \"10\", \"unit\": \"kg\"},
-- {\"value\": \"50\", \"unit\": \"kg\"}, {\"value\": \"infinity\",
-- \"unit\": \"kg\"}] represents the headers \"\<= 10kg\", \" 50kg\". All
-- weights within a service must have the same unit. Must be non-empty. Can
-- only be set if all other fields are not set.
hWeights :: Lens' Headers [Weight]
hWeights
  = lens _hWeights (\ s a -> s{_hWeights = a}) .
      _Default
      . _Coerce

-- | A list of location ID sets. Must be non-empty. Can only be set if all
-- other fields are not set.
hLocations :: Lens' Headers [LocationIdSet]
hLocations
  = lens _hLocations (\ s a -> s{_hLocations = a}) .
      _Default
      . _Coerce

instance FromJSON Headers where
        parseJSON
          = withObject "Headers"
              (\ o ->
                 Headers' <$>
                   (o .:? "numberOfItems" .!= mempty) <*>
                     (o .:? "postalCodeGroupNames" .!= mempty)
                     <*> (o .:? "prices" .!= mempty)
                     <*> (o .:? "weights" .!= mempty)
                     <*> (o .:? "locations" .!= mempty))

instance ToJSON Headers where
        toJSON Headers'{..}
          = object
              (catMaybes
                 [("numberOfItems" .=) <$> _hNumberOfItems,
                  ("postalCodeGroupNames" .=) <$>
                    _hPostalCodeGroupNames,
                  ("prices" .=) <$> _hPrices,
                  ("weights" .=) <$> _hWeights,
                  ("locations" .=) <$> _hLocations])

--
-- /See:/ 'unitInvoiceAdditionalCharge' smart constructor.
data UnitInvoiceAdditionalCharge =
  UnitInvoiceAdditionalCharge'
    { _uiacAdditionalChargePromotions :: !(Maybe [Promotion])
    , _uiacAdditionalChargeAmount     :: !(Maybe Amount)
    , _uiacType                       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnitInvoiceAdditionalCharge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uiacAdditionalChargePromotions'
--
-- * 'uiacAdditionalChargeAmount'
--
-- * 'uiacType'
unitInvoiceAdditionalCharge
    :: UnitInvoiceAdditionalCharge
unitInvoiceAdditionalCharge =
  UnitInvoiceAdditionalCharge'
    { _uiacAdditionalChargePromotions = Nothing
    , _uiacAdditionalChargeAmount = Nothing
    , _uiacType = Nothing
    }

-- | Promotions applied to the additional charge.
uiacAdditionalChargePromotions :: Lens' UnitInvoiceAdditionalCharge [Promotion]
uiacAdditionalChargePromotions
  = lens _uiacAdditionalChargePromotions
      (\ s a -> s{_uiacAdditionalChargePromotions = a})
      . _Default
      . _Coerce

-- | [required] Amount of the additional charge.
uiacAdditionalChargeAmount :: Lens' UnitInvoiceAdditionalCharge (Maybe Amount)
uiacAdditionalChargeAmount
  = lens _uiacAdditionalChargeAmount
      (\ s a -> s{_uiacAdditionalChargeAmount = a})

-- | [required] Type of the additional charge.
uiacType :: Lens' UnitInvoiceAdditionalCharge (Maybe Text)
uiacType = lens _uiacType (\ s a -> s{_uiacType = a})

instance FromJSON UnitInvoiceAdditionalCharge where
        parseJSON
          = withObject "UnitInvoiceAdditionalCharge"
              (\ o ->
                 UnitInvoiceAdditionalCharge' <$>
                   (o .:? "additionalChargePromotions" .!= mempty) <*>
                     (o .:? "additionalChargeAmount")
                     <*> (o .:? "type"))

instance ToJSON UnitInvoiceAdditionalCharge where
        toJSON UnitInvoiceAdditionalCharge'{..}
          = object
              (catMaybes
                 [("additionalChargePromotions" .=) <$>
                    _uiacAdditionalChargePromotions,
                  ("additionalChargeAmount" .=) <$>
                    _uiacAdditionalChargeAmount,
                  ("type" .=) <$> _uiacType])

--
-- /See:/ 'ordersShipLineItemsResponse' smart constructor.
data OrdersShipLineItemsResponse =
  OrdersShipLineItemsResponse'
    { _oslirKind            :: !Text
    , _oslirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersShipLineItemsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirKind'
--
-- * 'oslirExecutionStatus'
ordersShipLineItemsResponse
    :: OrdersShipLineItemsResponse
ordersShipLineItemsResponse =
  OrdersShipLineItemsResponse'
    { _oslirKind = "content#ordersShipLineItemsResponse"
    , _oslirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersShipLineItemsResponse\".
oslirKind :: Lens' OrdersShipLineItemsResponse Text
oslirKind
  = lens _oslirKind (\ s a -> s{_oslirKind = a})

-- | The status of the execution.
oslirExecutionStatus :: Lens' OrdersShipLineItemsResponse (Maybe Text)
oslirExecutionStatus
  = lens _oslirExecutionStatus
      (\ s a -> s{_oslirExecutionStatus = a})

instance FromJSON OrdersShipLineItemsResponse where
        parseJSON
          = withObject "OrdersShipLineItemsResponse"
              (\ o ->
                 OrdersShipLineItemsResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersShipLineItemsResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersShipLineItemsResponse where
        toJSON OrdersShipLineItemsResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oslirKind),
                  ("executionStatus" .=) <$> _oslirExecutionStatus])

--
-- /See:/ 'unitInvoiceTaxLine' smart constructor.
data UnitInvoiceTaxLine =
  UnitInvoiceTaxLine'
    { _uitlTaxName   :: !(Maybe Text)
    , _uitlTaxType   :: !(Maybe Text)
    , _uitlTaxAmount :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UnitInvoiceTaxLine' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uitlTaxName'
--
-- * 'uitlTaxType'
--
-- * 'uitlTaxAmount'
unitInvoiceTaxLine
    :: UnitInvoiceTaxLine
unitInvoiceTaxLine =
  UnitInvoiceTaxLine'
    {_uitlTaxName = Nothing, _uitlTaxType = Nothing, _uitlTaxAmount = Nothing}

-- | Optional name of the tax type. This should only be provided if taxType
-- is otherFeeTax.
uitlTaxName :: Lens' UnitInvoiceTaxLine (Maybe Text)
uitlTaxName
  = lens _uitlTaxName (\ s a -> s{_uitlTaxName = a})

-- | [required] Type of the tax.
uitlTaxType :: Lens' UnitInvoiceTaxLine (Maybe Text)
uitlTaxType
  = lens _uitlTaxType (\ s a -> s{_uitlTaxType = a})

-- | [required] Tax amount for the tax type.
uitlTaxAmount :: Lens' UnitInvoiceTaxLine (Maybe Price)
uitlTaxAmount
  = lens _uitlTaxAmount
      (\ s a -> s{_uitlTaxAmount = a})

instance FromJSON UnitInvoiceTaxLine where
        parseJSON
          = withObject "UnitInvoiceTaxLine"
              (\ o ->
                 UnitInvoiceTaxLine' <$>
                   (o .:? "taxName") <*> (o .:? "taxType") <*>
                     (o .:? "taxAmount"))

instance ToJSON UnitInvoiceTaxLine where
        toJSON UnitInvoiceTaxLine'{..}
          = object
              (catMaybes
                 [("taxName" .=) <$> _uitlTaxName,
                  ("taxType" .=) <$> _uitlTaxType,
                  ("taxAmount" .=) <$> _uitlTaxAmount])

--
-- /See:/ 'ordersCreateTestReturnRequest' smart constructor.
newtype OrdersCreateTestReturnRequest =
  OrdersCreateTestReturnRequest'
    { _octrrItems :: Maybe [OrdersCustomBatchRequestEntryCreateTestReturnReturnItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCreateTestReturnRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octrrItems'
ordersCreateTestReturnRequest
    :: OrdersCreateTestReturnRequest
ordersCreateTestReturnRequest =
  OrdersCreateTestReturnRequest' {_octrrItems = Nothing}

-- | Returned items.
octrrItems :: Lens' OrdersCreateTestReturnRequest [OrdersCustomBatchRequestEntryCreateTestReturnReturnItem]
octrrItems
  = lens _octrrItems (\ s a -> s{_octrrItems = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersCreateTestReturnRequest where
        parseJSON
          = withObject "OrdersCreateTestReturnRequest"
              (\ o ->
                 OrdersCreateTestReturnRequest' <$>
                   (o .:? "items" .!= mempty))

instance ToJSON OrdersCreateTestReturnRequest where
        toJSON OrdersCreateTestReturnRequest'{..}
          = object (catMaybes [("items" .=) <$> _octrrItems])

-- | The merchant account\'s shipping settings. All methods except
-- getsupportedcarriers and getsupportedholidays require the admin role.
--
-- /See:/ 'shippingSettings' smart constructor.
data ShippingSettings =
  ShippingSettings'
    { _ssPostalCodeGroups :: !(Maybe [PostalCodeGroup])
    , _ssAccountId        :: !(Maybe (Textual Word64))
    , _ssServices         :: !(Maybe [Service])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssPostalCodeGroups'
--
-- * 'ssAccountId'
--
-- * 'ssServices'
shippingSettings
    :: ShippingSettings
shippingSettings =
  ShippingSettings'
    { _ssPostalCodeGroups = Nothing
    , _ssAccountId = Nothing
    , _ssServices = Nothing
    }

-- | A list of postal code groups that can be referred to in services.
-- Optional.
ssPostalCodeGroups :: Lens' ShippingSettings [PostalCodeGroup]
ssPostalCodeGroups
  = lens _ssPostalCodeGroups
      (\ s a -> s{_ssPostalCodeGroups = a})
      . _Default
      . _Coerce

-- | The ID of the account to which these account shipping settings belong.
-- Ignored upon update, always present in get request responses.
ssAccountId :: Lens' ShippingSettings (Maybe Word64)
ssAccountId
  = lens _ssAccountId (\ s a -> s{_ssAccountId = a}) .
      mapping _Coerce

-- | The target account\'s list of services. Optional.
ssServices :: Lens' ShippingSettings [Service]
ssServices
  = lens _ssServices (\ s a -> s{_ssServices = a}) .
      _Default
      . _Coerce

instance FromJSON ShippingSettings where
        parseJSON
          = withObject "ShippingSettings"
              (\ o ->
                 ShippingSettings' <$>
                   (o .:? "postalCodeGroups" .!= mempty) <*>
                     (o .:? "accountId")
                     <*> (o .:? "services" .!= mempty))

instance ToJSON ShippingSettings where
        toJSON ShippingSettings'{..}
          = object
              (catMaybes
                 [("postalCodeGroups" .=) <$> _ssPostalCodeGroups,
                  ("accountId" .=) <$> _ssAccountId,
                  ("services" .=) <$> _ssServices])

--
-- /See:/ 'postalCodeRange' smart constructor.
data PostalCodeRange =
  PostalCodeRange'
    { _pcrPostalCodeRangeBegin :: !(Maybe Text)
    , _pcrPostalCodeRangeEnd   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PostalCodeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcrPostalCodeRangeBegin'
--
-- * 'pcrPostalCodeRangeEnd'
postalCodeRange
    :: PostalCodeRange
postalCodeRange =
  PostalCodeRange'
    {_pcrPostalCodeRangeBegin = Nothing, _pcrPostalCodeRangeEnd = Nothing}

-- | A postal code or a pattern of the form prefix* denoting the inclusive
-- lower bound of the range defining the area. Examples values: \"94108\",
-- \"9410*\", \"9*\". Required.
pcrPostalCodeRangeBegin :: Lens' PostalCodeRange (Maybe Text)
pcrPostalCodeRangeBegin
  = lens _pcrPostalCodeRangeBegin
      (\ s a -> s{_pcrPostalCodeRangeBegin = a})

-- | A postal code or a pattern of the form prefix* denoting the inclusive
-- upper bound of the range defining the area. It must have the same length
-- as postalCodeRangeBegin: if postalCodeRangeBegin is a postal code then
-- postalCodeRangeEnd must be a postal code too; if postalCodeRangeBegin is
-- a pattern then postalCodeRangeEnd must be a pattern with the same prefix
-- length. Optional: if not set, then the area is defined as being all the
-- postal codes matching postalCodeRangeBegin.
pcrPostalCodeRangeEnd :: Lens' PostalCodeRange (Maybe Text)
pcrPostalCodeRangeEnd
  = lens _pcrPostalCodeRangeEnd
      (\ s a -> s{_pcrPostalCodeRangeEnd = a})

instance FromJSON PostalCodeRange where
        parseJSON
          = withObject "PostalCodeRange"
              (\ o ->
                 PostalCodeRange' <$>
                   (o .:? "postalCodeRangeBegin") <*>
                     (o .:? "postalCodeRangeEnd"))

instance ToJSON PostalCodeRange where
        toJSON PostalCodeRange'{..}
          = object
              (catMaybes
                 [("postalCodeRangeBegin" .=) <$>
                    _pcrPostalCodeRangeBegin,
                  ("postalCodeRangeEnd" .=) <$>
                    _pcrPostalCodeRangeEnd])

--
-- /See:/ 'ordersUpdateShipmentResponse' smart constructor.
data OrdersUpdateShipmentResponse =
  OrdersUpdateShipmentResponse'
    { _ousrKind            :: !Text
    , _ousrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateShipmentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ousrKind'
--
-- * 'ousrExecutionStatus'
ordersUpdateShipmentResponse
    :: OrdersUpdateShipmentResponse
ordersUpdateShipmentResponse =
  OrdersUpdateShipmentResponse'
    { _ousrKind = "content#ordersUpdateShipmentResponse"
    , _ousrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateShipmentResponse\".
ousrKind :: Lens' OrdersUpdateShipmentResponse Text
ousrKind = lens _ousrKind (\ s a -> s{_ousrKind = a})

-- | The status of the execution.
ousrExecutionStatus :: Lens' OrdersUpdateShipmentResponse (Maybe Text)
ousrExecutionStatus
  = lens _ousrExecutionStatus
      (\ s a -> s{_ousrExecutionStatus = a})

instance FromJSON OrdersUpdateShipmentResponse where
        parseJSON
          = withObject "OrdersUpdateShipmentResponse"
              (\ o ->
                 OrdersUpdateShipmentResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersUpdateShipmentResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateShipmentResponse where
        toJSON OrdersUpdateShipmentResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ousrKind),
                  ("executionStatus" .=) <$> _ousrExecutionStatus])

--
-- /See:/ 'productstatusesCustomBatchRequest' smart constructor.
newtype ProductstatusesCustomBatchRequest =
  ProductstatusesCustomBatchRequest'
    { _pcbrcEntries :: Maybe [ProductstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrcEntries'
productstatusesCustomBatchRequest
    :: ProductstatusesCustomBatchRequest
productstatusesCustomBatchRequest =
  ProductstatusesCustomBatchRequest' {_pcbrcEntries = Nothing}

-- | The request entries to be processed in the batch.
pcbrcEntries :: Lens' ProductstatusesCustomBatchRequest [ProductstatusesCustomBatchRequestEntry]
pcbrcEntries
  = lens _pcbrcEntries (\ s a -> s{_pcbrcEntries = a})
      . _Default
      . _Coerce

instance FromJSON ProductstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequest"
              (\ o ->
                 ProductstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductstatusesCustomBatchRequest
         where
        toJSON ProductstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _pcbrcEntries])

--
-- /See:/ 'accountYouTubeChannelLink' smart constructor.
data AccountYouTubeChannelLink =
  AccountYouTubeChannelLink'
    { _aytclStatus    :: !(Maybe Text)
    , _aytclChannelId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountYouTubeChannelLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aytclStatus'
--
-- * 'aytclChannelId'
accountYouTubeChannelLink
    :: AccountYouTubeChannelLink
accountYouTubeChannelLink =
  AccountYouTubeChannelLink' {_aytclStatus = Nothing, _aytclChannelId = Nothing}

-- | Status of the link between this Merchant Center account and the YouTube
-- channel. Upon retrieval, it represents the actual status of the link and
-- can be either active if it was approved in YT Creator Studio or pending
-- if it\'s pending approval. Upon insertion, it represents the intended
-- status of the link. Re-uploading a link with status active when it\'s
-- still pending or with status pending when it\'s already active will have
-- no effect: the status will remain unchanged. Re-uploading a link with
-- deprecated status inactive is equivalent to not submitting the link at
-- all and will delete the link if it was active or cancel the link request
-- if it was pending.
aytclStatus :: Lens' AccountYouTubeChannelLink (Maybe Text)
aytclStatus
  = lens _aytclStatus (\ s a -> s{_aytclStatus = a})

-- | Channel ID.
aytclChannelId :: Lens' AccountYouTubeChannelLink (Maybe Text)
aytclChannelId
  = lens _aytclChannelId
      (\ s a -> s{_aytclChannelId = a})

instance FromJSON AccountYouTubeChannelLink where
        parseJSON
          = withObject "AccountYouTubeChannelLink"
              (\ o ->
                 AccountYouTubeChannelLink' <$>
                   (o .:? "status") <*> (o .:? "channelId"))

instance ToJSON AccountYouTubeChannelLink where
        toJSON AccountYouTubeChannelLink'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aytclStatus,
                  ("channelId" .=) <$> _aytclChannelId])

--
-- /See:/ 'accountAdsLink' smart constructor.
data AccountAdsLink =
  AccountAdsLink'
    { _aalStatus :: !(Maybe Text)
    , _aalAdsId  :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountAdsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalStatus'
--
-- * 'aalAdsId'
accountAdsLink
    :: AccountAdsLink
accountAdsLink = AccountAdsLink' {_aalStatus = Nothing, _aalAdsId = Nothing}

-- | Status of the link between this Merchant Center account and the Ads
-- account. Upon retrieval, it represents the actual status of the link and
-- can be either active if it was approved in Google Ads or pending if
-- it\'s pending approval. Upon insertion, it represents the intended
-- status of the link. Re-uploading a link with status active when it\'s
-- still pending or with status pending when it\'s already active will have
-- no effect: the status will remain unchanged. Re-uploading a link with
-- deprecated status inactive is equivalent to not submitting the link at
-- all and will delete the link if it was active or cancel the link request
-- if it was pending.
aalStatus :: Lens' AccountAdsLink (Maybe Text)
aalStatus
  = lens _aalStatus (\ s a -> s{_aalStatus = a})

-- | Customer ID of the Ads account.
aalAdsId :: Lens' AccountAdsLink (Maybe Word64)
aalAdsId
  = lens _aalAdsId (\ s a -> s{_aalAdsId = a}) .
      mapping _Coerce

instance FromJSON AccountAdsLink where
        parseJSON
          = withObject "AccountAdsLink"
              (\ o ->
                 AccountAdsLink' <$>
                   (o .:? "status") <*> (o .:? "adsId"))

instance ToJSON AccountAdsLink where
        toJSON AccountAdsLink'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aalStatus,
                  ("adsId" .=) <$> _aalAdsId])

--
-- /See:/ 'liaAboutPageSettings' smart constructor.
data LiaAboutPageSettings =
  LiaAboutPageSettings'
    { _lapsStatus :: !(Maybe Text)
    , _lapsURL    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaAboutPageSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lapsStatus'
--
-- * 'lapsURL'
liaAboutPageSettings
    :: LiaAboutPageSettings
liaAboutPageSettings =
  LiaAboutPageSettings' {_lapsStatus = Nothing, _lapsURL = Nothing}

-- | The status of the verification process for the About page.
lapsStatus :: Lens' LiaAboutPageSettings (Maybe Text)
lapsStatus
  = lens _lapsStatus (\ s a -> s{_lapsStatus = a})

-- | The URL for the About page.
lapsURL :: Lens' LiaAboutPageSettings (Maybe Text)
lapsURL = lens _lapsURL (\ s a -> s{_lapsURL = a})

instance FromJSON LiaAboutPageSettings where
        parseJSON
          = withObject "LiaAboutPageSettings"
              (\ o ->
                 LiaAboutPageSettings' <$>
                   (o .:? "status") <*> (o .:? "url"))

instance ToJSON LiaAboutPageSettings where
        toJSON LiaAboutPageSettings'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _lapsStatus,
                  ("url" .=) <$> _lapsURL])

--
-- /See:/ 'liaSettingsCustomBatchRequest' smart constructor.
newtype LiaSettingsCustomBatchRequest =
  LiaSettingsCustomBatchRequest'
    { _lEntries :: Maybe [LiaSettingsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lEntries'
liaSettingsCustomBatchRequest
    :: LiaSettingsCustomBatchRequest
liaSettingsCustomBatchRequest =
  LiaSettingsCustomBatchRequest' {_lEntries = Nothing}

-- | The request entries to be processed in the batch.
lEntries :: Lens' LiaSettingsCustomBatchRequest [LiaSettingsCustomBatchRequestEntry]
lEntries
  = lens _lEntries (\ s a -> s{_lEntries = a}) .
      _Default
      . _Coerce

instance FromJSON LiaSettingsCustomBatchRequest where
        parseJSON
          = withObject "LiaSettingsCustomBatchRequest"
              (\ o ->
                 LiaSettingsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON LiaSettingsCustomBatchRequest where
        toJSON LiaSettingsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _lEntries])

--
-- /See:/ 'customAttribute' smart constructor.
data CustomAttribute =
  CustomAttribute'
    { _caGroupValues :: !(Maybe [CustomAttribute])
    , _caValue       :: !(Maybe Text)
    , _caName        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CustomAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caGroupValues'
--
-- * 'caValue'
--
-- * 'caName'
customAttribute
    :: CustomAttribute
customAttribute =
  CustomAttribute'
    {_caGroupValues = Nothing, _caValue = Nothing, _caName = Nothing}

-- | Subattributes within this attribute group. Exactly one of value or
-- groupValues must be provided.
caGroupValues :: Lens' CustomAttribute [CustomAttribute]
caGroupValues
  = lens _caGroupValues
      (\ s a -> s{_caGroupValues = a})
      . _Default
      . _Coerce

-- | The value of the attribute.
caValue :: Lens' CustomAttribute (Maybe Text)
caValue = lens _caValue (\ s a -> s{_caValue = a})

-- | The name of the attribute. Underscores will be replaced by spaces upon
-- insertion.
caName :: Lens' CustomAttribute (Maybe Text)
caName = lens _caName (\ s a -> s{_caName = a})

instance FromJSON CustomAttribute where
        parseJSON
          = withObject "CustomAttribute"
              (\ o ->
                 CustomAttribute' <$>
                   (o .:? "groupValues" .!= mempty) <*> (o .:? "value")
                     <*> (o .:? "name"))

instance ToJSON CustomAttribute where
        toJSON CustomAttribute'{..}
          = object
              (catMaybes
                 [("groupValues" .=) <$> _caGroupValues,
                  ("value" .=) <$> _caValue, ("name" .=) <$> _caName])

--
-- /See:/ 'posInventoryRequest' smart constructor.
data PosInventoryRequest =
  PosInventoryRequest'
    { _posStoreCode       :: !(Maybe Text)
    , _posItemId          :: !(Maybe Text)
    , _posQuantity        :: !(Maybe (Textual Int64))
    , _posTargetCountry   :: !(Maybe Text)
    , _posGtin            :: !(Maybe Text)
    , _posPrice           :: !(Maybe Price)
    , _posContentLanguage :: !(Maybe Text)
    , _posTimestamp       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosInventoryRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'posStoreCode'
--
-- * 'posItemId'
--
-- * 'posQuantity'
--
-- * 'posTargetCountry'
--
-- * 'posGtin'
--
-- * 'posPrice'
--
-- * 'posContentLanguage'
--
-- * 'posTimestamp'
posInventoryRequest
    :: PosInventoryRequest
posInventoryRequest =
  PosInventoryRequest'
    { _posStoreCode = Nothing
    , _posItemId = Nothing
    , _posQuantity = Nothing
    , _posTargetCountry = Nothing
    , _posGtin = Nothing
    , _posPrice = Nothing
    , _posContentLanguage = Nothing
    , _posTimestamp = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
posStoreCode :: Lens' PosInventoryRequest (Maybe Text)
posStoreCode
  = lens _posStoreCode (\ s a -> s{_posStoreCode = a})

-- | A unique identifier for the item.
posItemId :: Lens' PosInventoryRequest (Maybe Text)
posItemId
  = lens _posItemId (\ s a -> s{_posItemId = a})

-- | The available quantity of the item.
posQuantity :: Lens' PosInventoryRequest (Maybe Int64)
posQuantity
  = lens _posQuantity (\ s a -> s{_posQuantity = a}) .
      mapping _Coerce

-- | The CLDR territory code for the item.
posTargetCountry :: Lens' PosInventoryRequest (Maybe Text)
posTargetCountry
  = lens _posTargetCountry
      (\ s a -> s{_posTargetCountry = a})

-- | Global Trade Item Number.
posGtin :: Lens' PosInventoryRequest (Maybe Text)
posGtin = lens _posGtin (\ s a -> s{_posGtin = a})

-- | The current price of the item.
posPrice :: Lens' PosInventoryRequest (Maybe Price)
posPrice = lens _posPrice (\ s a -> s{_posPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
posContentLanguage :: Lens' PosInventoryRequest (Maybe Text)
posContentLanguage
  = lens _posContentLanguage
      (\ s a -> s{_posContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
posTimestamp :: Lens' PosInventoryRequest (Maybe Text)
posTimestamp
  = lens _posTimestamp (\ s a -> s{_posTimestamp = a})

instance FromJSON PosInventoryRequest where
        parseJSON
          = withObject "PosInventoryRequest"
              (\ o ->
                 PosInventoryRequest' <$>
                   (o .:? "storeCode") <*> (o .:? "itemId") <*>
                     (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventoryRequest where
        toJSON PosInventoryRequest'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _posStoreCode,
                  ("itemId" .=) <$> _posItemId,
                  ("quantity" .=) <$> _posQuantity,
                  ("targetCountry" .=) <$> _posTargetCountry,
                  ("gtin" .=) <$> _posGtin, ("price" .=) <$> _posPrice,
                  ("contentLanguage" .=) <$> _posContentLanguage,
                  ("timestamp" .=) <$> _posTimestamp])

--
-- /See:/ 'accountstatusesCustomBatchResponse' smart constructor.
data AccountstatusesCustomBatchResponse =
  AccountstatusesCustomBatchResponse'
    { _acccEntries :: !(Maybe [AccountstatusesCustomBatchResponseEntry])
    , _acccKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccEntries'
--
-- * 'acccKind'
accountstatusesCustomBatchResponse
    :: AccountstatusesCustomBatchResponse
accountstatusesCustomBatchResponse =
  AccountstatusesCustomBatchResponse'
    { _acccEntries = Nothing
    , _acccKind = "content#accountstatusesCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
acccEntries :: Lens' AccountstatusesCustomBatchResponse [AccountstatusesCustomBatchResponseEntry]
acccEntries
  = lens _acccEntries (\ s a -> s{_acccEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesCustomBatchResponse\".
acccKind :: Lens' AccountstatusesCustomBatchResponse Text
acccKind = lens _acccKind (\ s a -> s{_acccKind = a})

instance FromJSON AccountstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchResponse"
              (\ o ->
                 AccountstatusesCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accountstatusesCustomBatchResponse"))

instance ToJSON AccountstatusesCustomBatchResponse
         where
        toJSON AccountstatusesCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acccEntries,
                  Just ("kind" .= _acccKind)])

-- | A batch entry encoding a single non-batch shipping settings response.
--
-- /See:/ 'shippingSettingsCustomBatchResponseEntry' smart constructor.
data ShippingSettingsCustomBatchResponseEntry =
  ShippingSettingsCustomBatchResponseEntry'
    { _sKind             :: !Text
    , _sShippingSettings :: !(Maybe ShippingSettings)
    , _sErrors           :: !(Maybe Errors)
    , _sBatchId          :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sKind'
--
-- * 'sShippingSettings'
--
-- * 'sErrors'
--
-- * 'sBatchId'
shippingSettingsCustomBatchResponseEntry
    :: ShippingSettingsCustomBatchResponseEntry
shippingSettingsCustomBatchResponseEntry =
  ShippingSettingsCustomBatchResponseEntry'
    { _sKind = "content#shippingsettingsCustomBatchResponseEntry"
    , _sShippingSettings = Nothing
    , _sErrors = Nothing
    , _sBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsCustomBatchResponseEntry\".
sKind :: Lens' ShippingSettingsCustomBatchResponseEntry Text
sKind = lens _sKind (\ s a -> s{_sKind = a})

-- | The retrieved or updated account shipping settings.
sShippingSettings :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe ShippingSettings)
sShippingSettings
  = lens _sShippingSettings
      (\ s a -> s{_sShippingSettings = a})

-- | A list of errors defined if, and only if, the request failed.
sErrors :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe Errors)
sErrors = lens _sErrors (\ s a -> s{_sErrors = a})

-- | The ID of the request entry to which this entry responds.
sBatchId :: Lens' ShippingSettingsCustomBatchResponseEntry (Maybe Word32)
sBatchId
  = lens _sBatchId (\ s a -> s{_sBatchId = a}) .
      mapping _Coerce

instance FromJSON
           ShippingSettingsCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "ShippingSettingsCustomBatchResponseEntry"
              (\ o ->
                 ShippingSettingsCustomBatchResponseEntry' <$>
                   (o .:? "kind" .!=
                      "content#shippingsettingsCustomBatchResponseEntry")
                     <*> (o .:? "shippingSettings")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
           ShippingSettingsCustomBatchResponseEntry
         where
        toJSON ShippingSettingsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _sKind),
                  ("shippingSettings" .=) <$> _sShippingSettings,
                  ("errors" .=) <$> _sErrors,
                  ("batchId" .=) <$> _sBatchId])

-- | The status of a product, i.e., information about a product computed
-- asynchronously by the data quality analysis.
--
-- /See:/ 'productStatus' smart constructor.
data ProductStatus =
  ProductStatus'
    { _ppKind                 :: !Text
    , _ppLink                 :: !(Maybe Text)
    , _ppDestinationStatuses  :: !(Maybe [ProductStatusDestinationStatus])
    , _ppLastUpdateDate       :: !(Maybe Text)
    , _ppCreationDate         :: !(Maybe Text)
    , _ppTitle                :: !(Maybe Text)
    , _ppGoogleExpirationDate :: !(Maybe Text)
    , _ppProductId            :: !(Maybe Text)
    , _ppItemLevelIssues      :: !(Maybe [ProductStatusItemLevelIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppKind'
--
-- * 'ppLink'
--
-- * 'ppDestinationStatuses'
--
-- * 'ppLastUpdateDate'
--
-- * 'ppCreationDate'
--
-- * 'ppTitle'
--
-- * 'ppGoogleExpirationDate'
--
-- * 'ppProductId'
--
-- * 'ppItemLevelIssues'
productStatus
    :: ProductStatus
productStatus =
  ProductStatus'
    { _ppKind = "content#productStatus"
    , _ppLink = Nothing
    , _ppDestinationStatuses = Nothing
    , _ppLastUpdateDate = Nothing
    , _ppCreationDate = Nothing
    , _ppTitle = Nothing
    , _ppGoogleExpirationDate = Nothing
    , _ppProductId = Nothing
    , _ppItemLevelIssues = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productStatus\".
ppKind :: Lens' ProductStatus Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The link to the product.
ppLink :: Lens' ProductStatus (Maybe Text)
ppLink = lens _ppLink (\ s a -> s{_ppLink = a})

-- | The intended destinations for the product.
ppDestinationStatuses :: Lens' ProductStatus [ProductStatusDestinationStatus]
ppDestinationStatuses
  = lens _ppDestinationStatuses
      (\ s a -> s{_ppDestinationStatuses = a})
      . _Default
      . _Coerce

-- | Date on which the item has been last updated, in ISO 8601 format.
ppLastUpdateDate :: Lens' ProductStatus (Maybe Text)
ppLastUpdateDate
  = lens _ppLastUpdateDate
      (\ s a -> s{_ppLastUpdateDate = a})

-- | Date on which the item has been created, in ISO 8601 format.
ppCreationDate :: Lens' ProductStatus (Maybe Text)
ppCreationDate
  = lens _ppCreationDate
      (\ s a -> s{_ppCreationDate = a})

-- | The title of the product.
ppTitle :: Lens' ProductStatus (Maybe Text)
ppTitle = lens _ppTitle (\ s a -> s{_ppTitle = a})

-- | Date on which the item expires in Google Shopping, in ISO 8601 format.
ppGoogleExpirationDate :: Lens' ProductStatus (Maybe Text)
ppGoogleExpirationDate
  = lens _ppGoogleExpirationDate
      (\ s a -> s{_ppGoogleExpirationDate = a})

-- | The id of the product for which status is reported.
ppProductId :: Lens' ProductStatus (Maybe Text)
ppProductId
  = lens _ppProductId (\ s a -> s{_ppProductId = a})

-- | A list of all issues associated with the product.
ppItemLevelIssues :: Lens' ProductStatus [ProductStatusItemLevelIssue]
ppItemLevelIssues
  = lens _ppItemLevelIssues
      (\ s a -> s{_ppItemLevelIssues = a})
      . _Default
      . _Coerce

instance FromJSON ProductStatus where
        parseJSON
          = withObject "ProductStatus"
              (\ o ->
                 ProductStatus' <$>
                   (o .:? "kind" .!= "content#productStatus") <*>
                     (o .:? "link")
                     <*> (o .:? "destinationStatuses" .!= mempty)
                     <*> (o .:? "lastUpdateDate")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "title")
                     <*> (o .:? "googleExpirationDate")
                     <*> (o .:? "productId")
                     <*> (o .:? "itemLevelIssues" .!= mempty))

instance ToJSON ProductStatus where
        toJSON ProductStatus'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ppKind), ("link" .=) <$> _ppLink,
                  ("destinationStatuses" .=) <$>
                    _ppDestinationStatuses,
                  ("lastUpdateDate" .=) <$> _ppLastUpdateDate,
                  ("creationDate" .=) <$> _ppCreationDate,
                  ("title" .=) <$> _ppTitle,
                  ("googleExpirationDate" .=) <$>
                    _ppGoogleExpirationDate,
                  ("productId" .=) <$> _ppProductId,
                  ("itemLevelIssues" .=) <$> _ppItemLevelIssues])

--
-- /See:/ 'accountstatusesListResponse' smart constructor.
data AccountstatusesListResponse =
  AccountstatusesListResponse'
    { _alr1NextPageToken :: !(Maybe Text)
    , _alr1Kind          :: !Text
    , _alr1Resources     :: !(Maybe [AccountStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alr1NextPageToken'
--
-- * 'alr1Kind'
--
-- * 'alr1Resources'
accountstatusesListResponse
    :: AccountstatusesListResponse
accountstatusesListResponse =
  AccountstatusesListResponse'
    { _alr1NextPageToken = Nothing
    , _alr1Kind = "content#accountstatusesListResponse"
    , _alr1Resources = Nothing
    }

-- | The token for the retrieval of the next page of account statuses.
alr1NextPageToken :: Lens' AccountstatusesListResponse (Maybe Text)
alr1NextPageToken
  = lens _alr1NextPageToken
      (\ s a -> s{_alr1NextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesListResponse\".
alr1Kind :: Lens' AccountstatusesListResponse Text
alr1Kind = lens _alr1Kind (\ s a -> s{_alr1Kind = a})

alr1Resources :: Lens' AccountstatusesListResponse [AccountStatus]
alr1Resources
  = lens _alr1Resources
      (\ s a -> s{_alr1Resources = a})
      . _Default
      . _Coerce

instance FromJSON AccountstatusesListResponse where
        parseJSON
          = withObject "AccountstatusesListResponse"
              (\ o ->
                 AccountstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#accountstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccountstatusesListResponse where
        toJSON AccountstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alr1NextPageToken,
                  Just ("kind" .= _alr1Kind),
                  ("resources" .=) <$> _alr1Resources])

--
-- /See:/ 'ordersSetLineItemMetadataResponse' smart constructor.
data OrdersSetLineItemMetadataResponse =
  OrdersSetLineItemMetadataResponse'
    { _oslimrKind            :: !Text
    , _oslimrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersSetLineItemMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslimrKind'
--
-- * 'oslimrExecutionStatus'
ordersSetLineItemMetadataResponse
    :: OrdersSetLineItemMetadataResponse
ordersSetLineItemMetadataResponse =
  OrdersSetLineItemMetadataResponse'
    { _oslimrKind = "content#ordersSetLineItemMetadataResponse"
    , _oslimrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersSetLineItemMetadataResponse\".
oslimrKind :: Lens' OrdersSetLineItemMetadataResponse Text
oslimrKind
  = lens _oslimrKind (\ s a -> s{_oslimrKind = a})

-- | The status of the execution.
oslimrExecutionStatus :: Lens' OrdersSetLineItemMetadataResponse (Maybe Text)
oslimrExecutionStatus
  = lens _oslimrExecutionStatus
      (\ s a -> s{_oslimrExecutionStatus = a})

instance FromJSON OrdersSetLineItemMetadataResponse
         where
        parseJSON
          = withObject "OrdersSetLineItemMetadataResponse"
              (\ o ->
                 OrdersSetLineItemMetadataResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersSetLineItemMetadataResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersSetLineItemMetadataResponse
         where
        toJSON OrdersSetLineItemMetadataResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oslimrKind),
                  ("executionStatus" .=) <$> _oslimrExecutionStatus])

--
-- /See:/ 'accounttaxCustomBatchRequest' smart constructor.
newtype AccounttaxCustomBatchRequest =
  AccounttaxCustomBatchRequest'
    { _accEntries :: Maybe [AccounttaxCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accEntries'
accounttaxCustomBatchRequest
    :: AccounttaxCustomBatchRequest
accounttaxCustomBatchRequest =
  AccounttaxCustomBatchRequest' {_accEntries = Nothing}

-- | The request entries to be processed in the batch.
accEntries :: Lens' AccounttaxCustomBatchRequest [AccounttaxCustomBatchRequestEntry]
accEntries
  = lens _accEntries (\ s a -> s{_accEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccounttaxCustomBatchRequest where
        parseJSON
          = withObject "AccounttaxCustomBatchRequest"
              (\ o ->
                 AccounttaxCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccounttaxCustomBatchRequest where
        toJSON AccounttaxCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _accEntries])

-- | A batch entry encoding a single non-batch products request.
--
-- /See:/ 'productsCustomBatchRequestEntry' smart constructor.
data ProductsCustomBatchRequestEntry =
  ProductsCustomBatchRequestEntry'
    { _prorMerchantId :: !(Maybe (Textual Word64))
    , _prorMethod     :: !(Maybe Text)
    , _prorProduct    :: !(Maybe Product)
    , _prorProductId  :: !(Maybe Text)
    , _prorBatchId    :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorMerchantId'
--
-- * 'prorMethod'
--
-- * 'prorProduct'
--
-- * 'prorProductId'
--
-- * 'prorBatchId'
productsCustomBatchRequestEntry
    :: ProductsCustomBatchRequestEntry
productsCustomBatchRequestEntry =
  ProductsCustomBatchRequestEntry'
    { _prorMerchantId = Nothing
    , _prorMethod = Nothing
    , _prorProduct = Nothing
    , _prorProductId = Nothing
    , _prorBatchId = Nothing
    }

-- | The ID of the managing account.
prorMerchantId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word64)
prorMerchantId
  = lens _prorMerchantId
      (\ s a -> s{_prorMerchantId = a})
      . mapping _Coerce

prorMethod :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
prorMethod
  = lens _prorMethod (\ s a -> s{_prorMethod = a})

-- | The product to insert. Only required if the method is insert.
prorProduct :: Lens' ProductsCustomBatchRequestEntry (Maybe Product)
prorProduct
  = lens _prorProduct (\ s a -> s{_prorProduct = a})

-- | The ID of the product to get or delete. Only defined if the method is
-- get or delete.
prorProductId :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
prorProductId
  = lens _prorProductId
      (\ s a -> s{_prorProductId = a})

-- | An entry ID, unique within the batch request.
prorBatchId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word32)
prorBatchId
  = lens _prorBatchId (\ s a -> s{_prorBatchId = a}) .
      mapping _Coerce

instance FromJSON ProductsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchRequestEntry"
              (\ o ->
                 ProductsCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "method") <*>
                     (o .:? "product")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchRequestEntry where
        toJSON ProductsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _prorMerchantId,
                  ("method" .=) <$> _prorMethod,
                  ("product" .=) <$> _prorProduct,
                  ("productId" .=) <$> _prorProductId,
                  ("batchId" .=) <$> _prorBatchId])

--
-- /See:/ 'accountGoogleMyBusinessLink' smart constructor.
data AccountGoogleMyBusinessLink =
  AccountGoogleMyBusinessLink'
    { _agmblGmbEmail :: !(Maybe Text)
    , _agmblStatus   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountGoogleMyBusinessLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agmblGmbEmail'
--
-- * 'agmblStatus'
accountGoogleMyBusinessLink
    :: AccountGoogleMyBusinessLink
accountGoogleMyBusinessLink =
  AccountGoogleMyBusinessLink'
    {_agmblGmbEmail = Nothing, _agmblStatus = Nothing}

-- | The GMB email address of which a specific account within a GMB account.
-- A sample account within a GMB account could be a business account with
-- set of locations, managed under the GMB account.
agmblGmbEmail :: Lens' AccountGoogleMyBusinessLink (Maybe Text)
agmblGmbEmail
  = lens _agmblGmbEmail
      (\ s a -> s{_agmblGmbEmail = a})

-- | Status of the link between this Merchant Center account and the GMB
-- account.
agmblStatus :: Lens' AccountGoogleMyBusinessLink (Maybe Text)
agmblStatus
  = lens _agmblStatus (\ s a -> s{_agmblStatus = a})

instance FromJSON AccountGoogleMyBusinessLink where
        parseJSON
          = withObject "AccountGoogleMyBusinessLink"
              (\ o ->
                 AccountGoogleMyBusinessLink' <$>
                   (o .:? "gmbEmail") <*> (o .:? "status"))

instance ToJSON AccountGoogleMyBusinessLink where
        toJSON AccountGoogleMyBusinessLink'{..}
          = object
              (catMaybes
                 [("gmbEmail" .=) <$> _agmblGmbEmail,
                  ("status" .=) <$> _agmblStatus])

-- | A batch entry encoding a single non-batch datafeedstatuses request.
--
-- /See:/ 'datafeedstatusesCustomBatchRequestEntry' smart constructor.
data DatafeedstatusesCustomBatchRequestEntry =
  DatafeedstatusesCustomBatchRequestEntry'
    { _dMerchantId :: !(Maybe (Textual Word64))
    , _dCountry    :: !(Maybe Text)
    , _dMethod     :: !(Maybe Text)
    , _dDatafeedId :: !(Maybe (Textual Word64))
    , _dLanguage   :: !(Maybe Text)
    , _dBatchId    :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMerchantId'
--
-- * 'dCountry'
--
-- * 'dMethod'
--
-- * 'dDatafeedId'
--
-- * 'dLanguage'
--
-- * 'dBatchId'
datafeedstatusesCustomBatchRequestEntry
    :: DatafeedstatusesCustomBatchRequestEntry
datafeedstatusesCustomBatchRequestEntry =
  DatafeedstatusesCustomBatchRequestEntry'
    { _dMerchantId = Nothing
    , _dCountry = Nothing
    , _dMethod = Nothing
    , _dDatafeedId = Nothing
    , _dLanguage = Nothing
    , _dBatchId = Nothing
    }

-- | The ID of the managing account.
dMerchantId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dMerchantId
  = lens _dMerchantId (\ s a -> s{_dMerchantId = a}) .
      mapping _Coerce

-- | The country for which to get the datafeed status. If this parameter is
-- provided then language must also be provided. Note that for multi-target
-- datafeeds this parameter is required.
dCountry :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dCountry = lens _dCountry (\ s a -> s{_dCountry = a})

dMethod :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dMethod = lens _dMethod (\ s a -> s{_dMethod = a})

-- | The ID of the data feed to get.
dDatafeedId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dDatafeedId
  = lens _dDatafeedId (\ s a -> s{_dDatafeedId = a}) .
      mapping _Coerce

-- | The language for which to get the datafeed status. If this parameter is
-- provided then country must also be provided. Note that for multi-target
-- datafeeds this parameter is required.
dLanguage :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dLanguage
  = lens _dLanguage (\ s a -> s{_dLanguage = a})

-- | An entry ID, unique within the batch request.
dBatchId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word32)
dBatchId
  = lens _dBatchId (\ s a -> s{_dBatchId = a}) .
      mapping _Coerce

instance FromJSON
           DatafeedstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchRequestEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*> (o .:? "country") <*>
                     (o .:? "method")
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "language")
                     <*> (o .:? "batchId"))

instance ToJSON
           DatafeedstatusesCustomBatchRequestEntry
         where
        toJSON DatafeedstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dMerchantId,
                  ("country" .=) <$> _dCountry,
                  ("method" .=) <$> _dMethod,
                  ("datafeedId" .=) <$> _dDatafeedId,
                  ("language" .=) <$> _dLanguage,
                  ("batchId" .=) <$> _dBatchId])

--
-- /See:/ 'orderCustomer' smart constructor.
data OrderCustomer =
  OrderCustomer'
    { _ocFullName            :: !(Maybe Text)
    , _ocEmail               :: !(Maybe Text)
    , _ocMarketingRightsInfo :: !(Maybe OrderCustomerMarketingRightsInfo)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocFullName'
--
-- * 'ocEmail'
--
-- * 'ocMarketingRightsInfo'
orderCustomer
    :: OrderCustomer
orderCustomer =
  OrderCustomer'
    { _ocFullName = Nothing
    , _ocEmail = Nothing
    , _ocMarketingRightsInfo = Nothing
    }

-- | Full name of the customer.
ocFullName :: Lens' OrderCustomer (Maybe Text)
ocFullName
  = lens _ocFullName (\ s a -> s{_ocFullName = a})

-- | Deprecated.
ocEmail :: Lens' OrderCustomer (Maybe Text)
ocEmail = lens _ocEmail (\ s a -> s{_ocEmail = a})

-- | Customer\'s marketing preferences.
ocMarketingRightsInfo :: Lens' OrderCustomer (Maybe OrderCustomerMarketingRightsInfo)
ocMarketingRightsInfo
  = lens _ocMarketingRightsInfo
      (\ s a -> s{_ocMarketingRightsInfo = a})

instance FromJSON OrderCustomer where
        parseJSON
          = withObject "OrderCustomer"
              (\ o ->
                 OrderCustomer' <$>
                   (o .:? "fullName") <*> (o .:? "email") <*>
                     (o .:? "marketingRightsInfo"))

instance ToJSON OrderCustomer where
        toJSON OrderCustomer'{..}
          = object
              (catMaybes
                 [("fullName" .=) <$> _ocFullName,
                  ("email" .=) <$> _ocEmail,
                  ("marketingRightsInfo" .=) <$>
                    _ocMarketingRightsInfo])

--
-- /See:/ 'locationIdSet' smart constructor.
newtype LocationIdSet =
  LocationIdSet'
    { _lisLocationIds :: Maybe [Text]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LocationIdSet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisLocationIds'
locationIdSet
    :: LocationIdSet
locationIdSet = LocationIdSet' {_lisLocationIds = Nothing}

-- | A non-empty list of location IDs. They must all be of the same location
-- type (e.g., state).
lisLocationIds :: Lens' LocationIdSet [Text]
lisLocationIds
  = lens _lisLocationIds
      (\ s a -> s{_lisLocationIds = a})
      . _Default
      . _Coerce

instance FromJSON LocationIdSet where
        parseJSON
          = withObject "LocationIdSet"
              (\ o ->
                 LocationIdSet' <$> (o .:? "locationIds" .!= mempty))

instance ToJSON LocationIdSet where
        toJSON LocationIdSet'{..}
          = object
              (catMaybes [("locationIds" .=) <$> _lisLocationIds])

--
-- /See:/ 'row' smart constructor.
newtype Row =
  Row'
    { _rCells :: Maybe [Value]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Row' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rCells'
row
    :: Row
row = Row' {_rCells = Nothing}

-- | The list of cells that constitute the row. Must have the same length as
-- columnHeaders for two-dimensional tables, a length of 1 for
-- one-dimensional tables. Required.
rCells :: Lens' Row [Value]
rCells
  = lens _rCells (\ s a -> s{_rCells = a}) . _Default .
      _Coerce

instance FromJSON Row where
        parseJSON
          = withObject "Row"
              (\ o -> Row' <$> (o .:? "cells" .!= mempty))

instance ToJSON Row where
        toJSON Row'{..}
          = object (catMaybes [("cells" .=) <$> _rCells])

--
-- /See:/ 'ordersGetByMerchantOrderIdResponse' smart constructor.
data OrdersGetByMerchantOrderIdResponse =
  OrdersGetByMerchantOrderIdResponse'
    { _ogbmoirKind  :: !Text
    , _ogbmoirOrder :: !(Maybe Order)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersGetByMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ogbmoirKind'
--
-- * 'ogbmoirOrder'
ordersGetByMerchantOrderIdResponse
    :: OrdersGetByMerchantOrderIdResponse
ordersGetByMerchantOrderIdResponse =
  OrdersGetByMerchantOrderIdResponse'
    { _ogbmoirKind = "content#ordersGetByMerchantOrderIdResponse"
    , _ogbmoirOrder = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersGetByMerchantOrderIdResponse\".
ogbmoirKind :: Lens' OrdersGetByMerchantOrderIdResponse Text
ogbmoirKind
  = lens _ogbmoirKind (\ s a -> s{_ogbmoirKind = a})

-- | The requested order.
ogbmoirOrder :: Lens' OrdersGetByMerchantOrderIdResponse (Maybe Order)
ogbmoirOrder
  = lens _ogbmoirOrder (\ s a -> s{_ogbmoirOrder = a})

instance FromJSON OrdersGetByMerchantOrderIdResponse
         where
        parseJSON
          = withObject "OrdersGetByMerchantOrderIdResponse"
              (\ o ->
                 OrdersGetByMerchantOrderIdResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersGetByMerchantOrderIdResponse")
                     <*> (o .:? "order"))

instance ToJSON OrdersGetByMerchantOrderIdResponse
         where
        toJSON OrdersGetByMerchantOrderIdResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ogbmoirKind),
                  ("order" .=) <$> _ogbmoirOrder])

--
-- /See:/ 'ordersRejectReturnLineItemRequest' smart constructor.
data OrdersRejectReturnLineItemRequest =
  OrdersRejectReturnLineItemRequest'
    { _orrlirQuantity    :: !(Maybe (Textual Word32))
    , _orrlirLineItemId  :: !(Maybe Text)
    , _orrlirReason      :: !(Maybe Text)
    , _orrlirOperationId :: !(Maybe Text)
    , _orrlirProductId   :: !(Maybe Text)
    , _orrlirReasonText  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersRejectReturnLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirQuantity'
--
-- * 'orrlirLineItemId'
--
-- * 'orrlirReason'
--
-- * 'orrlirOperationId'
--
-- * 'orrlirProductId'
--
-- * 'orrlirReasonText'
ordersRejectReturnLineItemRequest
    :: OrdersRejectReturnLineItemRequest
ordersRejectReturnLineItemRequest =
  OrdersRejectReturnLineItemRequest'
    { _orrlirQuantity = Nothing
    , _orrlirLineItemId = Nothing
    , _orrlirReason = Nothing
    , _orrlirOperationId = Nothing
    , _orrlirProductId = Nothing
    , _orrlirReasonText = Nothing
    }

-- | The quantity to return and refund.
orrlirQuantity :: Lens' OrdersRejectReturnLineItemRequest (Maybe Word32)
orrlirQuantity
  = lens _orrlirQuantity
      (\ s a -> s{_orrlirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
orrlirLineItemId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirLineItemId
  = lens _orrlirLineItemId
      (\ s a -> s{_orrlirLineItemId = a})

-- | The reason for the return.
orrlirReason :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirReason
  = lens _orrlirReason (\ s a -> s{_orrlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrlirOperationId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirOperationId
  = lens _orrlirOperationId
      (\ s a -> s{_orrlirOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
orrlirProductId :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirProductId
  = lens _orrlirProductId
      (\ s a -> s{_orrlirProductId = a})

-- | The explanation of the reason.
orrlirReasonText :: Lens' OrdersRejectReturnLineItemRequest (Maybe Text)
orrlirReasonText
  = lens _orrlirReasonText
      (\ s a -> s{_orrlirReasonText = a})

instance FromJSON OrdersRejectReturnLineItemRequest
         where
        parseJSON
          = withObject "OrdersRejectReturnLineItemRequest"
              (\ o ->
                 OrdersRejectReturnLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersRejectReturnLineItemRequest
         where
        toJSON OrdersRejectReturnLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orrlirQuantity,
                  ("lineItemId" .=) <$> _orrlirLineItemId,
                  ("reason" .=) <$> _orrlirReason,
                  ("operationId" .=) <$> _orrlirOperationId,
                  ("productId" .=) <$> _orrlirProductId,
                  ("reasonText" .=) <$> _orrlirReasonText])

--
-- /See:/ 'ordersCancelRequest' smart constructor.
data OrdersCancelRequest =
  OrdersCancelRequest'
    { _ocrReason      :: !(Maybe Text)
    , _ocrOperationId :: !(Maybe Text)
    , _ocrReasonText  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrReason'
--
-- * 'ocrOperationId'
--
-- * 'ocrReasonText'
ordersCancelRequest
    :: OrdersCancelRequest
ordersCancelRequest =
  OrdersCancelRequest'
    {_ocrReason = Nothing, _ocrOperationId = Nothing, _ocrReasonText = Nothing}

-- | The reason for the cancellation.
ocrReason :: Lens' OrdersCancelRequest (Maybe Text)
ocrReason
  = lens _ocrReason (\ s a -> s{_ocrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
ocrOperationId :: Lens' OrdersCancelRequest (Maybe Text)
ocrOperationId
  = lens _ocrOperationId
      (\ s a -> s{_ocrOperationId = a})

-- | The explanation of the reason.
ocrReasonText :: Lens' OrdersCancelRequest (Maybe Text)
ocrReasonText
  = lens _ocrReasonText
      (\ s a -> s{_ocrReasonText = a})

instance FromJSON OrdersCancelRequest where
        parseJSON
          = withObject "OrdersCancelRequest"
              (\ o ->
                 OrdersCancelRequest' <$>
                   (o .:? "reason") <*> (o .:? "operationId") <*>
                     (o .:? "reasonText"))

instance ToJSON OrdersCancelRequest where
        toJSON OrdersCancelRequest'{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocrReason,
                  ("operationId" .=) <$> _ocrOperationId,
                  ("reasonText" .=) <$> _ocrReasonText])

--
-- /See:/ 'returnShipment' smart constructor.
data ReturnShipment =
  ReturnShipment'
    { _rsShipmentTrackingInfos :: !(Maybe [ShipmentTrackingInfo])
    , _rsReturnMethodType      :: !(Maybe Text)
    , _rsShipmentId            :: !(Maybe Text)
    , _rsCreationDate          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReturnShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsShipmentTrackingInfos'
--
-- * 'rsReturnMethodType'
--
-- * 'rsShipmentId'
--
-- * 'rsCreationDate'
returnShipment
    :: ReturnShipment
returnShipment =
  ReturnShipment'
    { _rsShipmentTrackingInfos = Nothing
    , _rsReturnMethodType = Nothing
    , _rsShipmentId = Nothing
    , _rsCreationDate = Nothing
    }

rsShipmentTrackingInfos :: Lens' ReturnShipment [ShipmentTrackingInfo]
rsShipmentTrackingInfos
  = lens _rsShipmentTrackingInfos
      (\ s a -> s{_rsShipmentTrackingInfos = a})
      . _Default
      . _Coerce

rsReturnMethodType :: Lens' ReturnShipment (Maybe Text)
rsReturnMethodType
  = lens _rsReturnMethodType
      (\ s a -> s{_rsReturnMethodType = a})

rsShipmentId :: Lens' ReturnShipment (Maybe Text)
rsShipmentId
  = lens _rsShipmentId (\ s a -> s{_rsShipmentId = a})

rsCreationDate :: Lens' ReturnShipment (Maybe Text)
rsCreationDate
  = lens _rsCreationDate
      (\ s a -> s{_rsCreationDate = a})

instance FromJSON ReturnShipment where
        parseJSON
          = withObject "ReturnShipment"
              (\ o ->
                 ReturnShipment' <$>
                   (o .:? "shipmentTrackingInfos" .!= mempty) <*>
                     (o .:? "returnMethodType")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "creationDate"))

instance ToJSON ReturnShipment where
        toJSON ReturnShipment'{..}
          = object
              (catMaybes
                 [("shipmentTrackingInfos" .=) <$>
                    _rsShipmentTrackingInfos,
                  ("returnMethodType" .=) <$> _rsReturnMethodType,
                  ("shipmentId" .=) <$> _rsShipmentId,
                  ("creationDate" .=) <$> _rsCreationDate])

--
-- /See:/ 'ordersCancelTestOrderByCustomerRequest' smart constructor.
newtype OrdersCancelTestOrderByCustomerRequest =
  OrdersCancelTestOrderByCustomerRequest'
    { _octobcrReason :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelTestOrderByCustomerRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octobcrReason'
ordersCancelTestOrderByCustomerRequest
    :: OrdersCancelTestOrderByCustomerRequest
ordersCancelTestOrderByCustomerRequest =
  OrdersCancelTestOrderByCustomerRequest' {_octobcrReason = Nothing}

-- | The reason for the cancellation.
octobcrReason :: Lens' OrdersCancelTestOrderByCustomerRequest (Maybe Text)
octobcrReason
  = lens _octobcrReason
      (\ s a -> s{_octobcrReason = a})

instance FromJSON
           OrdersCancelTestOrderByCustomerRequest
         where
        parseJSON
          = withObject "OrdersCancelTestOrderByCustomerRequest"
              (\ o ->
                 OrdersCancelTestOrderByCustomerRequest' <$>
                   (o .:? "reason"))

instance ToJSON
           OrdersCancelTestOrderByCustomerRequest
         where
        toJSON OrdersCancelTestOrderByCustomerRequest'{..}
          = object
              (catMaybes [("reason" .=) <$> _octobcrReason])

--
-- /See:/ 'testOrderCustomerMarketingRightsInfo' smart constructor.
data TestOrderCustomerMarketingRightsInfo =
  TestOrderCustomerMarketingRightsInfo'
    { _tocmriExplicitMarketingPreference :: !(Maybe Text)
    , _tocmriLastUpdatedTimestamp        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestOrderCustomerMarketingRightsInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocmriExplicitMarketingPreference'
--
-- * 'tocmriLastUpdatedTimestamp'
testOrderCustomerMarketingRightsInfo
    :: TestOrderCustomerMarketingRightsInfo
testOrderCustomerMarketingRightsInfo =
  TestOrderCustomerMarketingRightsInfo'
    { _tocmriExplicitMarketingPreference = Nothing
    , _tocmriLastUpdatedTimestamp = Nothing
    }

-- | Last know user use selection regards marketing preferences. In certain
-- cases selection might not be known, so this field would be empty.
tocmriExplicitMarketingPreference :: Lens' TestOrderCustomerMarketingRightsInfo (Maybe Text)
tocmriExplicitMarketingPreference
  = lens _tocmriExplicitMarketingPreference
      (\ s a -> s{_tocmriExplicitMarketingPreference = a})

-- | Timestamp when last time marketing preference was updated. Could be
-- empty, if user wasn\'t offered a selection yet.
tocmriLastUpdatedTimestamp :: Lens' TestOrderCustomerMarketingRightsInfo (Maybe Text)
tocmriLastUpdatedTimestamp
  = lens _tocmriLastUpdatedTimestamp
      (\ s a -> s{_tocmriLastUpdatedTimestamp = a})

instance FromJSON
           TestOrderCustomerMarketingRightsInfo
         where
        parseJSON
          = withObject "TestOrderCustomerMarketingRightsInfo"
              (\ o ->
                 TestOrderCustomerMarketingRightsInfo' <$>
                   (o .:? "explicitMarketingPreference") <*>
                     (o .:? "lastUpdatedTimestamp"))

instance ToJSON TestOrderCustomerMarketingRightsInfo
         where
        toJSON TestOrderCustomerMarketingRightsInfo'{..}
          = object
              (catMaybes
                 [("explicitMarketingPreference" .=) <$>
                    _tocmriExplicitMarketingPreference,
                  ("lastUpdatedTimestamp" .=) <$>
                    _tocmriLastUpdatedTimestamp])

--
-- /See:/ 'productStatusItemLevelIssue' smart constructor.
data ProductStatusItemLevelIssue =
  ProductStatusItemLevelIssue'
    { _psiliDestination   :: !(Maybe Text)
    , _psiliResolution    :: !(Maybe Text)
    , _psiliDocumentation :: !(Maybe Text)
    , _psiliCode          :: !(Maybe Text)
    , _psiliServability   :: !(Maybe Text)
    , _psiliAttributeName :: !(Maybe Text)
    , _psiliDescription   :: !(Maybe Text)
    , _psiliDetail        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductStatusItemLevelIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiliDestination'
--
-- * 'psiliResolution'
--
-- * 'psiliDocumentation'
--
-- * 'psiliCode'
--
-- * 'psiliServability'
--
-- * 'psiliAttributeName'
--
-- * 'psiliDescription'
--
-- * 'psiliDetail'
productStatusItemLevelIssue
    :: ProductStatusItemLevelIssue
productStatusItemLevelIssue =
  ProductStatusItemLevelIssue'
    { _psiliDestination = Nothing
    , _psiliResolution = Nothing
    , _psiliDocumentation = Nothing
    , _psiliCode = Nothing
    , _psiliServability = Nothing
    , _psiliAttributeName = Nothing
    , _psiliDescription = Nothing
    , _psiliDetail = Nothing
    }

-- | The destination the issue applies to.
psiliDestination :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDestination
  = lens _psiliDestination
      (\ s a -> s{_psiliDestination = a})

-- | Whether the issue can be resolved by the merchant.
psiliResolution :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliResolution
  = lens _psiliResolution
      (\ s a -> s{_psiliResolution = a})

-- | The URL of a web page to help with resolving this issue.
psiliDocumentation :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDocumentation
  = lens _psiliDocumentation
      (\ s a -> s{_psiliDocumentation = a})

-- | The error code of the issue.
psiliCode :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliCode
  = lens _psiliCode (\ s a -> s{_psiliCode = a})

-- | How this issue affects serving of the offer.
psiliServability :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliServability
  = lens _psiliServability
      (\ s a -> s{_psiliServability = a})

-- | The attribute\'s name, if the issue is caused by a single attribute.
psiliAttributeName :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliAttributeName
  = lens _psiliAttributeName
      (\ s a -> s{_psiliAttributeName = a})

-- | A short issue description in English.
psiliDescription :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDescription
  = lens _psiliDescription
      (\ s a -> s{_psiliDescription = a})

-- | A detailed issue description in English.
psiliDetail :: Lens' ProductStatusItemLevelIssue (Maybe Text)
psiliDetail
  = lens _psiliDetail (\ s a -> s{_psiliDetail = a})

instance FromJSON ProductStatusItemLevelIssue where
        parseJSON
          = withObject "ProductStatusItemLevelIssue"
              (\ o ->
                 ProductStatusItemLevelIssue' <$>
                   (o .:? "destination") <*> (o .:? "resolution") <*>
                     (o .:? "documentation")
                     <*> (o .:? "code")
                     <*> (o .:? "servability")
                     <*> (o .:? "attributeName")
                     <*> (o .:? "description")
                     <*> (o .:? "detail"))

instance ToJSON ProductStatusItemLevelIssue where
        toJSON ProductStatusItemLevelIssue'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _psiliDestination,
                  ("resolution" .=) <$> _psiliResolution,
                  ("documentation" .=) <$> _psiliDocumentation,
                  ("code" .=) <$> _psiliCode,
                  ("servability" .=) <$> _psiliServability,
                  ("attributeName" .=) <$> _psiliAttributeName,
                  ("description" .=) <$> _psiliDescription,
                  ("detail" .=) <$> _psiliDetail])

--
-- /See:/ 'orderLineItemProductVariantAttribute' smart constructor.
data OrderLineItemProductVariantAttribute =
  OrderLineItemProductVariantAttribute'
    { _olipvaDimension :: !(Maybe Text)
    , _olipvaValue     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemProductVariantAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipvaDimension'
--
-- * 'olipvaValue'
orderLineItemProductVariantAttribute
    :: OrderLineItemProductVariantAttribute
orderLineItemProductVariantAttribute =
  OrderLineItemProductVariantAttribute'
    {_olipvaDimension = Nothing, _olipvaValue = Nothing}

-- | The dimension of the variant.
olipvaDimension :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaDimension
  = lens _olipvaDimension
      (\ s a -> s{_olipvaDimension = a})

-- | The value for the dimension.
olipvaValue :: Lens' OrderLineItemProductVariantAttribute (Maybe Text)
olipvaValue
  = lens _olipvaValue (\ s a -> s{_olipvaValue = a})

instance FromJSON
           OrderLineItemProductVariantAttribute
         where
        parseJSON
          = withObject "OrderLineItemProductVariantAttribute"
              (\ o ->
                 OrderLineItemProductVariantAttribute' <$>
                   (o .:? "dimension") <*> (o .:? "value"))

instance ToJSON OrderLineItemProductVariantAttribute
         where
        toJSON OrderLineItemProductVariantAttribute'{..}
          = object
              (catMaybes
                 [("dimension" .=) <$> _olipvaDimension,
                  ("value" .=) <$> _olipvaValue])

--
-- /See:/ 'rateGroup' smart constructor.
data RateGroup =
  RateGroup'
    { _rgCarrierRates             :: !(Maybe [CarrierRate])
    , _rgName                     :: !(Maybe Text)
    , _rgApplicableShippingLabels :: !(Maybe [Text])
    , _rgMainTable                :: !(Maybe Table)
    , _rgSingleValue              :: !(Maybe Value)
    , _rgSubtables                :: !(Maybe [Table])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'RateGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgCarrierRates'
--
-- * 'rgName'
--
-- * 'rgApplicableShippingLabels'
--
-- * 'rgMainTable'
--
-- * 'rgSingleValue'
--
-- * 'rgSubtables'
rateGroup
    :: RateGroup
rateGroup =
  RateGroup'
    { _rgCarrierRates = Nothing
    , _rgName = Nothing
    , _rgApplicableShippingLabels = Nothing
    , _rgMainTable = Nothing
    , _rgSingleValue = Nothing
    , _rgSubtables = Nothing
    }

-- | A list of carrier rates that can be referred to by mainTable or
-- singleValue.
rgCarrierRates :: Lens' RateGroup [CarrierRate]
rgCarrierRates
  = lens _rgCarrierRates
      (\ s a -> s{_rgCarrierRates = a})
      . _Default
      . _Coerce

-- | Name of the rate group. Optional. If set has to be unique within
-- shipping service.
rgName :: Lens' RateGroup (Maybe Text)
rgName = lens _rgName (\ s a -> s{_rgName = a})

-- | A list of shipping labels defining the products to which this rate group
-- applies to. This is a disjunction: only one of the labels has to match
-- for the rate group to apply. May only be empty for the last rate group
-- of a service. Required.
rgApplicableShippingLabels :: Lens' RateGroup [Text]
rgApplicableShippingLabels
  = lens _rgApplicableShippingLabels
      (\ s a -> s{_rgApplicableShippingLabels = a})
      . _Default
      . _Coerce

-- | A table defining the rate group, when singleValue is not expressive
-- enough. Can only be set if singleValue is not set.
rgMainTable :: Lens' RateGroup (Maybe Table)
rgMainTable
  = lens _rgMainTable (\ s a -> s{_rgMainTable = a})

-- | The value of the rate group (e.g. flat rate $10). Can only be set if
-- mainTable and subtables are not set.
rgSingleValue :: Lens' RateGroup (Maybe Value)
rgSingleValue
  = lens _rgSingleValue
      (\ s a -> s{_rgSingleValue = a})

-- | A list of subtables referred to by mainTable. Can only be set if
-- mainTable is set.
rgSubtables :: Lens' RateGroup [Table]
rgSubtables
  = lens _rgSubtables (\ s a -> s{_rgSubtables = a}) .
      _Default
      . _Coerce

instance FromJSON RateGroup where
        parseJSON
          = withObject "RateGroup"
              (\ o ->
                 RateGroup' <$>
                   (o .:? "carrierRates" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "applicableShippingLabels" .!= mempty)
                     <*> (o .:? "mainTable")
                     <*> (o .:? "singleValue")
                     <*> (o .:? "subtables" .!= mempty))

instance ToJSON RateGroup where
        toJSON RateGroup'{..}
          = object
              (catMaybes
                 [("carrierRates" .=) <$> _rgCarrierRates,
                  ("name" .=) <$> _rgName,
                  ("applicableShippingLabels" .=) <$>
                    _rgApplicableShippingLabels,
                  ("mainTable" .=) <$> _rgMainTable,
                  ("singleValue" .=) <$> _rgSingleValue,
                  ("subtables" .=) <$> _rgSubtables])

--
-- /See:/ 'orderPromotion' smart constructor.
data OrderPromotion =
  OrderPromotion'
    { _opShortTitle          :: !(Maybe Text)
    , _opAppliedItems        :: !(Maybe [OrderPromotionItem])
    , _opPretaxValue         :: !(Maybe Price)
    , _opMerchantPromotionId :: !(Maybe Text)
    , _opSubtype             :: !(Maybe Text)
    , _opTitle               :: !(Maybe Text)
    , _opType                :: !(Maybe Text)
    , _opApplicableItems     :: !(Maybe [OrderPromotionItem])
    , _opTaxValue            :: !(Maybe Price)
    , _opFunder              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderPromotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opShortTitle'
--
-- * 'opAppliedItems'
--
-- * 'opPretaxValue'
--
-- * 'opMerchantPromotionId'
--
-- * 'opSubtype'
--
-- * 'opTitle'
--
-- * 'opType'
--
-- * 'opApplicableItems'
--
-- * 'opTaxValue'
--
-- * 'opFunder'
orderPromotion
    :: OrderPromotion
orderPromotion =
  OrderPromotion'
    { _opShortTitle = Nothing
    , _opAppliedItems = Nothing
    , _opPretaxValue = Nothing
    , _opMerchantPromotionId = Nothing
    , _opSubtype = Nothing
    , _opTitle = Nothing
    , _opType = Nothing
    , _opApplicableItems = Nothing
    , _opTaxValue = Nothing
    , _opFunder = Nothing
    }

-- | A short title of the promotion to be shown on the checkout page.
opShortTitle :: Lens' OrderPromotion (Maybe Text)
opShortTitle
  = lens _opShortTitle (\ s a -> s{_opShortTitle = a})

-- | Items which this promotion have been applied to.
opAppliedItems :: Lens' OrderPromotion [OrderPromotionItem]
opAppliedItems
  = lens _opAppliedItems
      (\ s a -> s{_opAppliedItems = a})
      . _Default
      . _Coerce

-- | Estimated discount applied to pre-tax amount.
opPretaxValue :: Lens' OrderPromotion (Maybe Price)
opPretaxValue
  = lens _opPretaxValue
      (\ s a -> s{_opPretaxValue = a})

-- | This field is used to identify promotions within merchants\' own
-- systems.
opMerchantPromotionId :: Lens' OrderPromotion (Maybe Text)
opMerchantPromotionId
  = lens _opMerchantPromotionId
      (\ s a -> s{_opMerchantPromotionId = a})

-- | The category of the promotion.
opSubtype :: Lens' OrderPromotion (Maybe Text)
opSubtype
  = lens _opSubtype (\ s a -> s{_opSubtype = a})

-- | The title of the promotion.
opTitle :: Lens' OrderPromotion (Maybe Text)
opTitle = lens _opTitle (\ s a -> s{_opTitle = a})

-- | The scope of the promotion.
opType :: Lens' OrderPromotion (Maybe Text)
opType = lens _opType (\ s a -> s{_opType = a})

-- | Items which this promotion may be applied to. If empty, there are no
-- restrictions on applicable items and quantity.
opApplicableItems :: Lens' OrderPromotion [OrderPromotionItem]
opApplicableItems
  = lens _opApplicableItems
      (\ s a -> s{_opApplicableItems = a})
      . _Default
      . _Coerce

-- | Estimated discount applied to tax (if allowed by law).
opTaxValue :: Lens' OrderPromotion (Maybe Price)
opTaxValue
  = lens _opTaxValue (\ s a -> s{_opTaxValue = a})

-- | The party funding the promotion.
opFunder :: Lens' OrderPromotion (Maybe Text)
opFunder = lens _opFunder (\ s a -> s{_opFunder = a})

instance FromJSON OrderPromotion where
        parseJSON
          = withObject "OrderPromotion"
              (\ o ->
                 OrderPromotion' <$>
                   (o .:? "shortTitle") <*>
                     (o .:? "appliedItems" .!= mempty)
                     <*> (o .:? "pretaxValue")
                     <*> (o .:? "merchantPromotionId")
                     <*> (o .:? "subtype")
                     <*> (o .:? "title")
                     <*> (o .:? "type")
                     <*> (o .:? "applicableItems" .!= mempty)
                     <*> (o .:? "taxValue")
                     <*> (o .:? "funder"))

instance ToJSON OrderPromotion where
        toJSON OrderPromotion'{..}
          = object
              (catMaybes
                 [("shortTitle" .=) <$> _opShortTitle,
                  ("appliedItems" .=) <$> _opAppliedItems,
                  ("pretaxValue" .=) <$> _opPretaxValue,
                  ("merchantPromotionId" .=) <$>
                    _opMerchantPromotionId,
                  ("subtype" .=) <$> _opSubtype,
                  ("title" .=) <$> _opTitle, ("type" .=) <$> _opType,
                  ("applicableItems" .=) <$> _opApplicableItems,
                  ("taxValue" .=) <$> _opTaxValue,
                  ("funder" .=) <$> _opFunder])

--
-- /See:/ 'accountStatusProducts' smart constructor.
data AccountStatusProducts =
  AccountStatusProducts'
    { _aspDestination     :: !(Maybe Text)
    , _aspCountry         :: !(Maybe Text)
    , _aspChannel         :: !(Maybe Text)
    , _aspStatistics      :: !(Maybe AccountStatusStatistics)
    , _aspItemLevelIssues :: !(Maybe [AccountStatusItemLevelIssue])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountStatusProducts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspDestination'
--
-- * 'aspCountry'
--
-- * 'aspChannel'
--
-- * 'aspStatistics'
--
-- * 'aspItemLevelIssues'
accountStatusProducts
    :: AccountStatusProducts
accountStatusProducts =
  AccountStatusProducts'
    { _aspDestination = Nothing
    , _aspCountry = Nothing
    , _aspChannel = Nothing
    , _aspStatistics = Nothing
    , _aspItemLevelIssues = Nothing
    }

-- | The destination the data applies to.
aspDestination :: Lens' AccountStatusProducts (Maybe Text)
aspDestination
  = lens _aspDestination
      (\ s a -> s{_aspDestination = a})

-- | The country the data applies to.
aspCountry :: Lens' AccountStatusProducts (Maybe Text)
aspCountry
  = lens _aspCountry (\ s a -> s{_aspCountry = a})

-- | The channel the data applies to.
aspChannel :: Lens' AccountStatusProducts (Maybe Text)
aspChannel
  = lens _aspChannel (\ s a -> s{_aspChannel = a})

-- | Aggregated product statistics.
aspStatistics :: Lens' AccountStatusProducts (Maybe AccountStatusStatistics)
aspStatistics
  = lens _aspStatistics
      (\ s a -> s{_aspStatistics = a})

-- | List of item-level issues.
aspItemLevelIssues :: Lens' AccountStatusProducts [AccountStatusItemLevelIssue]
aspItemLevelIssues
  = lens _aspItemLevelIssues
      (\ s a -> s{_aspItemLevelIssues = a})
      . _Default
      . _Coerce

instance FromJSON AccountStatusProducts where
        parseJSON
          = withObject "AccountStatusProducts"
              (\ o ->
                 AccountStatusProducts' <$>
                   (o .:? "destination") <*> (o .:? "country") <*>
                     (o .:? "channel")
                     <*> (o .:? "statistics")
                     <*> (o .:? "itemLevelIssues" .!= mempty))

instance ToJSON AccountStatusProducts where
        toJSON AccountStatusProducts'{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _aspDestination,
                  ("country" .=) <$> _aspCountry,
                  ("channel" .=) <$> _aspChannel,
                  ("statistics" .=) <$> _aspStatistics,
                  ("itemLevelIssues" .=) <$> _aspItemLevelIssues])

--
-- /See:/ 'price' smart constructor.
data Price =
  Price'
    { _pValue    :: !(Maybe Text)
    , _pCurrency :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pCurrency'
price
    :: Price
price = Price' {_pValue = Nothing, _pCurrency = Nothing}

-- | The price represented as a number.
pValue :: Lens' Price (Maybe Text)
pValue = lens _pValue (\ s a -> s{_pValue = a})

-- | The currency of the price.
pCurrency :: Lens' Price (Maybe Text)
pCurrency
  = lens _pCurrency (\ s a -> s{_pCurrency = a})

instance FromJSON Price where
        parseJSON
          = withObject "Price"
              (\ o ->
                 Price' <$> (o .:? "value") <*> (o .:? "currency"))

instance ToJSON Price where
        toJSON Price'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue,
                  ("currency" .=) <$> _pCurrency])

--
-- /See:/ 'orderLineItemShippingDetails' smart constructor.
data OrderLineItemShippingDetails =
  OrderLineItemShippingDetails'
    { _olisdShipByDate    :: !(Maybe Text)
    , _olisdMethod        :: !(Maybe OrderLineItemShippingDetailsMethod)
    , _olisdDeliverByDate :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemShippingDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olisdShipByDate'
--
-- * 'olisdMethod'
--
-- * 'olisdDeliverByDate'
orderLineItemShippingDetails
    :: OrderLineItemShippingDetails
orderLineItemShippingDetails =
  OrderLineItemShippingDetails'
    { _olisdShipByDate = Nothing
    , _olisdMethod = Nothing
    , _olisdDeliverByDate = Nothing
    }

-- | The ship by date, in ISO 8601 format.
olisdShipByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdShipByDate
  = lens _olisdShipByDate
      (\ s a -> s{_olisdShipByDate = a})

-- | Details of the shipping method.
olisdMethod :: Lens' OrderLineItemShippingDetails (Maybe OrderLineItemShippingDetailsMethod)
olisdMethod
  = lens _olisdMethod (\ s a -> s{_olisdMethod = a})

-- | The delivery by date, in ISO 8601 format.
olisdDeliverByDate :: Lens' OrderLineItemShippingDetails (Maybe Text)
olisdDeliverByDate
  = lens _olisdDeliverByDate
      (\ s a -> s{_olisdDeliverByDate = a})

instance FromJSON OrderLineItemShippingDetails where
        parseJSON
          = withObject "OrderLineItemShippingDetails"
              (\ o ->
                 OrderLineItemShippingDetails' <$>
                   (o .:? "shipByDate") <*> (o .:? "method") <*>
                     (o .:? "deliverByDate"))

instance ToJSON OrderLineItemShippingDetails where
        toJSON OrderLineItemShippingDetails'{..}
          = object
              (catMaybes
                 [("shipByDate" .=) <$> _olisdShipByDate,
                  ("method" .=) <$> _olisdMethod,
                  ("deliverByDate" .=) <$> _olisdDeliverByDate])

--
-- /See:/ 'datafeedsCustomBatchResponse' smart constructor.
data DatafeedsCustomBatchResponse =
  DatafeedsCustomBatchResponse'
    { _datEntries :: !(Maybe [DatafeedsCustomBatchResponseEntry])
    , _datKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datEntries'
--
-- * 'datKind'
datafeedsCustomBatchResponse
    :: DatafeedsCustomBatchResponse
datafeedsCustomBatchResponse =
  DatafeedsCustomBatchResponse'
    {_datEntries = Nothing, _datKind = "content#datafeedsCustomBatchResponse"}

-- | The result of the execution of the batch requests.
datEntries :: Lens' DatafeedsCustomBatchResponse [DatafeedsCustomBatchResponseEntry]
datEntries
  = lens _datEntries (\ s a -> s{_datEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsCustomBatchResponse\".
datKind :: Lens' DatafeedsCustomBatchResponse Text
datKind = lens _datKind (\ s a -> s{_datKind = a})

instance FromJSON DatafeedsCustomBatchResponse where
        parseJSON
          = withObject "DatafeedsCustomBatchResponse"
              (\ o ->
                 DatafeedsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#datafeedsCustomBatchResponse"))

instance ToJSON DatafeedsCustomBatchResponse where
        toJSON DatafeedsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _datEntries,
                  Just ("kind" .= _datKind)])

--
-- /See:/ 'invoiceSummary' smart constructor.
data InvoiceSummary =
  InvoiceSummary'
    { _isMerchantBalance           :: !(Maybe Amount)
    , _isCustomerBalance           :: !(Maybe Amount)
    , _isGoogleBalance             :: !(Maybe Amount)
    , _isProductTotal              :: !(Maybe Amount)
    , _isAdditionalChargeSummaries :: !(Maybe [InvoiceSummaryAdditionalChargeSummary])
    , _isPromotionSummaries        :: !(Maybe [Promotion])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'InvoiceSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isMerchantBalance'
--
-- * 'isCustomerBalance'
--
-- * 'isGoogleBalance'
--
-- * 'isProductTotal'
--
-- * 'isAdditionalChargeSummaries'
--
-- * 'isPromotionSummaries'
invoiceSummary
    :: InvoiceSummary
invoiceSummary =
  InvoiceSummary'
    { _isMerchantBalance = Nothing
    , _isCustomerBalance = Nothing
    , _isGoogleBalance = Nothing
    , _isProductTotal = Nothing
    , _isAdditionalChargeSummaries = Nothing
    , _isPromotionSummaries = Nothing
    }

-- | [required] Merchant balance on this invoice. A negative amount means the
-- merchant is paying, a positive one means the merchant is receiving
-- money. Note: the sum of merchant_balance, customer_balance and
-- google_balance must always be zero.
isMerchantBalance :: Lens' InvoiceSummary (Maybe Amount)
isMerchantBalance
  = lens _isMerchantBalance
      (\ s a -> s{_isMerchantBalance = a})

-- | [required] Customer balance on this invoice. A negative amount means the
-- customer is paying, a positive one means the customer is receiving
-- money. Note: the sum of merchant_balance, customer_balance and
-- google_balance must always be zero. Furthermore the absolute value of
-- this amount is expected to be equal to the sum of product amount and
-- additional charges, minus promotions.
isCustomerBalance :: Lens' InvoiceSummary (Maybe Amount)
isCustomerBalance
  = lens _isCustomerBalance
      (\ s a -> s{_isCustomerBalance = a})

-- | [required] Google balance on this invoice. A negative amount means
-- Google is paying, a positive one means Google is receiving money. Note:
-- the sum of merchant_balance, customer_balance and google_balance must
-- always be zero.
isGoogleBalance :: Lens' InvoiceSummary (Maybe Amount)
isGoogleBalance
  = lens _isGoogleBalance
      (\ s a -> s{_isGoogleBalance = a})

-- | [required] Total price for the product.
isProductTotal :: Lens' InvoiceSummary (Maybe Amount)
isProductTotal
  = lens _isProductTotal
      (\ s a -> s{_isProductTotal = a})

-- | Summary of the total amounts of the additional charges.
isAdditionalChargeSummaries :: Lens' InvoiceSummary [InvoiceSummaryAdditionalChargeSummary]
isAdditionalChargeSummaries
  = lens _isAdditionalChargeSummaries
      (\ s a -> s{_isAdditionalChargeSummaries = a})
      . _Default
      . _Coerce

-- | Summary for each promotion.
isPromotionSummaries :: Lens' InvoiceSummary [Promotion]
isPromotionSummaries
  = lens _isPromotionSummaries
      (\ s a -> s{_isPromotionSummaries = a})
      . _Default
      . _Coerce

instance FromJSON InvoiceSummary where
        parseJSON
          = withObject "InvoiceSummary"
              (\ o ->
                 InvoiceSummary' <$>
                   (o .:? "merchantBalance") <*>
                     (o .:? "customerBalance")
                     <*> (o .:? "googleBalance")
                     <*> (o .:? "productTotal")
                     <*> (o .:? "additionalChargeSummaries" .!= mempty)
                     <*> (o .:? "promotionSummaries" .!= mempty))

instance ToJSON InvoiceSummary where
        toJSON InvoiceSummary'{..}
          = object
              (catMaybes
                 [("merchantBalance" .=) <$> _isMerchantBalance,
                  ("customerBalance" .=) <$> _isCustomerBalance,
                  ("googleBalance" .=) <$> _isGoogleBalance,
                  ("productTotal" .=) <$> _isProductTotal,
                  ("additionalChargeSummaries" .=) <$>
                    _isAdditionalChargeSummaries,
                  ("promotionSummaries" .=) <$> _isPromotionSummaries])

--
-- /See:/ 'orderpaymentsNotifyChargeResponse' smart constructor.
data OrderpaymentsNotifyChargeResponse =
  OrderpaymentsNotifyChargeResponse'
    { _oncrKind            :: !Text
    , _oncrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyChargeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oncrKind'
--
-- * 'oncrExecutionStatus'
orderpaymentsNotifyChargeResponse
    :: OrderpaymentsNotifyChargeResponse
orderpaymentsNotifyChargeResponse =
  OrderpaymentsNotifyChargeResponse'
    { _oncrKind = "content#orderpaymentsNotifyChargeResponse"
    , _oncrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderpaymentsNotifyChargeResponse\".
oncrKind :: Lens' OrderpaymentsNotifyChargeResponse Text
oncrKind = lens _oncrKind (\ s a -> s{_oncrKind = a})

-- | The status of the execution.
oncrExecutionStatus :: Lens' OrderpaymentsNotifyChargeResponse (Maybe Text)
oncrExecutionStatus
  = lens _oncrExecutionStatus
      (\ s a -> s{_oncrExecutionStatus = a})

instance FromJSON OrderpaymentsNotifyChargeResponse
         where
        parseJSON
          = withObject "OrderpaymentsNotifyChargeResponse"
              (\ o ->
                 OrderpaymentsNotifyChargeResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderpaymentsNotifyChargeResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrderpaymentsNotifyChargeResponse
         where
        toJSON OrderpaymentsNotifyChargeResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oncrKind),
                  ("executionStatus" .=) <$> _oncrExecutionStatus])

--
-- /See:/ 'orderpaymentsNotifyAuthDeclinedRequest' smart constructor.
newtype OrderpaymentsNotifyAuthDeclinedRequest =
  OrderpaymentsNotifyAuthDeclinedRequest'
    { _onadrDeclineReason :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyAuthDeclinedRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onadrDeclineReason'
orderpaymentsNotifyAuthDeclinedRequest
    :: OrderpaymentsNotifyAuthDeclinedRequest
orderpaymentsNotifyAuthDeclinedRequest =
  OrderpaymentsNotifyAuthDeclinedRequest' {_onadrDeclineReason = Nothing}

-- | Reason why payment authorization was declined.
onadrDeclineReason :: Lens' OrderpaymentsNotifyAuthDeclinedRequest (Maybe Text)
onadrDeclineReason
  = lens _onadrDeclineReason
      (\ s a -> s{_onadrDeclineReason = a})

instance FromJSON
           OrderpaymentsNotifyAuthDeclinedRequest
         where
        parseJSON
          = withObject "OrderpaymentsNotifyAuthDeclinedRequest"
              (\ o ->
                 OrderpaymentsNotifyAuthDeclinedRequest' <$>
                   (o .:? "declineReason"))

instance ToJSON
           OrderpaymentsNotifyAuthDeclinedRequest
         where
        toJSON OrderpaymentsNotifyAuthDeclinedRequest'{..}
          = object
              (catMaybes
                 [("declineReason" .=) <$> _onadrDeclineReason])

--
-- /See:/ 'posListResponse' smart constructor.
data PosListResponse =
  PosListResponse'
    { _plrlKind      :: !Text
    , _plrlResources :: !(Maybe [PosStore])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrlKind'
--
-- * 'plrlResources'
posListResponse
    :: PosListResponse
posListResponse =
  PosListResponse'
    {_plrlKind = "content#posListResponse", _plrlResources = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posListResponse\".
plrlKind :: Lens' PosListResponse Text
plrlKind = lens _plrlKind (\ s a -> s{_plrlKind = a})

plrlResources :: Lens' PosListResponse [PosStore]
plrlResources
  = lens _plrlResources
      (\ s a -> s{_plrlResources = a})
      . _Default
      . _Coerce

instance FromJSON PosListResponse where
        parseJSON
          = withObject "PosListResponse"
              (\ o ->
                 PosListResponse' <$>
                   (o .:? "kind" .!= "content#posListResponse") <*>
                     (o .:? "resources" .!= mempty))

instance ToJSON PosListResponse where
        toJSON PosListResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _plrlKind),
                  ("resources" .=) <$> _plrlResources])

--
-- /See:/ 'orderDeliveryDetails' smart constructor.
data OrderDeliveryDetails =
  OrderDeliveryDetails'
    { _oddAddress     :: !(Maybe OrderAddress)
    , _oddPhoneNumber :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderDeliveryDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oddAddress'
--
-- * 'oddPhoneNumber'
orderDeliveryDetails
    :: OrderDeliveryDetails
orderDeliveryDetails =
  OrderDeliveryDetails' {_oddAddress = Nothing, _oddPhoneNumber = Nothing}

-- | The delivery address
oddAddress :: Lens' OrderDeliveryDetails (Maybe OrderAddress)
oddAddress
  = lens _oddAddress (\ s a -> s{_oddAddress = a})

-- | The phone number of the person receiving the delivery.
oddPhoneNumber :: Lens' OrderDeliveryDetails (Maybe Text)
oddPhoneNumber
  = lens _oddPhoneNumber
      (\ s a -> s{_oddPhoneNumber = a})

instance FromJSON OrderDeliveryDetails where
        parseJSON
          = withObject "OrderDeliveryDetails"
              (\ o ->
                 OrderDeliveryDetails' <$>
                   (o .:? "address") <*> (o .:? "phoneNumber"))

instance ToJSON OrderDeliveryDetails where
        toJSON OrderDeliveryDetails'{..}
          = object
              (catMaybes
                 [("address" .=) <$> _oddAddress,
                  ("phoneNumber" .=) <$> _oddPhoneNumber])

--
-- /See:/ 'orderLineItemProductFee' smart constructor.
data OrderLineItemProductFee =
  OrderLineItemProductFee'
    { _olipfAmount :: !(Maybe Price)
    , _olipfName   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemProductFee' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipfAmount'
--
-- * 'olipfName'
orderLineItemProductFee
    :: OrderLineItemProductFee
orderLineItemProductFee =
  OrderLineItemProductFee' {_olipfAmount = Nothing, _olipfName = Nothing}

-- | Amount of the fee.
olipfAmount :: Lens' OrderLineItemProductFee (Maybe Price)
olipfAmount
  = lens _olipfAmount (\ s a -> s{_olipfAmount = a})

-- | Name of the fee.
olipfName :: Lens' OrderLineItemProductFee (Maybe Text)
olipfName
  = lens _olipfName (\ s a -> s{_olipfName = a})

instance FromJSON OrderLineItemProductFee where
        parseJSON
          = withObject "OrderLineItemProductFee"
              (\ o ->
                 OrderLineItemProductFee' <$>
                   (o .:? "amount") <*> (o .:? "name"))

instance ToJSON OrderLineItemProductFee where
        toJSON OrderLineItemProductFee'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _olipfAmount,
                  ("name" .=) <$> _olipfName])

--
-- /See:/ 'ordersCancelResponse' smart constructor.
data OrdersCancelResponse =
  OrdersCancelResponse'
    { _ocrKind            :: !Text
    , _ocrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrKind'
--
-- * 'ocrExecutionStatus'
ordersCancelResponse
    :: OrdersCancelResponse
ordersCancelResponse =
  OrdersCancelResponse'
    {_ocrKind = "content#ordersCancelResponse", _ocrExecutionStatus = Nothing}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelResponse\".
ocrKind :: Lens' OrdersCancelResponse Text
ocrKind = lens _ocrKind (\ s a -> s{_ocrKind = a})

-- | The status of the execution.
ocrExecutionStatus :: Lens' OrdersCancelResponse (Maybe Text)
ocrExecutionStatus
  = lens _ocrExecutionStatus
      (\ s a -> s{_ocrExecutionStatus = a})

instance FromJSON OrdersCancelResponse where
        parseJSON
          = withObject "OrdersCancelResponse"
              (\ o ->
                 OrdersCancelResponse' <$>
                   (o .:? "kind" .!= "content#ordersCancelResponse") <*>
                     (o .:? "executionStatus"))

instance ToJSON OrdersCancelResponse where
        toJSON OrdersCancelResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ocrKind),
                  ("executionStatus" .=) <$> _ocrExecutionStatus])

--
-- /See:/ 'ordersSetLineItemMetadataRequest' smart constructor.
data OrdersSetLineItemMetadataRequest =
  OrdersSetLineItemMetadataRequest'
    { _oslimrAnnotations :: !(Maybe [OrderMerchantProvidedAnnotation])
    , _oslimrLineItemId  :: !(Maybe Text)
    , _oslimrOperationId :: !(Maybe Text)
    , _oslimrProductId   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersSetLineItemMetadataRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslimrAnnotations'
--
-- * 'oslimrLineItemId'
--
-- * 'oslimrOperationId'
--
-- * 'oslimrProductId'
ordersSetLineItemMetadataRequest
    :: OrdersSetLineItemMetadataRequest
ordersSetLineItemMetadataRequest =
  OrdersSetLineItemMetadataRequest'
    { _oslimrAnnotations = Nothing
    , _oslimrLineItemId = Nothing
    , _oslimrOperationId = Nothing
    , _oslimrProductId = Nothing
    }

oslimrAnnotations :: Lens' OrdersSetLineItemMetadataRequest [OrderMerchantProvidedAnnotation]
oslimrAnnotations
  = lens _oslimrAnnotations
      (\ s a -> s{_oslimrAnnotations = a})
      . _Default
      . _Coerce

-- | The ID of the line item to set metadata. Either lineItemId or productId
-- is required.
oslimrLineItemId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrLineItemId
  = lens _oslimrLineItemId
      (\ s a -> s{_oslimrLineItemId = a})

-- | The ID of the operation. Unique across all operations for a given order.
oslimrOperationId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrOperationId
  = lens _oslimrOperationId
      (\ s a -> s{_oslimrOperationId = a})

-- | The ID of the product to set metadata. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oslimrProductId :: Lens' OrdersSetLineItemMetadataRequest (Maybe Text)
oslimrProductId
  = lens _oslimrProductId
      (\ s a -> s{_oslimrProductId = a})

instance FromJSON OrdersSetLineItemMetadataRequest
         where
        parseJSON
          = withObject "OrdersSetLineItemMetadataRequest"
              (\ o ->
                 OrdersSetLineItemMetadataRequest' <$>
                   (o .:? "annotations" .!= mempty) <*>
                     (o .:? "lineItemId")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId"))

instance ToJSON OrdersSetLineItemMetadataRequest
         where
        toJSON OrdersSetLineItemMetadataRequest'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _oslimrAnnotations,
                  ("lineItemId" .=) <$> _oslimrLineItemId,
                  ("operationId" .=) <$> _oslimrOperationId,
                  ("productId" .=) <$> _oslimrProductId])

--
-- /See:/ 'ordersRejectReturnLineItemResponse' smart constructor.
data OrdersRejectReturnLineItemResponse =
  OrdersRejectReturnLineItemResponse'
    { _ordKind            :: !Text
    , _ordExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersRejectReturnLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordKind'
--
-- * 'ordExecutionStatus'
ordersRejectReturnLineItemResponse
    :: OrdersRejectReturnLineItemResponse
ordersRejectReturnLineItemResponse =
  OrdersRejectReturnLineItemResponse'
    { _ordKind = "content#ordersRejectReturnLineItemResponse"
    , _ordExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRejectReturnLineItemResponse\".
ordKind :: Lens' OrdersRejectReturnLineItemResponse Text
ordKind = lens _ordKind (\ s a -> s{_ordKind = a})

-- | The status of the execution.
ordExecutionStatus :: Lens' OrdersRejectReturnLineItemResponse (Maybe Text)
ordExecutionStatus
  = lens _ordExecutionStatus
      (\ s a -> s{_ordExecutionStatus = a})

instance FromJSON OrdersRejectReturnLineItemResponse
         where
        parseJSON
          = withObject "OrdersRejectReturnLineItemResponse"
              (\ o ->
                 OrdersRejectReturnLineItemResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersRejectReturnLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersRejectReturnLineItemResponse
         where
        toJSON OrdersRejectReturnLineItemResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ordKind),
                  ("executionStatus" .=) <$> _ordExecutionStatus])

--
-- /See:/ 'testOrder' smart constructor.
data TestOrder =
  TestOrder'
    { _toKind                      :: !Text
    , _toLineItems                 :: !(Maybe [TestOrderLineItem])
    , _toShippingOption            :: !(Maybe Text)
    , _toPredefinedDeliveryAddress :: !(Maybe Text)
    , _toShippingCostTax           :: !(Maybe Price)
    , _toCustomer                  :: !(Maybe TestOrderCustomer)
    , _toEnableOrderinvoices       :: !(Maybe Bool)
    , _toPromotions                :: !(Maybe [OrderPromotion])
    , _toPredefinedBillingAddress  :: !(Maybe Text)
    , _toNotificationMode          :: !(Maybe Text)
    , _toShippingCost              :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestOrder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toKind'
--
-- * 'toLineItems'
--
-- * 'toShippingOption'
--
-- * 'toPredefinedDeliveryAddress'
--
-- * 'toShippingCostTax'
--
-- * 'toCustomer'
--
-- * 'toEnableOrderinvoices'
--
-- * 'toPromotions'
--
-- * 'toPredefinedBillingAddress'
--
-- * 'toNotificationMode'
--
-- * 'toShippingCost'
testOrder
    :: TestOrder
testOrder =
  TestOrder'
    { _toKind = "content#testOrder"
    , _toLineItems = Nothing
    , _toShippingOption = Nothing
    , _toPredefinedDeliveryAddress = Nothing
    , _toShippingCostTax = Nothing
    , _toCustomer = Nothing
    , _toEnableOrderinvoices = Nothing
    , _toPromotions = Nothing
    , _toPredefinedBillingAddress = Nothing
    , _toNotificationMode = Nothing
    , _toShippingCost = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#testOrder\".
toKind :: Lens' TestOrder Text
toKind = lens _toKind (\ s a -> s{_toKind = a})

-- | Line items that are ordered. At least one line item must be provided.
toLineItems :: Lens' TestOrder [TestOrderLineItem]
toLineItems
  = lens _toLineItems (\ s a -> s{_toLineItems = a}) .
      _Default
      . _Coerce

-- | The requested shipping option.
toShippingOption :: Lens' TestOrder (Maybe Text)
toShippingOption
  = lens _toShippingOption
      (\ s a -> s{_toShippingOption = a})

-- | Identifier of one of the predefined delivery addresses for the delivery.
toPredefinedDeliveryAddress :: Lens' TestOrder (Maybe Text)
toPredefinedDeliveryAddress
  = lens _toPredefinedDeliveryAddress
      (\ s a -> s{_toPredefinedDeliveryAddress = a})

-- | The tax for the total shipping cost.
toShippingCostTax :: Lens' TestOrder (Maybe Price)
toShippingCostTax
  = lens _toShippingCostTax
      (\ s a -> s{_toShippingCostTax = a})

-- | The details of the customer who placed the order.
toCustomer :: Lens' TestOrder (Maybe TestOrderCustomer)
toCustomer
  = lens _toCustomer (\ s a -> s{_toCustomer = a})

-- | Whether the orderinvoices service should support this order.
toEnableOrderinvoices :: Lens' TestOrder (Maybe Bool)
toEnableOrderinvoices
  = lens _toEnableOrderinvoices
      (\ s a -> s{_toEnableOrderinvoices = a})

-- | Promotions associated with the order.
toPromotions :: Lens' TestOrder [OrderPromotion]
toPromotions
  = lens _toPromotions (\ s a -> s{_toPromotions = a})
      . _Default
      . _Coerce

-- | The billing address.
toPredefinedBillingAddress :: Lens' TestOrder (Maybe Text)
toPredefinedBillingAddress
  = lens _toPredefinedBillingAddress
      (\ s a -> s{_toPredefinedBillingAddress = a})

-- | Determines if test order must be pulled by merchant or pushed to
-- merchant via push integration.
toNotificationMode :: Lens' TestOrder (Maybe Text)
toNotificationMode
  = lens _toNotificationMode
      (\ s a -> s{_toNotificationMode = a})

-- | The total cost of shipping for all items.
toShippingCost :: Lens' TestOrder (Maybe Price)
toShippingCost
  = lens _toShippingCost
      (\ s a -> s{_toShippingCost = a})

instance FromJSON TestOrder where
        parseJSON
          = withObject "TestOrder"
              (\ o ->
                 TestOrder' <$>
                   (o .:? "kind" .!= "content#testOrder") <*>
                     (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "shippingOption")
                     <*> (o .:? "predefinedDeliveryAddress")
                     <*> (o .:? "shippingCostTax")
                     <*> (o .:? "customer")
                     <*> (o .:? "enableOrderinvoices")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "predefinedBillingAddress")
                     <*> (o .:? "notificationMode")
                     <*> (o .:? "shippingCost"))

instance ToJSON TestOrder where
        toJSON TestOrder'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _toKind),
                  ("lineItems" .=) <$> _toLineItems,
                  ("shippingOption" .=) <$> _toShippingOption,
                  ("predefinedDeliveryAddress" .=) <$>
                    _toPredefinedDeliveryAddress,
                  ("shippingCostTax" .=) <$> _toShippingCostTax,
                  ("customer" .=) <$> _toCustomer,
                  ("enableOrderinvoices" .=) <$>
                    _toEnableOrderinvoices,
                  ("promotions" .=) <$> _toPromotions,
                  ("predefinedBillingAddress" .=) <$>
                    _toPredefinedBillingAddress,
                  ("notificationMode" .=) <$> _toNotificationMode,
                  ("shippingCost" .=) <$> _toShippingCost])

--
-- /See:/ 'cutoffTime' smart constructor.
data CutoffTime =
  CutoffTime'
    { _ctHour     :: !(Maybe (Textual Word32))
    , _ctTimezone :: !(Maybe Text)
    , _ctMinute   :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'CutoffTime' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctHour'
--
-- * 'ctTimezone'
--
-- * 'ctMinute'
cutoffTime
    :: CutoffTime
cutoffTime =
  CutoffTime' {_ctHour = Nothing, _ctTimezone = Nothing, _ctMinute = Nothing}

-- | Hour of the cutoff time until which an order has to be placed to be
-- processed in the same day. Required.
ctHour :: Lens' CutoffTime (Maybe Word32)
ctHour
  = lens _ctHour (\ s a -> s{_ctHour = a}) .
      mapping _Coerce

-- | Timezone identifier for the cutoff time. A list of identifiers can be
-- found in the AdWords API documentation. E.g. \"Europe\/Zurich\".
-- Required.
ctTimezone :: Lens' CutoffTime (Maybe Text)
ctTimezone
  = lens _ctTimezone (\ s a -> s{_ctTimezone = a})

-- | Minute of the cutoff time until which an order has to be placed to be
-- processed in the same day. Required.
ctMinute :: Lens' CutoffTime (Maybe Word32)
ctMinute
  = lens _ctMinute (\ s a -> s{_ctMinute = a}) .
      mapping _Coerce

instance FromJSON CutoffTime where
        parseJSON
          = withObject "CutoffTime"
              (\ o ->
                 CutoffTime' <$>
                   (o .:? "hour") <*> (o .:? "timezone") <*>
                     (o .:? "minute"))

instance ToJSON CutoffTime where
        toJSON CutoffTime'{..}
          = object
              (catMaybes
                 [("hour" .=) <$> _ctHour,
                  ("timezone" .=) <$> _ctTimezone,
                  ("minute" .=) <$> _ctMinute])

-- | A batch entry encoding a single non-batch datafeedstatuses response.
--
-- /See:/ 'datafeedstatusesCustomBatchResponseEntry' smart constructor.
data DatafeedstatusesCustomBatchResponseEntry =
  DatafeedstatusesCustomBatchResponseEntry'
    { _datErrors         :: !(Maybe Errors)
    , _datDatafeedStatus :: !(Maybe DatafeedStatus)
    , _datBatchId        :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datErrors'
--
-- * 'datDatafeedStatus'
--
-- * 'datBatchId'
datafeedstatusesCustomBatchResponseEntry
    :: DatafeedstatusesCustomBatchResponseEntry
datafeedstatusesCustomBatchResponseEntry =
  DatafeedstatusesCustomBatchResponseEntry'
    {_datErrors = Nothing, _datDatafeedStatus = Nothing, _datBatchId = Nothing}

-- | A list of errors defined if and only if the request failed.
datErrors :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe Errors)
datErrors
  = lens _datErrors (\ s a -> s{_datErrors = a})

-- | The requested data feed status. Defined if and only if the request was
-- successful.
datDatafeedStatus :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe DatafeedStatus)
datDatafeedStatus
  = lens _datDatafeedStatus
      (\ s a -> s{_datDatafeedStatus = a})

-- | The ID of the request entry this entry responds to.
datBatchId :: Lens' DatafeedstatusesCustomBatchResponseEntry (Maybe Word32)
datBatchId
  = lens _datBatchId (\ s a -> s{_datBatchId = a}) .
      mapping _Coerce

instance FromJSON
           DatafeedstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchResponseEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchResponseEntry' <$>
                   (o .:? "errors") <*> (o .:? "datafeedStatus") <*>
                     (o .:? "batchId"))

instance ToJSON
           DatafeedstatusesCustomBatchResponseEntry
         where
        toJSON DatafeedstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("errors" .=) <$> _datErrors,
                  ("datafeedStatus" .=) <$> _datDatafeedStatus,
                  ("batchId" .=) <$> _datBatchId])

--
-- /See:/ 'orderRefund' smart constructor.
data OrderRefund =
  OrderRefund'
    { _ordAmount       :: !(Maybe Price)
    , _ordActor        :: !(Maybe Text)
    , _ordReason       :: !(Maybe Text)
    , _ordCreationDate :: !(Maybe Text)
    , _ordReasonText   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordAmount'
--
-- * 'ordActor'
--
-- * 'ordReason'
--
-- * 'ordCreationDate'
--
-- * 'ordReasonText'
orderRefund
    :: OrderRefund
orderRefund =
  OrderRefund'
    { _ordAmount = Nothing
    , _ordActor = Nothing
    , _ordReason = Nothing
    , _ordCreationDate = Nothing
    , _ordReasonText = Nothing
    }

-- | The amount that is refunded.
ordAmount :: Lens' OrderRefund (Maybe Price)
ordAmount
  = lens _ordAmount (\ s a -> s{_ordAmount = a})

-- | The actor that created the refund.
ordActor :: Lens' OrderRefund (Maybe Text)
ordActor = lens _ordActor (\ s a -> s{_ordActor = a})

-- | The reason for the refund.
ordReason :: Lens' OrderRefund (Maybe Text)
ordReason
  = lens _ordReason (\ s a -> s{_ordReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
ordCreationDate :: Lens' OrderRefund (Maybe Text)
ordCreationDate
  = lens _ordCreationDate
      (\ s a -> s{_ordCreationDate = a})

-- | The explanation of the reason.
ordReasonText :: Lens' OrderRefund (Maybe Text)
ordReasonText
  = lens _ordReasonText
      (\ s a -> s{_ordReasonText = a})

instance FromJSON OrderRefund where
        parseJSON
          = withObject "OrderRefund"
              (\ o ->
                 OrderRefund' <$>
                   (o .:? "amount") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderRefund where
        toJSON OrderRefund'{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ordAmount,
                  ("actor" .=) <$> _ordActor,
                  ("reason" .=) <$> _ordReason,
                  ("creationDate" .=) <$> _ordCreationDate,
                  ("reasonText" .=) <$> _ordReasonText])

--
-- /See:/ 'testOrderLineItemProduct' smart constructor.
data TestOrderLineItemProduct =
  TestOrderLineItemProduct'
    { _tolipImageLink         :: !(Maybe Text)
    , _tolipChannel           :: !(Maybe Text)
    , _tolipBrand             :: !(Maybe Text)
    , _tolipTargetCountry     :: !(Maybe Text)
    , _tolipGtin              :: !(Maybe Text)
    , _tolipItemGroupId       :: !(Maybe Text)
    , _tolipOfferId           :: !(Maybe Text)
    , _tolipPrice             :: !(Maybe Price)
    , _tolipVariantAttributes :: !(Maybe [OrderLineItemProductVariantAttribute])
    , _tolipTitle             :: !(Maybe Text)
    , _tolipContentLanguage   :: !(Maybe Text)
    , _tolipMpn               :: !(Maybe Text)
    , _tolipCondition         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestOrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tolipImageLink'
--
-- * 'tolipChannel'
--
-- * 'tolipBrand'
--
-- * 'tolipTargetCountry'
--
-- * 'tolipGtin'
--
-- * 'tolipItemGroupId'
--
-- * 'tolipOfferId'
--
-- * 'tolipPrice'
--
-- * 'tolipVariantAttributes'
--
-- * 'tolipTitle'
--
-- * 'tolipContentLanguage'
--
-- * 'tolipMpn'
--
-- * 'tolipCondition'
testOrderLineItemProduct
    :: TestOrderLineItemProduct
testOrderLineItemProduct =
  TestOrderLineItemProduct'
    { _tolipImageLink = Nothing
    , _tolipChannel = Nothing
    , _tolipBrand = Nothing
    , _tolipTargetCountry = Nothing
    , _tolipGtin = Nothing
    , _tolipItemGroupId = Nothing
    , _tolipOfferId = Nothing
    , _tolipPrice = Nothing
    , _tolipVariantAttributes = Nothing
    , _tolipTitle = Nothing
    , _tolipContentLanguage = Nothing
    , _tolipMpn = Nothing
    , _tolipCondition = Nothing
    }

-- | URL of an image of the item.
tolipImageLink :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipImageLink
  = lens _tolipImageLink
      (\ s a -> s{_tolipImageLink = a})

-- | The item\'s channel.
tolipChannel :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipChannel
  = lens _tolipChannel (\ s a -> s{_tolipChannel = a})

-- | Brand of the item.
tolipBrand :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipBrand
  = lens _tolipBrand (\ s a -> s{_tolipBrand = a})

-- | The CLDR territory code of the target country of the product.
tolipTargetCountry :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTargetCountry
  = lens _tolipTargetCountry
      (\ s a -> s{_tolipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item. Optional.
tolipGtin :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipGtin
  = lens _tolipGtin (\ s a -> s{_tolipGtin = a})

-- | Shared identifier for all variants of the same product. Optional.
tolipItemGroupId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipItemGroupId
  = lens _tolipItemGroupId
      (\ s a -> s{_tolipItemGroupId = a})

-- | An identifier of the item.
tolipOfferId :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipOfferId
  = lens _tolipOfferId (\ s a -> s{_tolipOfferId = a})

-- | The price for the product.
tolipPrice :: Lens' TestOrderLineItemProduct (Maybe Price)
tolipPrice
  = lens _tolipPrice (\ s a -> s{_tolipPrice = a})

-- | Variant attributes for the item. Optional.
tolipVariantAttributes :: Lens' TestOrderLineItemProduct [OrderLineItemProductVariantAttribute]
tolipVariantAttributes
  = lens _tolipVariantAttributes
      (\ s a -> s{_tolipVariantAttributes = a})
      . _Default
      . _Coerce

-- | The title of the product.
tolipTitle :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipTitle
  = lens _tolipTitle (\ s a -> s{_tolipTitle = a})

-- | The two-letter ISO 639-1 language code for the item.
tolipContentLanguage :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipContentLanguage
  = lens _tolipContentLanguage
      (\ s a -> s{_tolipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item. Optional.
tolipMpn :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipMpn = lens _tolipMpn (\ s a -> s{_tolipMpn = a})

-- | Condition or state of the item.
tolipCondition :: Lens' TestOrderLineItemProduct (Maybe Text)
tolipCondition
  = lens _tolipCondition
      (\ s a -> s{_tolipCondition = a})

instance FromJSON TestOrderLineItemProduct where
        parseJSON
          = withObject "TestOrderLineItemProduct"
              (\ o ->
                 TestOrderLineItemProduct' <$>
                   (o .:? "imageLink") <*> (o .:? "channel") <*>
                     (o .:? "brand")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "offerId")
                     <*> (o .:? "price")
                     <*> (o .:? "variantAttributes" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition"))

instance ToJSON TestOrderLineItemProduct where
        toJSON TestOrderLineItemProduct'{..}
          = object
              (catMaybes
                 [("imageLink" .=) <$> _tolipImageLink,
                  ("channel" .=) <$> _tolipChannel,
                  ("brand" .=) <$> _tolipBrand,
                  ("targetCountry" .=) <$> _tolipTargetCountry,
                  ("gtin" .=) <$> _tolipGtin,
                  ("itemGroupId" .=) <$> _tolipItemGroupId,
                  ("offerId" .=) <$> _tolipOfferId,
                  ("price" .=) <$> _tolipPrice,
                  ("variantAttributes" .=) <$> _tolipVariantAttributes,
                  ("title" .=) <$> _tolipTitle,
                  ("contentLanguage" .=) <$> _tolipContentLanguage,
                  ("mpn" .=) <$> _tolipMpn,
                  ("condition" .=) <$> _tolipCondition])

--
-- /See:/ 'accounttaxCustomBatchResponse' smart constructor.
data AccounttaxCustomBatchResponse =
  AccounttaxCustomBatchResponse'
    { _acbr1Entries :: !(Maybe [AccounttaxCustomBatchResponseEntry])
    , _acbr1Kind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbr1Entries'
--
-- * 'acbr1Kind'
accounttaxCustomBatchResponse
    :: AccounttaxCustomBatchResponse
accounttaxCustomBatchResponse =
  AccounttaxCustomBatchResponse'
    { _acbr1Entries = Nothing
    , _acbr1Kind = "content#accounttaxCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
acbr1Entries :: Lens' AccounttaxCustomBatchResponse [AccounttaxCustomBatchResponseEntry]
acbr1Entries
  = lens _acbr1Entries (\ s a -> s{_acbr1Entries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxCustomBatchResponse\".
acbr1Kind :: Lens' AccounttaxCustomBatchResponse Text
acbr1Kind
  = lens _acbr1Kind (\ s a -> s{_acbr1Kind = a})

instance FromJSON AccounttaxCustomBatchResponse where
        parseJSON
          = withObject "AccounttaxCustomBatchResponse"
              (\ o ->
                 AccounttaxCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accounttaxCustomBatchResponse"))

instance ToJSON AccounttaxCustomBatchResponse where
        toJSON AccounttaxCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbr1Entries,
                  Just ("kind" .= _acbr1Kind)])

--
-- /See:/ 'accountsClaimWebsiteResponse' smart constructor.
newtype AccountsClaimWebsiteResponse =
  AccountsClaimWebsiteResponse'
    { _acwrKind :: Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsClaimWebsiteResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acwrKind'
accountsClaimWebsiteResponse
    :: AccountsClaimWebsiteResponse
accountsClaimWebsiteResponse =
  AccountsClaimWebsiteResponse'
    {_acwrKind = "content#accountsClaimWebsiteResponse"}

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountsClaimWebsiteResponse\".
acwrKind :: Lens' AccountsClaimWebsiteResponse Text
acwrKind = lens _acwrKind (\ s a -> s{_acwrKind = a})

instance FromJSON AccountsClaimWebsiteResponse where
        parseJSON
          = withObject "AccountsClaimWebsiteResponse"
              (\ o ->
                 AccountsClaimWebsiteResponse' <$>
                   (o .:? "kind" .!=
                      "content#accountsClaimWebsiteResponse"))

instance ToJSON AccountsClaimWebsiteResponse where
        toJSON AccountsClaimWebsiteResponse'{..}
          = object (catMaybes [Just ("kind" .= _acwrKind)])

--
-- /See:/ 'orderAddress' smart constructor.
data OrderAddress =
  OrderAddress'
    { _oaRecipientName   :: !(Maybe Text)
    , _oaStreetAddress   :: !(Maybe [Text])
    , _oaCountry         :: !(Maybe Text)
    , _oaPostalCode      :: !(Maybe Text)
    , _oaLocality        :: !(Maybe Text)
    , _oaIsPostOfficeBox :: !(Maybe Bool)
    , _oaFullAddress     :: !(Maybe [Text])
    , _oaRegion          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderAddress' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oaRecipientName'
--
-- * 'oaStreetAddress'
--
-- * 'oaCountry'
--
-- * 'oaPostalCode'
--
-- * 'oaLocality'
--
-- * 'oaIsPostOfficeBox'
--
-- * 'oaFullAddress'
--
-- * 'oaRegion'
orderAddress
    :: OrderAddress
orderAddress =
  OrderAddress'
    { _oaRecipientName = Nothing
    , _oaStreetAddress = Nothing
    , _oaCountry = Nothing
    , _oaPostalCode = Nothing
    , _oaLocality = Nothing
    , _oaIsPostOfficeBox = Nothing
    , _oaFullAddress = Nothing
    , _oaRegion = Nothing
    }

-- | Name of the recipient.
oaRecipientName :: Lens' OrderAddress (Maybe Text)
oaRecipientName
  = lens _oaRecipientName
      (\ s a -> s{_oaRecipientName = a})

-- | Street-level part of the address.
oaStreetAddress :: Lens' OrderAddress [Text]
oaStreetAddress
  = lens _oaStreetAddress
      (\ s a -> s{_oaStreetAddress = a})
      . _Default
      . _Coerce

-- | CLDR country code (e.g. \"US\").
oaCountry :: Lens' OrderAddress (Maybe Text)
oaCountry
  = lens _oaCountry (\ s a -> s{_oaCountry = a})

-- | Postal Code or ZIP (e.g. \"94043\").
oaPostalCode :: Lens' OrderAddress (Maybe Text)
oaPostalCode
  = lens _oaPostalCode (\ s a -> s{_oaPostalCode = a})

-- | City, town or commune. May also include dependent localities or
-- sublocalities (e.g. neighborhoods or suburbs).
oaLocality :: Lens' OrderAddress (Maybe Text)
oaLocality
  = lens _oaLocality (\ s a -> s{_oaLocality = a})

-- | Whether the address is a post office box.
oaIsPostOfficeBox :: Lens' OrderAddress (Maybe Bool)
oaIsPostOfficeBox
  = lens _oaIsPostOfficeBox
      (\ s a -> s{_oaIsPostOfficeBox = a})

-- | Strings representing the lines of the printed label for mailing the
-- order, for example: John Smith 1600 Amphitheatre Parkway Mountain View,
-- CA, 94043 United States
oaFullAddress :: Lens' OrderAddress [Text]
oaFullAddress
  = lens _oaFullAddress
      (\ s a -> s{_oaFullAddress = a})
      . _Default
      . _Coerce

-- | Top-level administrative subdivision of the country. For example, a
-- state like California (\"CA\") or a province like Quebec (\"QC\").
oaRegion :: Lens' OrderAddress (Maybe Text)
oaRegion = lens _oaRegion (\ s a -> s{_oaRegion = a})

instance FromJSON OrderAddress where
        parseJSON
          = withObject "OrderAddress"
              (\ o ->
                 OrderAddress' <$>
                   (o .:? "recipientName") <*>
                     (o .:? "streetAddress" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "isPostOfficeBox")
                     <*> (o .:? "fullAddress" .!= mempty)
                     <*> (o .:? "region"))

instance ToJSON OrderAddress where
        toJSON OrderAddress'{..}
          = object
              (catMaybes
                 [("recipientName" .=) <$> _oaRecipientName,
                  ("streetAddress" .=) <$> _oaStreetAddress,
                  ("country" .=) <$> _oaCountry,
                  ("postalCode" .=) <$> _oaPostalCode,
                  ("locality" .=) <$> _oaLocality,
                  ("isPostOfficeBox" .=) <$> _oaIsPostOfficeBox,
                  ("fullAddress" .=) <$> _oaFullAddress,
                  ("region" .=) <$> _oaRegion])

--
-- /See:/ 'ordersCustomBatchRequestEntryCreateTestReturnReturnItem' smart constructor.
data OrdersCustomBatchRequestEntryCreateTestReturnReturnItem =
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
    { _ocbrectrriQuantity   :: !(Maybe (Textual Word32))
    , _ocbrectrriLineItemId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCreateTestReturnReturnItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrectrriQuantity'
--
-- * 'ocbrectrriLineItemId'
ordersCustomBatchRequestEntryCreateTestReturnReturnItem
    :: OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
ordersCustomBatchRequestEntryCreateTestReturnReturnItem =
  OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
    {_ocbrectrriQuantity = Nothing, _ocbrectrriLineItemId = Nothing}

-- | Quantity that is returned.
ocbrectrriQuantity :: Lens' OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (Maybe Word32)
ocbrectrriQuantity
  = lens _ocbrectrriQuantity
      (\ s a -> s{_ocbrectrriQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return.
ocbrectrriLineItemId :: Lens' OrdersCustomBatchRequestEntryCreateTestReturnReturnItem (Maybe Text)
ocbrectrriLineItemId
  = lens _ocbrectrriLineItemId
      (\ s a -> s{_ocbrectrriLineItemId = a})

instance FromJSON
           OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryCreateTestReturnReturnItem"
              (\ o ->
                 OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'
                   <$> (o .:? "quantity") <*> (o .:? "lineItemId"))

instance ToJSON
           OrdersCustomBatchRequestEntryCreateTestReturnReturnItem
         where
        toJSON
          OrdersCustomBatchRequestEntryCreateTestReturnReturnItem'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocbrectrriQuantity,
                  ("lineItemId" .=) <$> _ocbrectrriLineItemId])

--
-- /See:/ 'productUnitPricingBaseMeasure' smart constructor.
data ProductUnitPricingBaseMeasure =
  ProductUnitPricingBaseMeasure'
    { _pupbmValue :: !(Maybe (Textual Int64))
    , _pupbmUnit  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductUnitPricingBaseMeasure' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pupbmValue'
--
-- * 'pupbmUnit'
productUnitPricingBaseMeasure
    :: ProductUnitPricingBaseMeasure
productUnitPricingBaseMeasure =
  ProductUnitPricingBaseMeasure' {_pupbmValue = Nothing, _pupbmUnit = Nothing}

-- | The denominator of the unit price.
pupbmValue :: Lens' ProductUnitPricingBaseMeasure (Maybe Int64)
pupbmValue
  = lens _pupbmValue (\ s a -> s{_pupbmValue = a}) .
      mapping _Coerce

-- | The unit of the denominator.
pupbmUnit :: Lens' ProductUnitPricingBaseMeasure (Maybe Text)
pupbmUnit
  = lens _pupbmUnit (\ s a -> s{_pupbmUnit = a})

instance FromJSON ProductUnitPricingBaseMeasure where
        parseJSON
          = withObject "ProductUnitPricingBaseMeasure"
              (\ o ->
                 ProductUnitPricingBaseMeasure' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingBaseMeasure where
        toJSON ProductUnitPricingBaseMeasure'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupbmValue,
                  ("unit" .=) <$> _pupbmUnit])

--
-- /See:/ 'liaSettingsGetAccessibleGmbAccountsResponse' smart constructor.
data LiaSettingsGetAccessibleGmbAccountsResponse =
  LiaSettingsGetAccessibleGmbAccountsResponse'
    { _lsgagarGmbAccounts :: !(Maybe [GmbAccountsGmbAccount])
    , _lsgagarKind        :: !Text
    , _lsgagarAccountId   :: !(Maybe (Textual Word64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsGetAccessibleGmbAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsgagarGmbAccounts'
--
-- * 'lsgagarKind'
--
-- * 'lsgagarAccountId'
liaSettingsGetAccessibleGmbAccountsResponse
    :: LiaSettingsGetAccessibleGmbAccountsResponse
liaSettingsGetAccessibleGmbAccountsResponse =
  LiaSettingsGetAccessibleGmbAccountsResponse'
    { _lsgagarGmbAccounts = Nothing
    , _lsgagarKind = "content#liasettingsGetAccessibleGmbAccountsResponse"
    , _lsgagarAccountId = Nothing
    }

-- | A list of GMB accounts which are available to the merchant.
lsgagarGmbAccounts :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse [GmbAccountsGmbAccount]
lsgagarGmbAccounts
  = lens _lsgagarGmbAccounts
      (\ s a -> s{_lsgagarGmbAccounts = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsGetAccessibleGmbAccountsResponse\".
lsgagarKind :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse Text
lsgagarKind
  = lens _lsgagarKind (\ s a -> s{_lsgagarKind = a})

-- | The ID of the account.
lsgagarAccountId :: Lens' LiaSettingsGetAccessibleGmbAccountsResponse (Maybe Word64)
lsgagarAccountId
  = lens _lsgagarAccountId
      (\ s a -> s{_lsgagarAccountId = a})
      . mapping _Coerce

instance FromJSON
           LiaSettingsGetAccessibleGmbAccountsResponse
         where
        parseJSON
          = withObject
              "LiaSettingsGetAccessibleGmbAccountsResponse"
              (\ o ->
                 LiaSettingsGetAccessibleGmbAccountsResponse' <$>
                   (o .:? "gmbAccounts" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#liasettingsGetAccessibleGmbAccountsResponse")
                     <*> (o .:? "accountId"))

instance ToJSON
           LiaSettingsGetAccessibleGmbAccountsResponse
         where
        toJSON
          LiaSettingsGetAccessibleGmbAccountsResponse'{..}
          = object
              (catMaybes
                 [("gmbAccounts" .=) <$> _lsgagarGmbAccounts,
                  Just ("kind" .= _lsgagarKind),
                  ("accountId" .=) <$> _lsgagarAccountId])

--
-- /See:/ 'datafeedsListResponse' smart constructor.
data DatafeedsListResponse =
  DatafeedsListResponse'
    { _dlrNextPageToken :: !(Maybe Text)
    , _dlrKind          :: !Text
    , _dlrResources     :: !(Maybe [Datafeed])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrNextPageToken'
--
-- * 'dlrKind'
--
-- * 'dlrResources'
datafeedsListResponse
    :: DatafeedsListResponse
datafeedsListResponse =
  DatafeedsListResponse'
    { _dlrNextPageToken = Nothing
    , _dlrKind = "content#datafeedsListResponse"
    , _dlrResources = Nothing
    }

-- | The token for the retrieval of the next page of datafeeds.
dlrNextPageToken :: Lens' DatafeedsListResponse (Maybe Text)
dlrNextPageToken
  = lens _dlrNextPageToken
      (\ s a -> s{_dlrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedsListResponse\".
dlrKind :: Lens' DatafeedsListResponse Text
dlrKind = lens _dlrKind (\ s a -> s{_dlrKind = a})

dlrResources :: Lens' DatafeedsListResponse [Datafeed]
dlrResources
  = lens _dlrResources (\ s a -> s{_dlrResources = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedsListResponse where
        parseJSON
          = withObject "DatafeedsListResponse"
              (\ o ->
                 DatafeedsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#datafeedsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON DatafeedsListResponse where
        toJSON DatafeedsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrNextPageToken,
                  Just ("kind" .= _dlrKind),
                  ("resources" .=) <$> _dlrResources])

--
-- /See:/ 'accountStatusStatistics' smart constructor.
data AccountStatusStatistics =
  AccountStatusStatistics'
    { _assPending     :: !(Maybe (Textual Int64))
    , _assExpiring    :: !(Maybe (Textual Int64))
    , _assActive      :: !(Maybe (Textual Int64))
    , _assDisApproved :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountStatusStatistics' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assPending'
--
-- * 'assExpiring'
--
-- * 'assActive'
--
-- * 'assDisApproved'
accountStatusStatistics
    :: AccountStatusStatistics
accountStatusStatistics =
  AccountStatusStatistics'
    { _assPending = Nothing
    , _assExpiring = Nothing
    , _assActive = Nothing
    , _assDisApproved = Nothing
    }

-- | Number of pending offers.
assPending :: Lens' AccountStatusStatistics (Maybe Int64)
assPending
  = lens _assPending (\ s a -> s{_assPending = a}) .
      mapping _Coerce

-- | Number of expiring offers.
assExpiring :: Lens' AccountStatusStatistics (Maybe Int64)
assExpiring
  = lens _assExpiring (\ s a -> s{_assExpiring = a}) .
      mapping _Coerce

-- | Number of active offers.
assActive :: Lens' AccountStatusStatistics (Maybe Int64)
assActive
  = lens _assActive (\ s a -> s{_assActive = a}) .
      mapping _Coerce

-- | Number of disapproved offers.
assDisApproved :: Lens' AccountStatusStatistics (Maybe Int64)
assDisApproved
  = lens _assDisApproved
      (\ s a -> s{_assDisApproved = a})
      . mapping _Coerce

instance FromJSON AccountStatusStatistics where
        parseJSON
          = withObject "AccountStatusStatistics"
              (\ o ->
                 AccountStatusStatistics' <$>
                   (o .:? "pending") <*> (o .:? "expiring") <*>
                     (o .:? "active")
                     <*> (o .:? "disapproved"))

instance ToJSON AccountStatusStatistics where
        toJSON AccountStatusStatistics'{..}
          = object
              (catMaybes
                 [("pending" .=) <$> _assPending,
                  ("expiring" .=) <$> _assExpiring,
                  ("active" .=) <$> _assActive,
                  ("disapproved" .=) <$> _assDisApproved])

-- | A batch entry encoding a single non-batch products response.
--
-- /See:/ 'productsCustomBatchResponseEntry' smart constructor.
data ProductsCustomBatchResponseEntry =
  ProductsCustomBatchResponseEntry'
    { _pcbre1Kind    :: !Text
    , _pcbre1Product :: !(Maybe Product)
    , _pcbre1Errors  :: !(Maybe Errors)
    , _pcbre1BatchId :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbre1Kind'
--
-- * 'pcbre1Product'
--
-- * 'pcbre1Errors'
--
-- * 'pcbre1BatchId'
productsCustomBatchResponseEntry
    :: ProductsCustomBatchResponseEntry
productsCustomBatchResponseEntry =
  ProductsCustomBatchResponseEntry'
    { _pcbre1Kind = "content#productsCustomBatchResponseEntry"
    , _pcbre1Product = Nothing
    , _pcbre1Errors = Nothing
    , _pcbre1BatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsCustomBatchResponseEntry\".
pcbre1Kind :: Lens' ProductsCustomBatchResponseEntry Text
pcbre1Kind
  = lens _pcbre1Kind (\ s a -> s{_pcbre1Kind = a})

-- | The inserted product. Only defined if the method is insert and if the
-- request was successful.
pcbre1Product :: Lens' ProductsCustomBatchResponseEntry (Maybe Product)
pcbre1Product
  = lens _pcbre1Product
      (\ s a -> s{_pcbre1Product = a})

-- | A list of errors defined if and only if the request failed.
pcbre1Errors :: Lens' ProductsCustomBatchResponseEntry (Maybe Errors)
pcbre1Errors
  = lens _pcbre1Errors (\ s a -> s{_pcbre1Errors = a})

-- | The ID of the request entry this entry responds to.
pcbre1BatchId :: Lens' ProductsCustomBatchResponseEntry (Maybe Word32)
pcbre1BatchId
  = lens _pcbre1BatchId
      (\ s a -> s{_pcbre1BatchId = a})
      . mapping _Coerce

instance FromJSON ProductsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchResponseEntry"
              (\ o ->
                 ProductsCustomBatchResponseEntry' <$>
                   (o .:? "kind" .!=
                      "content#productsCustomBatchResponseEntry")
                     <*> (o .:? "product")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchResponseEntry
         where
        toJSON ProductsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pcbre1Kind),
                  ("product" .=) <$> _pcbre1Product,
                  ("errors" .=) <$> _pcbre1Errors,
                  ("batchId" .=) <$> _pcbre1BatchId])

-- | Product data. After inserting, updating, or deleting a product, it may
-- take several minutes before changes take effect.
--
-- /See:/ 'product' smart constructor.
data Product =
  Product'
    { _prorDisplayAdsLink           :: !(Maybe Text)
    , _prorCustomLabel1             :: !(Maybe Text)
    , _prorShippingWidth            :: !(Maybe ProductShippingDimension)
    , _prorImageLink                :: !(Maybe Text)
    , _prorIncludedDestinations     :: !(Maybe [Text])
    , _prorDisplayAdsValue          :: !(Maybe (Textual Double))
    , _prorLoyaltyPoints            :: !(Maybe LoyaltyPoints)
    , _prorAdditionalImageLinks     :: !(Maybe [Text])
    , _prorExcludedDestinations     :: !(Maybe [Text])
    , _prorColor                    :: !(Maybe Text)
    , _prorCustomLabel0             :: !(Maybe Text)
    , _prorKind                     :: !Text
    , _prorMinHandlingTime          :: !(Maybe (Textual Int64))
    , _prorMultipack                :: !(Maybe (Textual Int64))
    , _prorPattern                  :: !(Maybe Text)
    , _prorLink                     :: !(Maybe Text)
    , _prorProductTypes             :: !(Maybe [Text])
    , _prorSizeSystem               :: !(Maybe Text)
    , _prorUnitPricingBaseMeasure   :: !(Maybe ProductUnitPricingBaseMeasure)
    , _prorTaxes                    :: !(Maybe [ProductTax])
    , _prorMaterial                 :: !(Maybe Text)
    , _prorInstallment              :: !(Maybe Installment)
    , _prorChannel                  :: !(Maybe Text)
    , _prorIdentifierExists         :: !(Maybe Bool)
    , _prorBrand                    :: !(Maybe Text)
    , _prorUnitPricingMeasure       :: !(Maybe ProductUnitPricingMeasure)
    , _prorSalePrice                :: !(Maybe Price)
    , _prorCostOfGoodsSold          :: !(Maybe Price)
    , _prorShippingLength           :: !(Maybe ProductShippingDimension)
    , _prorCustomLabel3             :: !(Maybe Text)
    , _prorMaxHandlingTime          :: !(Maybe (Textual Int64))
    , _prorAvailability             :: !(Maybe Text)
    , _prorMinEnergyEfficiencyClass :: !(Maybe Text)
    , _prorTargetCountry            :: !(Maybe Text)
    , _prorShippingLabel            :: !(Maybe Text)
    , _prorAdsRedirect              :: !(Maybe Text)
    , _prorCustomAttributes         :: !(Maybe [CustomAttribute])
    , _prorGtin                     :: !(Maybe Text)
    , _prorAgeGroup                 :: !(Maybe Text)
    , _prorDisplayAdsTitle          :: !(Maybe Text)
    , _prorMaxEnergyEfficiencyClass :: !(Maybe Text)
    , _prorGender                   :: !(Maybe Text)
    , _prorExpirationDate           :: !(Maybe Text)
    , _prorItemGroupId              :: !(Maybe Text)
    , _prorSalePriceEffectiveDate   :: !(Maybe Text)
    , _prorCustomLabel2             :: !(Maybe Text)
    , _prorGoogleProductCategory    :: !(Maybe Text)
    , _prorShipping                 :: !(Maybe [ProductShipping])
    , _prorShippingWeight           :: !(Maybe ProductShippingWeight)
    , _prorSellOnGoogleQuantity     :: !(Maybe (Textual Int64))
    , _prorShippingHeight           :: !(Maybe ProductShippingDimension)
    , _prorAvailabilityDate         :: !(Maybe Text)
    , _prorSource                   :: !(Maybe Text)
    , _prorOfferId                  :: !(Maybe Text)
    , _prorId                       :: !(Maybe Text)
    , _prorPrice                    :: !(Maybe Price)
    , _prorPromotionIds             :: !(Maybe [Text])
    , _prorSizeType                 :: !(Maybe Text)
    , _prorMobileLink               :: !(Maybe Text)
    , _prorTitle                    :: !(Maybe Text)
    , _prorAdult                    :: !(Maybe Bool)
    , _prorContentLanguage          :: !(Maybe Text)
    , _prorAdsLabels                :: !(Maybe [Text])
    , _prorEnergyEfficiencyClass    :: !(Maybe Text)
    , _prorDisplayAdsSimilarIds     :: !(Maybe [Text])
    , _prorMpn                      :: !(Maybe Text)
    , _prorCondition                :: !(Maybe Text)
    , _prorSizes                    :: !(Maybe [Text])
    , _prorIsBundle                 :: !(Maybe Bool)
    , _prorDescription              :: !(Maybe Text)
    , _prorCustomLabel4             :: !(Maybe Text)
    , _prorDisplayAdsId             :: !(Maybe Text)
    , _prorAdsGrouping              :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prorDisplayAdsLink'
--
-- * 'prorCustomLabel1'
--
-- * 'prorShippingWidth'
--
-- * 'prorImageLink'
--
-- * 'prorIncludedDestinations'
--
-- * 'prorDisplayAdsValue'
--
-- * 'prorLoyaltyPoints'
--
-- * 'prorAdditionalImageLinks'
--
-- * 'prorExcludedDestinations'
--
-- * 'prorColor'
--
-- * 'prorCustomLabel0'
--
-- * 'prorKind'
--
-- * 'prorMinHandlingTime'
--
-- * 'prorMultipack'
--
-- * 'prorPattern'
--
-- * 'prorLink'
--
-- * 'prorProductTypes'
--
-- * 'prorSizeSystem'
--
-- * 'prorUnitPricingBaseMeasure'
--
-- * 'prorTaxes'
--
-- * 'prorMaterial'
--
-- * 'prorInstallment'
--
-- * 'prorChannel'
--
-- * 'prorIdentifierExists'
--
-- * 'prorBrand'
--
-- * 'prorUnitPricingMeasure'
--
-- * 'prorSalePrice'
--
-- * 'prorCostOfGoodsSold'
--
-- * 'prorShippingLength'
--
-- * 'prorCustomLabel3'
--
-- * 'prorMaxHandlingTime'
--
-- * 'prorAvailability'
--
-- * 'prorMinEnergyEfficiencyClass'
--
-- * 'prorTargetCountry'
--
-- * 'prorShippingLabel'
--
-- * 'prorAdsRedirect'
--
-- * 'prorCustomAttributes'
--
-- * 'prorGtin'
--
-- * 'prorAgeGroup'
--
-- * 'prorDisplayAdsTitle'
--
-- * 'prorMaxEnergyEfficiencyClass'
--
-- * 'prorGender'
--
-- * 'prorExpirationDate'
--
-- * 'prorItemGroupId'
--
-- * 'prorSalePriceEffectiveDate'
--
-- * 'prorCustomLabel2'
--
-- * 'prorGoogleProductCategory'
--
-- * 'prorShipping'
--
-- * 'prorShippingWeight'
--
-- * 'prorSellOnGoogleQuantity'
--
-- * 'prorShippingHeight'
--
-- * 'prorAvailabilityDate'
--
-- * 'prorSource'
--
-- * 'prorOfferId'
--
-- * 'prorId'
--
-- * 'prorPrice'
--
-- * 'prorPromotionIds'
--
-- * 'prorSizeType'
--
-- * 'prorMobileLink'
--
-- * 'prorTitle'
--
-- * 'prorAdult'
--
-- * 'prorContentLanguage'
--
-- * 'prorAdsLabels'
--
-- * 'prorEnergyEfficiencyClass'
--
-- * 'prorDisplayAdsSimilarIds'
--
-- * 'prorMpn'
--
-- * 'prorCondition'
--
-- * 'prorSizes'
--
-- * 'prorIsBundle'
--
-- * 'prorDescription'
--
-- * 'prorCustomLabel4'
--
-- * 'prorDisplayAdsId'
--
-- * 'prorAdsGrouping'
product
    :: Product
product =
  Product'
    { _prorDisplayAdsLink = Nothing
    , _prorCustomLabel1 = Nothing
    , _prorShippingWidth = Nothing
    , _prorImageLink = Nothing
    , _prorIncludedDestinations = Nothing
    , _prorDisplayAdsValue = Nothing
    , _prorLoyaltyPoints = Nothing
    , _prorAdditionalImageLinks = Nothing
    , _prorExcludedDestinations = Nothing
    , _prorColor = Nothing
    , _prorCustomLabel0 = Nothing
    , _prorKind = "content#product"
    , _prorMinHandlingTime = Nothing
    , _prorMultipack = Nothing
    , _prorPattern = Nothing
    , _prorLink = Nothing
    , _prorProductTypes = Nothing
    , _prorSizeSystem = Nothing
    , _prorUnitPricingBaseMeasure = Nothing
    , _prorTaxes = Nothing
    , _prorMaterial = Nothing
    , _prorInstallment = Nothing
    , _prorChannel = Nothing
    , _prorIdentifierExists = Nothing
    , _prorBrand = Nothing
    , _prorUnitPricingMeasure = Nothing
    , _prorSalePrice = Nothing
    , _prorCostOfGoodsSold = Nothing
    , _prorShippingLength = Nothing
    , _prorCustomLabel3 = Nothing
    , _prorMaxHandlingTime = Nothing
    , _prorAvailability = Nothing
    , _prorMinEnergyEfficiencyClass = Nothing
    , _prorTargetCountry = Nothing
    , _prorShippingLabel = Nothing
    , _prorAdsRedirect = Nothing
    , _prorCustomAttributes = Nothing
    , _prorGtin = Nothing
    , _prorAgeGroup = Nothing
    , _prorDisplayAdsTitle = Nothing
    , _prorMaxEnergyEfficiencyClass = Nothing
    , _prorGender = Nothing
    , _prorExpirationDate = Nothing
    , _prorItemGroupId = Nothing
    , _prorSalePriceEffectiveDate = Nothing
    , _prorCustomLabel2 = Nothing
    , _prorGoogleProductCategory = Nothing
    , _prorShipping = Nothing
    , _prorShippingWeight = Nothing
    , _prorSellOnGoogleQuantity = Nothing
    , _prorShippingHeight = Nothing
    , _prorAvailabilityDate = Nothing
    , _prorSource = Nothing
    , _prorOfferId = Nothing
    , _prorId = Nothing
    , _prorPrice = Nothing
    , _prorPromotionIds = Nothing
    , _prorSizeType = Nothing
    , _prorMobileLink = Nothing
    , _prorTitle = Nothing
    , _prorAdult = Nothing
    , _prorContentLanguage = Nothing
    , _prorAdsLabels = Nothing
    , _prorEnergyEfficiencyClass = Nothing
    , _prorDisplayAdsSimilarIds = Nothing
    , _prorMpn = Nothing
    , _prorCondition = Nothing
    , _prorSizes = Nothing
    , _prorIsBundle = Nothing
    , _prorDescription = Nothing
    , _prorCustomLabel4 = Nothing
    , _prorDisplayAdsId = Nothing
    , _prorAdsGrouping = Nothing
    }

-- | URL directly to your item\'s landing page for dynamic remarketing
-- campaigns.
prorDisplayAdsLink :: Lens' Product (Maybe Text)
prorDisplayAdsLink
  = lens _prorDisplayAdsLink
      (\ s a -> s{_prorDisplayAdsLink = a})

-- | Custom label 1 for custom grouping of items in a Shopping campaign.
prorCustomLabel1 :: Lens' Product (Maybe Text)
prorCustomLabel1
  = lens _prorCustomLabel1
      (\ s a -> s{_prorCustomLabel1 = a})

-- | Width of the item for shipping.
prorShippingWidth :: Lens' Product (Maybe ProductShippingDimension)
prorShippingWidth
  = lens _prorShippingWidth
      (\ s a -> s{_prorShippingWidth = a})

-- | URL of an image of the item.
prorImageLink :: Lens' Product (Maybe Text)
prorImageLink
  = lens _prorImageLink
      (\ s a -> s{_prorImageLink = a})

-- | The list of destinations to include for this target (corresponds to
-- checked check boxes in Merchant Center). Default destinations are always
-- included unless provided in the excluded_destination field.
prorIncludedDestinations :: Lens' Product [Text]
prorIncludedDestinations
  = lens _prorIncludedDestinations
      (\ s a -> s{_prorIncludedDestinations = a})
      . _Default
      . _Coerce

-- | Offer margin for dynamic remarketing campaigns.
prorDisplayAdsValue :: Lens' Product (Maybe Double)
prorDisplayAdsValue
  = lens _prorDisplayAdsValue
      (\ s a -> s{_prorDisplayAdsValue = a})
      . mapping _Coerce

-- | Loyalty points that users receive after purchasing the item. Japan only.
prorLoyaltyPoints :: Lens' Product (Maybe LoyaltyPoints)
prorLoyaltyPoints
  = lens _prorLoyaltyPoints
      (\ s a -> s{_prorLoyaltyPoints = a})

-- | Additional URLs of images of the item.
prorAdditionalImageLinks :: Lens' Product [Text]
prorAdditionalImageLinks
  = lens _prorAdditionalImageLinks
      (\ s a -> s{_prorAdditionalImageLinks = a})
      . _Default
      . _Coerce

-- | The list of destinations to exclude for this target (corresponds to
-- unchecked check boxes in Merchant Center).
prorExcludedDestinations :: Lens' Product [Text]
prorExcludedDestinations
  = lens _prorExcludedDestinations
      (\ s a -> s{_prorExcludedDestinations = a})
      . _Default
      . _Coerce

-- | Color of the item.
prorColor :: Lens' Product (Maybe Text)
prorColor
  = lens _prorColor (\ s a -> s{_prorColor = a})

-- | Custom label 0 for custom grouping of items in a Shopping campaign.
prorCustomLabel0 :: Lens' Product (Maybe Text)
prorCustomLabel0
  = lens _prorCustomLabel0
      (\ s a -> s{_prorCustomLabel0 = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#product\".
prorKind :: Lens' Product Text
prorKind = lens _prorKind (\ s a -> s{_prorKind = a})

-- | Minimal product handling time (in business days).
prorMinHandlingTime :: Lens' Product (Maybe Int64)
prorMinHandlingTime
  = lens _prorMinHandlingTime
      (\ s a -> s{_prorMinHandlingTime = a})
      . mapping _Coerce

-- | The number of identical products in a merchant-defined multipack.
prorMultipack :: Lens' Product (Maybe Int64)
prorMultipack
  = lens _prorMultipack
      (\ s a -> s{_prorMultipack = a})
      . mapping _Coerce

-- | The item\'s pattern (e.g. polka dots).
prorPattern :: Lens' Product (Maybe Text)
prorPattern
  = lens _prorPattern (\ s a -> s{_prorPattern = a})

-- | URL directly linking to your item\'s page on your website.
prorLink :: Lens' Product (Maybe Text)
prorLink = lens _prorLink (\ s a -> s{_prorLink = a})

-- | Categories of the item (formatted as in products feed specification).
prorProductTypes :: Lens' Product [Text]
prorProductTypes
  = lens _prorProductTypes
      (\ s a -> s{_prorProductTypes = a})
      . _Default
      . _Coerce

-- | System in which the size is specified. Recommended for apparel items.
prorSizeSystem :: Lens' Product (Maybe Text)
prorSizeSystem
  = lens _prorSizeSystem
      (\ s a -> s{_prorSizeSystem = a})

-- | The preference of the denominator of the unit price.
prorUnitPricingBaseMeasure :: Lens' Product (Maybe ProductUnitPricingBaseMeasure)
prorUnitPricingBaseMeasure
  = lens _prorUnitPricingBaseMeasure
      (\ s a -> s{_prorUnitPricingBaseMeasure = a})

-- | Tax information.
prorTaxes :: Lens' Product [ProductTax]
prorTaxes
  = lens _prorTaxes (\ s a -> s{_prorTaxes = a}) .
      _Default
      . _Coerce

-- | The material of which the item is made.
prorMaterial :: Lens' Product (Maybe Text)
prorMaterial
  = lens _prorMaterial (\ s a -> s{_prorMaterial = a})

-- | Number and amount of installments to pay for an item. Brazil only.
prorInstallment :: Lens' Product (Maybe Installment)
prorInstallment
  = lens _prorInstallment
      (\ s a -> s{_prorInstallment = a})

-- | The item\'s channel (online or local).
prorChannel :: Lens' Product (Maybe Text)
prorChannel
  = lens _prorChannel (\ s a -> s{_prorChannel = a})

-- | False when the item does not have unique product identifiers appropriate
-- to its category, such as GTIN, MPN, and brand. Required according to the
-- Unique Product Identifier Rules for all target countries except for
-- Canada.
prorIdentifierExists :: Lens' Product (Maybe Bool)
prorIdentifierExists
  = lens _prorIdentifierExists
      (\ s a -> s{_prorIdentifierExists = a})

-- | Brand of the item.
prorBrand :: Lens' Product (Maybe Text)
prorBrand
  = lens _prorBrand (\ s a -> s{_prorBrand = a})

-- | The measure and dimension of an item.
prorUnitPricingMeasure :: Lens' Product (Maybe ProductUnitPricingMeasure)
prorUnitPricingMeasure
  = lens _prorUnitPricingMeasure
      (\ s a -> s{_prorUnitPricingMeasure = a})

-- | Advertised sale price of the item.
prorSalePrice :: Lens' Product (Maybe Price)
prorSalePrice
  = lens _prorSalePrice
      (\ s a -> s{_prorSalePrice = a})

-- | Cost of goods sold. Used for gross profit reporting.
prorCostOfGoodsSold :: Lens' Product (Maybe Price)
prorCostOfGoodsSold
  = lens _prorCostOfGoodsSold
      (\ s a -> s{_prorCostOfGoodsSold = a})

-- | Length of the item for shipping.
prorShippingLength :: Lens' Product (Maybe ProductShippingDimension)
prorShippingLength
  = lens _prorShippingLength
      (\ s a -> s{_prorShippingLength = a})

-- | Custom label 3 for custom grouping of items in a Shopping campaign.
prorCustomLabel3 :: Lens' Product (Maybe Text)
prorCustomLabel3
  = lens _prorCustomLabel3
      (\ s a -> s{_prorCustomLabel3 = a})

-- | Maximal product handling time (in business days).
prorMaxHandlingTime :: Lens' Product (Maybe Int64)
prorMaxHandlingTime
  = lens _prorMaxHandlingTime
      (\ s a -> s{_prorMaxHandlingTime = a})
      . mapping _Coerce

-- | Availability status of the item.
prorAvailability :: Lens' Product (Maybe Text)
prorAvailability
  = lens _prorAvailability
      (\ s a -> s{_prorAvailability = a})

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorMinEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorMinEnergyEfficiencyClass
  = lens _prorMinEnergyEfficiencyClass
      (\ s a -> s{_prorMinEnergyEfficiencyClass = a})

-- | The CLDR territory code for the item.
prorTargetCountry :: Lens' Product (Maybe Text)
prorTargetCountry
  = lens _prorTargetCountry
      (\ s a -> s{_prorTargetCountry = a})

-- | The shipping label of the product, used to group product in
-- account-level shipping rules.
prorShippingLabel :: Lens' Product (Maybe Text)
prorShippingLabel
  = lens _prorShippingLabel
      (\ s a -> s{_prorShippingLabel = a})

-- | Allows advertisers to override the item URL when the product is shown
-- within the context of Product Ads.
prorAdsRedirect :: Lens' Product (Maybe Text)
prorAdsRedirect
  = lens _prorAdsRedirect
      (\ s a -> s{_prorAdsRedirect = a})

-- | A list of custom (merchant-provided) attributes. It can also be used for
-- submitting any attribute of the feed specification in its generic form
-- (e.g., { \"name\": \"size type\", \"type\": \"text\", \"value\":
-- \"regular\" }). This is useful for submitting attributes not explicitly
-- exposed by the API.
prorCustomAttributes :: Lens' Product [CustomAttribute]
prorCustomAttributes
  = lens _prorCustomAttributes
      (\ s a -> s{_prorCustomAttributes = a})
      . _Default
      . _Coerce

-- | Global Trade Item Number (GTIN) of the item.
prorGtin :: Lens' Product (Maybe Text)
prorGtin = lens _prorGtin (\ s a -> s{_prorGtin = a})

-- | Target age group of the item.
prorAgeGroup :: Lens' Product (Maybe Text)
prorAgeGroup
  = lens _prorAgeGroup (\ s a -> s{_prorAgeGroup = a})

-- | Title of an item for dynamic remarketing campaigns.
prorDisplayAdsTitle :: Lens' Product (Maybe Text)
prorDisplayAdsTitle
  = lens _prorDisplayAdsTitle
      (\ s a -> s{_prorDisplayAdsTitle = a})

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorMaxEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorMaxEnergyEfficiencyClass
  = lens _prorMaxEnergyEfficiencyClass
      (\ s a -> s{_prorMaxEnergyEfficiencyClass = a})

-- | Target gender of the item.
prorGender :: Lens' Product (Maybe Text)
prorGender
  = lens _prorGender (\ s a -> s{_prorGender = a})

-- | Date on which the item should expire, as specified upon insertion, in
-- ISO 8601 format. The actual expiration date in Google Shopping is
-- exposed in productstatuses as googleExpirationDate and might be earlier
-- if expirationDate is too far in the future.
prorExpirationDate :: Lens' Product (Maybe Text)
prorExpirationDate
  = lens _prorExpirationDate
      (\ s a -> s{_prorExpirationDate = a})

-- | Shared identifier for all variants of the same product.
prorItemGroupId :: Lens' Product (Maybe Text)
prorItemGroupId
  = lens _prorItemGroupId
      (\ s a -> s{_prorItemGroupId = a})

-- | Date range during which the item is on sale (see products feed
-- specification).
prorSalePriceEffectiveDate :: Lens' Product (Maybe Text)
prorSalePriceEffectiveDate
  = lens _prorSalePriceEffectiveDate
      (\ s a -> s{_prorSalePriceEffectiveDate = a})

-- | Custom label 2 for custom grouping of items in a Shopping campaign.
prorCustomLabel2 :: Lens' Product (Maybe Text)
prorCustomLabel2
  = lens _prorCustomLabel2
      (\ s a -> s{_prorCustomLabel2 = a})

-- | Google\'s category of the item (see Google product taxonomy).
prorGoogleProductCategory :: Lens' Product (Maybe Text)
prorGoogleProductCategory
  = lens _prorGoogleProductCategory
      (\ s a -> s{_prorGoogleProductCategory = a})

-- | Shipping rules.
prorShipping :: Lens' Product [ProductShipping]
prorShipping
  = lens _prorShipping (\ s a -> s{_prorShipping = a})
      . _Default
      . _Coerce

-- | Weight of the item for shipping.
prorShippingWeight :: Lens' Product (Maybe ProductShippingWeight)
prorShippingWeight
  = lens _prorShippingWeight
      (\ s a -> s{_prorShippingWeight = a})

-- | The quantity of the product that is available for selling on Google.
-- Supported only for online products.
prorSellOnGoogleQuantity :: Lens' Product (Maybe Int64)
prorSellOnGoogleQuantity
  = lens _prorSellOnGoogleQuantity
      (\ s a -> s{_prorSellOnGoogleQuantity = a})
      . mapping _Coerce

-- | Height of the item for shipping.
prorShippingHeight :: Lens' Product (Maybe ProductShippingDimension)
prorShippingHeight
  = lens _prorShippingHeight
      (\ s a -> s{_prorShippingHeight = a})

-- | The day a pre-ordered product becomes available for delivery, in ISO
-- 8601 format.
prorAvailabilityDate :: Lens' Product (Maybe Text)
prorAvailabilityDate
  = lens _prorAvailabilityDate
      (\ s a -> s{_prorAvailabilityDate = a})

-- | The source of the offer, i.e., how the offer was created.
prorSource :: Lens' Product (Maybe Text)
prorSource
  = lens _prorSource (\ s a -> s{_prorSource = a})

-- | A unique identifier for the item. Leading and trailing whitespaces are
-- stripped and multiple whitespaces are replaced by a single whitespace
-- upon submission. Only valid unicode characters are accepted. See the
-- products feed specification for details. Note: Content API methods that
-- operate on products take the REST id of the product, not this
-- identifier.
prorOfferId :: Lens' Product (Maybe Text)
prorOfferId
  = lens _prorOfferId (\ s a -> s{_prorOfferId = a})

-- | The REST id of the product. Content API methods that operate on products
-- take this as their productId parameter. The REST id for a product is of
-- the form channel:contentLanguage:targetCountry:offerId.
prorId :: Lens' Product (Maybe Text)
prorId = lens _prorId (\ s a -> s{_prorId = a})

-- | Price of the item.
prorPrice :: Lens' Product (Maybe Price)
prorPrice
  = lens _prorPrice (\ s a -> s{_prorPrice = a})

-- | The unique ID of a promotion.
prorPromotionIds :: Lens' Product [Text]
prorPromotionIds
  = lens _prorPromotionIds
      (\ s a -> s{_prorPromotionIds = a})
      . _Default
      . _Coerce

-- | The cut of the item. Recommended for apparel items.
prorSizeType :: Lens' Product (Maybe Text)
prorSizeType
  = lens _prorSizeType (\ s a -> s{_prorSizeType = a})

-- | Link to a mobile-optimized version of the landing page.
prorMobileLink :: Lens' Product (Maybe Text)
prorMobileLink
  = lens _prorMobileLink
      (\ s a -> s{_prorMobileLink = a})

-- | Title of the item.
prorTitle :: Lens' Product (Maybe Text)
prorTitle
  = lens _prorTitle (\ s a -> s{_prorTitle = a})

-- | Set to true if the item is targeted towards adults.
prorAdult :: Lens' Product (Maybe Bool)
prorAdult
  = lens _prorAdult (\ s a -> s{_prorAdult = a})

-- | The two-letter ISO 639-1 language code for the item.
prorContentLanguage :: Lens' Product (Maybe Text)
prorContentLanguage
  = lens _prorContentLanguage
      (\ s a -> s{_prorContentLanguage = a})

-- | Similar to ads_grouping, but only works on CPC.
prorAdsLabels :: Lens' Product [Text]
prorAdsLabels
  = lens _prorAdsLabels
      (\ s a -> s{_prorAdsLabels = a})
      . _Default
      . _Coerce

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
prorEnergyEfficiencyClass :: Lens' Product (Maybe Text)
prorEnergyEfficiencyClass
  = lens _prorEnergyEfficiencyClass
      (\ s a -> s{_prorEnergyEfficiencyClass = a})

-- | Advertiser-specified recommendations.
prorDisplayAdsSimilarIds :: Lens' Product [Text]
prorDisplayAdsSimilarIds
  = lens _prorDisplayAdsSimilarIds
      (\ s a -> s{_prorDisplayAdsSimilarIds = a})
      . _Default
      . _Coerce

-- | Manufacturer Part Number (MPN) of the item.
prorMpn :: Lens' Product (Maybe Text)
prorMpn = lens _prorMpn (\ s a -> s{_prorMpn = a})

-- | Condition or state of the item.
prorCondition :: Lens' Product (Maybe Text)
prorCondition
  = lens _prorCondition
      (\ s a -> s{_prorCondition = a})

-- | Size of the item.
prorSizes :: Lens' Product [Text]
prorSizes
  = lens _prorSizes (\ s a -> s{_prorSizes = a}) .
      _Default
      . _Coerce

-- | Whether the item is a merchant-defined bundle. A bundle is a custom
-- grouping of different products sold by a merchant for a single price.
prorIsBundle :: Lens' Product (Maybe Bool)
prorIsBundle
  = lens _prorIsBundle (\ s a -> s{_prorIsBundle = a})

-- | Description of the item.
prorDescription :: Lens' Product (Maybe Text)
prorDescription
  = lens _prorDescription
      (\ s a -> s{_prorDescription = a})

-- | Custom label 4 for custom grouping of items in a Shopping campaign.
prorCustomLabel4 :: Lens' Product (Maybe Text)
prorCustomLabel4
  = lens _prorCustomLabel4
      (\ s a -> s{_prorCustomLabel4 = a})

-- | An identifier for an item for dynamic remarketing campaigns.
prorDisplayAdsId :: Lens' Product (Maybe Text)
prorDisplayAdsId
  = lens _prorDisplayAdsId
      (\ s a -> s{_prorDisplayAdsId = a})

-- | Used to group items in an arbitrary way. Only for CPA%, discouraged
-- otherwise.
prorAdsGrouping :: Lens' Product (Maybe Text)
prorAdsGrouping
  = lens _prorAdsGrouping
      (\ s a -> s{_prorAdsGrouping = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product' <$>
                   (o .:? "displayAdsLink") <*> (o .:? "customLabel1")
                     <*> (o .:? "shippingWidth")
                     <*> (o .:? "imageLink")
                     <*> (o .:? "includedDestinations" .!= mempty)
                     <*> (o .:? "displayAdsValue")
                     <*> (o .:? "loyaltyPoints")
                     <*> (o .:? "additionalImageLinks" .!= mempty)
                     <*> (o .:? "excludedDestinations" .!= mempty)
                     <*> (o .:? "color")
                     <*> (o .:? "customLabel0")
                     <*> (o .:? "kind" .!= "content#product")
                     <*> (o .:? "minHandlingTime")
                     <*> (o .:? "multipack")
                     <*> (o .:? "pattern")
                     <*> (o .:? "link")
                     <*> (o .:? "productTypes" .!= mempty)
                     <*> (o .:? "sizeSystem")
                     <*> (o .:? "unitPricingBaseMeasure")
                     <*> (o .:? "taxes" .!= mempty)
                     <*> (o .:? "material")
                     <*> (o .:? "installment")
                     <*> (o .:? "channel")
                     <*> (o .:? "identifierExists")
                     <*> (o .:? "brand")
                     <*> (o .:? "unitPricingMeasure")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "costOfGoodsSold")
                     <*> (o .:? "shippingLength")
                     <*> (o .:? "customLabel3")
                     <*> (o .:? "maxHandlingTime")
                     <*> (o .:? "availability")
                     <*> (o .:? "minEnergyEfficiencyClass")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "shippingLabel")
                     <*> (o .:? "adsRedirect")
                     <*> (o .:? "customAttributes" .!= mempty)
                     <*> (o .:? "gtin")
                     <*> (o .:? "ageGroup")
                     <*> (o .:? "displayAdsTitle")
                     <*> (o .:? "maxEnergyEfficiencyClass")
                     <*> (o .:? "gender")
                     <*> (o .:? "expirationDate")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "customLabel2")
                     <*> (o .:? "googleProductCategory")
                     <*> (o .:? "shipping" .!= mempty)
                     <*> (o .:? "shippingWeight")
                     <*> (o .:? "sellOnGoogleQuantity")
                     <*> (o .:? "shippingHeight")
                     <*> (o .:? "availabilityDate")
                     <*> (o .:? "source")
                     <*> (o .:? "offerId")
                     <*> (o .:? "id")
                     <*> (o .:? "price")
                     <*> (o .:? "promotionIds" .!= mempty)
                     <*> (o .:? "sizeType")
                     <*> (o .:? "mobileLink")
                     <*> (o .:? "title")
                     <*> (o .:? "adult")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "adsLabels" .!= mempty)
                     <*> (o .:? "energyEfficiencyClass")
                     <*> (o .:? "displayAdsSimilarIds" .!= mempty)
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition")
                     <*> (o .:? "sizes" .!= mempty)
                     <*> (o .:? "isBundle")
                     <*> (o .:? "description")
                     <*> (o .:? "customLabel4")
                     <*> (o .:? "displayAdsId")
                     <*> (o .:? "adsGrouping"))

instance ToJSON Product where
        toJSON Product'{..}
          = object
              (catMaybes
                 [("displayAdsLink" .=) <$> _prorDisplayAdsLink,
                  ("customLabel1" .=) <$> _prorCustomLabel1,
                  ("shippingWidth" .=) <$> _prorShippingWidth,
                  ("imageLink" .=) <$> _prorImageLink,
                  ("includedDestinations" .=) <$>
                    _prorIncludedDestinations,
                  ("displayAdsValue" .=) <$> _prorDisplayAdsValue,
                  ("loyaltyPoints" .=) <$> _prorLoyaltyPoints,
                  ("additionalImageLinks" .=) <$>
                    _prorAdditionalImageLinks,
                  ("excludedDestinations" .=) <$>
                    _prorExcludedDestinations,
                  ("color" .=) <$> _prorColor,
                  ("customLabel0" .=) <$> _prorCustomLabel0,
                  Just ("kind" .= _prorKind),
                  ("minHandlingTime" .=) <$> _prorMinHandlingTime,
                  ("multipack" .=) <$> _prorMultipack,
                  ("pattern" .=) <$> _prorPattern,
                  ("link" .=) <$> _prorLink,
                  ("productTypes" .=) <$> _prorProductTypes,
                  ("sizeSystem" .=) <$> _prorSizeSystem,
                  ("unitPricingBaseMeasure" .=) <$>
                    _prorUnitPricingBaseMeasure,
                  ("taxes" .=) <$> _prorTaxes,
                  ("material" .=) <$> _prorMaterial,
                  ("installment" .=) <$> _prorInstallment,
                  ("channel" .=) <$> _prorChannel,
                  ("identifierExists" .=) <$> _prorIdentifierExists,
                  ("brand" .=) <$> _prorBrand,
                  ("unitPricingMeasure" .=) <$>
                    _prorUnitPricingMeasure,
                  ("salePrice" .=) <$> _prorSalePrice,
                  ("costOfGoodsSold" .=) <$> _prorCostOfGoodsSold,
                  ("shippingLength" .=) <$> _prorShippingLength,
                  ("customLabel3" .=) <$> _prorCustomLabel3,
                  ("maxHandlingTime" .=) <$> _prorMaxHandlingTime,
                  ("availability" .=) <$> _prorAvailability,
                  ("minEnergyEfficiencyClass" .=) <$>
                    _prorMinEnergyEfficiencyClass,
                  ("targetCountry" .=) <$> _prorTargetCountry,
                  ("shippingLabel" .=) <$> _prorShippingLabel,
                  ("adsRedirect" .=) <$> _prorAdsRedirect,
                  ("customAttributes" .=) <$> _prorCustomAttributes,
                  ("gtin" .=) <$> _prorGtin,
                  ("ageGroup" .=) <$> _prorAgeGroup,
                  ("displayAdsTitle" .=) <$> _prorDisplayAdsTitle,
                  ("maxEnergyEfficiencyClass" .=) <$>
                    _prorMaxEnergyEfficiencyClass,
                  ("gender" .=) <$> _prorGender,
                  ("expirationDate" .=) <$> _prorExpirationDate,
                  ("itemGroupId" .=) <$> _prorItemGroupId,
                  ("salePriceEffectiveDate" .=) <$>
                    _prorSalePriceEffectiveDate,
                  ("customLabel2" .=) <$> _prorCustomLabel2,
                  ("googleProductCategory" .=) <$>
                    _prorGoogleProductCategory,
                  ("shipping" .=) <$> _prorShipping,
                  ("shippingWeight" .=) <$> _prorShippingWeight,
                  ("sellOnGoogleQuantity" .=) <$>
                    _prorSellOnGoogleQuantity,
                  ("shippingHeight" .=) <$> _prorShippingHeight,
                  ("availabilityDate" .=) <$> _prorAvailabilityDate,
                  ("source" .=) <$> _prorSource,
                  ("offerId" .=) <$> _prorOfferId,
                  ("id" .=) <$> _prorId, ("price" .=) <$> _prorPrice,
                  ("promotionIds" .=) <$> _prorPromotionIds,
                  ("sizeType" .=) <$> _prorSizeType,
                  ("mobileLink" .=) <$> _prorMobileLink,
                  ("title" .=) <$> _prorTitle,
                  ("adult" .=) <$> _prorAdult,
                  ("contentLanguage" .=) <$> _prorContentLanguage,
                  ("adsLabels" .=) <$> _prorAdsLabels,
                  ("energyEfficiencyClass" .=) <$>
                    _prorEnergyEfficiencyClass,
                  ("displayAdsSimilarIds" .=) <$>
                    _prorDisplayAdsSimilarIds,
                  ("mpn" .=) <$> _prorMpn,
                  ("condition" .=) <$> _prorCondition,
                  ("sizes" .=) <$> _prorSizes,
                  ("isBundle" .=) <$> _prorIsBundle,
                  ("description" .=) <$> _prorDescription,
                  ("customLabel4" .=) <$> _prorCustomLabel4,
                  ("displayAdsId" .=) <$> _prorDisplayAdsId,
                  ("adsGrouping" .=) <$> _prorAdsGrouping])

--
-- /See:/ 'liaSettingsCustomBatchRequestEntry' smart constructor.
data LiaSettingsCustomBatchRequestEntry =
  LiaSettingsCustomBatchRequestEntry'
    { _lGmbEmail             :: !(Maybe Text)
    , _lContactEmail         :: !(Maybe Text)
    , _lMerchantId           :: !(Maybe (Textual Word64))
    , _lCountry              :: !(Maybe Text)
    , _lLiaSettings          :: !(Maybe LiaSettings)
    , _lAccountId            :: !(Maybe (Textual Word64))
    , _lMethod               :: !(Maybe Text)
    , _lContactName          :: !(Maybe Text)
    , _lPosExternalAccountId :: !(Maybe Text)
    , _lPosDataProviderId    :: !(Maybe (Textual Word64))
    , _lBatchId              :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lGmbEmail'
--
-- * 'lContactEmail'
--
-- * 'lMerchantId'
--
-- * 'lCountry'
--
-- * 'lLiaSettings'
--
-- * 'lAccountId'
--
-- * 'lMethod'
--
-- * 'lContactName'
--
-- * 'lPosExternalAccountId'
--
-- * 'lPosDataProviderId'
--
-- * 'lBatchId'
liaSettingsCustomBatchRequestEntry
    :: LiaSettingsCustomBatchRequestEntry
liaSettingsCustomBatchRequestEntry =
  LiaSettingsCustomBatchRequestEntry'
    { _lGmbEmail = Nothing
    , _lContactEmail = Nothing
    , _lMerchantId = Nothing
    , _lCountry = Nothing
    , _lLiaSettings = Nothing
    , _lAccountId = Nothing
    , _lMethod = Nothing
    , _lContactName = Nothing
    , _lPosExternalAccountId = Nothing
    , _lPosDataProviderId = Nothing
    , _lBatchId = Nothing
    }

-- | The GMB account. Required only for RequestGmbAccess.
lGmbEmail :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lGmbEmail
  = lens _lGmbEmail (\ s a -> s{_lGmbEmail = a})

-- | Inventory validation contact email. Required only for
-- SetInventoryValidationContact.
lContactEmail :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lContactEmail
  = lens _lContactEmail
      (\ s a -> s{_lContactEmail = a})

-- | The ID of the managing account.
lMerchantId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
lMerchantId
  = lens _lMerchantId (\ s a -> s{_lMerchantId = a}) .
      mapping _Coerce

-- | The country code. Required only for RequestInventoryVerification.
lCountry :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lCountry = lens _lCountry (\ s a -> s{_lCountry = a})

-- | The account Lia settings to update. Only defined if the method is
-- update.
lLiaSettings :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe LiaSettings)
lLiaSettings
  = lens _lLiaSettings (\ s a -> s{_lLiaSettings = a})

-- | The ID of the account for which to get\/update account shipping
-- settings.
lAccountId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
lAccountId
  = lens _lAccountId (\ s a -> s{_lAccountId = a}) .
      mapping _Coerce

lMethod :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lMethod = lens _lMethod (\ s a -> s{_lMethod = a})

-- | Inventory validation contact name. Required only for
-- SetInventoryValidationContact.
lContactName :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lContactName
  = lens _lContactName (\ s a -> s{_lContactName = a})

-- | The account ID by which this merchant is known to the POS provider.
lPosExternalAccountId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Text)
lPosExternalAccountId
  = lens _lPosExternalAccountId
      (\ s a -> s{_lPosExternalAccountId = a})

-- | The ID of POS data provider. Required only for SetPosProvider.
lPosDataProviderId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word64)
lPosDataProviderId
  = lens _lPosDataProviderId
      (\ s a -> s{_lPosDataProviderId = a})
      . mapping _Coerce

-- | An entry ID, unique within the batch request.
lBatchId :: Lens' LiaSettingsCustomBatchRequestEntry (Maybe Word32)
lBatchId
  = lens _lBatchId (\ s a -> s{_lBatchId = a}) .
      mapping _Coerce

instance FromJSON LiaSettingsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "LiaSettingsCustomBatchRequestEntry"
              (\ o ->
                 LiaSettingsCustomBatchRequestEntry' <$>
                   (o .:? "gmbEmail") <*> (o .:? "contactEmail") <*>
                     (o .:? "merchantId")
                     <*> (o .:? "country")
                     <*> (o .:? "liaSettings")
                     <*> (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "contactName")
                     <*> (o .:? "posExternalAccountId")
                     <*> (o .:? "posDataProviderId")
                     <*> (o .:? "batchId"))

instance ToJSON LiaSettingsCustomBatchRequestEntry
         where
        toJSON LiaSettingsCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("gmbEmail" .=) <$> _lGmbEmail,
                  ("contactEmail" .=) <$> _lContactEmail,
                  ("merchantId" .=) <$> _lMerchantId,
                  ("country" .=) <$> _lCountry,
                  ("liaSettings" .=) <$> _lLiaSettings,
                  ("accountId" .=) <$> _lAccountId,
                  ("method" .=) <$> _lMethod,
                  ("contactName" .=) <$> _lContactName,
                  ("posExternalAccountId" .=) <$>
                    _lPosExternalAccountId,
                  ("posDataProviderId" .=) <$> _lPosDataProviderId,
                  ("batchId" .=) <$> _lBatchId])

-- | A list of errors returned by a failed batch entry.
--
-- /See:/ 'errors' smart constructor.
data Errors =
  Errors'
    { _errCode    :: !(Maybe (Textual Word32))
    , _errMessage :: !(Maybe Text)
    , _errErrors  :: !(Maybe [Error'])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Errors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'errCode'
--
-- * 'errMessage'
--
-- * 'errErrors'
errors
    :: Errors
errors =
  Errors' {_errCode = Nothing, _errMessage = Nothing, _errErrors = Nothing}

-- | The HTTP status of the first error in errors.
errCode :: Lens' Errors (Maybe Word32)
errCode
  = lens _errCode (\ s a -> s{_errCode = a}) .
      mapping _Coerce

-- | The message of the first error in errors.
errMessage :: Lens' Errors (Maybe Text)
errMessage
  = lens _errMessage (\ s a -> s{_errMessage = a})

-- | A list of errors.
errErrors :: Lens' Errors [Error']
errErrors
  = lens _errErrors (\ s a -> s{_errErrors = a}) .
      _Default
      . _Coerce

instance FromJSON Errors where
        parseJSON
          = withObject "Errors"
              (\ o ->
                 Errors' <$>
                   (o .:? "code") <*> (o .:? "message") <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON Errors where
        toJSON Errors'{..}
          = object
              (catMaybes
                 [("code" .=) <$> _errCode,
                  ("message" .=) <$> _errMessage,
                  ("errors" .=) <$> _errErrors])

--
-- /See:/ 'liaInventorySettings' smart constructor.
data LiaInventorySettings =
  LiaInventorySettings'
    { _lisInventoryVerificationContactName   :: !(Maybe Text)
    , _lisStatus                             :: !(Maybe Text)
    , _lisInventoryVerificationContactEmail  :: !(Maybe Text)
    , _lisInventoryVerificationContactStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaInventorySettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lisInventoryVerificationContactName'
--
-- * 'lisStatus'
--
-- * 'lisInventoryVerificationContactEmail'
--
-- * 'lisInventoryVerificationContactStatus'
liaInventorySettings
    :: LiaInventorySettings
liaInventorySettings =
  LiaInventorySettings'
    { _lisInventoryVerificationContactName = Nothing
    , _lisStatus = Nothing
    , _lisInventoryVerificationContactEmail = Nothing
    , _lisInventoryVerificationContactStatus = Nothing
    }

-- | The name of the contact for the inventory verification process.
lisInventoryVerificationContactName :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactName
  = lens _lisInventoryVerificationContactName
      (\ s a ->
         s{_lisInventoryVerificationContactName = a})

-- | The status of the inventory verification process.
lisStatus :: Lens' LiaInventorySettings (Maybe Text)
lisStatus
  = lens _lisStatus (\ s a -> s{_lisStatus = a})

-- | The email of the contact for the inventory verification process.
lisInventoryVerificationContactEmail :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactEmail
  = lens _lisInventoryVerificationContactEmail
      (\ s a ->
         s{_lisInventoryVerificationContactEmail = a})

-- | The status of the verification contact.
lisInventoryVerificationContactStatus :: Lens' LiaInventorySettings (Maybe Text)
lisInventoryVerificationContactStatus
  = lens _lisInventoryVerificationContactStatus
      (\ s a ->
         s{_lisInventoryVerificationContactStatus = a})

instance FromJSON LiaInventorySettings where
        parseJSON
          = withObject "LiaInventorySettings"
              (\ o ->
                 LiaInventorySettings' <$>
                   (o .:? "inventoryVerificationContactName") <*>
                     (o .:? "status")
                     <*> (o .:? "inventoryVerificationContactEmail")
                     <*> (o .:? "inventoryVerificationContactStatus"))

instance ToJSON LiaInventorySettings where
        toJSON LiaInventorySettings'{..}
          = object
              (catMaybes
                 [("inventoryVerificationContactName" .=) <$>
                    _lisInventoryVerificationContactName,
                  ("status" .=) <$> _lisStatus,
                  ("inventoryVerificationContactEmail" .=) <$>
                    _lisInventoryVerificationContactEmail,
                  ("inventoryVerificationContactStatus" .=) <$>
                    _lisInventoryVerificationContactStatus])

-- | A batch entry encoding a single non-batch accountstatuses response.
--
-- /See:/ 'accountstatusesCustomBatchResponseEntry' smart constructor.
data AccountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry'
    { _aaAccountStatus :: !(Maybe AccountStatus)
    , _aaErrors        :: !(Maybe Errors)
    , _aaBatchId       :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaAccountStatus'
--
-- * 'aaErrors'
--
-- * 'aaBatchId'
accountstatusesCustomBatchResponseEntry
    :: AccountstatusesCustomBatchResponseEntry
accountstatusesCustomBatchResponseEntry =
  AccountstatusesCustomBatchResponseEntry'
    {_aaAccountStatus = Nothing, _aaErrors = Nothing, _aaBatchId = Nothing}

-- | The requested account status. Defined if and only if the request was
-- successful.
aaAccountStatus :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe AccountStatus)
aaAccountStatus
  = lens _aaAccountStatus
      (\ s a -> s{_aaAccountStatus = a})

-- | A list of errors defined if and only if the request failed.
aaErrors :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Errors)
aaErrors = lens _aaErrors (\ s a -> s{_aaErrors = a})

-- | The ID of the request entry this entry responds to.
aaBatchId :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Word32)
aaBatchId
  = lens _aaBatchId (\ s a -> s{_aaBatchId = a}) .
      mapping _Coerce

instance FromJSON
           AccountstatusesCustomBatchResponseEntry
         where
        parseJSON
          = withObject
              "AccountstatusesCustomBatchResponseEntry"
              (\ o ->
                 AccountstatusesCustomBatchResponseEntry' <$>
                   (o .:? "accountStatus") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON
           AccountstatusesCustomBatchResponseEntry
         where
        toJSON AccountstatusesCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("accountStatus" .=) <$> _aaAccountStatus,
                  ("errors" .=) <$> _aaErrors,
                  ("batchId" .=) <$> _aaBatchId])

--
-- /See:/ 'ordersCancelLineItemResponse' smart constructor.
data OrdersCancelLineItemResponse =
  OrdersCancelLineItemResponse'
    { _oclirKind            :: !Text
    , _oclirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCancelLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirKind'
--
-- * 'oclirExecutionStatus'
ordersCancelLineItemResponse
    :: OrdersCancelLineItemResponse
ordersCancelLineItemResponse =
  OrdersCancelLineItemResponse'
    { _oclirKind = "content#ordersCancelLineItemResponse"
    , _oclirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCancelLineItemResponse\".
oclirKind :: Lens' OrdersCancelLineItemResponse Text
oclirKind
  = lens _oclirKind (\ s a -> s{_oclirKind = a})

-- | The status of the execution.
oclirExecutionStatus :: Lens' OrdersCancelLineItemResponse (Maybe Text)
oclirExecutionStatus
  = lens _oclirExecutionStatus
      (\ s a -> s{_oclirExecutionStatus = a})

instance FromJSON OrdersCancelLineItemResponse where
        parseJSON
          = withObject "OrdersCancelLineItemResponse"
              (\ o ->
                 OrdersCancelLineItemResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersCancelLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersCancelLineItemResponse where
        toJSON OrdersCancelLineItemResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oclirKind),
                  ("executionStatus" .=) <$> _oclirExecutionStatus])

--
-- /See:/ 'holidayCutoff' smart constructor.
data HolidayCutoff =
  HolidayCutoff'
    { _hcDeadlineHour     :: !(Maybe (Textual Word32))
    , _hcDeadlineTimezone :: !(Maybe Text)
    , _hcVisibleFromDate  :: !(Maybe Text)
    , _hcHolidayId        :: !(Maybe Text)
    , _hcDeadlineDate     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HolidayCutoff' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hcDeadlineHour'
--
-- * 'hcDeadlineTimezone'
--
-- * 'hcVisibleFromDate'
--
-- * 'hcHolidayId'
--
-- * 'hcDeadlineDate'
holidayCutoff
    :: HolidayCutoff
holidayCutoff =
  HolidayCutoff'
    { _hcDeadlineHour = Nothing
    , _hcDeadlineTimezone = Nothing
    , _hcVisibleFromDate = Nothing
    , _hcHolidayId = Nothing
    , _hcDeadlineDate = Nothing
    }

-- | Hour of the day on the deadline date until which the order has to be
-- placed to qualify for the delivery guarantee. Possible values are: 0
-- (midnight), 1, ..., 12 (noon), 13, ..., 23. Required.
hcDeadlineHour :: Lens' HolidayCutoff (Maybe Word32)
hcDeadlineHour
  = lens _hcDeadlineHour
      (\ s a -> s{_hcDeadlineHour = a})
      . mapping _Coerce

-- | Timezone identifier for the deadline hour. A list of identifiers can be
-- found in the AdWords API documentation. E.g. \"Europe\/Zurich\".
-- Required.
hcDeadlineTimezone :: Lens' HolidayCutoff (Maybe Text)
hcDeadlineTimezone
  = lens _hcDeadlineTimezone
      (\ s a -> s{_hcDeadlineTimezone = a})

-- | Date on which the deadline will become visible to consumers in ISO 8601
-- format. E.g. \"2016-10-31\" for 31st October 2016. Required.
hcVisibleFromDate :: Lens' HolidayCutoff (Maybe Text)
hcVisibleFromDate
  = lens _hcVisibleFromDate
      (\ s a -> s{_hcVisibleFromDate = a})

-- | Unique identifier for the holiday. Required.
hcHolidayId :: Lens' HolidayCutoff (Maybe Text)
hcHolidayId
  = lens _hcHolidayId (\ s a -> s{_hcHolidayId = a})

-- | Date of the order deadline, in ISO 8601 format. E.g. \"2016-11-29\" for
-- 29th November 2016. Required.
hcDeadlineDate :: Lens' HolidayCutoff (Maybe Text)
hcDeadlineDate
  = lens _hcDeadlineDate
      (\ s a -> s{_hcDeadlineDate = a})

instance FromJSON HolidayCutoff where
        parseJSON
          = withObject "HolidayCutoff"
              (\ o ->
                 HolidayCutoff' <$>
                   (o .:? "deadlineHour") <*> (o .:? "deadlineTimezone")
                     <*> (o .:? "visibleFromDate")
                     <*> (o .:? "holidayId")
                     <*> (o .:? "deadlineDate"))

instance ToJSON HolidayCutoff where
        toJSON HolidayCutoff'{..}
          = object
              (catMaybes
                 [("deadlineHour" .=) <$> _hcDeadlineHour,
                  ("deadlineTimezone" .=) <$> _hcDeadlineTimezone,
                  ("visibleFromDate" .=) <$> _hcVisibleFromDate,
                  ("holidayId" .=) <$> _hcHolidayId,
                  ("deadlineDate" .=) <$> _hcDeadlineDate])

--
-- /See:/ 'testOrderLineItem' smart constructor.
data TestOrderLineItem =
  TestOrderLineItem'
    { _toliQuantityOrdered :: !(Maybe (Textual Word32))
    , _toliReturnInfo      :: !(Maybe OrderLineItemReturnInfo)
    , _toliShippingDetails :: !(Maybe OrderLineItemShippingDetails)
    , _toliProduct         :: !(Maybe TestOrderLineItemProduct)
    , _toliUnitTax         :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'TestOrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'toliQuantityOrdered'
--
-- * 'toliReturnInfo'
--
-- * 'toliShippingDetails'
--
-- * 'toliProduct'
--
-- * 'toliUnitTax'
testOrderLineItem
    :: TestOrderLineItem
testOrderLineItem =
  TestOrderLineItem'
    { _toliQuantityOrdered = Nothing
    , _toliReturnInfo = Nothing
    , _toliShippingDetails = Nothing
    , _toliProduct = Nothing
    , _toliUnitTax = Nothing
    }

-- | Number of items ordered.
toliQuantityOrdered :: Lens' TestOrderLineItem (Maybe Word32)
toliQuantityOrdered
  = lens _toliQuantityOrdered
      (\ s a -> s{_toliQuantityOrdered = a})
      . mapping _Coerce

-- | Details of the return policy for the line item.
toliReturnInfo :: Lens' TestOrderLineItem (Maybe OrderLineItemReturnInfo)
toliReturnInfo
  = lens _toliReturnInfo
      (\ s a -> s{_toliReturnInfo = a})

-- | Details of the requested shipping for the line item.
toliShippingDetails :: Lens' TestOrderLineItem (Maybe OrderLineItemShippingDetails)
toliShippingDetails
  = lens _toliShippingDetails
      (\ s a -> s{_toliShippingDetails = a})

-- | Product data from the time of the order placement.
toliProduct :: Lens' TestOrderLineItem (Maybe TestOrderLineItemProduct)
toliProduct
  = lens _toliProduct (\ s a -> s{_toliProduct = a})

-- | Unit tax for the line item.
toliUnitTax :: Lens' TestOrderLineItem (Maybe Price)
toliUnitTax
  = lens _toliUnitTax (\ s a -> s{_toliUnitTax = a})

instance FromJSON TestOrderLineItem where
        parseJSON
          = withObject "TestOrderLineItem"
              (\ o ->
                 TestOrderLineItem' <$>
                   (o .:? "quantityOrdered") <*> (o .:? "returnInfo")
                     <*> (o .:? "shippingDetails")
                     <*> (o .:? "product")
                     <*> (o .:? "unitTax"))

instance ToJSON TestOrderLineItem where
        toJSON TestOrderLineItem'{..}
          = object
              (catMaybes
                 [("quantityOrdered" .=) <$> _toliQuantityOrdered,
                  ("returnInfo" .=) <$> _toliReturnInfo,
                  ("shippingDetails" .=) <$> _toliShippingDetails,
                  ("product" .=) <$> _toliProduct,
                  ("unitTax" .=) <$> _toliUnitTax])

-- | A batch entry encoding a single non-batch productstatuses request.
--
-- /See:/ 'productstatusesCustomBatchRequestEntry' smart constructor.
data ProductstatusesCustomBatchRequestEntry =
  ProductstatusesCustomBatchRequestEntry'
    { _p2MerchantId        :: !(Maybe (Textual Word64))
    , _p2Destinations      :: !(Maybe [Text])
    , _p2Method            :: !(Maybe Text)
    , _p2IncludeAttributes :: !(Maybe Bool)
    , _p2ProductId         :: !(Maybe Text)
    , _p2BatchId           :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'p2MerchantId'
--
-- * 'p2Destinations'
--
-- * 'p2Method'
--
-- * 'p2IncludeAttributes'
--
-- * 'p2ProductId'
--
-- * 'p2BatchId'
productstatusesCustomBatchRequestEntry
    :: ProductstatusesCustomBatchRequestEntry
productstatusesCustomBatchRequestEntry =
  ProductstatusesCustomBatchRequestEntry'
    { _p2MerchantId = Nothing
    , _p2Destinations = Nothing
    , _p2Method = Nothing
    , _p2IncludeAttributes = Nothing
    , _p2ProductId = Nothing
    , _p2BatchId = Nothing
    }

-- | The ID of the managing account.
p2MerchantId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word64)
p2MerchantId
  = lens _p2MerchantId (\ s a -> s{_p2MerchantId = a})
      . mapping _Coerce

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
p2Destinations :: Lens' ProductstatusesCustomBatchRequestEntry [Text]
p2Destinations
  = lens _p2Destinations
      (\ s a -> s{_p2Destinations = a})
      . _Default
      . _Coerce

p2Method :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
p2Method = lens _p2Method (\ s a -> s{_p2Method = a})

p2IncludeAttributes :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Bool)
p2IncludeAttributes
  = lens _p2IncludeAttributes
      (\ s a -> s{_p2IncludeAttributes = a})

-- | The ID of the product whose status to get.
p2ProductId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
p2ProductId
  = lens _p2ProductId (\ s a -> s{_p2ProductId = a})

-- | An entry ID, unique within the batch request.
p2BatchId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word32)
p2BatchId
  = lens _p2BatchId (\ s a -> s{_p2BatchId = a}) .
      mapping _Coerce

instance FromJSON
           ProductstatusesCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequestEntry"
              (\ o ->
                 ProductstatusesCustomBatchRequestEntry' <$>
                   (o .:? "merchantId") <*>
                     (o .:? "destinations" .!= mempty)
                     <*> (o .:? "method")
                     <*> (o .:? "includeAttributes")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON
           ProductstatusesCustomBatchRequestEntry
         where
        toJSON ProductstatusesCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _p2MerchantId,
                  ("destinations" .=) <$> _p2Destinations,
                  ("method" .=) <$> _p2Method,
                  ("includeAttributes" .=) <$> _p2IncludeAttributes,
                  ("productId" .=) <$> _p2ProductId,
                  ("batchId" .=) <$> _p2BatchId])

--
-- /See:/ 'shippingSettingsCustomBatchResponse' smart constructor.
data ShippingSettingsCustomBatchResponse =
  ShippingSettingsCustomBatchResponse'
    { _shiEntries :: !(Maybe [ShippingSettingsCustomBatchResponseEntry])
    , _shiKind    :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShippingSettingsCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'shiEntries'
--
-- * 'shiKind'
shippingSettingsCustomBatchResponse
    :: ShippingSettingsCustomBatchResponse
shippingSettingsCustomBatchResponse =
  ShippingSettingsCustomBatchResponse'
    { _shiEntries = Nothing
    , _shiKind = "content#shippingsettingsCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
shiEntries :: Lens' ShippingSettingsCustomBatchResponse [ShippingSettingsCustomBatchResponseEntry]
shiEntries
  = lens _shiEntries (\ s a -> s{_shiEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#shippingsettingsCustomBatchResponse\".
shiKind :: Lens' ShippingSettingsCustomBatchResponse Text
shiKind = lens _shiKind (\ s a -> s{_shiKind = a})

instance FromJSON ShippingSettingsCustomBatchResponse
         where
        parseJSON
          = withObject "ShippingSettingsCustomBatchResponse"
              (\ o ->
                 ShippingSettingsCustomBatchResponse' <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#shippingsettingsCustomBatchResponse"))

instance ToJSON ShippingSettingsCustomBatchResponse
         where
        toJSON ShippingSettingsCustomBatchResponse'{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _shiEntries,
                  Just ("kind" .= _shiKind)])

--
-- /See:/ 'ordersReturnRefundLineItemRequest' smart constructor.
data OrdersReturnRefundLineItemRequest =
  OrdersReturnRefundLineItemRequest'
    { _orrlirrQuantity    :: !(Maybe (Textual Word32))
    , _orrlirrLineItemId  :: !(Maybe Text)
    , _orrlirrReason      :: !(Maybe Text)
    , _orrlirrOperationId :: !(Maybe Text)
    , _orrlirrProductId   :: !(Maybe Text)
    , _orrlirrTaxAmount   :: !(Maybe Price)
    , _orrlirrPriceAmount :: !(Maybe Price)
    , _orrlirrReasonText  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersReturnRefundLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrlirrQuantity'
--
-- * 'orrlirrLineItemId'
--
-- * 'orrlirrReason'
--
-- * 'orrlirrOperationId'
--
-- * 'orrlirrProductId'
--
-- * 'orrlirrTaxAmount'
--
-- * 'orrlirrPriceAmount'
--
-- * 'orrlirrReasonText'
ordersReturnRefundLineItemRequest
    :: OrdersReturnRefundLineItemRequest
ordersReturnRefundLineItemRequest =
  OrdersReturnRefundLineItemRequest'
    { _orrlirrQuantity = Nothing
    , _orrlirrLineItemId = Nothing
    , _orrlirrReason = Nothing
    , _orrlirrOperationId = Nothing
    , _orrlirrProductId = Nothing
    , _orrlirrTaxAmount = Nothing
    , _orrlirrPriceAmount = Nothing
    , _orrlirrReasonText = Nothing
    }

-- | The quantity to return and refund.
orrlirrQuantity :: Lens' OrdersReturnRefundLineItemRequest (Maybe Word32)
orrlirrQuantity
  = lens _orrlirrQuantity
      (\ s a -> s{_orrlirrQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
orrlirrLineItemId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrLineItemId
  = lens _orrlirrLineItemId
      (\ s a -> s{_orrlirrLineItemId = a})

-- | The reason for the return.
orrlirrReason :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrReason
  = lens _orrlirrReason
      (\ s a -> s{_orrlirrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrlirrOperationId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrOperationId
  = lens _orrlirrOperationId
      (\ s a -> s{_orrlirrOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
orrlirrProductId :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrProductId
  = lens _orrlirrProductId
      (\ s a -> s{_orrlirrProductId = a})

-- | The amount of tax to be refunded.
orrlirrTaxAmount :: Lens' OrdersReturnRefundLineItemRequest (Maybe Price)
orrlirrTaxAmount
  = lens _orrlirrTaxAmount
      (\ s a -> s{_orrlirrTaxAmount = a})

-- | The amount to be refunded. This may be pre-tax or post-tax depending on
-- the location of the order. If omitted, refundless return is assumed.
-- Optional, but if filled then both priceAmount and taxAmount must be set.
orrlirrPriceAmount :: Lens' OrdersReturnRefundLineItemRequest (Maybe Price)
orrlirrPriceAmount
  = lens _orrlirrPriceAmount
      (\ s a -> s{_orrlirrPriceAmount = a})

-- | The explanation of the reason.
orrlirrReasonText :: Lens' OrdersReturnRefundLineItemRequest (Maybe Text)
orrlirrReasonText
  = lens _orrlirrReasonText
      (\ s a -> s{_orrlirrReasonText = a})

instance FromJSON OrdersReturnRefundLineItemRequest
         where
        parseJSON
          = withObject "OrdersReturnRefundLineItemRequest"
              (\ o ->
                 OrdersReturnRefundLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "taxAmount")
                     <*> (o .:? "priceAmount")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersReturnRefundLineItemRequest
         where
        toJSON OrdersReturnRefundLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orrlirrQuantity,
                  ("lineItemId" .=) <$> _orrlirrLineItemId,
                  ("reason" .=) <$> _orrlirrReason,
                  ("operationId" .=) <$> _orrlirrOperationId,
                  ("productId" .=) <$> _orrlirrProductId,
                  ("taxAmount" .=) <$> _orrlirrTaxAmount,
                  ("priceAmount" .=) <$> _orrlirrPriceAmount,
                  ("reasonText" .=) <$> _orrlirrReasonText])

--
-- /See:/ 'shipmentInvoiceLineItemInvoice' smart constructor.
data ShipmentInvoiceLineItemInvoice =
  ShipmentInvoiceLineItemInvoice'
    { _siliiUnitInvoice     :: !(Maybe UnitInvoice)
    , _siliiShipmentUnitIds :: !(Maybe [Text])
    , _siliiLineItemId      :: !(Maybe Text)
    , _siliiProductId       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShipmentInvoiceLineItemInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siliiUnitInvoice'
--
-- * 'siliiShipmentUnitIds'
--
-- * 'siliiLineItemId'
--
-- * 'siliiProductId'
shipmentInvoiceLineItemInvoice
    :: ShipmentInvoiceLineItemInvoice
shipmentInvoiceLineItemInvoice =
  ShipmentInvoiceLineItemInvoice'
    { _siliiUnitInvoice = Nothing
    , _siliiShipmentUnitIds = Nothing
    , _siliiLineItemId = Nothing
    , _siliiProductId = Nothing
    }

-- | [required] Invoice details for a single unit.
siliiUnitInvoice :: Lens' ShipmentInvoiceLineItemInvoice (Maybe UnitInvoice)
siliiUnitInvoice
  = lens _siliiUnitInvoice
      (\ s a -> s{_siliiUnitInvoice = a})

-- | [required] Unit IDs to define specific units within the line item.
siliiShipmentUnitIds :: Lens' ShipmentInvoiceLineItemInvoice [Text]
siliiShipmentUnitIds
  = lens _siliiShipmentUnitIds
      (\ s a -> s{_siliiShipmentUnitIds = a})
      . _Default
      . _Coerce

-- | ID of the line item. Either lineItemId or productId must be set.
siliiLineItemId :: Lens' ShipmentInvoiceLineItemInvoice (Maybe Text)
siliiLineItemId
  = lens _siliiLineItemId
      (\ s a -> s{_siliiLineItemId = a})

-- | ID of the product. This is the REST ID used in the products service.
-- Either lineItemId or productId must be set.
siliiProductId :: Lens' ShipmentInvoiceLineItemInvoice (Maybe Text)
siliiProductId
  = lens _siliiProductId
      (\ s a -> s{_siliiProductId = a})

instance FromJSON ShipmentInvoiceLineItemInvoice
         where
        parseJSON
          = withObject "ShipmentInvoiceLineItemInvoice"
              (\ o ->
                 ShipmentInvoiceLineItemInvoice' <$>
                   (o .:? "unitInvoice") <*>
                     (o .:? "shipmentUnitIds" .!= mempty)
                     <*> (o .:? "lineItemId")
                     <*> (o .:? "productId"))

instance ToJSON ShipmentInvoiceLineItemInvoice where
        toJSON ShipmentInvoiceLineItemInvoice'{..}
          = object
              (catMaybes
                 [("unitInvoice" .=) <$> _siliiUnitInvoice,
                  ("shipmentUnitIds" .=) <$> _siliiShipmentUnitIds,
                  ("lineItemId" .=) <$> _siliiLineItemId,
                  ("productId" .=) <$> _siliiProductId])

--
-- /See:/ 'ordersCustomBatchRequestEntryShipLineItemsShipmentInfo' smart constructor.
data OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo =
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
    { _ocbreslisiCarrier    :: !(Maybe Text)
    , _ocbreslisiTrackingId :: !(Maybe Text)
    , _ocbreslisiShipmentId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreslisiCarrier'
--
-- * 'ocbreslisiTrackingId'
--
-- * 'ocbreslisiShipmentId'
ordersCustomBatchRequestEntryShipLineItemsShipmentInfo
    :: OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
ordersCustomBatchRequestEntryShipLineItemsShipmentInfo =
  OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
    { _ocbreslisiCarrier = Nothing
    , _ocbreslisiTrackingId = Nothing
    , _ocbreslisiShipmentId = Nothing
    }

-- | The carrier handling the shipment. See shipments[].carrier in the Orders
-- resource representation for a list of acceptable values.
ocbreslisiCarrier :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiCarrier
  = lens _ocbreslisiCarrier
      (\ s a -> s{_ocbreslisiCarrier = a})

-- | The tracking id for the shipment.
ocbreslisiTrackingId :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiTrackingId
  = lens _ocbreslisiTrackingId
      (\ s a -> s{_ocbreslisiTrackingId = a})

-- | The ID of the shipment.
ocbreslisiShipmentId :: Lens' OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo (Maybe Text)
ocbreslisiShipmentId
  = lens _ocbreslisiShipmentId
      (\ s a -> s{_ocbreslisiShipmentId = a})

instance FromJSON
           OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
         where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo"
              (\ o ->
                 OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'
                   <$>
                   (o .:? "carrier") <*> (o .:? "trackingId") <*>
                     (o .:? "shipmentId"))

instance ToJSON
           OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo
         where
        toJSON
          OrdersCustomBatchRequestEntryShipLineItemsShipmentInfo'{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ocbreslisiCarrier,
                  ("trackingId" .=) <$> _ocbreslisiTrackingId,
                  ("shipmentId" .=) <$> _ocbreslisiShipmentId])

--
-- /See:/ 'accountsLinkRequest' smart constructor.
data AccountsLinkRequest =
  AccountsLinkRequest'
    { _alrAction          :: !(Maybe Text)
    , _alrLinkedAccountId :: !(Maybe Text)
    , _alrLinkType        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsLinkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrAction'
--
-- * 'alrLinkedAccountId'
--
-- * 'alrLinkType'
accountsLinkRequest
    :: AccountsLinkRequest
accountsLinkRequest =
  AccountsLinkRequest'
    { _alrAction = Nothing
    , _alrLinkedAccountId = Nothing
    , _alrLinkType = Nothing
    }

-- | Action to perform for this link. The \"request\" action is only
-- available to select merchants.
alrAction :: Lens' AccountsLinkRequest (Maybe Text)
alrAction
  = lens _alrAction (\ s a -> s{_alrAction = a})

-- | The ID of the linked account.
alrLinkedAccountId :: Lens' AccountsLinkRequest (Maybe Text)
alrLinkedAccountId
  = lens _alrLinkedAccountId
      (\ s a -> s{_alrLinkedAccountId = a})

-- | Type of the link between the two accounts.
alrLinkType :: Lens' AccountsLinkRequest (Maybe Text)
alrLinkType
  = lens _alrLinkType (\ s a -> s{_alrLinkType = a})

instance FromJSON AccountsLinkRequest where
        parseJSON
          = withObject "AccountsLinkRequest"
              (\ o ->
                 AccountsLinkRequest' <$>
                   (o .:? "action") <*> (o .:? "linkedAccountId") <*>
                     (o .:? "linkType"))

instance ToJSON AccountsLinkRequest where
        toJSON AccountsLinkRequest'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _alrAction,
                  ("linkedAccountId" .=) <$> _alrLinkedAccountId,
                  ("linkType" .=) <$> _alrLinkType])

--
-- /See:/ 'promotion' smart constructor.
data Promotion =
  Promotion'
    { _pPromotionAmount :: !(Maybe Amount)
    , _pPromotionId     :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Promotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pPromotionAmount'
--
-- * 'pPromotionId'
promotion
    :: Promotion
promotion = Promotion' {_pPromotionAmount = Nothing, _pPromotionId = Nothing}

-- | [required] Amount of the promotion. The values here are the promotion
-- applied to the unit price pretax and to the total of the tax amounts.
pPromotionAmount :: Lens' Promotion (Maybe Amount)
pPromotionAmount
  = lens _pPromotionAmount
      (\ s a -> s{_pPromotionAmount = a})

-- | [required] ID of the promotion.
pPromotionId :: Lens' Promotion (Maybe Text)
pPromotionId
  = lens _pPromotionId (\ s a -> s{_pPromotionId = a})

instance FromJSON Promotion where
        parseJSON
          = withObject "Promotion"
              (\ o ->
                 Promotion' <$>
                   (o .:? "promotionAmount") <*> (o .:? "promotionId"))

instance ToJSON Promotion where
        toJSON Promotion'{..}
          = object
              (catMaybes
                 [("promotionAmount" .=) <$> _pPromotionAmount,
                  ("promotionId" .=) <$> _pPromotionId])

--
-- /See:/ 'datafeedTarget' smart constructor.
data DatafeedTarget =
  DatafeedTarget'
    { _dtIncludedDestinations :: !(Maybe [Text])
    , _dtExcludedDestinations :: !(Maybe [Text])
    , _dtCountry              :: !(Maybe Text)
    , _dtLanguage             :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtIncludedDestinations'
--
-- * 'dtExcludedDestinations'
--
-- * 'dtCountry'
--
-- * 'dtLanguage'
datafeedTarget
    :: DatafeedTarget
datafeedTarget =
  DatafeedTarget'
    { _dtIncludedDestinations = Nothing
    , _dtExcludedDestinations = Nothing
    , _dtCountry = Nothing
    , _dtLanguage = Nothing
    }

-- | The list of destinations to include for this target (corresponds to
-- checked check boxes in Merchant Center). Default destinations are always
-- included unless provided in the excluded_destination field.
dtIncludedDestinations :: Lens' DatafeedTarget [Text]
dtIncludedDestinations
  = lens _dtIncludedDestinations
      (\ s a -> s{_dtIncludedDestinations = a})
      . _Default
      . _Coerce

-- | The list of destinations to exclude for this target (corresponds to
-- unchecked check boxes in Merchant Center).
dtExcludedDestinations :: Lens' DatafeedTarget [Text]
dtExcludedDestinations
  = lens _dtExcludedDestinations
      (\ s a -> s{_dtExcludedDestinations = a})
      . _Default
      . _Coerce

-- | The country where the items in the feed will be included in the search
-- index, represented as a CLDR territory code.
dtCountry :: Lens' DatafeedTarget (Maybe Text)
dtCountry
  = lens _dtCountry (\ s a -> s{_dtCountry = a})

-- | The two-letter ISO 639-1 language of the items in the feed. Must be a
-- valid language for targets[].country.
dtLanguage :: Lens' DatafeedTarget (Maybe Text)
dtLanguage
  = lens _dtLanguage (\ s a -> s{_dtLanguage = a})

instance FromJSON DatafeedTarget where
        parseJSON
          = withObject "DatafeedTarget"
              (\ o ->
                 DatafeedTarget' <$>
                   (o .:? "includedDestinations" .!= mempty) <*>
                     (o .:? "excludedDestinations" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "language"))

instance ToJSON DatafeedTarget where
        toJSON DatafeedTarget'{..}
          = object
              (catMaybes
                 [("includedDestinations" .=) <$>
                    _dtIncludedDestinations,
                  ("excludedDestinations" .=) <$>
                    _dtExcludedDestinations,
                  ("country" .=) <$> _dtCountry,
                  ("language" .=) <$> _dtLanguage])

--
-- /See:/ 'ordersUpdateMerchantOrderIdResponse' smart constructor.
data OrdersUpdateMerchantOrderIdResponse =
  OrdersUpdateMerchantOrderIdResponse'
    { _oumoirKind            :: !Text
    , _oumoirExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersUpdateMerchantOrderIdResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oumoirKind'
--
-- * 'oumoirExecutionStatus'
ordersUpdateMerchantOrderIdResponse
    :: OrdersUpdateMerchantOrderIdResponse
ordersUpdateMerchantOrderIdResponse =
  OrdersUpdateMerchantOrderIdResponse'
    { _oumoirKind = "content#ordersUpdateMerchantOrderIdResponse"
    , _oumoirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersUpdateMerchantOrderIdResponse\".
oumoirKind :: Lens' OrdersUpdateMerchantOrderIdResponse Text
oumoirKind
  = lens _oumoirKind (\ s a -> s{_oumoirKind = a})

-- | The status of the execution.
oumoirExecutionStatus :: Lens' OrdersUpdateMerchantOrderIdResponse (Maybe Text)
oumoirExecutionStatus
  = lens _oumoirExecutionStatus
      (\ s a -> s{_oumoirExecutionStatus = a})

instance FromJSON OrdersUpdateMerchantOrderIdResponse
         where
        parseJSON
          = withObject "OrdersUpdateMerchantOrderIdResponse"
              (\ o ->
                 OrdersUpdateMerchantOrderIdResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersUpdateMerchantOrderIdResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateMerchantOrderIdResponse
         where
        toJSON OrdersUpdateMerchantOrderIdResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oumoirKind),
                  ("executionStatus" .=) <$> _oumoirExecutionStatus])

--
-- /See:/ 'orderreportsListDisbursementsResponse' smart constructor.
data OrderreportsListDisbursementsResponse =
  OrderreportsListDisbursementsResponse'
    { _oldrNextPageToken :: !(Maybe Text)
    , _oldrKind          :: !Text
    , _oldrDisbursements :: !(Maybe [OrderReportDisbursement])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderreportsListDisbursementsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oldrNextPageToken'
--
-- * 'oldrKind'
--
-- * 'oldrDisbursements'
orderreportsListDisbursementsResponse
    :: OrderreportsListDisbursementsResponse
orderreportsListDisbursementsResponse =
  OrderreportsListDisbursementsResponse'
    { _oldrNextPageToken = Nothing
    , _oldrKind = "content#orderreportsListDisbursementsResponse"
    , _oldrDisbursements = Nothing
    }

-- | The token for the retrieval of the next page of disbursements.
oldrNextPageToken :: Lens' OrderreportsListDisbursementsResponse (Maybe Text)
oldrNextPageToken
  = lens _oldrNextPageToken
      (\ s a -> s{_oldrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderreportsListDisbursementsResponse\".
oldrKind :: Lens' OrderreportsListDisbursementsResponse Text
oldrKind = lens _oldrKind (\ s a -> s{_oldrKind = a})

-- | The list of disbursements.
oldrDisbursements :: Lens' OrderreportsListDisbursementsResponse [OrderReportDisbursement]
oldrDisbursements
  = lens _oldrDisbursements
      (\ s a -> s{_oldrDisbursements = a})
      . _Default
      . _Coerce

instance FromJSON
           OrderreportsListDisbursementsResponse
         where
        parseJSON
          = withObject "OrderreportsListDisbursementsResponse"
              (\ o ->
                 OrderreportsListDisbursementsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#orderreportsListDisbursementsResponse")
                     <*> (o .:? "disbursements" .!= mempty))

instance ToJSON OrderreportsListDisbursementsResponse
         where
        toJSON OrderreportsListDisbursementsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _oldrNextPageToken,
                  Just ("kind" .= _oldrKind),
                  ("disbursements" .=) <$> _oldrDisbursements])

-- | An example occurrence for a particular error.
--
-- /See:/ 'datafeedStatusExample' smart constructor.
data DatafeedStatusExample =
  DatafeedStatusExample'
    { _dseLineNumber :: !(Maybe (Textual Word64))
    , _dseItemId     :: !(Maybe Text)
    , _dseValue      :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedStatusExample' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dseLineNumber'
--
-- * 'dseItemId'
--
-- * 'dseValue'
datafeedStatusExample
    :: DatafeedStatusExample
datafeedStatusExample =
  DatafeedStatusExample'
    {_dseLineNumber = Nothing, _dseItemId = Nothing, _dseValue = Nothing}

-- | Line number in the data feed where the example is found.
dseLineNumber :: Lens' DatafeedStatusExample (Maybe Word64)
dseLineNumber
  = lens _dseLineNumber
      (\ s a -> s{_dseLineNumber = a})
      . mapping _Coerce

-- | The ID of the example item.
dseItemId :: Lens' DatafeedStatusExample (Maybe Text)
dseItemId
  = lens _dseItemId (\ s a -> s{_dseItemId = a})

-- | The problematic value.
dseValue :: Lens' DatafeedStatusExample (Maybe Text)
dseValue = lens _dseValue (\ s a -> s{_dseValue = a})

instance FromJSON DatafeedStatusExample where
        parseJSON
          = withObject "DatafeedStatusExample"
              (\ o ->
                 DatafeedStatusExample' <$>
                   (o .:? "lineNumber") <*> (o .:? "itemId") <*>
                     (o .:? "value"))

instance ToJSON DatafeedStatusExample where
        toJSON DatafeedStatusExample'{..}
          = object
              (catMaybes
                 [("lineNumber" .=) <$> _dseLineNumber,
                  ("itemId" .=) <$> _dseItemId,
                  ("value" .=) <$> _dseValue])

--
-- /See:/ 'ordersAcknowledgeResponse' smart constructor.
data OrdersAcknowledgeResponse =
  OrdersAcknowledgeResponse'
    { _oarKind            :: !Text
    , _oarExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersAcknowledgeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarKind'
--
-- * 'oarExecutionStatus'
ordersAcknowledgeResponse
    :: OrdersAcknowledgeResponse
ordersAcknowledgeResponse =
  OrdersAcknowledgeResponse'
    { _oarKind = "content#ordersAcknowledgeResponse"
    , _oarExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersAcknowledgeResponse\".
oarKind :: Lens' OrdersAcknowledgeResponse Text
oarKind = lens _oarKind (\ s a -> s{_oarKind = a})

-- | The status of the execution.
oarExecutionStatus :: Lens' OrdersAcknowledgeResponse (Maybe Text)
oarExecutionStatus
  = lens _oarExecutionStatus
      (\ s a -> s{_oarExecutionStatus = a})

instance FromJSON OrdersAcknowledgeResponse where
        parseJSON
          = withObject "OrdersAcknowledgeResponse"
              (\ o ->
                 OrdersAcknowledgeResponse' <$>
                   (o .:? "kind" .!=
                      "content#ordersAcknowledgeResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersAcknowledgeResponse where
        toJSON OrdersAcknowledgeResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oarKind),
                  ("executionStatus" .=) <$> _oarExecutionStatus])

--
-- /See:/ 'posSaleRequest' smart constructor.
data PosSaleRequest =
  PosSaleRequest'
    { _psrsStoreCode       :: !(Maybe Text)
    , _psrsItemId          :: !(Maybe Text)
    , _psrsQuantity        :: !(Maybe (Textual Int64))
    , _psrsTargetCountry   :: !(Maybe Text)
    , _psrsGtin            :: !(Maybe Text)
    , _psrsPrice           :: !(Maybe Price)
    , _psrsContentLanguage :: !(Maybe Text)
    , _psrsTimestamp       :: !(Maybe Text)
    , _psrsSaleId          :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosSaleRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psrsStoreCode'
--
-- * 'psrsItemId'
--
-- * 'psrsQuantity'
--
-- * 'psrsTargetCountry'
--
-- * 'psrsGtin'
--
-- * 'psrsPrice'
--
-- * 'psrsContentLanguage'
--
-- * 'psrsTimestamp'
--
-- * 'psrsSaleId'
posSaleRequest
    :: PosSaleRequest
posSaleRequest =
  PosSaleRequest'
    { _psrsStoreCode = Nothing
    , _psrsItemId = Nothing
    , _psrsQuantity = Nothing
    , _psrsTargetCountry = Nothing
    , _psrsGtin = Nothing
    , _psrsPrice = Nothing
    , _psrsContentLanguage = Nothing
    , _psrsTimestamp = Nothing
    , _psrsSaleId = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
psrsStoreCode :: Lens' PosSaleRequest (Maybe Text)
psrsStoreCode
  = lens _psrsStoreCode
      (\ s a -> s{_psrsStoreCode = a})

-- | A unique identifier for the item.
psrsItemId :: Lens' PosSaleRequest (Maybe Text)
psrsItemId
  = lens _psrsItemId (\ s a -> s{_psrsItemId = a})

-- | The relative change of the available quantity. Negative for items
-- returned.
psrsQuantity :: Lens' PosSaleRequest (Maybe Int64)
psrsQuantity
  = lens _psrsQuantity (\ s a -> s{_psrsQuantity = a})
      . mapping _Coerce

-- | The CLDR territory code for the item.
psrsTargetCountry :: Lens' PosSaleRequest (Maybe Text)
psrsTargetCountry
  = lens _psrsTargetCountry
      (\ s a -> s{_psrsTargetCountry = a})

-- | Global Trade Item Number.
psrsGtin :: Lens' PosSaleRequest (Maybe Text)
psrsGtin = lens _psrsGtin (\ s a -> s{_psrsGtin = a})

-- | The price of the item.
psrsPrice :: Lens' PosSaleRequest (Maybe Price)
psrsPrice
  = lens _psrsPrice (\ s a -> s{_psrsPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
psrsContentLanguage :: Lens' PosSaleRequest (Maybe Text)
psrsContentLanguage
  = lens _psrsContentLanguage
      (\ s a -> s{_psrsContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
psrsTimestamp :: Lens' PosSaleRequest (Maybe Text)
psrsTimestamp
  = lens _psrsTimestamp
      (\ s a -> s{_psrsTimestamp = a})

-- | A unique ID to group items from the same sale event.
psrsSaleId :: Lens' PosSaleRequest (Maybe Text)
psrsSaleId
  = lens _psrsSaleId (\ s a -> s{_psrsSaleId = a})

instance FromJSON PosSaleRequest where
        parseJSON
          = withObject "PosSaleRequest"
              (\ o ->
                 PosSaleRequest' <$>
                   (o .:? "storeCode") <*> (o .:? "itemId") <*>
                     (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "saleId"))

instance ToJSON PosSaleRequest where
        toJSON PosSaleRequest'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _psrsStoreCode,
                  ("itemId" .=) <$> _psrsItemId,
                  ("quantity" .=) <$> _psrsQuantity,
                  ("targetCountry" .=) <$> _psrsTargetCountry,
                  ("gtin" .=) <$> _psrsGtin,
                  ("price" .=) <$> _psrsPrice,
                  ("contentLanguage" .=) <$> _psrsContentLanguage,
                  ("timestamp" .=) <$> _psrsTimestamp,
                  ("saleId" .=) <$> _psrsSaleId])

--
-- /See:/ 'table' smart constructor.
data Table =
  Table'
    { _tRows          :: !(Maybe [Row])
    , _tName          :: !(Maybe Text)
    , _tColumnHeaders :: !(Maybe Headers)
    , _tRowHeaders    :: !(Maybe Headers)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Table' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tRows'
--
-- * 'tName'
--
-- * 'tColumnHeaders'
--
-- * 'tRowHeaders'
table
    :: Table
table =
  Table'
    { _tRows = Nothing
    , _tName = Nothing
    , _tColumnHeaders = Nothing
    , _tRowHeaders = Nothing
    }

-- | The list of rows that constitute the table. Must have the same length as
-- rowHeaders. Required.
tRows :: Lens' Table [Row]
tRows
  = lens _tRows (\ s a -> s{_tRows = a}) . _Default .
      _Coerce

-- | Name of the table. Required for subtables, ignored for the main table.
tName :: Lens' Table (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

-- | Headers of the table\'s columns. Optional: if not set then the table has
-- only one dimension.
tColumnHeaders :: Lens' Table (Maybe Headers)
tColumnHeaders
  = lens _tColumnHeaders
      (\ s a -> s{_tColumnHeaders = a})

-- | Headers of the table\'s rows. Required.
tRowHeaders :: Lens' Table (Maybe Headers)
tRowHeaders
  = lens _tRowHeaders (\ s a -> s{_tRowHeaders = a})

instance FromJSON Table where
        parseJSON
          = withObject "Table"
              (\ o ->
                 Table' <$>
                   (o .:? "rows" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "columnHeaders")
                     <*> (o .:? "rowHeaders"))

instance ToJSON Table where
        toJSON Table'{..}
          = object
              (catMaybes
                 [("rows" .=) <$> _tRows, ("name" .=) <$> _tName,
                  ("columnHeaders" .=) <$> _tColumnHeaders,
                  ("rowHeaders" .=) <$> _tRowHeaders])

-- | Order. All methods require the order manager role.
--
-- /See:/ 'order' smart constructor.
data Order =
  Order'
    { _o1Status          :: !(Maybe Text)
    , _o1MerchantId      :: !(Maybe (Textual Word64))
    , _o1Refunds         :: !(Maybe [OrderRefund])
    , _o1Kind            :: !Text
    , _o1LineItems       :: !(Maybe [OrderLineItem])
    , _o1Shipments       :: !(Maybe [OrderShipment])
    , _o1NetAmount       :: !(Maybe Price)
    , _o1PlacedDate      :: !(Maybe Text)
    , _o1DeliveryDetails :: !(Maybe OrderDeliveryDetails)
    , _o1ShippingOption  :: !(Maybe Text)
    , _o1MerchantOrderId :: !(Maybe Text)
    , _o1Acknowledged    :: !(Maybe Bool)
    , _o1ShippingCostTax :: !(Maybe Price)
    , _o1Customer        :: !(Maybe OrderCustomer)
    , _o1BillingAddress  :: !(Maybe OrderAddress)
    , _o1Id              :: !(Maybe Text)
    , _o1Promotions      :: !(Maybe [OrderPromotion])
    , _o1ChannelType     :: !(Maybe Text)
    , _o1PaymentStatus   :: !(Maybe Text)
    , _o1ShippingCost    :: !(Maybe Price)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'o1Status'
--
-- * 'o1MerchantId'
--
-- * 'o1Refunds'
--
-- * 'o1Kind'
--
-- * 'o1LineItems'
--
-- * 'o1Shipments'
--
-- * 'o1NetAmount'
--
-- * 'o1PlacedDate'
--
-- * 'o1DeliveryDetails'
--
-- * 'o1ShippingOption'
--
-- * 'o1MerchantOrderId'
--
-- * 'o1Acknowledged'
--
-- * 'o1ShippingCostTax'
--
-- * 'o1Customer'
--
-- * 'o1BillingAddress'
--
-- * 'o1Id'
--
-- * 'o1Promotions'
--
-- * 'o1ChannelType'
--
-- * 'o1PaymentStatus'
--
-- * 'o1ShippingCost'
order
    :: Order
order =
  Order'
    { _o1Status = Nothing
    , _o1MerchantId = Nothing
    , _o1Refunds = Nothing
    , _o1Kind = "content#order"
    , _o1LineItems = Nothing
    , _o1Shipments = Nothing
    , _o1NetAmount = Nothing
    , _o1PlacedDate = Nothing
    , _o1DeliveryDetails = Nothing
    , _o1ShippingOption = Nothing
    , _o1MerchantOrderId = Nothing
    , _o1Acknowledged = Nothing
    , _o1ShippingCostTax = Nothing
    , _o1Customer = Nothing
    , _o1BillingAddress = Nothing
    , _o1Id = Nothing
    , _o1Promotions = Nothing
    , _o1ChannelType = Nothing
    , _o1PaymentStatus = Nothing
    , _o1ShippingCost = Nothing
    }

-- | The status of the order.
o1Status :: Lens' Order (Maybe Text)
o1Status = lens _o1Status (\ s a -> s{_o1Status = a})

o1MerchantId :: Lens' Order (Maybe Word64)
o1MerchantId
  = lens _o1MerchantId (\ s a -> s{_o1MerchantId = a})
      . mapping _Coerce

-- | Refunds for the order.
o1Refunds :: Lens' Order [OrderRefund]
o1Refunds
  = lens _o1Refunds (\ s a -> s{_o1Refunds = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#order\".
o1Kind :: Lens' Order Text
o1Kind = lens _o1Kind (\ s a -> s{_o1Kind = a})

-- | Line items that are ordered.
o1LineItems :: Lens' Order [OrderLineItem]
o1LineItems
  = lens _o1LineItems (\ s a -> s{_o1LineItems = a}) .
      _Default
      . _Coerce

-- | Shipments of the order.
o1Shipments :: Lens' Order [OrderShipment]
o1Shipments
  = lens _o1Shipments (\ s a -> s{_o1Shipments = a}) .
      _Default
      . _Coerce

-- | The net amount for the order. For example, if an order was originally
-- for a grand total of $100 and a refund was issued for $20, the net
-- amount will be $80.
o1NetAmount :: Lens' Order (Maybe Price)
o1NetAmount
  = lens _o1NetAmount (\ s a -> s{_o1NetAmount = a})

-- | The date when the order was placed, in ISO 8601 format.
o1PlacedDate :: Lens' Order (Maybe Text)
o1PlacedDate
  = lens _o1PlacedDate (\ s a -> s{_o1PlacedDate = a})

-- | The details for the delivery.
o1DeliveryDetails :: Lens' Order (Maybe OrderDeliveryDetails)
o1DeliveryDetails
  = lens _o1DeliveryDetails
      (\ s a -> s{_o1DeliveryDetails = a})

-- | The requested shipping option.
o1ShippingOption :: Lens' Order (Maybe Text)
o1ShippingOption
  = lens _o1ShippingOption
      (\ s a -> s{_o1ShippingOption = a})

-- | Merchant-provided id of the order.
o1MerchantOrderId :: Lens' Order (Maybe Text)
o1MerchantOrderId
  = lens _o1MerchantOrderId
      (\ s a -> s{_o1MerchantOrderId = a})

-- | Whether the order was acknowledged.
o1Acknowledged :: Lens' Order (Maybe Bool)
o1Acknowledged
  = lens _o1Acknowledged
      (\ s a -> s{_o1Acknowledged = a})

-- | The tax for the total shipping cost.
o1ShippingCostTax :: Lens' Order (Maybe Price)
o1ShippingCostTax
  = lens _o1ShippingCostTax
      (\ s a -> s{_o1ShippingCostTax = a})

-- | The details of the customer who placed the order.
o1Customer :: Lens' Order (Maybe OrderCustomer)
o1Customer
  = lens _o1Customer (\ s a -> s{_o1Customer = a})

-- | The billing address.
o1BillingAddress :: Lens' Order (Maybe OrderAddress)
o1BillingAddress
  = lens _o1BillingAddress
      (\ s a -> s{_o1BillingAddress = a})

-- | The REST id of the order. Globally unique.
o1Id :: Lens' Order (Maybe Text)
o1Id = lens _o1Id (\ s a -> s{_o1Id = a})

-- | Promotions associated with the order.
o1Promotions :: Lens' Order [OrderPromotion]
o1Promotions
  = lens _o1Promotions (\ s a -> s{_o1Promotions = a})
      . _Default
      . _Coerce

-- | The channel type of the order: \"purchaseOnGoogle\" or
-- \"googleExpress\".
o1ChannelType :: Lens' Order (Maybe Text)
o1ChannelType
  = lens _o1ChannelType
      (\ s a -> s{_o1ChannelType = a})

-- | The status of the payment.
o1PaymentStatus :: Lens' Order (Maybe Text)
o1PaymentStatus
  = lens _o1PaymentStatus
      (\ s a -> s{_o1PaymentStatus = a})

-- | The total cost of shipping for all items.
o1ShippingCost :: Lens' Order (Maybe Price)
o1ShippingCost
  = lens _o1ShippingCost
      (\ s a -> s{_o1ShippingCost = a})

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order' <$>
                   (o .:? "status") <*> (o .:? "merchantId") <*>
                     (o .:? "refunds" .!= mempty)
                     <*> (o .:? "kind" .!= "content#order")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "shipments" .!= mempty)
                     <*> (o .:? "netAmount")
                     <*> (o .:? "placedDate")
                     <*> (o .:? "deliveryDetails")
                     <*> (o .:? "shippingOption")
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "acknowledged")
                     <*> (o .:? "shippingCostTax")
                     <*> (o .:? "customer")
                     <*> (o .:? "billingAddress")
                     <*> (o .:? "id")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "channelType")
                     <*> (o .:? "paymentStatus")
                     <*> (o .:? "shippingCost"))

instance ToJSON Order where
        toJSON Order'{..}
          = object
              (catMaybes
                 [("status" .=) <$> _o1Status,
                  ("merchantId" .=) <$> _o1MerchantId,
                  ("refunds" .=) <$> _o1Refunds,
                  Just ("kind" .= _o1Kind),
                  ("lineItems" .=) <$> _o1LineItems,
                  ("shipments" .=) <$> _o1Shipments,
                  ("netAmount" .=) <$> _o1NetAmount,
                  ("placedDate" .=) <$> _o1PlacedDate,
                  ("deliveryDetails" .=) <$> _o1DeliveryDetails,
                  ("shippingOption" .=) <$> _o1ShippingOption,
                  ("merchantOrderId" .=) <$> _o1MerchantOrderId,
                  ("acknowledged" .=) <$> _o1Acknowledged,
                  ("shippingCostTax" .=) <$> _o1ShippingCostTax,
                  ("customer" .=) <$> _o1Customer,
                  ("billingAddress" .=) <$> _o1BillingAddress,
                  ("id" .=) <$> _o1Id,
                  ("promotions" .=) <$> _o1Promotions,
                  ("channelType" .=) <$> _o1ChannelType,
                  ("paymentStatus" .=) <$> _o1PaymentStatus,
                  ("shippingCost" .=) <$> _o1ShippingCost])

--
-- /See:/ 'orderLineItemProduct' smart constructor.
data OrderLineItemProduct =
  OrderLineItemProduct'
    { _olipImageLink         :: !(Maybe Text)
    , _olipShownImage        :: !(Maybe Text)
    , _olipFees              :: !(Maybe [OrderLineItemProductFee])
    , _olipChannel           :: !(Maybe Text)
    , _olipBrand             :: !(Maybe Text)
    , _olipTargetCountry     :: !(Maybe Text)
    , _olipGtin              :: !(Maybe Text)
    , _olipItemGroupId       :: !(Maybe Text)
    , _olipOfferId           :: !(Maybe Text)
    , _olipId                :: !(Maybe Text)
    , _olipPrice             :: !(Maybe Price)
    , _olipVariantAttributes :: !(Maybe [OrderLineItemProductVariantAttribute])
    , _olipTitle             :: !(Maybe Text)
    , _olipContentLanguage   :: !(Maybe Text)
    , _olipMpn               :: !(Maybe Text)
    , _olipCondition         :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipImageLink'
--
-- * 'olipShownImage'
--
-- * 'olipFees'
--
-- * 'olipChannel'
--
-- * 'olipBrand'
--
-- * 'olipTargetCountry'
--
-- * 'olipGtin'
--
-- * 'olipItemGroupId'
--
-- * 'olipOfferId'
--
-- * 'olipId'
--
-- * 'olipPrice'
--
-- * 'olipVariantAttributes'
--
-- * 'olipTitle'
--
-- * 'olipContentLanguage'
--
-- * 'olipMpn'
--
-- * 'olipCondition'
orderLineItemProduct
    :: OrderLineItemProduct
orderLineItemProduct =
  OrderLineItemProduct'
    { _olipImageLink = Nothing
    , _olipShownImage = Nothing
    , _olipFees = Nothing
    , _olipChannel = Nothing
    , _olipBrand = Nothing
    , _olipTargetCountry = Nothing
    , _olipGtin = Nothing
    , _olipItemGroupId = Nothing
    , _olipOfferId = Nothing
    , _olipId = Nothing
    , _olipPrice = Nothing
    , _olipVariantAttributes = Nothing
    , _olipTitle = Nothing
    , _olipContentLanguage = Nothing
    , _olipMpn = Nothing
    , _olipCondition = Nothing
    }

-- | URL of an image of the item.
olipImageLink :: Lens' OrderLineItemProduct (Maybe Text)
olipImageLink
  = lens _olipImageLink
      (\ s a -> s{_olipImageLink = a})

-- | URL to the cached image shown to the user when order was placed.
olipShownImage :: Lens' OrderLineItemProduct (Maybe Text)
olipShownImage
  = lens _olipShownImage
      (\ s a -> s{_olipShownImage = a})

-- | Associated fees at order creation time.
olipFees :: Lens' OrderLineItemProduct [OrderLineItemProductFee]
olipFees
  = lens _olipFees (\ s a -> s{_olipFees = a}) .
      _Default
      . _Coerce

-- | The item\'s channel (online or local).
olipChannel :: Lens' OrderLineItemProduct (Maybe Text)
olipChannel
  = lens _olipChannel (\ s a -> s{_olipChannel = a})

-- | Brand of the item.
olipBrand :: Lens' OrderLineItemProduct (Maybe Text)
olipBrand
  = lens _olipBrand (\ s a -> s{_olipBrand = a})

-- | The CLDR territory code of the target country of the product.
olipTargetCountry :: Lens' OrderLineItemProduct (Maybe Text)
olipTargetCountry
  = lens _olipTargetCountry
      (\ s a -> s{_olipTargetCountry = a})

-- | Global Trade Item Number (GTIN) of the item.
olipGtin :: Lens' OrderLineItemProduct (Maybe Text)
olipGtin = lens _olipGtin (\ s a -> s{_olipGtin = a})

-- | Shared identifier for all variants of the same product.
olipItemGroupId :: Lens' OrderLineItemProduct (Maybe Text)
olipItemGroupId
  = lens _olipItemGroupId
      (\ s a -> s{_olipItemGroupId = a})

-- | An identifier of the item.
olipOfferId :: Lens' OrderLineItemProduct (Maybe Text)
olipOfferId
  = lens _olipOfferId (\ s a -> s{_olipOfferId = a})

-- | The REST id of the product.
olipId :: Lens' OrderLineItemProduct (Maybe Text)
olipId = lens _olipId (\ s a -> s{_olipId = a})

-- | Price of the item.
olipPrice :: Lens' OrderLineItemProduct (Maybe Price)
olipPrice
  = lens _olipPrice (\ s a -> s{_olipPrice = a})

-- | Variant attributes for the item. These are dimensions of the product,
-- such as color, gender, material, pattern, and size. You can find a
-- comprehensive list of variant attributes here.
olipVariantAttributes :: Lens' OrderLineItemProduct [OrderLineItemProductVariantAttribute]
olipVariantAttributes
  = lens _olipVariantAttributes
      (\ s a -> s{_olipVariantAttributes = a})
      . _Default
      . _Coerce

-- | The title of the product.
olipTitle :: Lens' OrderLineItemProduct (Maybe Text)
olipTitle
  = lens _olipTitle (\ s a -> s{_olipTitle = a})

-- | The two-letter ISO 639-1 language code for the item.
olipContentLanguage :: Lens' OrderLineItemProduct (Maybe Text)
olipContentLanguage
  = lens _olipContentLanguage
      (\ s a -> s{_olipContentLanguage = a})

-- | Manufacturer Part Number (MPN) of the item.
olipMpn :: Lens' OrderLineItemProduct (Maybe Text)
olipMpn = lens _olipMpn (\ s a -> s{_olipMpn = a})

-- | Condition or state of the item.
olipCondition :: Lens' OrderLineItemProduct (Maybe Text)
olipCondition
  = lens _olipCondition
      (\ s a -> s{_olipCondition = a})

instance FromJSON OrderLineItemProduct where
        parseJSON
          = withObject "OrderLineItemProduct"
              (\ o ->
                 OrderLineItemProduct' <$>
                   (o .:? "imageLink") <*> (o .:? "shownImage") <*>
                     (o .:? "fees" .!= mempty)
                     <*> (o .:? "channel")
                     <*> (o .:? "brand")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "offerId")
                     <*> (o .:? "id")
                     <*> (o .:? "price")
                     <*> (o .:? "variantAttributes" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition"))

instance ToJSON OrderLineItemProduct where
        toJSON OrderLineItemProduct'{..}
          = object
              (catMaybes
                 [("imageLink" .=) <$> _olipImageLink,
                  ("shownImage" .=) <$> _olipShownImage,
                  ("fees" .=) <$> _olipFees,
                  ("channel" .=) <$> _olipChannel,
                  ("brand" .=) <$> _olipBrand,
                  ("targetCountry" .=) <$> _olipTargetCountry,
                  ("gtin" .=) <$> _olipGtin,
                  ("itemGroupId" .=) <$> _olipItemGroupId,
                  ("offerId" .=) <$> _olipOfferId,
                  ("id" .=) <$> _olipId, ("price" .=) <$> _olipPrice,
                  ("variantAttributes" .=) <$> _olipVariantAttributes,
                  ("title" .=) <$> _olipTitle,
                  ("contentLanguage" .=) <$> _olipContentLanguage,
                  ("mpn" .=) <$> _olipMpn,
                  ("condition" .=) <$> _olipCondition])

-- | A batch entry encoding a single non-batch accounttax request.
--
-- /See:/ 'accounttaxCustomBatchRequestEntry' smart constructor.
data AccounttaxCustomBatchRequestEntry =
  AccounttaxCustomBatchRequestEntry'
    { _acccAccountTax :: !(Maybe AccountTax)
    , _acccMerchantId :: !(Maybe (Textual Word64))
    , _acccAccountId  :: !(Maybe (Textual Word64))
    , _acccMethod     :: !(Maybe Text)
    , _acccBatchId    :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccAccountTax'
--
-- * 'acccMerchantId'
--
-- * 'acccAccountId'
--
-- * 'acccMethod'
--
-- * 'acccBatchId'
accounttaxCustomBatchRequestEntry
    :: AccounttaxCustomBatchRequestEntry
accounttaxCustomBatchRequestEntry =
  AccounttaxCustomBatchRequestEntry'
    { _acccAccountTax = Nothing
    , _acccMerchantId = Nothing
    , _acccAccountId = Nothing
    , _acccMethod = Nothing
    , _acccBatchId = Nothing
    }

-- | The account tax settings to update. Only defined if the method is
-- update.
acccAccountTax :: Lens' AccounttaxCustomBatchRequestEntry (Maybe AccountTax)
acccAccountTax
  = lens _acccAccountTax
      (\ s a -> s{_acccAccountTax = a})

-- | The ID of the managing account.
acccMerchantId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
acccMerchantId
  = lens _acccMerchantId
      (\ s a -> s{_acccMerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account tax settings.
acccAccountId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
acccAccountId
  = lens _acccAccountId
      (\ s a -> s{_acccAccountId = a})
      . mapping _Coerce

acccMethod :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Text)
acccMethod
  = lens _acccMethod (\ s a -> s{_acccMethod = a})

-- | An entry ID, unique within the batch request.
acccBatchId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word32)
acccBatchId
  = lens _acccBatchId (\ s a -> s{_acccBatchId = a}) .
      mapping _Coerce

instance FromJSON AccounttaxCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccounttaxCustomBatchRequestEntry"
              (\ o ->
                 AccounttaxCustomBatchRequestEntry' <$>
                   (o .:? "accountTax") <*> (o .:? "merchantId") <*>
                     (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchRequestEntry
         where
        toJSON AccounttaxCustomBatchRequestEntry'{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _acccAccountTax,
                  ("merchantId" .=) <$> _acccMerchantId,
                  ("accountId" .=) <$> _acccAccountId,
                  ("method" .=) <$> _acccMethod,
                  ("batchId" .=) <$> _acccBatchId])

-- | An error occurring in the feed, like \"invalid price\".
--
-- /See:/ 'datafeedStatusError' smart constructor.
data DatafeedStatusError =
  DatafeedStatusError'
    { _dseCount    :: !(Maybe (Textual Word64))
    , _dseCode     :: !(Maybe Text)
    , _dseMessage  :: !(Maybe Text)
    , _dseExamples :: !(Maybe [DatafeedStatusExample])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedStatusError' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dseCount'
--
-- * 'dseCode'
--
-- * 'dseMessage'
--
-- * 'dseExamples'
datafeedStatusError
    :: DatafeedStatusError
datafeedStatusError =
  DatafeedStatusError'
    { _dseCount = Nothing
    , _dseCode = Nothing
    , _dseMessage = Nothing
    , _dseExamples = Nothing
    }

-- | The number of occurrences of the error in the feed.
dseCount :: Lens' DatafeedStatusError (Maybe Word64)
dseCount
  = lens _dseCount (\ s a -> s{_dseCount = a}) .
      mapping _Coerce

-- | The code of the error, e.g., \"validation\/invalid_value\".
dseCode :: Lens' DatafeedStatusError (Maybe Text)
dseCode = lens _dseCode (\ s a -> s{_dseCode = a})

-- | The error message, e.g., \"Invalid price\".
dseMessage :: Lens' DatafeedStatusError (Maybe Text)
dseMessage
  = lens _dseMessage (\ s a -> s{_dseMessage = a})

-- | A list of example occurrences of the error, grouped by product.
dseExamples :: Lens' DatafeedStatusError [DatafeedStatusExample]
dseExamples
  = lens _dseExamples (\ s a -> s{_dseExamples = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedStatusError where
        parseJSON
          = withObject "DatafeedStatusError"
              (\ o ->
                 DatafeedStatusError' <$>
                   (o .:? "count") <*> (o .:? "code") <*>
                     (o .:? "message")
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON DatafeedStatusError where
        toJSON DatafeedStatusError'{..}
          = object
              (catMaybes
                 [("count" .=) <$> _dseCount,
                  ("code" .=) <$> _dseCode,
                  ("message" .=) <$> _dseMessage,
                  ("examples" .=) <$> _dseExamples])

--
-- /See:/ 'productsCustomBatchRequest' smart constructor.
newtype ProductsCustomBatchRequest =
  ProductsCustomBatchRequest'
    { _ppEntries :: Maybe [ProductsCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppEntries'
productsCustomBatchRequest
    :: ProductsCustomBatchRequest
productsCustomBatchRequest = ProductsCustomBatchRequest' {_ppEntries = Nothing}

-- | The request entries to be processed in the batch.
ppEntries :: Lens' ProductsCustomBatchRequest [ProductsCustomBatchRequestEntry]
ppEntries
  = lens _ppEntries (\ s a -> s{_ppEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ProductsCustomBatchRequest where
        parseJSON
          = withObject "ProductsCustomBatchRequest"
              (\ o ->
                 ProductsCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductsCustomBatchRequest where
        toJSON ProductsCustomBatchRequest'{..}
          = object (catMaybes [("entries" .=) <$> _ppEntries])

--
-- /See:/ 'posDataProviders' smart constructor.
data PosDataProviders =
  PosDataProviders'
    { _pdpCountry          :: !(Maybe Text)
    , _pdpPosDataProviders :: !(Maybe [PosDataProvidersPosDataProvider])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosDataProviders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdpCountry'
--
-- * 'pdpPosDataProviders'
posDataProviders
    :: PosDataProviders
posDataProviders =
  PosDataProviders' {_pdpCountry = Nothing, _pdpPosDataProviders = Nothing}

-- | Country code.
pdpCountry :: Lens' PosDataProviders (Maybe Text)
pdpCountry
  = lens _pdpCountry (\ s a -> s{_pdpCountry = a})

-- | A list of POS data providers.
pdpPosDataProviders :: Lens' PosDataProviders [PosDataProvidersPosDataProvider]
pdpPosDataProviders
  = lens _pdpPosDataProviders
      (\ s a -> s{_pdpPosDataProviders = a})
      . _Default
      . _Coerce

instance FromJSON PosDataProviders where
        parseJSON
          = withObject "PosDataProviders"
              (\ o ->
                 PosDataProviders' <$>
                   (o .:? "country") <*>
                     (o .:? "posDataProviders" .!= mempty))

instance ToJSON PosDataProviders where
        toJSON PosDataProviders'{..}
          = object
              (catMaybes
                 [("country" .=) <$> _pdpCountry,
                  ("posDataProviders" .=) <$> _pdpPosDataProviders])

-- | The absolute quantity of an item available at the given store.
--
-- /See:/ 'posInventory' smart constructor.
data PosInventory =
  PosInventory'
    { _piStoreCode       :: !(Maybe Text)
    , _piKind            :: !Text
    , _piItemId          :: !(Maybe Text)
    , _piQuantity        :: !(Maybe (Textual Int64))
    , _piTargetCountry   :: !(Maybe Text)
    , _piGtin            :: !(Maybe Text)
    , _piPrice           :: !(Maybe Price)
    , _piContentLanguage :: !(Maybe Text)
    , _piTimestamp       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'PosInventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piStoreCode'
--
-- * 'piKind'
--
-- * 'piItemId'
--
-- * 'piQuantity'
--
-- * 'piTargetCountry'
--
-- * 'piGtin'
--
-- * 'piPrice'
--
-- * 'piContentLanguage'
--
-- * 'piTimestamp'
posInventory
    :: PosInventory
posInventory =
  PosInventory'
    { _piStoreCode = Nothing
    , _piKind = "content#posInventory"
    , _piItemId = Nothing
    , _piQuantity = Nothing
    , _piTargetCountry = Nothing
    , _piGtin = Nothing
    , _piPrice = Nothing
    , _piContentLanguage = Nothing
    , _piTimestamp = Nothing
    }

-- | The identifier of the merchant\'s store. Either a storeCode inserted via
-- the API or the code of the store in Google My Business.
piStoreCode :: Lens' PosInventory (Maybe Text)
piStoreCode
  = lens _piStoreCode (\ s a -> s{_piStoreCode = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#posInventory\".
piKind :: Lens' PosInventory Text
piKind = lens _piKind (\ s a -> s{_piKind = a})

-- | A unique identifier for the item.
piItemId :: Lens' PosInventory (Maybe Text)
piItemId = lens _piItemId (\ s a -> s{_piItemId = a})

-- | The available quantity of the item.
piQuantity :: Lens' PosInventory (Maybe Int64)
piQuantity
  = lens _piQuantity (\ s a -> s{_piQuantity = a}) .
      mapping _Coerce

-- | The CLDR territory code for the item.
piTargetCountry :: Lens' PosInventory (Maybe Text)
piTargetCountry
  = lens _piTargetCountry
      (\ s a -> s{_piTargetCountry = a})

-- | Global Trade Item Number.
piGtin :: Lens' PosInventory (Maybe Text)
piGtin = lens _piGtin (\ s a -> s{_piGtin = a})

-- | The current price of the item.
piPrice :: Lens' PosInventory (Maybe Price)
piPrice = lens _piPrice (\ s a -> s{_piPrice = a})

-- | The two-letter ISO 639-1 language code for the item.
piContentLanguage :: Lens' PosInventory (Maybe Text)
piContentLanguage
  = lens _piContentLanguage
      (\ s a -> s{_piContentLanguage = a})

-- | The inventory timestamp, in ISO 8601 format.
piTimestamp :: Lens' PosInventory (Maybe Text)
piTimestamp
  = lens _piTimestamp (\ s a -> s{_piTimestamp = a})

instance FromJSON PosInventory where
        parseJSON
          = withObject "PosInventory"
              (\ o ->
                 PosInventory' <$>
                   (o .:? "storeCode") <*>
                     (o .:? "kind" .!= "content#posInventory")
                     <*> (o .:? "itemId")
                     <*> (o .:? "quantity")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "gtin")
                     <*> (o .:? "price")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "timestamp"))

instance ToJSON PosInventory where
        toJSON PosInventory'{..}
          = object
              (catMaybes
                 [("storeCode" .=) <$> _piStoreCode,
                  Just ("kind" .= _piKind),
                  ("itemId" .=) <$> _piItemId,
                  ("quantity" .=) <$> _piQuantity,
                  ("targetCountry" .=) <$> _piTargetCountry,
                  ("gtin" .=) <$> _piGtin, ("price" .=) <$> _piPrice,
                  ("contentLanguage" .=) <$> _piContentLanguage,
                  ("timestamp" .=) <$> _piTimestamp])

--
-- /See:/ 'liaSettingsListPosDataProvidersResponse' smart constructor.
data LiaSettingsListPosDataProvidersResponse =
  LiaSettingsListPosDataProvidersResponse'
    { _lslpdprKind             :: !Text
    , _lslpdprPosDataProviders :: !(Maybe [PosDataProviders])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'LiaSettingsListPosDataProvidersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslpdprKind'
--
-- * 'lslpdprPosDataProviders'
liaSettingsListPosDataProvidersResponse
    :: LiaSettingsListPosDataProvidersResponse
liaSettingsListPosDataProvidersResponse =
  LiaSettingsListPosDataProvidersResponse'
    { _lslpdprKind = "content#liasettingsListPosDataProvidersResponse"
    , _lslpdprPosDataProviders = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#liasettingsListPosDataProvidersResponse\".
lslpdprKind :: Lens' LiaSettingsListPosDataProvidersResponse Text
lslpdprKind
  = lens _lslpdprKind (\ s a -> s{_lslpdprKind = a})

-- | The list of POS data providers for each eligible country
lslpdprPosDataProviders :: Lens' LiaSettingsListPosDataProvidersResponse [PosDataProviders]
lslpdprPosDataProviders
  = lens _lslpdprPosDataProviders
      (\ s a -> s{_lslpdprPosDataProviders = a})
      . _Default
      . _Coerce

instance FromJSON
           LiaSettingsListPosDataProvidersResponse
         where
        parseJSON
          = withObject
              "LiaSettingsListPosDataProvidersResponse"
              (\ o ->
                 LiaSettingsListPosDataProvidersResponse' <$>
                   (o .:? "kind" .!=
                      "content#liasettingsListPosDataProvidersResponse")
                     <*> (o .:? "posDataProviders" .!= mempty))

instance ToJSON
           LiaSettingsListPosDataProvidersResponse
         where
        toJSON LiaSettingsListPosDataProvidersResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _lslpdprKind),
                  ("posDataProviders" .=) <$>
                    _lslpdprPosDataProviders])

--
-- /See:/ 'orderinvoicesCreateRefundInvoiceRequest' smart constructor.
data OrderinvoicesCreateRefundInvoiceRequest =
  OrderinvoicesCreateRefundInvoiceRequest'
    { _ocrirRefundOnlyOption :: !(Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption)
    , _ocrirInvoiceId        :: !(Maybe Text)
    , _ocrirShipmentInvoices :: !(Maybe [ShipmentInvoice])
    , _ocrirOperationId      :: !(Maybe Text)
    , _ocrirReturnOption     :: !(Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderinvoicesCreateRefundInvoiceRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocrirRefundOnlyOption'
--
-- * 'ocrirInvoiceId'
--
-- * 'ocrirShipmentInvoices'
--
-- * 'ocrirOperationId'
--
-- * 'ocrirReturnOption'
orderinvoicesCreateRefundInvoiceRequest
    :: OrderinvoicesCreateRefundInvoiceRequest
orderinvoicesCreateRefundInvoiceRequest =
  OrderinvoicesCreateRefundInvoiceRequest'
    { _ocrirRefundOnlyOption = Nothing
    , _ocrirInvoiceId = Nothing
    , _ocrirShipmentInvoices = Nothing
    , _ocrirOperationId = Nothing
    , _ocrirReturnOption = Nothing
    }

-- | Option to create a refund-only invoice. Exactly one of refundOnlyOption
-- or returnOption must be provided.
ocrirRefundOnlyOption :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceRefundOption)
ocrirRefundOnlyOption
  = lens _ocrirRefundOnlyOption
      (\ s a -> s{_ocrirRefundOnlyOption = a})

-- | [required] The ID of the invoice.
ocrirInvoiceId :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe Text)
ocrirInvoiceId
  = lens _ocrirInvoiceId
      (\ s a -> s{_ocrirInvoiceId = a})

-- | Invoice details for different shipment groups.
ocrirShipmentInvoices :: Lens' OrderinvoicesCreateRefundInvoiceRequest [ShipmentInvoice]
ocrirShipmentInvoices
  = lens _ocrirShipmentInvoices
      (\ s a -> s{_ocrirShipmentInvoices = a})
      . _Default
      . _Coerce

-- | [required] The ID of the operation, unique across all operations for a
-- given order.
ocrirOperationId :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe Text)
ocrirOperationId
  = lens _ocrirOperationId
      (\ s a -> s{_ocrirOperationId = a})

-- | Option to create an invoice for a refund and mark all items within the
-- invoice as returned. Exactly one of refundOnlyOption or returnOption
-- must be provided.
ocrirReturnOption :: Lens' OrderinvoicesCreateRefundInvoiceRequest (Maybe OrderinvoicesCustomBatchRequestEntryCreateRefundInvoiceReturnOption)
ocrirReturnOption
  = lens _ocrirReturnOption
      (\ s a -> s{_ocrirReturnOption = a})

instance FromJSON
           OrderinvoicesCreateRefundInvoiceRequest
         where
        parseJSON
          = withObject
              "OrderinvoicesCreateRefundInvoiceRequest"
              (\ o ->
                 OrderinvoicesCreateRefundInvoiceRequest' <$>
                   (o .:? "refundOnlyOption") <*> (o .:? "invoiceId")
                     <*> (o .:? "shipmentInvoices" .!= mempty)
                     <*> (o .:? "operationId")
                     <*> (o .:? "returnOption"))

instance ToJSON
           OrderinvoicesCreateRefundInvoiceRequest
         where
        toJSON OrderinvoicesCreateRefundInvoiceRequest'{..}
          = object
              (catMaybes
                 [("refundOnlyOption" .=) <$> _ocrirRefundOnlyOption,
                  ("invoiceId" .=) <$> _ocrirInvoiceId,
                  ("shipmentInvoices" .=) <$> _ocrirShipmentInvoices,
                  ("operationId" .=) <$> _ocrirOperationId,
                  ("returnOption" .=) <$> _ocrirReturnOption])

-- | The status of a datafeed, i.e., the result of the last retrieval of the
-- datafeed computed asynchronously when the feed processing is finished.
--
-- /See:/ 'datafeedStatus' smart constructor.
data DatafeedStatus =
  DatafeedStatus'
    { _dsItemsTotal       :: !(Maybe (Textual Word64))
    , _dsCountry          :: !(Maybe Text)
    , _dsKind             :: !Text
    , _dsWarnings         :: !(Maybe [DatafeedStatusError])
    , _dsDatafeedId       :: !(Maybe (Textual Word64))
    , _dsProcessingStatus :: !(Maybe Text)
    , _dsLanguage         :: !(Maybe Text)
    , _dsLastUploadDate   :: !(Maybe Text)
    , _dsItemsValid       :: !(Maybe (Textual Word64))
    , _dsErrors           :: !(Maybe [DatafeedStatusError])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsItemsTotal'
--
-- * 'dsCountry'
--
-- * 'dsKind'
--
-- * 'dsWarnings'
--
-- * 'dsDatafeedId'
--
-- * 'dsProcessingStatus'
--
-- * 'dsLanguage'
--
-- * 'dsLastUploadDate'
--
-- * 'dsItemsValid'
--
-- * 'dsErrors'
datafeedStatus
    :: DatafeedStatus
datafeedStatus =
  DatafeedStatus'
    { _dsItemsTotal = Nothing
    , _dsCountry = Nothing
    , _dsKind = "content#datafeedStatus"
    , _dsWarnings = Nothing
    , _dsDatafeedId = Nothing
    , _dsProcessingStatus = Nothing
    , _dsLanguage = Nothing
    , _dsLastUploadDate = Nothing
    , _dsItemsValid = Nothing
    , _dsErrors = Nothing
    }

-- | The number of items in the feed that were processed.
dsItemsTotal :: Lens' DatafeedStatus (Maybe Word64)
dsItemsTotal
  = lens _dsItemsTotal (\ s a -> s{_dsItemsTotal = a})
      . mapping _Coerce

-- | The country for which the status is reported, represented as a CLDR
-- territory code.
dsCountry :: Lens' DatafeedStatus (Maybe Text)
dsCountry
  = lens _dsCountry (\ s a -> s{_dsCountry = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedStatus\".
dsKind :: Lens' DatafeedStatus Text
dsKind = lens _dsKind (\ s a -> s{_dsKind = a})

-- | The list of errors occurring in the feed.
dsWarnings :: Lens' DatafeedStatus [DatafeedStatusError]
dsWarnings
  = lens _dsWarnings (\ s a -> s{_dsWarnings = a}) .
      _Default
      . _Coerce

-- | The ID of the feed for which the status is reported.
dsDatafeedId :: Lens' DatafeedStatus (Maybe Word64)
dsDatafeedId
  = lens _dsDatafeedId (\ s a -> s{_dsDatafeedId = a})
      . mapping _Coerce

-- | The processing status of the feed.
dsProcessingStatus :: Lens' DatafeedStatus (Maybe Text)
dsProcessingStatus
  = lens _dsProcessingStatus
      (\ s a -> s{_dsProcessingStatus = a})

-- | The two-letter ISO 639-1 language for which the status is reported.
dsLanguage :: Lens' DatafeedStatus (Maybe Text)
dsLanguage
  = lens _dsLanguage (\ s a -> s{_dsLanguage = a})

-- | The last date at which the feed was uploaded.
dsLastUploadDate :: Lens' DatafeedStatus (Maybe Text)
dsLastUploadDate
  = lens _dsLastUploadDate
      (\ s a -> s{_dsLastUploadDate = a})

-- | The number of items in the feed that were valid.
dsItemsValid :: Lens' DatafeedStatus (Maybe Word64)
dsItemsValid
  = lens _dsItemsValid (\ s a -> s{_dsItemsValid = a})
      . mapping _Coerce

-- | The list of errors occurring in the feed.
dsErrors :: Lens' DatafeedStatus [DatafeedStatusError]
dsErrors
  = lens _dsErrors (\ s a -> s{_dsErrors = a}) .
      _Default
      . _Coerce

instance FromJSON DatafeedStatus where
        parseJSON
          = withObject "DatafeedStatus"
              (\ o ->
                 DatafeedStatus' <$>
                   (o .:? "itemsTotal") <*> (o .:? "country") <*>
                     (o .:? "kind" .!= "content#datafeedStatus")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "language")
                     <*> (o .:? "lastUploadDate")
                     <*> (o .:? "itemsValid")
                     <*> (o .:? "errors" .!= mempty))

instance ToJSON DatafeedStatus where
        toJSON DatafeedStatus'{..}
          = object
              (catMaybes
                 [("itemsTotal" .=) <$> _dsItemsTotal,
                  ("country" .=) <$> _dsCountry,
                  Just ("kind" .= _dsKind),
                  ("warnings" .=) <$> _dsWarnings,
                  ("datafeedId" .=) <$> _dsDatafeedId,
                  ("processingStatus" .=) <$> _dsProcessingStatus,
                  ("language" .=) <$> _dsLanguage,
                  ("lastUploadDate" .=) <$> _dsLastUploadDate,
                  ("itemsValid" .=) <$> _dsItemsValid,
                  ("errors" .=) <$> _dsErrors])

--
-- /See:/ 'datafeedstatusesCustomBatchRequest' smart constructor.
newtype DatafeedstatusesCustomBatchRequest =
  DatafeedstatusesCustomBatchRequest'
    { _dcbrcEntries :: Maybe [DatafeedstatusesCustomBatchRequestEntry]
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrcEntries'
datafeedstatusesCustomBatchRequest
    :: DatafeedstatusesCustomBatchRequest
datafeedstatusesCustomBatchRequest =
  DatafeedstatusesCustomBatchRequest' {_dcbrcEntries = Nothing}

-- | The request entries to be processed in the batch.
dcbrcEntries :: Lens' DatafeedstatusesCustomBatchRequest [DatafeedstatusesCustomBatchRequestEntry]
dcbrcEntries
  = lens _dcbrcEntries (\ s a -> s{_dcbrcEntries = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "DatafeedstatusesCustomBatchRequest"
              (\ o ->
                 DatafeedstatusesCustomBatchRequest' <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedstatusesCustomBatchRequest
         where
        toJSON DatafeedstatusesCustomBatchRequest'{..}
          = object
              (catMaybes [("entries" .=) <$> _dcbrcEntries])

--
-- /See:/ 'orderpaymentsNotifyRefundResponse' smart constructor.
data OrderpaymentsNotifyRefundResponse =
  OrderpaymentsNotifyRefundResponse'
    { _onrrKind            :: !Text
    , _onrrExecutionStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderpaymentsNotifyRefundResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'onrrKind'
--
-- * 'onrrExecutionStatus'
orderpaymentsNotifyRefundResponse
    :: OrderpaymentsNotifyRefundResponse
orderpaymentsNotifyRefundResponse =
  OrderpaymentsNotifyRefundResponse'
    { _onrrKind = "content#orderpaymentsNotifyRefundResponse"
    , _onrrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#orderpaymentsNotifyRefundResponse\".
onrrKind :: Lens' OrderpaymentsNotifyRefundResponse Text
onrrKind = lens _onrrKind (\ s a -> s{_onrrKind = a})

-- | The status of the execution.
onrrExecutionStatus :: Lens' OrderpaymentsNotifyRefundResponse (Maybe Text)
onrrExecutionStatus
  = lens _onrrExecutionStatus
      (\ s a -> s{_onrrExecutionStatus = a})

instance FromJSON OrderpaymentsNotifyRefundResponse
         where
        parseJSON
          = withObject "OrderpaymentsNotifyRefundResponse"
              (\ o ->
                 OrderpaymentsNotifyRefundResponse' <$>
                   (o .:? "kind" .!=
                      "content#orderpaymentsNotifyRefundResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrderpaymentsNotifyRefundResponse
         where
        toJSON OrderpaymentsNotifyRefundResponse'{..}
          = object
              (catMaybes
                 [Just ("kind" .= _onrrKind),
                  ("executionStatus" .=) <$> _onrrExecutionStatus])

--
-- /See:/ 'ordersInStoreRefundLineItemRequest' smart constructor.
data OrdersInStoreRefundLineItemRequest =
  OrdersInStoreRefundLineItemRequest'
    { _oisrlirQuantity    :: !(Maybe (Textual Word32))
    , _oisrlirLineItemId  :: !(Maybe Text)
    , _oisrlirReason      :: !(Maybe Text)
    , _oisrlirOperationId :: !(Maybe Text)
    , _oisrlirProductId   :: !(Maybe Text)
    , _oisrlirTaxAmount   :: !(Maybe Price)
    , _oisrlirPriceAmount :: !(Maybe Price)
    , _oisrlirReasonText  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersInStoreRefundLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oisrlirQuantity'
--
-- * 'oisrlirLineItemId'
--
-- * 'oisrlirReason'
--
-- * 'oisrlirOperationId'
--
-- * 'oisrlirProductId'
--
-- * 'oisrlirTaxAmount'
--
-- * 'oisrlirPriceAmount'
--
-- * 'oisrlirReasonText'
ordersInStoreRefundLineItemRequest
    :: OrdersInStoreRefundLineItemRequest
ordersInStoreRefundLineItemRequest =
  OrdersInStoreRefundLineItemRequest'
    { _oisrlirQuantity = Nothing
    , _oisrlirLineItemId = Nothing
    , _oisrlirReason = Nothing
    , _oisrlirOperationId = Nothing
    , _oisrlirProductId = Nothing
    , _oisrlirTaxAmount = Nothing
    , _oisrlirPriceAmount = Nothing
    , _oisrlirReasonText = Nothing
    }

-- | The quantity to return and refund.
oisrlirQuantity :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Word32)
oisrlirQuantity
  = lens _oisrlirQuantity
      (\ s a -> s{_oisrlirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return. Either lineItemId or productId is
-- required.
oisrlirLineItemId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirLineItemId
  = lens _oisrlirLineItemId
      (\ s a -> s{_oisrlirLineItemId = a})

-- | The reason for the return.
oisrlirReason :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirReason
  = lens _oisrlirReason
      (\ s a -> s{_oisrlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
oisrlirOperationId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirOperationId
  = lens _oisrlirOperationId
      (\ s a -> s{_oisrlirOperationId = a})

-- | The ID of the product to return. This is the REST ID used in the
-- products service. Either lineItemId or productId is required.
oisrlirProductId :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirProductId
  = lens _oisrlirProductId
      (\ s a -> s{_oisrlirProductId = a})

-- | The amount of tax to be refunded. Required.
oisrlirTaxAmount :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Price)
oisrlirTaxAmount
  = lens _oisrlirTaxAmount
      (\ s a -> s{_oisrlirTaxAmount = a})

-- | The amount to be refunded. This may be pre-tax or post-tax depending on
-- the location of the order. Required.
oisrlirPriceAmount :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Price)
oisrlirPriceAmount
  = lens _oisrlirPriceAmount
      (\ s a -> s{_oisrlirPriceAmount = a})

-- | The explanation of the reason.
oisrlirReasonText :: Lens' OrdersInStoreRefundLineItemRequest (Maybe Text)
oisrlirReasonText
  = lens _oisrlirReasonText
      (\ s a -> s{_oisrlirReasonText = a})

instance FromJSON OrdersInStoreRefundLineItemRequest
         where
        parseJSON
          = withObject "OrdersInStoreRefundLineItemRequest"
              (\ o ->
                 OrdersInStoreRefundLineItemRequest' <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "productId")
                     <*> (o .:? "taxAmount")
                     <*> (o .:? "priceAmount")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersInStoreRefundLineItemRequest
         where
        toJSON OrdersInStoreRefundLineItemRequest'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oisrlirQuantity,
                  ("lineItemId" .=) <$> _oisrlirLineItemId,
                  ("reason" .=) <$> _oisrlirReason,
                  ("operationId" .=) <$> _oisrlirOperationId,
                  ("productId" .=) <$> _oisrlirProductId,
                  ("taxAmount" .=) <$> _oisrlirTaxAmount,
                  ("priceAmount" .=) <$> _oisrlirPriceAmount,
                  ("reasonText" .=) <$> _oisrlirReasonText])

--
-- /See:/ 'accountsCustomBatchRequestEntryLinkRequest' smart constructor.
data AccountsCustomBatchRequestEntryLinkRequest =
  AccountsCustomBatchRequestEntryLinkRequest'
    { _acbrelrAction          :: !(Maybe Text)
    , _acbrelrLinkedAccountId :: !(Maybe Text)
    , _acbrelrLinkType        :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AccountsCustomBatchRequestEntryLinkRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrelrAction'
--
-- * 'acbrelrLinkedAccountId'
--
-- * 'acbrelrLinkType'
accountsCustomBatchRequestEntryLinkRequest
    :: AccountsCustomBatchRequestEntryLinkRequest
accountsCustomBatchRequestEntryLinkRequest =
  AccountsCustomBatchRequestEntryLinkRequest'
    { _acbrelrAction = Nothing
    , _acbrelrLinkedAccountId = Nothing
    , _acbrelrLinkType = Nothing
    }

-- | Action to perform for this link. The \"request\" action is only
-- available to select merchants.
acbrelrAction :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrAction
  = lens _acbrelrAction
      (\ s a -> s{_acbrelrAction = a})

-- | The ID of the linked account.
acbrelrLinkedAccountId :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrLinkedAccountId
  = lens _acbrelrLinkedAccountId
      (\ s a -> s{_acbrelrLinkedAccountId = a})

-- | Type of the link between the two accounts.
acbrelrLinkType :: Lens' AccountsCustomBatchRequestEntryLinkRequest (Maybe Text)
acbrelrLinkType
  = lens _acbrelrLinkType
      (\ s a -> s{_acbrelrLinkType = a})

instance FromJSON
           AccountsCustomBatchRequestEntryLinkRequest
         where
        parseJSON
          = withObject
              "AccountsCustomBatchRequestEntryLinkRequest"
              (\ o ->
                 AccountsCustomBatchRequestEntryLinkRequest' <$>
                   (o .:? "action") <*> (o .:? "linkedAccountId") <*>
                     (o .:? "linkType"))

instance ToJSON
           AccountsCustomBatchRequestEntryLinkRequest
         where
        toJSON
          AccountsCustomBatchRequestEntryLinkRequest'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _acbrelrAction,
                  ("linkedAccountId" .=) <$> _acbrelrLinkedAccountId,
                  ("linkType" .=) <$> _acbrelrLinkType])

--
-- /See:/ 'productShippingDimension' smart constructor.
data ProductShippingDimension =
  ProductShippingDimension'
    { _psdValue :: !(Maybe (Textual Double))
    , _psdUnit  :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductShippingDimension' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdValue'
--
-- * 'psdUnit'
productShippingDimension
    :: ProductShippingDimension
productShippingDimension =
  ProductShippingDimension' {_psdValue = Nothing, _psdUnit = Nothing}

-- | The dimension of the product used to calculate the shipping cost of the
-- item.
psdValue :: Lens' ProductShippingDimension (Maybe Double)
psdValue
  = lens _psdValue (\ s a -> s{_psdValue = a}) .
      mapping _Coerce

-- | The unit of value.
psdUnit :: Lens' ProductShippingDimension (Maybe Text)
psdUnit = lens _psdUnit (\ s a -> s{_psdUnit = a})

instance FromJSON ProductShippingDimension where
        parseJSON
          = withObject "ProductShippingDimension"
              (\ o ->
                 ProductShippingDimension' <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingDimension where
        toJSON ProductShippingDimension'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _psdValue,
                  ("unit" .=) <$> _psdUnit])

-- | A batch entry encoding a single non-batch datafeeds response.
--
-- /See:/ 'datafeedsCustomBatchResponseEntry' smart constructor.
data DatafeedsCustomBatchResponseEntry =
  DatafeedsCustomBatchResponseEntry'
    { _dcbrecDatafeed :: !(Maybe Datafeed)
    , _dcbrecErrors   :: !(Maybe Errors)
    , _dcbrecBatchId  :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrecDatafeed'
--
-- * 'dcbrecErrors'
--
-- * 'dcbrecBatchId'
datafeedsCustomBatchResponseEntry
    :: DatafeedsCustomBatchResponseEntry
datafeedsCustomBatchResponseEntry =
  DatafeedsCustomBatchResponseEntry'
    { _dcbrecDatafeed = Nothing
    , _dcbrecErrors = Nothing
    , _dcbrecBatchId = Nothing
    }

-- | The requested data feed. Defined if and only if the request was
-- successful.
dcbrecDatafeed :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Datafeed)
dcbrecDatafeed
  = lens _dcbrecDatafeed
      (\ s a -> s{_dcbrecDatafeed = a})

-- | A list of errors defined if and only if the request failed.
dcbrecErrors :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Errors)
dcbrecErrors
  = lens _dcbrecErrors (\ s a -> s{_dcbrecErrors = a})

-- | The ID of the request entry this entry responds to.
dcbrecBatchId :: Lens' DatafeedsCustomBatchResponseEntry (Maybe Word32)
dcbrecBatchId
  = lens _dcbrecBatchId
      (\ s a -> s{_dcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON DatafeedsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "DatafeedsCustomBatchResponseEntry"
              (\ o ->
                 DatafeedsCustomBatchResponseEntry' <$>
                   (o .:? "datafeed") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchResponseEntry
         where
        toJSON DatafeedsCustomBatchResponseEntry'{..}
          = object
              (catMaybes
                 [("datafeed" .=) <$> _dcbrecDatafeed,
                  ("errors" .=) <$> _dcbrecErrors,
                  ("batchId" .=) <$> _dcbrecBatchId])

--
-- /See:/ 'datafeedstatusesListResponse' smart constructor.
data DatafeedstatusesListResponse =
  DatafeedstatusesListResponse'
    { _dlrlNextPageToken :: !(Maybe Text)
    , _dlrlKind          :: !Text
    , _dlrlResources     :: !(Maybe [DatafeedStatus])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DatafeedstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlrlNextPageToken'
--
-- * 'dlrlKind'
--
-- * 'dlrlResources'
datafeedstatusesListResponse
    :: DatafeedstatusesListResponse
datafeedstatusesListResponse =
  DatafeedstatusesListResponse'
    { _dlrlNextPageToken = Nothing
    , _dlrlKind = "content#datafeedstatusesListResponse"
    , _dlrlResources = Nothing
    }

-- | The token for the retrieval of the next page of datafeed statuses.
dlrlNextPageToken :: Lens' DatafeedstatusesListResponse (Maybe Text)
dlrlNextPageToken
  = lens _dlrlNextPageToken
      (\ s a -> s{_dlrlNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#datafeedstatusesListResponse\".
dlrlKind :: Lens' DatafeedstatusesListResponse Text
dlrlKind = lens _dlrlKind (\ s a -> s{_dlrlKind = a})

dlrlResources :: Lens' DatafeedstatusesListResponse [DatafeedStatus]
dlrlResources
  = lens _dlrlResources
      (\ s a -> s{_dlrlResources = a})
      . _Default
      . _Coerce

instance FromJSON DatafeedstatusesListResponse where
        parseJSON
          = withObject "DatafeedstatusesListResponse"
              (\ o ->
                 DatafeedstatusesListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#datafeedstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON DatafeedstatusesListResponse where
        toJSON DatafeedstatusesListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrlNextPageToken,
                  Just ("kind" .= _dlrlKind),
                  ("resources" .=) <$> _dlrlResources])

--
-- /See:/ 'productsListResponse' smart constructor.
data ProductsListResponse =
  ProductsListResponse'
    { _plr1NextPageToken :: !(Maybe Text)
    , _plr1Kind          :: !Text
    , _plr1Resources     :: !(Maybe [Product])
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plr1NextPageToken'
--
-- * 'plr1Kind'
--
-- * 'plr1Resources'
productsListResponse
    :: ProductsListResponse
productsListResponse =
  ProductsListResponse'
    { _plr1NextPageToken = Nothing
    , _plr1Kind = "content#productsListResponse"
    , _plr1Resources = Nothing
    }

-- | The token for the retrieval of the next page of products.
plr1NextPageToken :: Lens' ProductsListResponse (Maybe Text)
plr1NextPageToken
  = lens _plr1NextPageToken
      (\ s a -> s{_plr1NextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsListResponse\".
plr1Kind :: Lens' ProductsListResponse Text
plr1Kind = lens _plr1Kind (\ s a -> s{_plr1Kind = a})

plr1Resources :: Lens' ProductsListResponse [Product]
plr1Resources
  = lens _plr1Resources
      (\ s a -> s{_plr1Resources = a})
      . _Default
      . _Coerce

instance FromJSON ProductsListResponse where
        parseJSON
          = withObject "ProductsListResponse"
              (\ o ->
                 ProductsListResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#productsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON ProductsListResponse where
        toJSON ProductsListResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plr1NextPageToken,
                  Just ("kind" .= _plr1Kind),
                  ("resources" .=) <$> _plr1Resources])

--
-- /See:/ 'shipmentInvoice' smart constructor.
data ShipmentInvoice =
  ShipmentInvoice'
    { _siShipmentGroupId  :: !(Maybe Text)
    , _siLineItemInvoices :: !(Maybe [ShipmentInvoiceLineItemInvoice])
    , _siInvoiceSummary   :: !(Maybe InvoiceSummary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ShipmentInvoice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siShipmentGroupId'
--
-- * 'siLineItemInvoices'
--
-- * 'siInvoiceSummary'
shipmentInvoice
    :: ShipmentInvoice
shipmentInvoice =
  ShipmentInvoice'
    { _siShipmentGroupId = Nothing
    , _siLineItemInvoices = Nothing
    , _siInvoiceSummary = Nothing
    }

-- | [required] ID of the shipment group.
siShipmentGroupId :: Lens' ShipmentInvoice (Maybe Text)
siShipmentGroupId
  = lens _siShipmentGroupId
      (\ s a -> s{_siShipmentGroupId = a})

-- | [required] Invoice details per line item.
siLineItemInvoices :: Lens' ShipmentInvoice [ShipmentInvoiceLineItemInvoice]
siLineItemInvoices
  = lens _siLineItemInvoices
      (\ s a -> s{_siLineItemInvoices = a})
      . _Default
      . _Coerce

-- | [required] Invoice summary.
siInvoiceSummary :: Lens' ShipmentInvoice (Maybe InvoiceSummary)
siInvoiceSummary
  = lens _siInvoiceSummary
      (\ s a -> s{_siInvoiceSummary = a})

instance FromJSON ShipmentInvoice where
        parseJSON
          = withObject "ShipmentInvoice"
              (\ o ->
                 ShipmentInvoice' <$>
                   (o .:? "shipmentGroupId") <*>
                     (o .:? "lineItemInvoices" .!= mempty)
                     <*> (o .:? "invoiceSummary"))

instance ToJSON ShipmentInvoice where
        toJSON ShipmentInvoice'{..}
          = object
              (catMaybes
                 [("shipmentGroupId" .=) <$> _siShipmentGroupId,
                  ("lineItemInvoices" .=) <$> _siLineItemInvoices,
                  ("invoiceSummary" .=) <$> _siInvoiceSummary])

--
-- /See:/ 'orderCancellation' smart constructor.
data OrderCancellation =
  OrderCancellation'
    { _ocQuantity     :: !(Maybe (Textual Word32))
    , _ocActor        :: !(Maybe Text)
    , _ocReason       :: !(Maybe Text)
    , _ocCreationDate :: !(Maybe Text)
    , _ocReasonText   :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrderCancellation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocQuantity'
--
-- * 'ocActor'
--
-- * 'ocReason'
--
-- * 'ocCreationDate'
--
-- * 'ocReasonText'
orderCancellation
    :: OrderCancellation
orderCancellation =
  OrderCancellation'
    { _ocQuantity = Nothing
    , _ocActor = Nothing
    , _ocReason = Nothing
    , _ocCreationDate = Nothing
    , _ocReasonText = Nothing
    }

-- | The quantity that was canceled.
ocQuantity :: Lens' OrderCancellation (Maybe Word32)
ocQuantity
  = lens _ocQuantity (\ s a -> s{_ocQuantity = a}) .
      mapping _Coerce

-- | The actor that created the cancellation.
ocActor :: Lens' OrderCancellation (Maybe Text)
ocActor = lens _ocActor (\ s a -> s{_ocActor = a})

-- | The reason for the cancellation. Orders that are cancelled with a
-- noInventory reason will lead to the removal of the product from Shopping
-- Actions until you make an update to that product. This will not affect
-- your Shopping ads.
ocReason :: Lens' OrderCancellation (Maybe Text)
ocReason = lens _ocReason (\ s a -> s{_ocReason = a})

-- | Date on which the cancellation has been created, in ISO 8601 format.
ocCreationDate :: Lens' OrderCancellation (Maybe Text)
ocCreationDate
  = lens _ocCreationDate
      (\ s a -> s{_ocCreationDate = a})

-- | The explanation of the reason.
ocReasonText :: Lens' OrderCancellation (Maybe Text)
ocReasonText
  = lens _ocReasonText (\ s a -> s{_ocReasonText = a})

instance FromJSON OrderCancellation where
        parseJSON
          = withObject "OrderCancellation"
              (\ o ->
                 OrderCancellation' <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderCancellation where
        toJSON OrderCancellation'{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocQuantity,
                  ("actor" .=) <$> _ocActor,
                  ("reason" .=) <$> _ocReason,
                  ("creationDate" .=) <$> _ocCreationDate,
                  ("reasonText" .=) <$> _ocReasonText])
