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
newtype OrdersAcknowledgeRequest = OrdersAcknowledgeRequest
    { _oarOperationId :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAcknowledgeRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oarOperationId'
ordersAcknowledgeRequest
    :: OrdersAcknowledgeRequest
ordersAcknowledgeRequest =
    OrdersAcknowledgeRequest
    { _oarOperationId = Nothing
    }

-- | The ID of the operation. Unique across all operations for a given order.
oarOperationId :: Lens' OrdersAcknowledgeRequest (Maybe Text)
oarOperationId
  = lens _oarOperationId
      (\ s a -> s{_oarOperationId = a})

instance FromJSON OrdersAcknowledgeRequest where
        parseJSON
          = withObject "OrdersAcknowledgeRequest"
              (\ o ->
                 OrdersAcknowledgeRequest <$> (o .:? "operationId"))

instance ToJSON OrdersAcknowledgeRequest where
        toJSON OrdersAcknowledgeRequest{..}
          = object
              (catMaybes [("operationId" .=) <$> _oarOperationId])

-- | The tax settings of a merchant account.
--
-- /See:/ 'accountTax' smart constructor.
data AccountTax = AccountTax
    { _atRules     :: !(Maybe [AccountTaxTaxRule])
    , _atKind      :: !Text
    , _atAccountId :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountTax
    { _atRules = Nothing
    , _atKind = "content#accountTax"
    , _atAccountId = Nothing
    }

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
                 AccountTax <$>
                   (o .:? "rules" .!= mempty) <*>
                     (o .:? "kind" .!= "content#accountTax")
                     <*> (o .:? "accountId"))

instance ToJSON AccountTax where
        toJSON AccountTax{..}
          = object
              (catMaybes
                 [("rules" .=) <$> _atRules, Just ("kind" .= _atKind),
                  ("accountId" .=) <$> _atAccountId])

--
-- /See:/ 'ordersUpdateMerchantOrderIdRequest' smart constructor.
data OrdersUpdateMerchantOrderIdRequest = OrdersUpdateMerchantOrderIdRequest
    { _oumoirMerchantOrderId :: !(Maybe Text)
    , _oumoirOperationId     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersUpdateMerchantOrderIdRequest
    { _oumoirMerchantOrderId = Nothing
    , _oumoirOperationId = Nothing
    }

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
                 OrdersUpdateMerchantOrderIdRequest <$>
                   (o .:? "merchantOrderId") <*> (o .:? "operationId"))

instance ToJSON OrdersUpdateMerchantOrderIdRequest
         where
        toJSON OrdersUpdateMerchantOrderIdRequest{..}
          = object
              (catMaybes
                 [("merchantOrderId" .=) <$> _oumoirMerchantOrderId,
                  ("operationId" .=) <$> _oumoirOperationId])

--
-- /See:/ 'ordersAdvanceTestOrderResponse' smart constructor.
newtype OrdersAdvanceTestOrderResponse = OrdersAdvanceTestOrderResponse
    { _oatorKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersAdvanceTestOrderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oatorKind'
ordersAdvanceTestOrderResponse
    :: OrdersAdvanceTestOrderResponse
ordersAdvanceTestOrderResponse =
    OrdersAdvanceTestOrderResponse
    { _oatorKind = "content#ordersAdvanceTestOrderResponse"
    }

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
                 OrdersAdvanceTestOrderResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersAdvanceTestOrderResponse"))

instance ToJSON OrdersAdvanceTestOrderResponse where
        toJSON OrdersAdvanceTestOrderResponse{..}
          = object (catMaybes [Just ("kind" .= _oatorKind)])

--
-- /See:/ 'productsCustomBatchResponse' smart constructor.
data ProductsCustomBatchResponse = ProductsCustomBatchResponse
    { _pcbrEntries :: !(Maybe [ProductsCustomBatchResponseEntry])
    , _pcbrKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductsCustomBatchResponse
    { _pcbrEntries = Nothing
    , _pcbrKind = "content#productsCustomBatchResponse"
    }

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
                 ProductsCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#productsCustomBatchResponse"))

instance ToJSON ProductsCustomBatchResponse where
        toJSON ProductsCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _pcbrEntries,
                  Just ("kind" .= _pcbrKind)])

--
-- /See:/ 'testOrderCustomer' smart constructor.
data TestOrderCustomer = TestOrderCustomer
    { _tocFullName                    :: !(Maybe Text)
    , _tocEmail                       :: !(Maybe Text)
    , _tocExplicitMarketingPreference :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tocFullName'
--
-- * 'tocEmail'
--
-- * 'tocExplicitMarketingPreference'
testOrderCustomer
    :: TestOrderCustomer
testOrderCustomer =
    TestOrderCustomer
    { _tocFullName = Nothing
    , _tocEmail = Nothing
    , _tocExplicitMarketingPreference = Nothing
    }

-- | Full name of the customer.
tocFullName :: Lens' TestOrderCustomer (Maybe Text)
tocFullName
  = lens _tocFullName (\ s a -> s{_tocFullName = a})

-- | Email address of the customer.
tocEmail :: Lens' TestOrderCustomer (Maybe Text)
tocEmail = lens _tocEmail (\ s a -> s{_tocEmail = a})

-- | If set, this indicates the user had a choice to opt in or out of
-- providing marketing rights to the merchant. If unset, this indicates the
-- user has already made this choice in a previous purchase, and was thus
-- not shown the marketing right opt in\/out checkbox during the Purchases
-- on Google checkout flow. Optional.
tocExplicitMarketingPreference :: Lens' TestOrderCustomer (Maybe Bool)
tocExplicitMarketingPreference
  = lens _tocExplicitMarketingPreference
      (\ s a -> s{_tocExplicitMarketingPreference = a})

instance FromJSON TestOrderCustomer where
        parseJSON
          = withObject "TestOrderCustomer"
              (\ o ->
                 TestOrderCustomer <$>
                   (o .:? "fullName") <*> (o .:? "email") <*>
                     (o .:? "explicitMarketingPreference"))

instance ToJSON TestOrderCustomer where
        toJSON TestOrderCustomer{..}
          = object
              (catMaybes
                 [("fullName" .=) <$> _tocFullName,
                  ("email" .=) <$> _tocEmail,
                  ("explicitMarketingPreference" .=) <$>
                    _tocExplicitMarketingPreference])

--
-- /See:/ 'datafeedstatusesCustomBatchResponse' smart constructor.
data DatafeedstatusesCustomBatchResponse = DatafeedstatusesCustomBatchResponse
    { _dcbrEntries :: !(Maybe [DatafeedstatusesCustomBatchResponseEntry])
    , _dcbrKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedstatusesCustomBatchResponse
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
                 DatafeedstatusesCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#datafeedstatusesCustomBatchResponse"))

instance ToJSON DatafeedstatusesCustomBatchResponse
         where
        toJSON DatafeedstatusesCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _dcbrEntries,
                  Just ("kind" .= _dcbrKind)])

--
-- /See:/ 'orderReturn' smart constructor.
data OrderReturn = OrderReturn
    { _orQuantity     :: !(Maybe (Textual Word32))
    , _orActor        :: !(Maybe Text)
    , _orReason       :: !(Maybe Text)
    , _orCreationDate :: !(Maybe Text)
    , _orReasonText   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderReturn
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
                 OrderReturn <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderReturn where
        toJSON OrderReturn{..}
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
data AccounttaxCustomBatchResponseEntry = AccounttaxCustomBatchResponseEntry
    { _acbreAccountTax :: !(Maybe AccountTax)
    , _acbreKind       :: !Text
    , _acbreErrors     :: !(Maybe Errors)
    , _acbreBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccounttaxCustomBatchResponseEntry
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
                 AccounttaxCustomBatchResponseEntry <$>
                   (o .:? "accountTax") <*>
                     (o .:? "kind" .!=
                        "content#accounttaxCustomBatchResponseEntry")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchResponseEntry
         where
        toJSON AccounttaxCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _acbreAccountTax,
                  Just ("kind" .= _acbreKind),
                  ("errors" .=) <$> _acbreErrors,
                  ("batchId" .=) <$> _acbreBatchId])

--
-- /See:/ 'inventoryCustomBatchRequest' smart constructor.
newtype InventoryCustomBatchRequest = InventoryCustomBatchRequest
    { _icbrEntries :: Maybe [InventoryCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icbrEntries'
inventoryCustomBatchRequest
    :: InventoryCustomBatchRequest
inventoryCustomBatchRequest =
    InventoryCustomBatchRequest
    { _icbrEntries = Nothing
    }

-- | The request entries to be processed in the batch.
icbrEntries :: Lens' InventoryCustomBatchRequest [InventoryCustomBatchRequestEntry]
icbrEntries
  = lens _icbrEntries (\ s a -> s{_icbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON InventoryCustomBatchRequest where
        parseJSON
          = withObject "InventoryCustomBatchRequest"
              (\ o ->
                 InventoryCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON InventoryCustomBatchRequest where
        toJSON InventoryCustomBatchRequest{..}
          = object
              (catMaybes [("entries" .=) <$> _icbrEntries])

--
-- /See:/ 'accountsAuthInfoResponse' smart constructor.
data AccountsAuthInfoResponse = AccountsAuthInfoResponse
    { _aairKind               :: !Text
    , _aairAccountIdentifiers :: !(Maybe [AccountIdentifier])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountsAuthInfoResponse
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
                 AccountsAuthInfoResponse <$>
                   (o .:? "kind" .!= "content#accountsAuthInfoResponse")
                     <*> (o .:? "accountIdentifiers" .!= mempty))

instance ToJSON AccountsAuthInfoResponse where
        toJSON AccountsAuthInfoResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aairKind),
                  ("accountIdentifiers" .=) <$>
                    _aairAccountIdentifiers])

--
-- /See:/ 'productStatusDestinationStatus' smart constructor.
data ProductStatusDestinationStatus = ProductStatusDestinationStatus
    { _psdsDestination    :: !(Maybe Text)
    , _psdsIntention      :: !(Maybe Text)
    , _psdsApprovalStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductStatusDestinationStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdsDestination'
--
-- * 'psdsIntention'
--
-- * 'psdsApprovalStatus'
productStatusDestinationStatus
    :: ProductStatusDestinationStatus
productStatusDestinationStatus =
    ProductStatusDestinationStatus
    { _psdsDestination = Nothing
    , _psdsIntention = Nothing
    , _psdsApprovalStatus = Nothing
    }

-- | The name of the destination
psdsDestination :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsDestination
  = lens _psdsDestination
      (\ s a -> s{_psdsDestination = a})

-- | Whether the destination is required, excluded, selected by default or
-- should be validated.
psdsIntention :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsIntention
  = lens _psdsIntention
      (\ s a -> s{_psdsIntention = a})

-- | The destination\'s approval status.
psdsApprovalStatus :: Lens' ProductStatusDestinationStatus (Maybe Text)
psdsApprovalStatus
  = lens _psdsApprovalStatus
      (\ s a -> s{_psdsApprovalStatus = a})

instance FromJSON ProductStatusDestinationStatus
         where
        parseJSON
          = withObject "ProductStatusDestinationStatus"
              (\ o ->
                 ProductStatusDestinationStatus <$>
                   (o .:? "destination") <*> (o .:? "intention") <*>
                     (o .:? "approvalStatus"))

instance ToJSON ProductStatusDestinationStatus where
        toJSON ProductStatusDestinationStatus{..}
          = object
              (catMaybes
                 [("destination" .=) <$> _psdsDestination,
                  ("intention" .=) <$> _psdsIntention,
                  ("approvalStatus" .=) <$> _psdsApprovalStatus])

-- | Tax calculation rule to apply in a state or province (USA only).
--
-- /See:/ 'accountTaxTaxRule' smart constructor.
data AccountTaxTaxRule = AccountTaxTaxRule
    { _attrUseGlobalRate :: !(Maybe Bool)
    , _attrCountry       :: !(Maybe Text)
    , _attrShippingTaxed :: !(Maybe Bool)
    , _attrLocationId    :: !(Maybe (Textual Word64))
    , _attrRatePercent   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountTaxTaxRule
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
                 AccountTaxTaxRule <$>
                   (o .:? "useGlobalRate") <*> (o .:? "country") <*>
                     (o .:? "shippingTaxed")
                     <*> (o .:? "locationId")
                     <*> (o .:? "ratePercent"))

instance ToJSON AccountTaxTaxRule where
        toJSON AccountTaxTaxRule{..}
          = object
              (catMaybes
                 [("useGlobalRate" .=) <$> _attrUseGlobalRate,
                  ("country" .=) <$> _attrCountry,
                  ("shippingTaxed" .=) <$> _attrShippingTaxed,
                  ("locationId" .=) <$> _attrLocationId,
                  ("ratePercent" .=) <$> _attrRatePercent])

--
-- /See:/ 'productDestination' smart constructor.
data ProductDestination = ProductDestination
    { _pdIntention       :: !(Maybe Text)
    , _pdDestinationName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductDestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdIntention'
--
-- * 'pdDestinationName'
productDestination
    :: ProductDestination
productDestination =
    ProductDestination
    { _pdIntention = Nothing
    , _pdDestinationName = Nothing
    }

-- | Whether the destination is required, excluded or should be validated.
pdIntention :: Lens' ProductDestination (Maybe Text)
pdIntention
  = lens _pdIntention (\ s a -> s{_pdIntention = a})

-- | The name of the destination.
pdDestinationName :: Lens' ProductDestination (Maybe Text)
pdDestinationName
  = lens _pdDestinationName
      (\ s a -> s{_pdDestinationName = a})

instance FromJSON ProductDestination where
        parseJSON
          = withObject "ProductDestination"
              (\ o ->
                 ProductDestination <$>
                   (o .:? "intention") <*> (o .:? "destinationName"))

instance ToJSON ProductDestination where
        toJSON ProductDestination{..}
          = object
              (catMaybes
                 [("intention" .=) <$> _pdIntention,
                  ("destinationName" .=) <$> _pdDestinationName])

--
-- /See:/ 'datafeedsCustomBatchRequest' smart constructor.
newtype DatafeedsCustomBatchRequest = DatafeedsCustomBatchRequest
    { _dEntries :: Maybe [DatafeedsCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dEntries'
datafeedsCustomBatchRequest
    :: DatafeedsCustomBatchRequest
datafeedsCustomBatchRequest =
    DatafeedsCustomBatchRequest
    { _dEntries = Nothing
    }

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
                 DatafeedsCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedsCustomBatchRequest where
        toJSON DatafeedsCustomBatchRequest{..}
          = object (catMaybes [("entries" .=) <$> _dEntries])

--
-- /See:/ 'ordersCustomBatchRequestEntry' smart constructor.
data OrdersCustomBatchRequestEntry = OrdersCustomBatchRequestEntry
    { _ocbreMerchantId      :: !(Maybe (Textual Word64))
    , _ocbreCancelLineItem  :: !(Maybe OrdersCustomBatchRequestEntryCancelLineItem)
    , _ocbreRefund          :: !(Maybe OrdersCustomBatchRequestEntryRefund)
    , _ocbreUpdateShipment  :: !(Maybe OrdersCustomBatchRequestEntryUpdateShipment)
    , _ocbreReturnLineItem  :: !(Maybe OrdersCustomBatchRequestEntryReturnLineItem)
    , _ocbreMerchantOrderId :: !(Maybe Text)
    , _ocbreMethod          :: !(Maybe Text)
    , _ocbreShipLineItems   :: !(Maybe OrdersCustomBatchRequestEntryShipLineItems)
    , _ocbreOperationId     :: !(Maybe Text)
    , _ocbreOrderId         :: !(Maybe Text)
    , _ocbreCancel          :: !(Maybe OrdersCustomBatchRequestEntryCancel)
    , _ocbreBatchId         :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreMerchantId'
--
-- * 'ocbreCancelLineItem'
--
-- * 'ocbreRefund'
--
-- * 'ocbreUpdateShipment'
--
-- * 'ocbreReturnLineItem'
--
-- * 'ocbreMerchantOrderId'
--
-- * 'ocbreMethod'
--
-- * 'ocbreShipLineItems'
--
-- * 'ocbreOperationId'
--
-- * 'ocbreOrderId'
--
-- * 'ocbreCancel'
--
-- * 'ocbreBatchId'
ordersCustomBatchRequestEntry
    :: OrdersCustomBatchRequestEntry
ordersCustomBatchRequestEntry =
    OrdersCustomBatchRequestEntry
    { _ocbreMerchantId = Nothing
    , _ocbreCancelLineItem = Nothing
    , _ocbreRefund = Nothing
    , _ocbreUpdateShipment = Nothing
    , _ocbreReturnLineItem = Nothing
    , _ocbreMerchantOrderId = Nothing
    , _ocbreMethod = Nothing
    , _ocbreShipLineItems = Nothing
    , _ocbreOperationId = Nothing
    , _ocbreOrderId = Nothing
    , _ocbreCancel = Nothing
    , _ocbreBatchId = Nothing
    }

-- | The ID of the managing account.
ocbreMerchantId :: Lens' OrdersCustomBatchRequestEntry (Maybe Word64)
ocbreMerchantId
  = lens _ocbreMerchantId
      (\ s a -> s{_ocbreMerchantId = a})
      . mapping _Coerce

-- | Required for cancelLineItem method.
ocbreCancelLineItem :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryCancelLineItem)
ocbreCancelLineItem
  = lens _ocbreCancelLineItem
      (\ s a -> s{_ocbreCancelLineItem = a})

-- | Required for refund method.
ocbreRefund :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryRefund)
ocbreRefund
  = lens _ocbreRefund (\ s a -> s{_ocbreRefund = a})

-- | Required for updateShipment method.
ocbreUpdateShipment :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryUpdateShipment)
ocbreUpdateShipment
  = lens _ocbreUpdateShipment
      (\ s a -> s{_ocbreUpdateShipment = a})

-- | Required for returnLineItem method.
ocbreReturnLineItem :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryReturnLineItem)
ocbreReturnLineItem
  = lens _ocbreReturnLineItem
      (\ s a -> s{_ocbreReturnLineItem = a})

-- | The merchant order id. Required for updateMerchantOrderId and
-- getByMerchantOrderId methods.
ocbreMerchantOrderId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
ocbreMerchantOrderId
  = lens _ocbreMerchantOrderId
      (\ s a -> s{_ocbreMerchantOrderId = a})

-- | The method to apply.
ocbreMethod :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
ocbreMethod
  = lens _ocbreMethod (\ s a -> s{_ocbreMethod = a})

-- | Required for shipLineItems method.
ocbreShipLineItems :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryShipLineItems)
ocbreShipLineItems
  = lens _ocbreShipLineItems
      (\ s a -> s{_ocbreShipLineItems = a})

-- | The ID of the operation. Unique across all operations for a given order.
-- Required for all methods beside get and getByMerchantOrderId.
ocbreOperationId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
ocbreOperationId
  = lens _ocbreOperationId
      (\ s a -> s{_ocbreOperationId = a})

-- | The ID of the order. Required for all methods beside
-- getByMerchantOrderId.
ocbreOrderId :: Lens' OrdersCustomBatchRequestEntry (Maybe Text)
ocbreOrderId
  = lens _ocbreOrderId (\ s a -> s{_ocbreOrderId = a})

-- | Required for cancel method.
ocbreCancel :: Lens' OrdersCustomBatchRequestEntry (Maybe OrdersCustomBatchRequestEntryCancel)
ocbreCancel
  = lens _ocbreCancel (\ s a -> s{_ocbreCancel = a})

-- | An entry ID, unique within the batch request.
ocbreBatchId :: Lens' OrdersCustomBatchRequestEntry (Maybe Word32)
ocbreBatchId
  = lens _ocbreBatchId (\ s a -> s{_ocbreBatchId = a})
      . mapping _Coerce

instance FromJSON OrdersCustomBatchRequestEntry where
        parseJSON
          = withObject "OrdersCustomBatchRequestEntry"
              (\ o ->
                 OrdersCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "cancelLineItem") <*>
                     (o .:? "refund")
                     <*> (o .:? "updateShipment")
                     <*> (o .:? "returnLineItem")
                     <*> (o .:? "merchantOrderId")
                     <*> (o .:? "method")
                     <*> (o .:? "shipLineItems")
                     <*> (o .:? "operationId")
                     <*> (o .:? "orderId")
                     <*> (o .:? "cancel")
                     <*> (o .:? "batchId"))

instance ToJSON OrdersCustomBatchRequestEntry where
        toJSON OrdersCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _ocbreMerchantId,
                  ("cancelLineItem" .=) <$> _ocbreCancelLineItem,
                  ("refund" .=) <$> _ocbreRefund,
                  ("updateShipment" .=) <$> _ocbreUpdateShipment,
                  ("returnLineItem" .=) <$> _ocbreReturnLineItem,
                  ("merchantOrderId" .=) <$> _ocbreMerchantOrderId,
                  ("method" .=) <$> _ocbreMethod,
                  ("shipLineItems" .=) <$> _ocbreShipLineItems,
                  ("operationId" .=) <$> _ocbreOperationId,
                  ("orderId" .=) <$> _ocbreOrderId,
                  ("cancel" .=) <$> _ocbreCancel,
                  ("batchId" .=) <$> _ocbreBatchId])

--
-- /See:/ 'ordersRefundRequest' smart constructor.
data OrdersRefundRequest = OrdersRefundRequest
    { _orrAmount      :: !(Maybe Price)
    , _orrReason      :: !(Maybe Text)
    , _orrOperationId :: !(Maybe Text)
    , _orrReasonText  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefundRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrAmount'
--
-- * 'orrReason'
--
-- * 'orrOperationId'
--
-- * 'orrReasonText'
ordersRefundRequest
    :: OrdersRefundRequest
ordersRefundRequest =
    OrdersRefundRequest
    { _orrAmount = Nothing
    , _orrReason = Nothing
    , _orrOperationId = Nothing
    , _orrReasonText = Nothing
    }

-- | The amount that is refunded.
orrAmount :: Lens' OrdersRefundRequest (Maybe Price)
orrAmount
  = lens _orrAmount (\ s a -> s{_orrAmount = a})

-- | The reason for the refund.
orrReason :: Lens' OrdersRefundRequest (Maybe Text)
orrReason
  = lens _orrReason (\ s a -> s{_orrReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orrOperationId :: Lens' OrdersRefundRequest (Maybe Text)
orrOperationId
  = lens _orrOperationId
      (\ s a -> s{_orrOperationId = a})

-- | The explanation of the reason.
orrReasonText :: Lens' OrdersRefundRequest (Maybe Text)
orrReasonText
  = lens _orrReasonText
      (\ s a -> s{_orrReasonText = a})

instance FromJSON OrdersRefundRequest where
        parseJSON
          = withObject "OrdersRefundRequest"
              (\ o ->
                 OrdersRefundRequest <$>
                   (o .:? "amount") <*> (o .:? "reason") <*>
                     (o .:? "operationId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersRefundRequest where
        toJSON OrdersRefundRequest{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _orrAmount,
                  ("reason" .=) <$> _orrReason,
                  ("operationId" .=) <$> _orrOperationId,
                  ("reasonText" .=) <$> _orrReasonText])

-- | Shipping cost calculation method. Exactly one of the field is set.
--
-- /See:/ 'accountShippingShippingServiceCalculationMethod' smart constructor.
data AccountShippingShippingServiceCalculationMethod = AccountShippingShippingServiceCalculationMethod
    { _assscmPercentageRate :: !(Maybe Text)
    , _assscmCarrierRate    :: !(Maybe Text)
    , _assscmRateTable      :: !(Maybe Text)
    , _assscmExcluded       :: !(Maybe Bool)
    , _assscmFlatRate       :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingShippingServiceCalculationMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assscmPercentageRate'
--
-- * 'assscmCarrierRate'
--
-- * 'assscmRateTable'
--
-- * 'assscmExcluded'
--
-- * 'assscmFlatRate'
accountShippingShippingServiceCalculationMethod
    :: AccountShippingShippingServiceCalculationMethod
accountShippingShippingServiceCalculationMethod =
    AccountShippingShippingServiceCalculationMethod
    { _assscmPercentageRate = Nothing
    , _assscmCarrierRate = Nothing
    , _assscmRateTable = Nothing
    , _assscmExcluded = Nothing
    , _assscmFlatRate = Nothing
    }

-- | Percentage of the price, represented as a floating point number without
-- the percentage character.
assscmPercentageRate :: Lens' AccountShippingShippingServiceCalculationMethod (Maybe Text)
assscmPercentageRate
  = lens _assscmPercentageRate
      (\ s a -> s{_assscmPercentageRate = a})

-- | Name of the carrier rate to use for the calculation.
assscmCarrierRate :: Lens' AccountShippingShippingServiceCalculationMethod (Maybe Text)
assscmCarrierRate
  = lens _assscmCarrierRate
      (\ s a -> s{_assscmCarrierRate = a})

-- | Name of the rate table to use for the calculation.
assscmRateTable :: Lens' AccountShippingShippingServiceCalculationMethod (Maybe Text)
assscmRateTable
  = lens _assscmRateTable
      (\ s a -> s{_assscmRateTable = a})

-- | Delivery is excluded. Valid only within cost rules tree.
assscmExcluded :: Lens' AccountShippingShippingServiceCalculationMethod (Maybe Bool)
assscmExcluded
  = lens _assscmExcluded
      (\ s a -> s{_assscmExcluded = a})

-- | Fixed price shipping, represented as a floating point number associated
-- with a currency.
assscmFlatRate :: Lens' AccountShippingShippingServiceCalculationMethod (Maybe Price)
assscmFlatRate
  = lens _assscmFlatRate
      (\ s a -> s{_assscmFlatRate = a})

instance FromJSON
         AccountShippingShippingServiceCalculationMethod where
        parseJSON
          = withObject
              "AccountShippingShippingServiceCalculationMethod"
              (\ o ->
                 AccountShippingShippingServiceCalculationMethod <$>
                   (o .:? "percentageRate") <*> (o .:? "carrierRate")
                     <*> (o .:? "rateTable")
                     <*> (o .:? "excluded")
                     <*> (o .:? "flatRate"))

instance ToJSON
         AccountShippingShippingServiceCalculationMethod where
        toJSON
          AccountShippingShippingServiceCalculationMethod{..}
          = object
              (catMaybes
                 [("percentageRate" .=) <$> _assscmPercentageRate,
                  ("carrierRate" .=) <$> _assscmCarrierRate,
                  ("rateTable" .=) <$> _assscmRateTable,
                  ("excluded" .=) <$> _assscmExcluded,
                  ("flatRate" .=) <$> _assscmFlatRate])

--
-- /See:/ 'ordersCustomBatchRequestEntryCancelLineItem' smart constructor.
data OrdersCustomBatchRequestEntryCancelLineItem = OrdersCustomBatchRequestEntryCancelLineItem
    { _ocbrecliAmount     :: !(Maybe Price)
    , _ocbrecliQuantity   :: !(Maybe (Textual Word32))
    , _ocbrecliLineItemId :: !(Maybe Text)
    , _ocbrecliReason     :: !(Maybe Text)
    , _ocbrecliReasonText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCancelLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecliAmount'
--
-- * 'ocbrecliQuantity'
--
-- * 'ocbrecliLineItemId'
--
-- * 'ocbrecliReason'
--
-- * 'ocbrecliReasonText'
ordersCustomBatchRequestEntryCancelLineItem
    :: OrdersCustomBatchRequestEntryCancelLineItem
ordersCustomBatchRequestEntryCancelLineItem =
    OrdersCustomBatchRequestEntryCancelLineItem
    { _ocbrecliAmount = Nothing
    , _ocbrecliQuantity = Nothing
    , _ocbrecliLineItemId = Nothing
    , _ocbrecliReason = Nothing
    , _ocbrecliReasonText = Nothing
    }

-- | Amount to refund for the cancelation. Optional. If not set, Google will
-- calculate the default based on the price and tax of the items involved.
-- The amount must not be larger than the net amount left on the order.
ocbrecliAmount :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Price)
ocbrecliAmount
  = lens _ocbrecliAmount
      (\ s a -> s{_ocbrecliAmount = a})

-- | The quantity to cancel.
ocbrecliQuantity :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Word32)
ocbrecliQuantity
  = lens _ocbrecliQuantity
      (\ s a -> s{_ocbrecliQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to cancel.
ocbrecliLineItemId :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliLineItemId
  = lens _ocbrecliLineItemId
      (\ s a -> s{_ocbrecliLineItemId = a})

-- | The reason for the cancellation.
ocbrecliReason :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliReason
  = lens _ocbrecliReason
      (\ s a -> s{_ocbrecliReason = a})

-- | The explanation of the reason.
ocbrecliReasonText :: Lens' OrdersCustomBatchRequestEntryCancelLineItem (Maybe Text)
ocbrecliReasonText
  = lens _ocbrecliReasonText
      (\ s a -> s{_ocbrecliReasonText = a})

instance FromJSON
         OrdersCustomBatchRequestEntryCancelLineItem where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryCancelLineItem"
              (\ o ->
                 OrdersCustomBatchRequestEntryCancelLineItem <$>
                   (o .:? "amount") <*> (o .:? "quantity") <*>
                     (o .:? "lineItemId")
                     <*> (o .:? "reason")
                     <*> (o .:? "reasonText"))

instance ToJSON
         OrdersCustomBatchRequestEntryCancelLineItem where
        toJSON
          OrdersCustomBatchRequestEntryCancelLineItem{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ocbrecliAmount,
                  ("quantity" .=) <$> _ocbrecliQuantity,
                  ("lineItemId" .=) <$> _ocbrecliLineItemId,
                  ("reason" .=) <$> _ocbrecliReason,
                  ("reasonText" .=) <$> _ocbrecliReasonText])

--
-- /See:/ 'orderLineItemShippingDetailsMethod' smart constructor.
data OrderLineItemShippingDetailsMethod = OrderLineItemShippingDetailsMethod
    { _olisdmCarrier          :: !(Maybe Text)
    , _olisdmMethodName       :: !(Maybe Text)
    , _olisdmMaxDaysInTransit :: !(Maybe (Textual Word32))
    , _olisdmMinDaysInTransit :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderLineItemShippingDetailsMethod
    { _olisdmCarrier = Nothing
    , _olisdmMethodName = Nothing
    , _olisdmMaxDaysInTransit = Nothing
    , _olisdmMinDaysInTransit = Nothing
    }

-- | The carrier for the shipping. Optional.
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
                 OrderLineItemShippingDetailsMethod <$>
                   (o .:? "carrier") <*> (o .:? "methodName") <*>
                     (o .:? "maxDaysInTransit")
                     <*> (o .:? "minDaysInTransit"))

instance ToJSON OrderLineItemShippingDetailsMethod
         where
        toJSON OrderLineItemShippingDetailsMethod{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _olisdmCarrier,
                  ("methodName" .=) <$> _olisdmMethodName,
                  ("maxDaysInTransit" .=) <$> _olisdmMaxDaysInTransit,
                  ("minDaysInTransit" .=) <$> _olisdmMinDaysInTransit])

-- | Datafeed data.
--
-- /See:/ 'datafeed' smart constructor.
data Datafeed = Datafeed
    { _dKind                 :: !Text
    , _dFormat               :: !(Maybe DatafeedFormat)
    , _dAttributeLanguage    :: !(Maybe Text)
    , _dTargetCountry        :: !(Maybe Text)
    , _dFetchSchedule        :: !(Maybe DatafeedFetchSchedule)
    , _dName                 :: !(Maybe Text)
    , _dIntendedDestinations :: !(Maybe [Text])
    , _dId                   :: !(Maybe (Textual Int64))
    , _dContentLanguage      :: !(Maybe Text)
    , _dContentType          :: !(Maybe Text)
    , _dFileName             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'dTargetCountry'
--
-- * 'dFetchSchedule'
--
-- * 'dName'
--
-- * 'dIntendedDestinations'
--
-- * 'dId'
--
-- * 'dContentLanguage'
--
-- * 'dContentType'
--
-- * 'dFileName'
datafeed
    :: Datafeed
datafeed =
    Datafeed
    { _dKind = "content#datafeed"
    , _dFormat = Nothing
    , _dAttributeLanguage = Nothing
    , _dTargetCountry = Nothing
    , _dFetchSchedule = Nothing
    , _dName = Nothing
    , _dIntendedDestinations = Nothing
    , _dId = Nothing
    , _dContentLanguage = Nothing
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

-- | The country where the items in the feed will be included in the search
-- index, represented as a CLDR territory code.
dTargetCountry :: Lens' Datafeed (Maybe Text)
dTargetCountry
  = lens _dTargetCountry
      (\ s a -> s{_dTargetCountry = a})

-- | Fetch schedule for the feed file.
dFetchSchedule :: Lens' Datafeed (Maybe DatafeedFetchSchedule)
dFetchSchedule
  = lens _dFetchSchedule
      (\ s a -> s{_dFetchSchedule = a})

-- | A descriptive name of the data feed.
dName :: Lens' Datafeed (Maybe Text)
dName = lens _dName (\ s a -> s{_dName = a})

-- | The list of intended destinations (corresponds to checked check boxes in
-- Merchant Center).
dIntendedDestinations :: Lens' Datafeed [Text]
dIntendedDestinations
  = lens _dIntendedDestinations
      (\ s a -> s{_dIntendedDestinations = a})
      . _Default
      . _Coerce

-- | The ID of the data feed.
dId :: Lens' Datafeed (Maybe Int64)
dId
  = lens _dId (\ s a -> s{_dId = a}) . mapping _Coerce

-- | The two-letter ISO 639-1 language of the items in the feed. Must be a
-- valid language for targetCountry.
dContentLanguage :: Lens' Datafeed (Maybe Text)
dContentLanguage
  = lens _dContentLanguage
      (\ s a -> s{_dContentLanguage = a})

-- | The type of data feed.
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
                 Datafeed <$>
                   (o .:? "kind" .!= "content#datafeed") <*>
                     (o .:? "format")
                     <*> (o .:? "attributeLanguage")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "fetchSchedule")
                     <*> (o .:? "name")
                     <*> (o .:? "intendedDestinations" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "contentType")
                     <*> (o .:? "fileName"))

instance ToJSON Datafeed where
        toJSON Datafeed{..}
          = object
              (catMaybes
                 [Just ("kind" .= _dKind), ("format" .=) <$> _dFormat,
                  ("attributeLanguage" .=) <$> _dAttributeLanguage,
                  ("targetCountry" .=) <$> _dTargetCountry,
                  ("fetchSchedule" .=) <$> _dFetchSchedule,
                  ("name" .=) <$> _dName,
                  ("intendedDestinations" .=) <$>
                    _dIntendedDestinations,
                  ("id" .=) <$> _dId,
                  ("contentLanguage" .=) <$> _dContentLanguage,
                  ("contentType" .=) <$> _dContentType,
                  ("fileName" .=) <$> _dFileName])

--
-- /See:/ 'ordersCreateTestOrderResponse' smart constructor.
data OrdersCreateTestOrderResponse = OrdersCreateTestOrderResponse
    { _octorKind    :: !Text
    , _octorOrderId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersCreateTestOrderResponse
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
                 OrdersCreateTestOrderResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersCreateTestOrderResponse")
                     <*> (o .:? "orderId"))

instance ToJSON OrdersCreateTestOrderResponse where
        toJSON OrdersCreateTestOrderResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _octorKind),
                  ("orderId" .=) <$> _octorOrderId])

-- | A batch entry encoding a single non-batch accounts response.
--
-- /See:/ 'accountsCustomBatchResponseEntry' smart constructor.
data AccountsCustomBatchResponseEntry = AccountsCustomBatchResponseEntry
    { _aKind    :: !Text
    , _aAccount :: !(Maybe Account)
    , _aErrors  :: !(Maybe Errors)
    , _aBatchId :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountsCustomBatchResponseEntry
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
-- was delete.
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
                 AccountsCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#accountsCustomBatchResponseEntry")
                     <*> (o .:? "account")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON AccountsCustomBatchResponseEntry
         where
        toJSON AccountsCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _aKind),
                  ("account" .=) <$> _aAccount,
                  ("errors" .=) <$> _aErrors,
                  ("batchId" .=) <$> _aBatchId])

--
-- /See:/ 'accountIdentifier' smart constructor.
data AccountIdentifier = AccountIdentifier
    { _aiMerchantId   :: !(Maybe (Textual Word64))
    , _aiAggregatorId :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountIdentifier
    { _aiMerchantId = Nothing
    , _aiAggregatorId = Nothing
    }

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
                 AccountIdentifier <$>
                   (o .:? "merchantId") <*> (o .:? "aggregatorId"))

instance ToJSON AccountIdentifier where
        toJSON AccountIdentifier{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _aiMerchantId,
                  ("aggregatorId" .=) <$> _aiAggregatorId])

--
-- /See:/ 'testOrderPaymentMethod' smart constructor.
data TestOrderPaymentMethod = TestOrderPaymentMethod
    { _topmExpirationMonth          :: !(Maybe (Textual Int32))
    , _topmExpirationYear           :: !(Maybe (Textual Int32))
    , _topmLastFourDigits           :: !(Maybe Text)
    , _topmType                     :: !(Maybe Text)
    , _topmPredefinedBillingAddress :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TestOrderPaymentMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'topmExpirationMonth'
--
-- * 'topmExpirationYear'
--
-- * 'topmLastFourDigits'
--
-- * 'topmType'
--
-- * 'topmPredefinedBillingAddress'
testOrderPaymentMethod
    :: TestOrderPaymentMethod
testOrderPaymentMethod =
    TestOrderPaymentMethod
    { _topmExpirationMonth = Nothing
    , _topmExpirationYear = Nothing
    , _topmLastFourDigits = Nothing
    , _topmType = Nothing
    , _topmPredefinedBillingAddress = Nothing
    }

-- | The card expiration month (January = 1, February = 2 etc.).
topmExpirationMonth :: Lens' TestOrderPaymentMethod (Maybe Int32)
topmExpirationMonth
  = lens _topmExpirationMonth
      (\ s a -> s{_topmExpirationMonth = a})
      . mapping _Coerce

-- | The card expiration year (4-digit, e.g. 2015).
topmExpirationYear :: Lens' TestOrderPaymentMethod (Maybe Int32)
topmExpirationYear
  = lens _topmExpirationYear
      (\ s a -> s{_topmExpirationYear = a})
      . mapping _Coerce

-- | The last four digits of the card number.
topmLastFourDigits :: Lens' TestOrderPaymentMethod (Maybe Text)
topmLastFourDigits
  = lens _topmLastFourDigits
      (\ s a -> s{_topmLastFourDigits = a})

-- | The type of instrument. Note that real orders might have different
-- values than the four values accepted by createTestOrder.
topmType :: Lens' TestOrderPaymentMethod (Maybe Text)
topmType = lens _topmType (\ s a -> s{_topmType = a})

-- | The billing address.
topmPredefinedBillingAddress :: Lens' TestOrderPaymentMethod (Maybe Text)
topmPredefinedBillingAddress
  = lens _topmPredefinedBillingAddress
      (\ s a -> s{_topmPredefinedBillingAddress = a})

instance FromJSON TestOrderPaymentMethod where
        parseJSON
          = withObject "TestOrderPaymentMethod"
              (\ o ->
                 TestOrderPaymentMethod <$>
                   (o .:? "expirationMonth") <*>
                     (o .:? "expirationYear")
                     <*> (o .:? "lastFourDigits")
                     <*> (o .:? "type")
                     <*> (o .:? "predefinedBillingAddress"))

instance ToJSON TestOrderPaymentMethod where
        toJSON TestOrderPaymentMethod{..}
          = object
              (catMaybes
                 [("expirationMonth" .=) <$> _topmExpirationMonth,
                  ("expirationYear" .=) <$> _topmExpirationYear,
                  ("lastFourDigits" .=) <$> _topmLastFourDigits,
                  ("type" .=) <$> _topmType,
                  ("predefinedBillingAddress" .=) <$>
                    _topmPredefinedBillingAddress])

--
-- /See:/ 'orderLineItem' smart constructor.
data OrderLineItem = OrderLineItem
    { _oliQuantityOrdered   :: !(Maybe (Textual Word32))
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
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
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
    OrderLineItem
    { _oliQuantityOrdered = Nothing
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

-- | Product data from the time of the order placement.
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
                 OrderLineItem <$>
                   (o .:? "quantityOrdered") <*> (o .:? "returnInfo")
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
        toJSON OrderLineItem{..}
          = object
              (catMaybes
                 [("quantityOrdered" .=) <$> _oliQuantityOrdered,
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
-- /See:/ 'productstatusesCustomBatchResponse' smart constructor.
data ProductstatusesCustomBatchResponse = ProductstatusesCustomBatchResponse
    { _pEntries :: !(Maybe [ProductstatusesCustomBatchResponseEntry])
    , _pKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pEntries'
--
-- * 'pKind'
productstatusesCustomBatchResponse
    :: ProductstatusesCustomBatchResponse
productstatusesCustomBatchResponse =
    ProductstatusesCustomBatchResponse
    { _pEntries = Nothing
    , _pKind = "content#productstatusesCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
pEntries :: Lens' ProductstatusesCustomBatchResponse [ProductstatusesCustomBatchResponseEntry]
pEntries
  = lens _pEntries (\ s a -> s{_pEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesCustomBatchResponse\".
pKind :: Lens' ProductstatusesCustomBatchResponse Text
pKind = lens _pKind (\ s a -> s{_pKind = a})

instance FromJSON ProductstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchResponse"
              (\ o ->
                 ProductstatusesCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#productstatusesCustomBatchResponse"))

instance ToJSON ProductstatusesCustomBatchResponse
         where
        toJSON ProductstatusesCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _pEntries,
                  Just ("kind" .= _pKind)])

--
-- /See:/ 'productUnitPricingMeasure' smart constructor.
data ProductUnitPricingMeasure = ProductUnitPricingMeasure
    { _pupmValue :: !(Maybe (Textual Double))
    , _pupmUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductUnitPricingMeasure
    { _pupmValue = Nothing
    , _pupmUnit = Nothing
    }

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
                 ProductUnitPricingMeasure <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingMeasure where
        toJSON ProductUnitPricingMeasure{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupmValue,
                  ("unit" .=) <$> _pupmUnit])

--
-- /See:/ 'ordersUpdateShipmentRequest' smart constructor.
data OrdersUpdateShipmentRequest = OrdersUpdateShipmentRequest
    { _ousrCarrier     :: !(Maybe Text)
    , _ousrStatus      :: !(Maybe Text)
    , _ousrTrackingId  :: !(Maybe Text)
    , _ousrShipmentId  :: !(Maybe Text)
    , _ousrOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ousrOperationId'
ordersUpdateShipmentRequest
    :: OrdersUpdateShipmentRequest
ordersUpdateShipmentRequest =
    OrdersUpdateShipmentRequest
    { _ousrCarrier = Nothing
    , _ousrStatus = Nothing
    , _ousrTrackingId = Nothing
    , _ousrShipmentId = Nothing
    , _ousrOperationId = Nothing
    }

-- | The carrier handling the shipment. Not updated if missing.
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

-- | The ID of the operation. Unique across all operations for a given order.
ousrOperationId :: Lens' OrdersUpdateShipmentRequest (Maybe Text)
ousrOperationId
  = lens _ousrOperationId
      (\ s a -> s{_ousrOperationId = a})

instance FromJSON OrdersUpdateShipmentRequest where
        parseJSON
          = withObject "OrdersUpdateShipmentRequest"
              (\ o ->
                 OrdersUpdateShipmentRequest <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "trackingId")
                     <*> (o .:? "shipmentId")
                     <*> (o .:? "operationId"))

instance ToJSON OrdersUpdateShipmentRequest where
        toJSON OrdersUpdateShipmentRequest{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ousrCarrier,
                  ("status" .=) <$> _ousrStatus,
                  ("trackingId" .=) <$> _ousrTrackingId,
                  ("shipmentId" .=) <$> _ousrShipmentId,
                  ("operationId" .=) <$> _ousrOperationId])

--
-- /See:/ 'orderShipmentLineItemShipment' smart constructor.
data OrderShipmentLineItemShipment = OrderShipmentLineItemShipment
    { _oslisQuantity   :: !(Maybe (Textual Word32))
    , _oslisLineItemId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderShipmentLineItemShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslisQuantity'
--
-- * 'oslisLineItemId'
orderShipmentLineItemShipment
    :: OrderShipmentLineItemShipment
orderShipmentLineItemShipment =
    OrderShipmentLineItemShipment
    { _oslisQuantity = Nothing
    , _oslisLineItemId = Nothing
    }

-- | The quantity that is shipped.
oslisQuantity :: Lens' OrderShipmentLineItemShipment (Maybe Word32)
oslisQuantity
  = lens _oslisQuantity
      (\ s a -> s{_oslisQuantity = a})
      . mapping _Coerce

-- | The id of the line item that is shipped.
oslisLineItemId :: Lens' OrderShipmentLineItemShipment (Maybe Text)
oslisLineItemId
  = lens _oslisLineItemId
      (\ s a -> s{_oslisLineItemId = a})

instance FromJSON OrderShipmentLineItemShipment where
        parseJSON
          = withObject "OrderShipmentLineItemShipment"
              (\ o ->
                 OrderShipmentLineItemShipment <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId"))

instance ToJSON OrderShipmentLineItemShipment where
        toJSON OrderShipmentLineItemShipment{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _oslisQuantity,
                  ("lineItemId" .=) <$> _oslisLineItemId])

--
-- /See:/ 'loyaltyPoints' smart constructor.
data LoyaltyPoints = LoyaltyPoints
    { _lpRatio       :: !(Maybe (Textual Double))
    , _lpPointsValue :: !(Maybe (Textual Int64))
    , _lpName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    LoyaltyPoints
    { _lpRatio = Nothing
    , _lpPointsValue = Nothing
    , _lpName = Nothing
    }

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
                 LoyaltyPoints <$>
                   (o .:? "ratio") <*> (o .:? "pointsValue") <*>
                     (o .:? "name"))

instance ToJSON LoyaltyPoints where
        toJSON LoyaltyPoints{..}
          = object
              (catMaybes
                 [("ratio" .=) <$> _lpRatio,
                  ("pointsValue" .=) <$> _lpPointsValue,
                  ("name" .=) <$> _lpName])

--
-- /See:/ 'accountshippingCustomBatchRequest' smart constructor.
newtype AccountshippingCustomBatchRequest = AccountshippingCustomBatchRequest
    { _acbrEntries :: Maybe [AccountshippingCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrEntries'
accountshippingCustomBatchRequest
    :: AccountshippingCustomBatchRequest
accountshippingCustomBatchRequest =
    AccountshippingCustomBatchRequest
    { _acbrEntries = Nothing
    }

-- | The request entries to be processed in the batch.
acbrEntries :: Lens' AccountshippingCustomBatchRequest [AccountshippingCustomBatchRequestEntry]
acbrEntries
  = lens _acbrEntries (\ s a -> s{_acbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountshippingCustomBatchRequest
         where
        parseJSON
          = withObject "AccountshippingCustomBatchRequest"
              (\ o ->
                 AccountshippingCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountshippingCustomBatchRequest
         where
        toJSON AccountshippingCustomBatchRequest{..}
          = object
              (catMaybes [("entries" .=) <$> _acbrEntries])

--
-- /See:/ 'ordersCustomBatchRequestEntryShipLineItems' smart constructor.
data OrdersCustomBatchRequestEntryShipLineItems = OrdersCustomBatchRequestEntryShipLineItems
    { _ocbresliCarrier    :: !(Maybe Text)
    , _ocbresliTrackingId :: !(Maybe Text)
    , _ocbresliShipmentId :: !(Maybe Text)
    , _ocbresliLineItems  :: !(Maybe [OrderShipmentLineItemShipment])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryShipLineItems' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbresliCarrier'
--
-- * 'ocbresliTrackingId'
--
-- * 'ocbresliShipmentId'
--
-- * 'ocbresliLineItems'
ordersCustomBatchRequestEntryShipLineItems
    :: OrdersCustomBatchRequestEntryShipLineItems
ordersCustomBatchRequestEntryShipLineItems =
    OrdersCustomBatchRequestEntryShipLineItems
    { _ocbresliCarrier = Nothing
    , _ocbresliTrackingId = Nothing
    , _ocbresliShipmentId = Nothing
    , _ocbresliLineItems = Nothing
    }

-- | The carrier handling the shipment.
ocbresliCarrier :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliCarrier
  = lens _ocbresliCarrier
      (\ s a -> s{_ocbresliCarrier = a})

-- | The tracking id for the shipment.
ocbresliTrackingId :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliTrackingId
  = lens _ocbresliTrackingId
      (\ s a -> s{_ocbresliTrackingId = a})

-- | The ID of the shipment.
ocbresliShipmentId :: Lens' OrdersCustomBatchRequestEntryShipLineItems (Maybe Text)
ocbresliShipmentId
  = lens _ocbresliShipmentId
      (\ s a -> s{_ocbresliShipmentId = a})

-- | Line items to ship.
ocbresliLineItems :: Lens' OrdersCustomBatchRequestEntryShipLineItems [OrderShipmentLineItemShipment]
ocbresliLineItems
  = lens _ocbresliLineItems
      (\ s a -> s{_ocbresliLineItems = a})
      . _Default
      . _Coerce

instance FromJSON
         OrdersCustomBatchRequestEntryShipLineItems where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryShipLineItems"
              (\ o ->
                 OrdersCustomBatchRequestEntryShipLineItems <$>
                   (o .:? "carrier") <*> (o .:? "trackingId") <*>
                     (o .:? "shipmentId")
                     <*> (o .:? "lineItems" .!= mempty))

instance ToJSON
         OrdersCustomBatchRequestEntryShipLineItems where
        toJSON OrdersCustomBatchRequestEntryShipLineItems{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ocbresliCarrier,
                  ("trackingId" .=) <$> _ocbresliTrackingId,
                  ("shipmentId" .=) <$> _ocbresliShipmentId,
                  ("lineItems" .=) <$> _ocbresliLineItems])

-- | The status of an account, i.e., information about its products, which is
-- computed offline and not returned immediately at insertion time.
--
-- /See:/ 'accountStatus' smart constructor.
data AccountStatus = AccountStatus
    { _asDataQualityIssues :: !(Maybe [AccountStatusDataQualityIssue])
    , _asKind              :: !Text
    , _asAccountId         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asDataQualityIssues'
--
-- * 'asKind'
--
-- * 'asAccountId'
accountStatus
    :: AccountStatus
accountStatus =
    AccountStatus
    { _asDataQualityIssues = Nothing
    , _asKind = "content#accountStatus"
    , _asAccountId = Nothing
    }

-- | A list of data quality issues.
asDataQualityIssues :: Lens' AccountStatus [AccountStatusDataQualityIssue]
asDataQualityIssues
  = lens _asDataQualityIssues
      (\ s a -> s{_asDataQualityIssues = a})
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

instance FromJSON AccountStatus where
        parseJSON
          = withObject "AccountStatus"
              (\ o ->
                 AccountStatus <$>
                   (o .:? "dataQualityIssues" .!= mempty) <*>
                     (o .:? "kind" .!= "content#accountStatus")
                     <*> (o .:? "accountId"))

instance ToJSON AccountStatus where
        toJSON AccountStatus{..}
          = object
              (catMaybes
                 [("dataQualityIssues" .=) <$> _asDataQualityIssues,
                  Just ("kind" .= _asKind),
                  ("accountId" .=) <$> _asAccountId])

--
-- /See:/ 'ordersReturnLineItemRequest' smart constructor.
data OrdersReturnLineItemRequest = OrdersReturnLineItemRequest
    { _orlirQuantity    :: !(Maybe (Textual Word32))
    , _orlirLineItemId  :: !(Maybe Text)
    , _orlirReason      :: !(Maybe Text)
    , _orlirOperationId :: !(Maybe Text)
    , _orlirReasonText  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orlirQuantity'
--
-- * 'orlirLineItemId'
--
-- * 'orlirReason'
--
-- * 'orlirOperationId'
--
-- * 'orlirReasonText'
ordersReturnLineItemRequest
    :: OrdersReturnLineItemRequest
ordersReturnLineItemRequest =
    OrdersReturnLineItemRequest
    { _orlirQuantity = Nothing
    , _orlirLineItemId = Nothing
    , _orlirReason = Nothing
    , _orlirOperationId = Nothing
    , _orlirReasonText = Nothing
    }

-- | The quantity to return.
orlirQuantity :: Lens' OrdersReturnLineItemRequest (Maybe Word32)
orlirQuantity
  = lens _orlirQuantity
      (\ s a -> s{_orlirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return.
orlirLineItemId :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirLineItemId
  = lens _orlirLineItemId
      (\ s a -> s{_orlirLineItemId = a})

-- | The reason for the return.
orlirReason :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirReason
  = lens _orlirReason (\ s a -> s{_orlirReason = a})

-- | The ID of the operation. Unique across all operations for a given order.
orlirOperationId :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirOperationId
  = lens _orlirOperationId
      (\ s a -> s{_orlirOperationId = a})

-- | The explanation of the reason.
orlirReasonText :: Lens' OrdersReturnLineItemRequest (Maybe Text)
orlirReasonText
  = lens _orlirReasonText
      (\ s a -> s{_orlirReasonText = a})

instance FromJSON OrdersReturnLineItemRequest where
        parseJSON
          = withObject "OrdersReturnLineItemRequest"
              (\ o ->
                 OrdersReturnLineItemRequest <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersReturnLineItemRequest where
        toJSON OrdersReturnLineItemRequest{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _orlirQuantity,
                  ("lineItemId" .=) <$> _orlirLineItemId,
                  ("reason" .=) <$> _orlirReason,
                  ("operationId" .=) <$> _orlirOperationId,
                  ("reasonText" .=) <$> _orlirReasonText])

--
-- /See:/ 'accountstatusesCustomBatchRequest' smart constructor.
newtype AccountstatusesCustomBatchRequest = AccountstatusesCustomBatchRequest
    { _aEntries :: Maybe [AccountstatusesCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEntries'
accountstatusesCustomBatchRequest
    :: AccountstatusesCustomBatchRequest
accountstatusesCustomBatchRequest =
    AccountstatusesCustomBatchRequest
    { _aEntries = Nothing
    }

-- | The request entries to be processed in the batch.
aEntries :: Lens' AccountstatusesCustomBatchRequest [AccountstatusesCustomBatchRequestEntry]
aEntries
  = lens _aEntries (\ s a -> s{_aEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequest"
              (\ o ->
                 AccountstatusesCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountstatusesCustomBatchRequest
         where
        toJSON AccountstatusesCustomBatchRequest{..}
          = object (catMaybes [("entries" .=) <$> _aEntries])

--
-- /See:/ 'accounttaxListResponse' smart constructor.
data AccounttaxListResponse = AccounttaxListResponse
    { _alrNextPageToken :: !(Maybe Text)
    , _alrKind          :: !Text
    , _alrResources     :: !(Maybe [AccountTax])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccounttaxListResponse
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
                 AccounttaxListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#accounttaxListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccounttaxListResponse where
        toJSON AccounttaxListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrNextPageToken,
                  Just ("kind" .= _alrKind),
                  ("resources" .=) <$> _alrResources])

--
-- /See:/ 'ordersGetTestOrderTemplateResponse' smart constructor.
data OrdersGetTestOrderTemplateResponse = OrdersGetTestOrderTemplateResponse
    { _ogtotrKind     :: !Text
    , _ogtotrTemplate :: !(Maybe TestOrder)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersGetTestOrderTemplateResponse
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
                 OrdersGetTestOrderTemplateResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersGetTestOrderTemplateResponse")
                     <*> (o .:? "template"))

instance ToJSON OrdersGetTestOrderTemplateResponse
         where
        toJSON OrdersGetTestOrderTemplateResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ogtotrKind),
                  ("template" .=) <$> _ogtotrTemplate])

-- | A batch entry encoding a single non-batch accounts request.
--
-- /See:/ 'accountsCustomBatchRequestEntry' smart constructor.
data AccountsCustomBatchRequestEntry = AccountsCustomBatchRequestEntry
    { _accMerchantId :: !(Maybe (Textual Word64))
    , _accAccount    :: !(Maybe Account)
    , _accAccountId  :: !(Maybe (Textual Word64))
    , _accMethod     :: !(Maybe Text)
    , _accBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accMerchantId'
--
-- * 'accAccount'
--
-- * 'accAccountId'
--
-- * 'accMethod'
--
-- * 'accBatchId'
accountsCustomBatchRequestEntry
    :: AccountsCustomBatchRequestEntry
accountsCustomBatchRequestEntry =
    AccountsCustomBatchRequestEntry
    { _accMerchantId = Nothing
    , _accAccount = Nothing
    , _accAccountId = Nothing
    , _accMethod = Nothing
    , _accBatchId = Nothing
    }

-- | The ID of the managing account.
accMerchantId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accMerchantId
  = lens _accMerchantId
      (\ s a -> s{_accMerchantId = a})
      . mapping _Coerce

-- | The account to create or update. Only defined if the method is insert or
-- update.
accAccount :: Lens' AccountsCustomBatchRequestEntry (Maybe Account)
accAccount
  = lens _accAccount (\ s a -> s{_accAccount = a})

-- | The ID of the account to get or delete. Only defined if the method is
-- get or delete.
accAccountId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word64)
accAccountId
  = lens _accAccountId (\ s a -> s{_accAccountId = a})
      . mapping _Coerce

accMethod :: Lens' AccountsCustomBatchRequestEntry (Maybe Text)
accMethod
  = lens _accMethod (\ s a -> s{_accMethod = a})

-- | An entry ID, unique within the batch request.
accBatchId :: Lens' AccountsCustomBatchRequestEntry (Maybe Word32)
accBatchId
  = lens _accBatchId (\ s a -> s{_accBatchId = a}) .
      mapping _Coerce

instance FromJSON AccountsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccountsCustomBatchRequestEntry"
              (\ o ->
                 AccountsCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "account") <*>
                     (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON AccountsCustomBatchRequestEntry where
        toJSON AccountsCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _accMerchantId,
                  ("account" .=) <$> _accAccount,
                  ("accountId" .=) <$> _accAccountId,
                  ("method" .=) <$> _accMethod,
                  ("batchId" .=) <$> _accBatchId])

--
-- /See:/ 'weight' smart constructor.
data Weight = Weight
    { _wValue :: !(Maybe Text)
    , _wUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Weight' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wValue'
--
-- * 'wUnit'
weight
    :: Weight
weight =
    Weight
    { _wValue = Nothing
    , _wUnit = Nothing
    }

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
                 Weight <$> (o .:? "value") <*> (o .:? "unit"))

instance ToJSON Weight where
        toJSON Weight{..}
          = object
              (catMaybes
                 [("value" .=) <$> _wValue, ("unit" .=) <$> _wUnit])

-- | An error returned by the API.
--
-- /See:/ 'error'' smart constructor.
data Error' = Error'
    { _eDomain  :: !(Maybe Text)
    , _eReason  :: !(Maybe Text)
    , _eMessage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
error' =
    Error'
    { _eDomain = Nothing
    , _eReason = Nothing
    , _eMessage = Nothing
    }

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
                 Error' <$>
                   (o .:? "domain") <*> (o .:? "reason") <*>
                     (o .:? "message"))

instance ToJSON Error' where
        toJSON Error'{..}
          = object
              (catMaybes
                 [("domain" .=) <$> _eDomain,
                  ("reason" .=) <$> _eReason,
                  ("message" .=) <$> _eMessage])

--
-- /See:/ 'productstatusesListResponse' smart constructor.
data ProductstatusesListResponse = ProductstatusesListResponse
    { _plrNextPageToken :: !(Maybe Text)
    , _plrKind          :: !Text
    , _plrResources     :: !(Maybe [ProductStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductstatusesListResponse
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
                 ProductstatusesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#productstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON ProductstatusesListResponse where
        toJSON ProductstatusesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrNextPageToken,
                  Just ("kind" .= _plrKind),
                  ("resources" .=) <$> _plrResources])

--
-- /See:/ 'ordersRefundResponse' smart constructor.
data OrdersRefundResponse = OrdersRefundResponse
    { _orrKind            :: !Text
    , _orrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersRefundResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orrKind'
--
-- * 'orrExecutionStatus'
ordersRefundResponse
    :: OrdersRefundResponse
ordersRefundResponse =
    OrdersRefundResponse
    { _orrKind = "content#ordersRefundResponse"
    , _orrExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersRefundResponse\".
orrKind :: Lens' OrdersRefundResponse Text
orrKind = lens _orrKind (\ s a -> s{_orrKind = a})

-- | The status of the execution.
orrExecutionStatus :: Lens' OrdersRefundResponse (Maybe Text)
orrExecutionStatus
  = lens _orrExecutionStatus
      (\ s a -> s{_orrExecutionStatus = a})

instance FromJSON OrdersRefundResponse where
        parseJSON
          = withObject "OrdersRefundResponse"
              (\ o ->
                 OrdersRefundResponse <$>
                   (o .:? "kind" .!= "content#ordersRefundResponse") <*>
                     (o .:? "executionStatus"))

instance ToJSON OrdersRefundResponse where
        toJSON OrdersRefundResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _orrKind),
                  ("executionStatus" .=) <$> _orrExecutionStatus])

--
-- /See:/ 'ordersCreateTestOrderRequest' smart constructor.
data OrdersCreateTestOrderRequest = OrdersCreateTestOrderRequest
    { _octorTemplateName :: !(Maybe Text)
    , _octorTestOrder    :: !(Maybe TestOrder)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCreateTestOrderRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'octorTemplateName'
--
-- * 'octorTestOrder'
ordersCreateTestOrderRequest
    :: OrdersCreateTestOrderRequest
ordersCreateTestOrderRequest =
    OrdersCreateTestOrderRequest
    { _octorTemplateName = Nothing
    , _octorTestOrder = Nothing
    }

-- | The test order template to use. Specify as an alternative to testOrder
-- as a shortcut for retrieving a template and then creating an order using
-- that template.
octorTemplateName :: Lens' OrdersCreateTestOrderRequest (Maybe Text)
octorTemplateName
  = lens _octorTemplateName
      (\ s a -> s{_octorTemplateName = a})

-- | The test order to create.
octorTestOrder :: Lens' OrdersCreateTestOrderRequest (Maybe TestOrder)
octorTestOrder
  = lens _octorTestOrder
      (\ s a -> s{_octorTestOrder = a})

instance FromJSON OrdersCreateTestOrderRequest where
        parseJSON
          = withObject "OrdersCreateTestOrderRequest"
              (\ o ->
                 OrdersCreateTestOrderRequest <$>
                   (o .:? "templateName") <*> (o .:? "testOrder"))

instance ToJSON OrdersCreateTestOrderRequest where
        toJSON OrdersCreateTestOrderRequest{..}
          = object
              (catMaybes
                 [("templateName" .=) <$> _octorTemplateName,
                  ("testOrder" .=) <$> _octorTestOrder])

--
-- /See:/ 'accountUser' smart constructor.
data AccountUser = AccountUser
    { _auAdmin        :: !(Maybe Bool)
    , _auEmailAddress :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'auAdmin'
--
-- * 'auEmailAddress'
accountUser
    :: AccountUser
accountUser =
    AccountUser
    { _auAdmin = Nothing
    , _auEmailAddress = Nothing
    }

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
                 AccountUser <$>
                   (o .:? "admin") <*> (o .:? "emailAddress"))

instance ToJSON AccountUser where
        toJSON AccountUser{..}
          = object
              (catMaybes
                 [("admin" .=) <$> _auAdmin,
                  ("emailAddress" .=) <$> _auEmailAddress])

-- | An example of an item that has poor data quality. An item value on the
-- landing page differs from what is submitted, or conflicts with a policy.
--
-- /See:/ 'accountStatusExampleItem' smart constructor.
data AccountStatusExampleItem = AccountStatusExampleItem
    { _aseiSubmittedValue     :: !(Maybe Text)
    , _aseiLink               :: !(Maybe Text)
    , _aseiItemId             :: !(Maybe Text)
    , _aseiTitle              :: !(Maybe Text)
    , _aseiValueOnLandingPage :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountStatusExampleItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aseiSubmittedValue'
--
-- * 'aseiLink'
--
-- * 'aseiItemId'
--
-- * 'aseiTitle'
--
-- * 'aseiValueOnLandingPage'
accountStatusExampleItem
    :: AccountStatusExampleItem
accountStatusExampleItem =
    AccountStatusExampleItem
    { _aseiSubmittedValue = Nothing
    , _aseiLink = Nothing
    , _aseiItemId = Nothing
    , _aseiTitle = Nothing
    , _aseiValueOnLandingPage = Nothing
    }

-- | The item value that was submitted.
aseiSubmittedValue :: Lens' AccountStatusExampleItem (Maybe Text)
aseiSubmittedValue
  = lens _aseiSubmittedValue
      (\ s a -> s{_aseiSubmittedValue = a})

-- | Landing page of the item.
aseiLink :: Lens' AccountStatusExampleItem (Maybe Text)
aseiLink = lens _aseiLink (\ s a -> s{_aseiLink = a})

-- | Unique item ID as specified in the uploaded product data.
aseiItemId :: Lens' AccountStatusExampleItem (Maybe Text)
aseiItemId
  = lens _aseiItemId (\ s a -> s{_aseiItemId = a})

-- | Title of the item.
aseiTitle :: Lens' AccountStatusExampleItem (Maybe Text)
aseiTitle
  = lens _aseiTitle (\ s a -> s{_aseiTitle = a})

-- | The actual value on the landing page.
aseiValueOnLandingPage :: Lens' AccountStatusExampleItem (Maybe Text)
aseiValueOnLandingPage
  = lens _aseiValueOnLandingPage
      (\ s a -> s{_aseiValueOnLandingPage = a})

instance FromJSON AccountStatusExampleItem where
        parseJSON
          = withObject "AccountStatusExampleItem"
              (\ o ->
                 AccountStatusExampleItem <$>
                   (o .:? "submittedValue") <*> (o .:? "link") <*>
                     (o .:? "itemId")
                     <*> (o .:? "title")
                     <*> (o .:? "valueOnLandingPage"))

instance ToJSON AccountStatusExampleItem where
        toJSON AccountStatusExampleItem{..}
          = object
              (catMaybes
                 [("submittedValue" .=) <$> _aseiSubmittedValue,
                  ("link" .=) <$> _aseiLink,
                  ("itemId" .=) <$> _aseiItemId,
                  ("title" .=) <$> _aseiTitle,
                  ("valueOnLandingPage" .=) <$>
                    _aseiValueOnLandingPage])

-- | A batch entry encoding a single non-batch datafeeds request.
--
-- /See:/ 'datafeedsCustomBatchRequestEntry' smart constructor.
data DatafeedsCustomBatchRequestEntry = DatafeedsCustomBatchRequestEntry
    { _dcbreMerchantId :: !(Maybe (Textual Word64))
    , _dcbreDatafeed   :: !(Maybe Datafeed)
    , _dcbreMethod     :: !(Maybe Text)
    , _dcbreDatafeedId :: !(Maybe (Textual Word64))
    , _dcbreBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedsCustomBatchRequestEntry
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

-- | The ID of the data feed to get or delete.
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
                 DatafeedsCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "datafeed") <*>
                     (o .:? "method")
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchRequestEntry
         where
        toJSON DatafeedsCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dcbreMerchantId,
                  ("datafeed" .=) <$> _dcbreDatafeed,
                  ("method" .=) <$> _dcbreMethod,
                  ("datafeedId" .=) <$> _dcbreDatafeedId,
                  ("batchId" .=) <$> _dcbreBatchId])

--
-- /See:/ 'installment' smart constructor.
data Installment = Installment
    { _iAmount :: !(Maybe Price)
    , _iMonths :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Installment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iAmount'
--
-- * 'iMonths'
installment
    :: Installment
installment =
    Installment
    { _iAmount = Nothing
    , _iMonths = Nothing
    }

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
                 Installment <$>
                   (o .:? "amount") <*> (o .:? "months"))

instance ToJSON Installment where
        toJSON Installment{..}
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
data DatafeedFetchSchedule = DatafeedFetchSchedule
    { _dfsFetchURL     :: !(Maybe Text)
    , _dfsUsername     :: !(Maybe Text)
    , _dfsMinuteOfHour :: !(Maybe (Textual Word32))
    , _dfsPassword     :: !(Maybe Text)
    , _dfsDayOfMonth   :: !(Maybe (Textual Word32))
    , _dfsHour         :: !(Maybe (Textual Word32))
    , _dfsWeekday      :: !(Maybe Text)
    , _dfsTimeZone     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
datafeedFetchSchedule
    :: DatafeedFetchSchedule
datafeedFetchSchedule =
    DatafeedFetchSchedule
    { _dfsFetchURL = Nothing
    , _dfsUsername = Nothing
    , _dfsMinuteOfHour = Nothing
    , _dfsPassword = Nothing
    , _dfsDayOfMonth = Nothing
    , _dfsHour = Nothing
    , _dfsWeekday = Nothing
    , _dfsTimeZone = Nothing
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

instance FromJSON DatafeedFetchSchedule where
        parseJSON
          = withObject "DatafeedFetchSchedule"
              (\ o ->
                 DatafeedFetchSchedule <$>
                   (o .:? "fetchUrl") <*> (o .:? "username") <*>
                     (o .:? "minuteOfHour")
                     <*> (o .:? "password")
                     <*> (o .:? "dayOfMonth")
                     <*> (o .:? "hour")
                     <*> (o .:? "weekday")
                     <*> (o .:? "timeZone"))

instance ToJSON DatafeedFetchSchedule where
        toJSON DatafeedFetchSchedule{..}
          = object
              (catMaybes
                 [("fetchUrl" .=) <$> _dfsFetchURL,
                  ("username" .=) <$> _dfsUsername,
                  ("minuteOfHour" .=) <$> _dfsMinuteOfHour,
                  ("password" .=) <$> _dfsPassword,
                  ("dayOfMonth" .=) <$> _dfsDayOfMonth,
                  ("hour" .=) <$> _dfsHour,
                  ("weekday" .=) <$> _dfsWeekday,
                  ("timeZone" .=) <$> _dfsTimeZone])

--
-- /See:/ 'ordersCustomBatchRequest' smart constructor.
newtype OrdersCustomBatchRequest = OrdersCustomBatchRequest
    { _ocbrEntries :: Maybe [OrdersCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrEntries'
ordersCustomBatchRequest
    :: OrdersCustomBatchRequest
ordersCustomBatchRequest =
    OrdersCustomBatchRequest
    { _ocbrEntries = Nothing
    }

-- | The request entries to be processed in the batch.
ocbrEntries :: Lens' OrdersCustomBatchRequest [OrdersCustomBatchRequestEntry]
ocbrEntries
  = lens _ocbrEntries (\ s a -> s{_ocbrEntries = a}) .
      _Default
      . _Coerce

instance FromJSON OrdersCustomBatchRequest where
        parseJSON
          = withObject "OrdersCustomBatchRequest"
              (\ o ->
                 OrdersCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON OrdersCustomBatchRequest where
        toJSON OrdersCustomBatchRequest{..}
          = object
              (catMaybes [("entries" .=) <$> _ocbrEntries])

--
-- /See:/ 'accountsListResponse' smart constructor.
data AccountsListResponse = AccountsListResponse
    { _accNextPageToken :: !(Maybe Text)
    , _accKind          :: !Text
    , _accResources     :: !(Maybe [Account])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountsListResponse
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
                 AccountsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#accountsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccountsListResponse where
        toJSON AccountsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _accNextPageToken,
                  Just ("kind" .= _accKind),
                  ("resources" .=) <$> _accResources])

--
-- /See:/ 'productStatusDataQualityIssue' smart constructor.
data ProductStatusDataQualityIssue = ProductStatusDataQualityIssue
    { _psdqiLocation           :: !(Maybe Text)
    , _psdqiFetchStatus        :: !(Maybe Text)
    , _psdqiSeverity           :: !(Maybe Text)
    , _psdqiValueProvided      :: !(Maybe Text)
    , _psdqiId                 :: !(Maybe Text)
    , _psdqiValueOnLandingPage :: !(Maybe Text)
    , _psdqiTimestamp          :: !(Maybe Text)
    , _psdqiDetail             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductStatusDataQualityIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdqiLocation'
--
-- * 'psdqiFetchStatus'
--
-- * 'psdqiSeverity'
--
-- * 'psdqiValueProvided'
--
-- * 'psdqiId'
--
-- * 'psdqiValueOnLandingPage'
--
-- * 'psdqiTimestamp'
--
-- * 'psdqiDetail'
productStatusDataQualityIssue
    :: ProductStatusDataQualityIssue
productStatusDataQualityIssue =
    ProductStatusDataQualityIssue
    { _psdqiLocation = Nothing
    , _psdqiFetchStatus = Nothing
    , _psdqiSeverity = Nothing
    , _psdqiValueProvided = Nothing
    , _psdqiId = Nothing
    , _psdqiValueOnLandingPage = Nothing
    , _psdqiTimestamp = Nothing
    , _psdqiDetail = Nothing
    }

-- | The attribute name that is relevant for the issue.
psdqiLocation :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiLocation
  = lens _psdqiLocation
      (\ s a -> s{_psdqiLocation = a})

-- | The fetch status for landing_page_errors.
psdqiFetchStatus :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiFetchStatus
  = lens _psdqiFetchStatus
      (\ s a -> s{_psdqiFetchStatus = a})

-- | The severity of the data quality issue.
psdqiSeverity :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiSeverity
  = lens _psdqiSeverity
      (\ s a -> s{_psdqiSeverity = a})

-- | The value the attribute had at time of evaluation.
psdqiValueProvided :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiValueProvided
  = lens _psdqiValueProvided
      (\ s a -> s{_psdqiValueProvided = a})

-- | The id of the data quality issue.
psdqiId :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiId = lens _psdqiId (\ s a -> s{_psdqiId = a})

-- | The value of that attribute that was found on the landing page
psdqiValueOnLandingPage :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiValueOnLandingPage
  = lens _psdqiValueOnLandingPage
      (\ s a -> s{_psdqiValueOnLandingPage = a})

-- | The time stamp of the data quality issue.
psdqiTimestamp :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiTimestamp
  = lens _psdqiTimestamp
      (\ s a -> s{_psdqiTimestamp = a})

-- | A more detailed error string.
psdqiDetail :: Lens' ProductStatusDataQualityIssue (Maybe Text)
psdqiDetail
  = lens _psdqiDetail (\ s a -> s{_psdqiDetail = a})

instance FromJSON ProductStatusDataQualityIssue where
        parseJSON
          = withObject "ProductStatusDataQualityIssue"
              (\ o ->
                 ProductStatusDataQualityIssue <$>
                   (o .:? "location") <*> (o .:? "fetchStatus") <*>
                     (o .:? "severity")
                     <*> (o .:? "valueProvided")
                     <*> (o .:? "id")
                     <*> (o .:? "valueOnLandingPage")
                     <*> (o .:? "timestamp")
                     <*> (o .:? "detail"))

instance ToJSON ProductStatusDataQualityIssue where
        toJSON ProductStatusDataQualityIssue{..}
          = object
              (catMaybes
                 [("location" .=) <$> _psdqiLocation,
                  ("fetchStatus" .=) <$> _psdqiFetchStatus,
                  ("severity" .=) <$> _psdqiSeverity,
                  ("valueProvided" .=) <$> _psdqiValueProvided,
                  ("id" .=) <$> _psdqiId,
                  ("valueOnLandingPage" .=) <$>
                    _psdqiValueOnLandingPage,
                  ("timestamp" .=) <$> _psdqiTimestamp,
                  ("detail" .=) <$> _psdqiDetail])

--
-- /See:/ 'ordersShipLineItemsRequest' smart constructor.
data OrdersShipLineItemsRequest = OrdersShipLineItemsRequest
    { _oslirCarrier     :: !(Maybe Text)
    , _oslirTrackingId  :: !(Maybe Text)
    , _oslirShipmentId  :: !(Maybe Text)
    , _oslirLineItems   :: !(Maybe [OrderShipmentLineItemShipment])
    , _oslirOperationId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersShipLineItemsRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oslirCarrier'
--
-- * 'oslirTrackingId'
--
-- * 'oslirShipmentId'
--
-- * 'oslirLineItems'
--
-- * 'oslirOperationId'
ordersShipLineItemsRequest
    :: OrdersShipLineItemsRequest
ordersShipLineItemsRequest =
    OrdersShipLineItemsRequest
    { _oslirCarrier = Nothing
    , _oslirTrackingId = Nothing
    , _oslirShipmentId = Nothing
    , _oslirLineItems = Nothing
    , _oslirOperationId = Nothing
    }

-- | The carrier handling the shipment.
oslirCarrier :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirCarrier
  = lens _oslirCarrier (\ s a -> s{_oslirCarrier = a})

-- | The tracking id for the shipment.
oslirTrackingId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirTrackingId
  = lens _oslirTrackingId
      (\ s a -> s{_oslirTrackingId = a})

-- | The ID of the shipment.
oslirShipmentId :: Lens' OrdersShipLineItemsRequest (Maybe Text)
oslirShipmentId
  = lens _oslirShipmentId
      (\ s a -> s{_oslirShipmentId = a})

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
                 OrdersShipLineItemsRequest <$>
                   (o .:? "carrier") <*> (o .:? "trackingId") <*>
                     (o .:? "shipmentId")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "operationId"))

instance ToJSON OrdersShipLineItemsRequest where
        toJSON OrdersShipLineItemsRequest{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _oslirCarrier,
                  ("trackingId" .=) <$> _oslirTrackingId,
                  ("shipmentId" .=) <$> _oslirShipmentId,
                  ("lineItems" .=) <$> _oslirLineItems,
                  ("operationId" .=) <$> _oslirOperationId])

--
-- /See:/ 'accountsCustomBatchResponse' smart constructor.
data AccountsCustomBatchResponse = AccountsCustomBatchResponse
    { _acbrcEntries :: !(Maybe [AccountsCustomBatchResponseEntry])
    , _acbrcKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    AccountsCustomBatchResponse
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
                 AccountsCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accountsCustomBatchResponse"))

instance ToJSON AccountsCustomBatchResponse where
        toJSON AccountsCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbrcEntries,
                  Just ("kind" .= _acbrcKind)])

--
-- /See:/ 'productTax' smart constructor.
data ProductTax = ProductTax
    { _ptTaxShip    :: !(Maybe Bool)
    , _ptCountry    :: !(Maybe Text)
    , _ptPostalCode :: !(Maybe Text)
    , _ptRate       :: !(Maybe (Textual Double))
    , _ptRegion     :: !(Maybe Text)
    , _ptLocationId :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductTax
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
                 ProductTax <$>
                   (o .:? "taxShip") <*> (o .:? "country") <*>
                     (o .:? "postalCode")
                     <*> (o .:? "rate")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductTax where
        toJSON ProductTax{..}
          = object
              (catMaybes
                 [("taxShip" .=) <$> _ptTaxShip,
                  ("country" .=) <$> _ptCountry,
                  ("postalCode" .=) <$> _ptPostalCode,
                  ("rate" .=) <$> _ptRate, ("region" .=) <$> _ptRegion,
                  ("locationId" .=) <$> _ptLocationId])

--
-- /See:/ 'orderShipment' smart constructor.
data OrderShipment = OrderShipment
    { _osCarrier      :: !(Maybe Text)
    , _osStatus       :: !(Maybe Text)
    , _osTrackingId   :: !(Maybe Text)
    , _osLineItems    :: !(Maybe [OrderShipmentLineItemShipment])
    , _osId           :: !(Maybe Text)
    , _osCreationDate :: !(Maybe Text)
    , _osDeliveryDate :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderShipment
    { _osCarrier = Nothing
    , _osStatus = Nothing
    , _osTrackingId = Nothing
    , _osLineItems = Nothing
    , _osId = Nothing
    , _osCreationDate = Nothing
    , _osDeliveryDate = Nothing
    }

-- | The carrier handling the shipment.
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
-- Present only if status is delievered
osDeliveryDate :: Lens' OrderShipment (Maybe Text)
osDeliveryDate
  = lens _osDeliveryDate
      (\ s a -> s{_osDeliveryDate = a})

instance FromJSON OrderShipment where
        parseJSON
          = withObject "OrderShipment"
              (\ o ->
                 OrderShipment <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "trackingId")
                     <*> (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "deliveryDate"))

instance ToJSON OrderShipment where
        toJSON OrderShipment{..}
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
-- /See:/ 'orderLineItemReturnInfo' smart constructor.
data OrderLineItemReturnInfo = OrderLineItemReturnInfo
    { _oliriIsReturnable :: !(Maybe Bool)
    , _oliriPolicyURL    :: !(Maybe Text)
    , _oliriDaysToReturn :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderLineItemReturnInfo
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
                 OrderLineItemReturnInfo <$>
                   (o .:? "isReturnable") <*> (o .:? "policyUrl") <*>
                     (o .:? "daysToReturn"))

instance ToJSON OrderLineItemReturnInfo where
        toJSON OrderLineItemReturnInfo{..}
          = object
              (catMaybes
                 [("isReturnable" .=) <$> _oliriIsReturnable,
                  ("policyUrl" .=) <$> _oliriPolicyURL,
                  ("daysToReturn" .=) <$> _oliriDaysToReturn])

--
-- /See:/ 'accountShippingRateTableCell' smart constructor.
data AccountShippingRateTableCell = AccountShippingRateTableCell
    { _asrtcRate      :: !(Maybe Price)
    , _asrtcCondition :: !(Maybe AccountShippingCondition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingRateTableCell' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrtcRate'
--
-- * 'asrtcCondition'
accountShippingRateTableCell
    :: AccountShippingRateTableCell
accountShippingRateTableCell =
    AccountShippingRateTableCell
    { _asrtcRate = Nothing
    , _asrtcCondition = Nothing
    }

-- | The rate applicable if the cell conditions are matched.
asrtcRate :: Lens' AccountShippingRateTableCell (Maybe Price)
asrtcRate
  = lens _asrtcRate (\ s a -> s{_asrtcRate = a})

-- | Conditions for which the cell is valid. All cells in a table must use
-- the same dimension or pair of dimensions among price, weight, shipping
-- label or delivery location. If no condition is specified, the cell acts
-- as a catch-all and matches all the elements that are not matched by
-- other cells in this dimension.
asrtcCondition :: Lens' AccountShippingRateTableCell (Maybe AccountShippingCondition)
asrtcCondition
  = lens _asrtcCondition
      (\ s a -> s{_asrtcCondition = a})

instance FromJSON AccountShippingRateTableCell where
        parseJSON
          = withObject "AccountShippingRateTableCell"
              (\ o ->
                 AccountShippingRateTableCell <$>
                   (o .:? "rate") <*> (o .:? "condition"))

instance ToJSON AccountShippingRateTableCell where
        toJSON AccountShippingRateTableCell{..}
          = object
              (catMaybes
                 [("rate" .=) <$> _asrtcRate,
                  ("condition" .=) <$> _asrtcCondition])

-- | Account data.
--
-- /See:/ 'account' smart constructor.
data Account = Account
    { _aaUsers        :: !(Maybe [AccountUser])
    , _aaKind         :: !Text
    , _aaSellerId     :: !(Maybe Text)
    , _aaName         :: !(Maybe Text)
    , _aaReviewsURL   :: !(Maybe Text)
    , _aaId           :: !(Maybe (Textual Word64))
    , _aaWebsiteURL   :: !(Maybe Text)
    , _aaAdwordsLinks :: !(Maybe [AccountAdwordsLink])
    , _aaAdultContent :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Account' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaUsers'
--
-- * 'aaKind'
--
-- * 'aaSellerId'
--
-- * 'aaName'
--
-- * 'aaReviewsURL'
--
-- * 'aaId'
--
-- * 'aaWebsiteURL'
--
-- * 'aaAdwordsLinks'
--
-- * 'aaAdultContent'
account
    :: Account
account =
    Account
    { _aaUsers = Nothing
    , _aaKind = "content#account"
    , _aaSellerId = Nothing
    , _aaName = Nothing
    , _aaReviewsURL = Nothing
    , _aaId = Nothing
    , _aaWebsiteURL = Nothing
    , _aaAdwordsLinks = Nothing
    , _aaAdultContent = Nothing
    }

-- | Users with access to the account. Every account (except for subaccounts)
-- must have at least one admin user.
aaUsers :: Lens' Account [AccountUser]
aaUsers
  = lens _aaUsers (\ s a -> s{_aaUsers = a}) . _Default
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

-- | URL for individual seller reviews, i.e., reviews for each child account.
aaReviewsURL :: Lens' Account (Maybe Text)
aaReviewsURL
  = lens _aaReviewsURL (\ s a -> s{_aaReviewsURL = a})

-- | Merchant Center account ID.
aaId :: Lens' Account (Maybe Word64)
aaId
  = lens _aaId (\ s a -> s{_aaId = a}) .
      mapping _Coerce

-- | The merchant\'s website.
aaWebsiteURL :: Lens' Account (Maybe Text)
aaWebsiteURL
  = lens _aaWebsiteURL (\ s a -> s{_aaWebsiteURL = a})

-- | List of linked AdWords accounts, active or pending approval. To create a
-- new link request, add a new link with status active to the list. It will
-- remain is state pending until approved or rejected in the AdWords
-- interface. To delete an active link or to cancel a link request, remove
-- it from the list.
aaAdwordsLinks :: Lens' Account [AccountAdwordsLink]
aaAdwordsLinks
  = lens _aaAdwordsLinks
      (\ s a -> s{_aaAdwordsLinks = a})
      . _Default
      . _Coerce

-- | Indicates whether the merchant sells adult content.
aaAdultContent :: Lens' Account (Maybe Bool)
aaAdultContent
  = lens _aaAdultContent
      (\ s a -> s{_aaAdultContent = a})

instance FromJSON Account where
        parseJSON
          = withObject "Account"
              (\ o ->
                 Account <$>
                   (o .:? "users" .!= mempty) <*>
                     (o .:? "kind" .!= "content#account")
                     <*> (o .:? "sellerId")
                     <*> (o .:? "name")
                     <*> (o .:? "reviewsUrl")
                     <*> (o .:? "id")
                     <*> (o .:? "websiteUrl")
                     <*> (o .:? "adwordsLinks" .!= mempty)
                     <*> (o .:? "adultContent"))

instance ToJSON Account where
        toJSON Account{..}
          = object
              (catMaybes
                 [("users" .=) <$> _aaUsers, Just ("kind" .= _aaKind),
                  ("sellerId" .=) <$> _aaSellerId,
                  ("name" .=) <$> _aaName,
                  ("reviewsUrl" .=) <$> _aaReviewsURL,
                  ("id" .=) <$> _aaId,
                  ("websiteUrl" .=) <$> _aaWebsiteURL,
                  ("adwordsLinks" .=) <$> _aaAdwordsLinks,
                  ("adultContent" .=) <$> _aaAdultContent])

--
-- /See:/ 'inventorySetRequest' smart constructor.
data InventorySetRequest = InventorySetRequest
    { _isrLoyaltyPoints          :: !(Maybe LoyaltyPoints)
    , _isrQuantity               :: !(Maybe (Textual Word32))
    , _isrInstallment            :: !(Maybe Installment)
    , _isrSalePrice              :: !(Maybe Price)
    , _isrAvailability           :: !(Maybe Text)
    , _isrSalePriceEffectiveDate :: !(Maybe Text)
    , _isrSellOnGoogleQuantity   :: !(Maybe (Textual Word32))
    , _isrPrice                  :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySetRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrLoyaltyPoints'
--
-- * 'isrQuantity'
--
-- * 'isrInstallment'
--
-- * 'isrSalePrice'
--
-- * 'isrAvailability'
--
-- * 'isrSalePriceEffectiveDate'
--
-- * 'isrSellOnGoogleQuantity'
--
-- * 'isrPrice'
inventorySetRequest
    :: InventorySetRequest
inventorySetRequest =
    InventorySetRequest
    { _isrLoyaltyPoints = Nothing
    , _isrQuantity = Nothing
    , _isrInstallment = Nothing
    , _isrSalePrice = Nothing
    , _isrAvailability = Nothing
    , _isrSalePriceEffectiveDate = Nothing
    , _isrSellOnGoogleQuantity = Nothing
    , _isrPrice = Nothing
    }

-- | Loyalty points that users receive after purchasing the item. Japan only.
isrLoyaltyPoints :: Lens' InventorySetRequest (Maybe LoyaltyPoints)
isrLoyaltyPoints
  = lens _isrLoyaltyPoints
      (\ s a -> s{_isrLoyaltyPoints = a})

-- | The quantity of the product. Must be equal to or greater than zero.
-- Supported only for local products.
isrQuantity :: Lens' InventorySetRequest (Maybe Word32)
isrQuantity
  = lens _isrQuantity (\ s a -> s{_isrQuantity = a}) .
      mapping _Coerce

-- | Number and amount of installments to pay for an item. Brazil only.
isrInstallment :: Lens' InventorySetRequest (Maybe Installment)
isrInstallment
  = lens _isrInstallment
      (\ s a -> s{_isrInstallment = a})

-- | The sale price of the product. Mandatory if sale_price_effective_date is
-- defined.
isrSalePrice :: Lens' InventorySetRequest (Maybe Price)
isrSalePrice
  = lens _isrSalePrice (\ s a -> s{_isrSalePrice = a})

-- | The availability of the product.
isrAvailability :: Lens' InventorySetRequest (Maybe Text)
isrAvailability
  = lens _isrAvailability
      (\ s a -> s{_isrAvailability = a})

-- | A date range represented by a pair of ISO 8601 dates separated by a
-- space, comma, or slash. Both dates might be specified as \'null\' if
-- undecided.
isrSalePriceEffectiveDate :: Lens' InventorySetRequest (Maybe Text)
isrSalePriceEffectiveDate
  = lens _isrSalePriceEffectiveDate
      (\ s a -> s{_isrSalePriceEffectiveDate = a})

-- | The quantity of the product that is reserved for sell-on-google ads.
-- Supported only for online products.
isrSellOnGoogleQuantity :: Lens' InventorySetRequest (Maybe Word32)
isrSellOnGoogleQuantity
  = lens _isrSellOnGoogleQuantity
      (\ s a -> s{_isrSellOnGoogleQuantity = a})
      . mapping _Coerce

-- | The price of the product.
isrPrice :: Lens' InventorySetRequest (Maybe Price)
isrPrice = lens _isrPrice (\ s a -> s{_isrPrice = a})

instance FromJSON InventorySetRequest where
        parseJSON
          = withObject "InventorySetRequest"
              (\ o ->
                 InventorySetRequest <$>
                   (o .:? "loyaltyPoints") <*> (o .:? "quantity") <*>
                     (o .:? "installment")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "availability")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "sellOnGoogleQuantity")
                     <*> (o .:? "price"))

instance ToJSON InventorySetRequest where
        toJSON InventorySetRequest{..}
          = object
              (catMaybes
                 [("loyaltyPoints" .=) <$> _isrLoyaltyPoints,
                  ("quantity" .=) <$> _isrQuantity,
                  ("installment" .=) <$> _isrInstallment,
                  ("salePrice" .=) <$> _isrSalePrice,
                  ("availability" .=) <$> _isrAvailability,
                  ("salePriceEffectiveDate" .=) <$>
                    _isrSalePriceEffectiveDate,
                  ("sellOnGoogleQuantity" .=) <$>
                    _isrSellOnGoogleQuantity,
                  ("price" .=) <$> _isrPrice])

-- | Building block of the cost calculation decision tree. - The tree root
-- should have no condition and no calculation method. - All the children
-- must have a condition on the same dimension. The first child matching a
-- condition is entered, therefore, price and weight conditions form
-- contiguous intervals. - The last child of an element must have no
-- condition and matches all elements not previously matched. - Children
-- and calculation method are mutually exclusive, and exactly one of them
-- must be defined; the root must only have children.
--
-- /See:/ 'accountShippingShippingServiceCostRule' smart constructor.
data AccountShippingShippingServiceCostRule = AccountShippingShippingServiceCostRule
    { _assscrChildren          :: !(Maybe [AccountShippingShippingServiceCostRule])
    , _assscrCalculationMethod :: !(Maybe AccountShippingShippingServiceCalculationMethod)
    , _assscrCondition         :: !(Maybe AccountShippingCondition)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingShippingServiceCostRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assscrChildren'
--
-- * 'assscrCalculationMethod'
--
-- * 'assscrCondition'
accountShippingShippingServiceCostRule
    :: AccountShippingShippingServiceCostRule
accountShippingShippingServiceCostRule =
    AccountShippingShippingServiceCostRule
    { _assscrChildren = Nothing
    , _assscrCalculationMethod = Nothing
    , _assscrCondition = Nothing
    }

-- | Subsequent rules to be applied, only for inner nodes. The last child
-- must not specify a condition and acts as a catch-all.
assscrChildren :: Lens' AccountShippingShippingServiceCostRule [AccountShippingShippingServiceCostRule]
assscrChildren
  = lens _assscrChildren
      (\ s a -> s{_assscrChildren = a})
      . _Default
      . _Coerce

-- | Final calculation method to be used only in leaf nodes.
assscrCalculationMethod :: Lens' AccountShippingShippingServiceCostRule (Maybe AccountShippingShippingServiceCalculationMethod)
assscrCalculationMethod
  = lens _assscrCalculationMethod
      (\ s a -> s{_assscrCalculationMethod = a})

-- | Condition for this rule to be applicable. If no condition is specified,
-- the rule acts as a catch-all.
assscrCondition :: Lens' AccountShippingShippingServiceCostRule (Maybe AccountShippingCondition)
assscrCondition
  = lens _assscrCondition
      (\ s a -> s{_assscrCondition = a})

instance FromJSON
         AccountShippingShippingServiceCostRule where
        parseJSON
          = withObject "AccountShippingShippingServiceCostRule"
              (\ o ->
                 AccountShippingShippingServiceCostRule <$>
                   (o .:? "children" .!= mempty) <*>
                     (o .:? "calculationMethod")
                     <*> (o .:? "condition"))

instance ToJSON
         AccountShippingShippingServiceCostRule where
        toJSON AccountShippingShippingServiceCostRule{..}
          = object
              (catMaybes
                 [("children" .=) <$> _assscrChildren,
                  ("calculationMethod" .=) <$>
                    _assscrCalculationMethod,
                  ("condition" .=) <$> _assscrCondition])

--
-- /See:/ 'ordersCancelLineItemRequest' smart constructor.
data OrdersCancelLineItemRequest = OrdersCancelLineItemRequest
    { _oclirAmount      :: !(Maybe Price)
    , _oclirQuantity    :: !(Maybe (Textual Word32))
    , _oclirLineItemId  :: !(Maybe Text)
    , _oclirReason      :: !(Maybe Text)
    , _oclirOperationId :: !(Maybe Text)
    , _oclirReasonText  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCancelLineItemRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oclirAmount'
--
-- * 'oclirQuantity'
--
-- * 'oclirLineItemId'
--
-- * 'oclirReason'
--
-- * 'oclirOperationId'
--
-- * 'oclirReasonText'
ordersCancelLineItemRequest
    :: OrdersCancelLineItemRequest
ordersCancelLineItemRequest =
    OrdersCancelLineItemRequest
    { _oclirAmount = Nothing
    , _oclirQuantity = Nothing
    , _oclirLineItemId = Nothing
    , _oclirReason = Nothing
    , _oclirOperationId = Nothing
    , _oclirReasonText = Nothing
    }

-- | Amount to refund for the cancelation. Optional. If not set, Google will
-- calculate the default based on the price and tax of the items involved.
-- The amount must not be larger than the net amount left on the order.
oclirAmount :: Lens' OrdersCancelLineItemRequest (Maybe Price)
oclirAmount
  = lens _oclirAmount (\ s a -> s{_oclirAmount = a})

-- | The quantity to cancel.
oclirQuantity :: Lens' OrdersCancelLineItemRequest (Maybe Word32)
oclirQuantity
  = lens _oclirQuantity
      (\ s a -> s{_oclirQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to cancel.
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

-- | The explanation of the reason.
oclirReasonText :: Lens' OrdersCancelLineItemRequest (Maybe Text)
oclirReasonText
  = lens _oclirReasonText
      (\ s a -> s{_oclirReasonText = a})

instance FromJSON OrdersCancelLineItemRequest where
        parseJSON
          = withObject "OrdersCancelLineItemRequest"
              (\ o ->
                 OrdersCancelLineItemRequest <$>
                   (o .:? "amount") <*> (o .:? "quantity") <*>
                     (o .:? "lineItemId")
                     <*> (o .:? "reason")
                     <*> (o .:? "operationId")
                     <*> (o .:? "reasonText"))

instance ToJSON OrdersCancelLineItemRequest where
        toJSON OrdersCancelLineItemRequest{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _oclirAmount,
                  ("quantity" .=) <$> _oclirQuantity,
                  ("lineItemId" .=) <$> _oclirLineItemId,
                  ("reason" .=) <$> _oclirReason,
                  ("operationId" .=) <$> _oclirOperationId,
                  ("reasonText" .=) <$> _oclirReasonText])

--
-- /See:/ 'productShippingWeight' smart constructor.
data ProductShippingWeight = ProductShippingWeight
    { _pswValue :: !(Maybe (Textual Double))
    , _pswUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductShippingWeight
    { _pswValue = Nothing
    , _pswUnit = Nothing
    }

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
                 ProductShippingWeight <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingWeight where
        toJSON ProductShippingWeight{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pswValue,
                  ("unit" .=) <$> _pswUnit])

-- | A batch entry encoding a single non-batch accountstatuses request.
--
-- /See:/ 'accountstatusesCustomBatchRequestEntry' smart constructor.
data AccountstatusesCustomBatchRequestEntry = AccountstatusesCustomBatchRequestEntry
    { _acbrecMerchantId :: !(Maybe (Textual Word64))
    , _acbrecAccountId  :: !(Maybe (Textual Word64))
    , _acbrecMethod     :: !(Maybe Text)
    , _acbrecBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbrecMerchantId'
--
-- * 'acbrecAccountId'
--
-- * 'acbrecMethod'
--
-- * 'acbrecBatchId'
accountstatusesCustomBatchRequestEntry
    :: AccountstatusesCustomBatchRequestEntry
accountstatusesCustomBatchRequestEntry =
    AccountstatusesCustomBatchRequestEntry
    { _acbrecMerchantId = Nothing
    , _acbrecAccountId = Nothing
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
         AccountstatusesCustomBatchRequestEntry where
        parseJSON
          = withObject "AccountstatusesCustomBatchRequestEntry"
              (\ o ->
                 AccountstatusesCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON
         AccountstatusesCustomBatchRequestEntry where
        toJSON AccountstatusesCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _acbrecMerchantId,
                  ("accountId" .=) <$> _acbrecAccountId,
                  ("method" .=) <$> _acbrecMethod,
                  ("batchId" .=) <$> _acbrecBatchId])

-- | A batch entry encoding a single non-batch productstatuses response.
--
-- /See:/ 'productstatusesCustomBatchResponseEntry' smart constructor.
data ProductstatusesCustomBatchResponseEntry = ProductstatusesCustomBatchResponseEntry
    { _pcbreKind          :: !Text
    , _pcbreProductStatus :: !(Maybe ProductStatus)
    , _pcbreErrors        :: !(Maybe Errors)
    , _pcbreBatchId       :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbreKind'
--
-- * 'pcbreProductStatus'
--
-- * 'pcbreErrors'
--
-- * 'pcbreBatchId'
productstatusesCustomBatchResponseEntry
    :: ProductstatusesCustomBatchResponseEntry
productstatusesCustomBatchResponseEntry =
    ProductstatusesCustomBatchResponseEntry
    { _pcbreKind = "content#productstatusesCustomBatchResponseEntry"
    , _pcbreProductStatus = Nothing
    , _pcbreErrors = Nothing
    , _pcbreBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productstatusesCustomBatchResponseEntry\".
pcbreKind :: Lens' ProductstatusesCustomBatchResponseEntry Text
pcbreKind
  = lens _pcbreKind (\ s a -> s{_pcbreKind = a})

-- | The requested product status. Only defined if the request was
-- successful.
pcbreProductStatus :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe ProductStatus)
pcbreProductStatus
  = lens _pcbreProductStatus
      (\ s a -> s{_pcbreProductStatus = a})

-- | A list of errors, if the request failed.
pcbreErrors :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Errors)
pcbreErrors
  = lens _pcbreErrors (\ s a -> s{_pcbreErrors = a})

-- | The ID of the request entry this entry responds to.
pcbreBatchId :: Lens' ProductstatusesCustomBatchResponseEntry (Maybe Word32)
pcbreBatchId
  = lens _pcbreBatchId (\ s a -> s{_pcbreBatchId = a})
      . mapping _Coerce

instance FromJSON
         ProductstatusesCustomBatchResponseEntry where
        parseJSON
          = withObject
              "ProductstatusesCustomBatchResponseEntry"
              (\ o ->
                 ProductstatusesCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#productstatusesCustomBatchResponseEntry")
                     <*> (o .:? "productStatus")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON
         ProductstatusesCustomBatchResponseEntry where
        toJSON ProductstatusesCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _pcbreKind),
                  ("productStatus" .=) <$> _pcbreProductStatus,
                  ("errors" .=) <$> _pcbreErrors,
                  ("batchId" .=) <$> _pcbreBatchId])

--
-- /See:/ 'ordersCustomBatchRequestEntryCancel' smart constructor.
data OrdersCustomBatchRequestEntryCancel = OrdersCustomBatchRequestEntryCancel
    { _ocbrecReason     :: !(Maybe Text)
    , _ocbrecReasonText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryCancel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrecReason'
--
-- * 'ocbrecReasonText'
ordersCustomBatchRequestEntryCancel
    :: OrdersCustomBatchRequestEntryCancel
ordersCustomBatchRequestEntryCancel =
    OrdersCustomBatchRequestEntryCancel
    { _ocbrecReason = Nothing
    , _ocbrecReasonText = Nothing
    }

-- | The reason for the cancellation.
ocbrecReason :: Lens' OrdersCustomBatchRequestEntryCancel (Maybe Text)
ocbrecReason
  = lens _ocbrecReason (\ s a -> s{_ocbrecReason = a})

-- | The explanation of the reason.
ocbrecReasonText :: Lens' OrdersCustomBatchRequestEntryCancel (Maybe Text)
ocbrecReasonText
  = lens _ocbrecReasonText
      (\ s a -> s{_ocbrecReasonText = a})

instance FromJSON OrdersCustomBatchRequestEntryCancel
         where
        parseJSON
          = withObject "OrdersCustomBatchRequestEntryCancel"
              (\ o ->
                 OrdersCustomBatchRequestEntryCancel <$>
                   (o .:? "reason") <*> (o .:? "reasonText"))

instance ToJSON OrdersCustomBatchRequestEntryCancel
         where
        toJSON OrdersCustomBatchRequestEntryCancel{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocbrecReason,
                  ("reasonText" .=) <$> _ocbrecReasonText])

--
-- /See:/ 'datafeedFormat' smart constructor.
data DatafeedFormat = DatafeedFormat
    { _dfQuotingMode     :: !(Maybe Text)
    , _dfFileEncoding    :: !(Maybe Text)
    , _dfColumnDelimiter :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedFormat
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
                 DatafeedFormat <$>
                   (o .:? "quotingMode") <*> (o .:? "fileEncoding") <*>
                     (o .:? "columnDelimiter"))

instance ToJSON DatafeedFormat where
        toJSON DatafeedFormat{..}
          = object
              (catMaybes
                 [("quotingMode" .=) <$> _dfQuotingMode,
                  ("fileEncoding" .=) <$> _dfFileEncoding,
                  ("columnDelimiter" .=) <$> _dfColumnDelimiter])

--
-- /See:/ 'productShipping' smart constructor.
data ProductShipping = ProductShipping
    { _psService           :: !(Maybe Text)
    , _psLocationGroupName :: !(Maybe Text)
    , _psCountry           :: !(Maybe Text)
    , _psPostalCode        :: !(Maybe Text)
    , _psPrice             :: !(Maybe Price)
    , _psRegion            :: !(Maybe Text)
    , _psLocationId        :: !(Maybe (Textual Int64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductShipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psService'
--
-- * 'psLocationGroupName'
--
-- * 'psCountry'
--
-- * 'psPostalCode'
--
-- * 'psPrice'
--
-- * 'psRegion'
--
-- * 'psLocationId'
productShipping
    :: ProductShipping
productShipping =
    ProductShipping
    { _psService = Nothing
    , _psLocationGroupName = Nothing
    , _psCountry = Nothing
    , _psPostalCode = Nothing
    , _psPrice = Nothing
    , _psRegion = Nothing
    , _psLocationId = Nothing
    }

-- | A free-form description of the service class or delivery speed.
psService :: Lens' ProductShipping (Maybe Text)
psService
  = lens _psService (\ s a -> s{_psService = a})

-- | The location where the shipping is applicable, represented by a location
-- group name.
psLocationGroupName :: Lens' ProductShipping (Maybe Text)
psLocationGroupName
  = lens _psLocationGroupName
      (\ s a -> s{_psLocationGroupName = a})

-- | The CLDR territory code of the country to which an item will ship.
psCountry :: Lens' ProductShipping (Maybe Text)
psCountry
  = lens _psCountry (\ s a -> s{_psCountry = a})

-- | The postal code range that the shipping rate applies to, represented by
-- a postal code, a postal code prefix followed by a * wildcard, a range
-- between two postal codes or two postal code prefixes of equal length.
psPostalCode :: Lens' ProductShipping (Maybe Text)
psPostalCode
  = lens _psPostalCode (\ s a -> s{_psPostalCode = a})

-- | Fixed shipping price, represented as a number.
psPrice :: Lens' ProductShipping (Maybe Price)
psPrice = lens _psPrice (\ s a -> s{_psPrice = a})

-- | The geographic region to which a shipping rate applies (e.g. zip code).
psRegion :: Lens' ProductShipping (Maybe Text)
psRegion = lens _psRegion (\ s a -> s{_psRegion = a})

-- | The numeric id of a location that the shipping rate applies to as
-- defined in the AdWords API.
psLocationId :: Lens' ProductShipping (Maybe Int64)
psLocationId
  = lens _psLocationId (\ s a -> s{_psLocationId = a})
      . mapping _Coerce

instance FromJSON ProductShipping where
        parseJSON
          = withObject "ProductShipping"
              (\ o ->
                 ProductShipping <$>
                   (o .:? "service") <*> (o .:? "locationGroupName") <*>
                     (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "price")
                     <*> (o .:? "region")
                     <*> (o .:? "locationId"))

instance ToJSON ProductShipping where
        toJSON ProductShipping{..}
          = object
              (catMaybes
                 [("service" .=) <$> _psService,
                  ("locationGroupName" .=) <$> _psLocationGroupName,
                  ("country" .=) <$> _psCountry,
                  ("postalCode" .=) <$> _psPostalCode,
                  ("price" .=) <$> _psPrice,
                  ("region" .=) <$> _psRegion,
                  ("locationId" .=) <$> _psLocationId])

-- | A batch entry encoding a single non-batch accountshipping request.
--
-- /See:/ 'accountshippingCustomBatchRequestEntry' smart constructor.
data AccountshippingCustomBatchRequestEntry = AccountshippingCustomBatchRequestEntry
    { _aaMerchantId      :: !(Maybe (Textual Word64))
    , _aaAccountId       :: !(Maybe (Textual Word64))
    , _aaMethod          :: !(Maybe Text)
    , _aaAccountShipping :: !(Maybe AccountShipping)
    , _aaBatchId         :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaMerchantId'
--
-- * 'aaAccountId'
--
-- * 'aaMethod'
--
-- * 'aaAccountShipping'
--
-- * 'aaBatchId'
accountshippingCustomBatchRequestEntry
    :: AccountshippingCustomBatchRequestEntry
accountshippingCustomBatchRequestEntry =
    AccountshippingCustomBatchRequestEntry
    { _aaMerchantId = Nothing
    , _aaAccountId = Nothing
    , _aaMethod = Nothing
    , _aaAccountShipping = Nothing
    , _aaBatchId = Nothing
    }

-- | The ID of the managing account.
aaMerchantId :: Lens' AccountshippingCustomBatchRequestEntry (Maybe Word64)
aaMerchantId
  = lens _aaMerchantId (\ s a -> s{_aaMerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account shipping
-- settings.
aaAccountId :: Lens' AccountshippingCustomBatchRequestEntry (Maybe Word64)
aaAccountId
  = lens _aaAccountId (\ s a -> s{_aaAccountId = a}) .
      mapping _Coerce

aaMethod :: Lens' AccountshippingCustomBatchRequestEntry (Maybe Text)
aaMethod = lens _aaMethod (\ s a -> s{_aaMethod = a})

-- | The account shipping settings to update. Only defined if the method is
-- update.
aaAccountShipping :: Lens' AccountshippingCustomBatchRequestEntry (Maybe AccountShipping)
aaAccountShipping
  = lens _aaAccountShipping
      (\ s a -> s{_aaAccountShipping = a})

-- | An entry ID, unique within the batch request.
aaBatchId :: Lens' AccountshippingCustomBatchRequestEntry (Maybe Word32)
aaBatchId
  = lens _aaBatchId (\ s a -> s{_aaBatchId = a}) .
      mapping _Coerce

instance FromJSON
         AccountshippingCustomBatchRequestEntry where
        parseJSON
          = withObject "AccountshippingCustomBatchRequestEntry"
              (\ o ->
                 AccountshippingCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "accountId") <*>
                     (o .:? "method")
                     <*> (o .:? "accountShipping")
                     <*> (o .:? "batchId"))

instance ToJSON
         AccountshippingCustomBatchRequestEntry where
        toJSON AccountshippingCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _aaMerchantId,
                  ("accountId" .=) <$> _aaAccountId,
                  ("method" .=) <$> _aaMethod,
                  ("accountShipping" .=) <$> _aaAccountShipping,
                  ("batchId" .=) <$> _aaBatchId])

--
-- /See:/ 'accountsCustomBatchRequest' smart constructor.
newtype AccountsCustomBatchRequest = AccountsCustomBatchRequest
    { _accEntries :: Maybe [AccountsCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'accEntries'
accountsCustomBatchRequest
    :: AccountsCustomBatchRequest
accountsCustomBatchRequest =
    AccountsCustomBatchRequest
    { _accEntries = Nothing
    }

-- | The request entries to be processed in the batch.
accEntries :: Lens' AccountsCustomBatchRequest [AccountsCustomBatchRequestEntry]
accEntries
  = lens _accEntries (\ s a -> s{_accEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccountsCustomBatchRequest where
        parseJSON
          = withObject "AccountsCustomBatchRequest"
              (\ o ->
                 AccountsCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccountsCustomBatchRequest where
        toJSON AccountsCustomBatchRequest{..}
          = object (catMaybes [("entries" .=) <$> _accEntries])

--
-- /See:/ 'productCustomAttribute' smart constructor.
data ProductCustomAttribute = ProductCustomAttribute
    { _pcaValue :: !(Maybe Text)
    , _pcaName  :: !(Maybe Text)
    , _pcaType  :: !(Maybe Text)
    , _pcaUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductCustomAttribute' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcaValue'
--
-- * 'pcaName'
--
-- * 'pcaType'
--
-- * 'pcaUnit'
productCustomAttribute
    :: ProductCustomAttribute
productCustomAttribute =
    ProductCustomAttribute
    { _pcaValue = Nothing
    , _pcaName = Nothing
    , _pcaType = Nothing
    , _pcaUnit = Nothing
    }

-- | The value of the attribute.
pcaValue :: Lens' ProductCustomAttribute (Maybe Text)
pcaValue = lens _pcaValue (\ s a -> s{_pcaValue = a})

-- | The name of the attribute. Underscores will be replaced by spaces upon
-- insertion.
pcaName :: Lens' ProductCustomAttribute (Maybe Text)
pcaName = lens _pcaName (\ s a -> s{_pcaName = a})

-- | The type of the attribute.
pcaType :: Lens' ProductCustomAttribute (Maybe Text)
pcaType = lens _pcaType (\ s a -> s{_pcaType = a})

-- | Free-form unit of the attribute. Unit can only be used for values of
-- type INT or FLOAT.
pcaUnit :: Lens' ProductCustomAttribute (Maybe Text)
pcaUnit = lens _pcaUnit (\ s a -> s{_pcaUnit = a})

instance FromJSON ProductCustomAttribute where
        parseJSON
          = withObject "ProductCustomAttribute"
              (\ o ->
                 ProductCustomAttribute <$>
                   (o .:? "value") <*> (o .:? "name") <*> (o .:? "type")
                     <*> (o .:? "unit"))

instance ToJSON ProductCustomAttribute where
        toJSON ProductCustomAttribute{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pcaValue,
                  ("name" .=) <$> _pcaName, ("type" .=) <$> _pcaType,
                  ("unit" .=) <$> _pcaUnit])

-- | A postal code range, that can be either: - A range of postal codes
-- (e.g., start=12340, end=12359) - A range of postal codes prefixes (e.g.,
-- start=1234* end=1235*). Prefixes must be of the same length (e.g.,
-- start=12* end=2* is invalid).
--
-- /See:/ 'accountShippingPostalCodeRange' smart constructor.
data AccountShippingPostalCodeRange = AccountShippingPostalCodeRange
    { _aspcrStart :: !(Maybe Text)
    , _aspcrEnd   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingPostalCodeRange' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aspcrStart'
--
-- * 'aspcrEnd'
accountShippingPostalCodeRange
    :: AccountShippingPostalCodeRange
accountShippingPostalCodeRange =
    AccountShippingPostalCodeRange
    { _aspcrStart = Nothing
    , _aspcrEnd = Nothing
    }

-- | The first (inclusive) postal code or prefix of the range.
aspcrStart :: Lens' AccountShippingPostalCodeRange (Maybe Text)
aspcrStart
  = lens _aspcrStart (\ s a -> s{_aspcrStart = a})

-- | The last (inclusive) postal code or prefix of the range.
aspcrEnd :: Lens' AccountShippingPostalCodeRange (Maybe Text)
aspcrEnd = lens _aspcrEnd (\ s a -> s{_aspcrEnd = a})

instance FromJSON AccountShippingPostalCodeRange
         where
        parseJSON
          = withObject "AccountShippingPostalCodeRange"
              (\ o ->
                 AccountShippingPostalCodeRange <$>
                   (o .:? "start") <*> (o .:? "end"))

instance ToJSON AccountShippingPostalCodeRange where
        toJSON AccountShippingPostalCodeRange{..}
          = object
              (catMaybes
                 [("start" .=) <$> _aspcrStart,
                  ("end" .=) <$> _aspcrEnd])

--
-- /See:/ 'ordersListResponse' smart constructor.
data OrdersListResponse = OrdersListResponse
    { _olrNextPageToken :: !(Maybe Text)
    , _olrKind          :: !Text
    , _olrResources     :: !(Maybe [Order])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olrNextPageToken'
--
-- * 'olrKind'
--
-- * 'olrResources'
ordersListResponse
    :: OrdersListResponse
ordersListResponse =
    OrdersListResponse
    { _olrNextPageToken = Nothing
    , _olrKind = "content#ordersListResponse"
    , _olrResources = Nothing
    }

-- | The token for the retrieval of the next page of orders.
olrNextPageToken :: Lens' OrdersListResponse (Maybe Text)
olrNextPageToken
  = lens _olrNextPageToken
      (\ s a -> s{_olrNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersListResponse\".
olrKind :: Lens' OrdersListResponse Text
olrKind = lens _olrKind (\ s a -> s{_olrKind = a})

olrResources :: Lens' OrdersListResponse [Order]
olrResources
  = lens _olrResources (\ s a -> s{_olrResources = a})
      . _Default
      . _Coerce

instance FromJSON OrdersListResponse where
        parseJSON
          = withObject "OrdersListResponse"
              (\ o ->
                 OrdersListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#ordersListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON OrdersListResponse where
        toJSON OrdersListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _olrNextPageToken,
                  Just ("kind" .= _olrKind),
                  ("resources" .=) <$> _olrResources])

--
-- /See:/ 'ordersShipLineItemsResponse' smart constructor.
data OrdersShipLineItemsResponse = OrdersShipLineItemsResponse
    { _oslirKind            :: !Text
    , _oslirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersShipLineItemsResponse
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
                 OrdersShipLineItemsResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersShipLineItemsResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersShipLineItemsResponse where
        toJSON OrdersShipLineItemsResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oslirKind),
                  ("executionStatus" .=) <$> _oslirExecutionStatus])

-- | Shipping services provided in a country.
--
-- /See:/ 'accountShippingShippingService' smart constructor.
data AccountShippingShippingService = AccountShippingShippingService
    { _asssCostRuleTree      :: !(Maybe AccountShippingShippingServiceCostRule)
    , _asssSaleCountry       :: !(Maybe Text)
    , _asssCalculationMethod :: !(Maybe AccountShippingShippingServiceCalculationMethod)
    , _asssActive            :: !(Maybe Bool)
    , _asssName              :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingShippingService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asssCostRuleTree'
--
-- * 'asssSaleCountry'
--
-- * 'asssCalculationMethod'
--
-- * 'asssActive'
--
-- * 'asssName'
accountShippingShippingService
    :: AccountShippingShippingService
accountShippingShippingService =
    AccountShippingShippingService
    { _asssCostRuleTree = Nothing
    , _asssSaleCountry = Nothing
    , _asssCalculationMethod = Nothing
    , _asssActive = Nothing
    , _asssName = Nothing
    }

-- | Decision tree for \"complicated\" shipping cost calculation.
asssCostRuleTree :: Lens' AccountShippingShippingService (Maybe AccountShippingShippingServiceCostRule)
asssCostRuleTree
  = lens _asssCostRuleTree
      (\ s a -> s{_asssCostRuleTree = a})

-- | The CLDR territory code of the sale country for which this service can
-- be used.
asssSaleCountry :: Lens' AccountShippingShippingService (Maybe Text)
asssSaleCountry
  = lens _asssSaleCountry
      (\ s a -> s{_asssSaleCountry = a})

-- | Calculation method for the \"simple\" case that needs no rules.
asssCalculationMethod :: Lens' AccountShippingShippingService (Maybe AccountShippingShippingServiceCalculationMethod)
asssCalculationMethod
  = lens _asssCalculationMethod
      (\ s a -> s{_asssCalculationMethod = a})

-- | Whether the shipping service is available.
asssActive :: Lens' AccountShippingShippingService (Maybe Bool)
asssActive
  = lens _asssActive (\ s a -> s{_asssActive = a})

-- | The name of this shipping service.
asssName :: Lens' AccountShippingShippingService (Maybe Text)
asssName = lens _asssName (\ s a -> s{_asssName = a})

instance FromJSON AccountShippingShippingService
         where
        parseJSON
          = withObject "AccountShippingShippingService"
              (\ o ->
                 AccountShippingShippingService <$>
                   (o .:? "costRuleTree") <*> (o .:? "saleCountry") <*>
                     (o .:? "calculationMethod")
                     <*> (o .:? "active")
                     <*> (o .:? "name"))

instance ToJSON AccountShippingShippingService where
        toJSON AccountShippingShippingService{..}
          = object
              (catMaybes
                 [("costRuleTree" .=) <$> _asssCostRuleTree,
                  ("saleCountry" .=) <$> _asssSaleCountry,
                  ("calculationMethod" .=) <$> _asssCalculationMethod,
                  ("active" .=) <$> _asssActive,
                  ("name" .=) <$> _asssName])

-- | A single or bi-dimensional table of shipping rates. Each dimension is
-- defined in terms of consecutive price\/weight ranges, delivery
-- locations, or shipping labels.
--
-- /See:/ 'accountShippingRateTable' smart constructor.
data AccountShippingRateTable = AccountShippingRateTable
    { _asrtSaleCountry :: !(Maybe Text)
    , _asrtContent     :: !(Maybe [AccountShippingRateTableCell])
    , _asrtName        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingRateTable' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asrtSaleCountry'
--
-- * 'asrtContent'
--
-- * 'asrtName'
accountShippingRateTable
    :: AccountShippingRateTable
accountShippingRateTable =
    AccountShippingRateTable
    { _asrtSaleCountry = Nothing
    , _asrtContent = Nothing
    , _asrtName = Nothing
    }

-- | The sale country for which this table is valid, represented as a CLDR
-- territory code.
asrtSaleCountry :: Lens' AccountShippingRateTable (Maybe Text)
asrtSaleCountry
  = lens _asrtSaleCountry
      (\ s a -> s{_asrtSaleCountry = a})

-- | One-dimensional table cells define one condition along the same
-- dimension. Bi-dimensional table cells use two dimensions with
-- respectively M and N distinct values and must contain exactly M * N
-- cells with distinct conditions (for each possible value pairs).
asrtContent :: Lens' AccountShippingRateTable [AccountShippingRateTableCell]
asrtContent
  = lens _asrtContent (\ s a -> s{_asrtContent = a}) .
      _Default
      . _Coerce

-- | The name of the rate table.
asrtName :: Lens' AccountShippingRateTable (Maybe Text)
asrtName = lens _asrtName (\ s a -> s{_asrtName = a})

instance FromJSON AccountShippingRateTable where
        parseJSON
          = withObject "AccountShippingRateTable"
              (\ o ->
                 AccountShippingRateTable <$>
                   (o .:? "saleCountry") <*>
                     (o .:? "content" .!= mempty)
                     <*> (o .:? "name"))

instance ToJSON AccountShippingRateTable where
        toJSON AccountShippingRateTable{..}
          = object
              (catMaybes
                 [("saleCountry" .=) <$> _asrtSaleCountry,
                  ("content" .=) <$> _asrtContent,
                  ("name" .=) <$> _asrtName])

--
-- /See:/ 'accountshippingCustomBatchResponse' smart constructor.
data AccountshippingCustomBatchResponse = AccountshippingCustomBatchResponse
    { _acccEntries :: !(Maybe [AccountshippingCustomBatchResponseEntry])
    , _acccKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccEntries'
--
-- * 'acccKind'
accountshippingCustomBatchResponse
    :: AccountshippingCustomBatchResponse
accountshippingCustomBatchResponse =
    AccountshippingCustomBatchResponse
    { _acccEntries = Nothing
    , _acccKind = "content#accountshippingCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
acccEntries :: Lens' AccountshippingCustomBatchResponse [AccountshippingCustomBatchResponseEntry]
acccEntries
  = lens _acccEntries (\ s a -> s{_acccEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountshippingCustomBatchResponse\".
acccKind :: Lens' AccountshippingCustomBatchResponse Text
acccKind = lens _acccKind (\ s a -> s{_acccKind = a})

instance FromJSON AccountshippingCustomBatchResponse
         where
        parseJSON
          = withObject "AccountshippingCustomBatchResponse"
              (\ o ->
                 AccountshippingCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accountshippingCustomBatchResponse"))

instance ToJSON AccountshippingCustomBatchResponse
         where
        toJSON AccountshippingCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acccEntries,
                  Just ("kind" .= _acccKind)])

--
-- /See:/ 'ordersUpdateShipmentResponse' smart constructor.
data OrdersUpdateShipmentResponse = OrdersUpdateShipmentResponse
    { _ousrKind            :: !Text
    , _ousrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersUpdateShipmentResponse
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
                 OrdersUpdateShipmentResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersUpdateShipmentResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateShipmentResponse where
        toJSON OrdersUpdateShipmentResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ousrKind),
                  ("executionStatus" .=) <$> _ousrExecutionStatus])

--
-- /See:/ 'productstatusesCustomBatchRequest' smart constructor.
newtype ProductstatusesCustomBatchRequest = ProductstatusesCustomBatchRequest
    { _proEntries :: Maybe [ProductstatusesCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proEntries'
productstatusesCustomBatchRequest
    :: ProductstatusesCustomBatchRequest
productstatusesCustomBatchRequest =
    ProductstatusesCustomBatchRequest
    { _proEntries = Nothing
    }

-- | The request entries to be processed in the batch.
proEntries :: Lens' ProductstatusesCustomBatchRequest [ProductstatusesCustomBatchRequestEntry]
proEntries
  = lens _proEntries (\ s a -> s{_proEntries = a}) .
      _Default
      . _Coerce

instance FromJSON ProductstatusesCustomBatchRequest
         where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequest"
              (\ o ->
                 ProductstatusesCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductstatusesCustomBatchRequest
         where
        toJSON ProductstatusesCustomBatchRequest{..}
          = object (catMaybes [("entries" .=) <$> _proEntries])

--
-- /See:/ 'ordersReturnLineItemResponse' smart constructor.
data OrdersReturnLineItemResponse = OrdersReturnLineItemResponse
    { _orlirKind            :: !Text
    , _orlirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersReturnLineItemResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'orlirKind'
--
-- * 'orlirExecutionStatus'
ordersReturnLineItemResponse
    :: OrdersReturnLineItemResponse
ordersReturnLineItemResponse =
    OrdersReturnLineItemResponse
    { _orlirKind = "content#ordersReturnLineItemResponse"
    , _orlirExecutionStatus = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersReturnLineItemResponse\".
orlirKind :: Lens' OrdersReturnLineItemResponse Text
orlirKind
  = lens _orlirKind (\ s a -> s{_orlirKind = a})

-- | The status of the execution.
orlirExecutionStatus :: Lens' OrdersReturnLineItemResponse (Maybe Text)
orlirExecutionStatus
  = lens _orlirExecutionStatus
      (\ s a -> s{_orlirExecutionStatus = a})

instance FromJSON OrdersReturnLineItemResponse where
        parseJSON
          = withObject "OrdersReturnLineItemResponse"
              (\ o ->
                 OrdersReturnLineItemResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersReturnLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersReturnLineItemResponse where
        toJSON OrdersReturnLineItemResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _orlirKind),
                  ("executionStatus" .=) <$> _orlirExecutionStatus])

--
-- /See:/ 'productCustomGroup' smart constructor.
data ProductCustomGroup = ProductCustomGroup
    { _pcgName       :: !(Maybe Text)
    , _pcgAttributes :: !(Maybe [ProductCustomAttribute])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductCustomGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcgName'
--
-- * 'pcgAttributes'
productCustomGroup
    :: ProductCustomGroup
productCustomGroup =
    ProductCustomGroup
    { _pcgName = Nothing
    , _pcgAttributes = Nothing
    }

-- | The name of the group. Underscores will be replaced by spaces upon
-- insertion.
pcgName :: Lens' ProductCustomGroup (Maybe Text)
pcgName = lens _pcgName (\ s a -> s{_pcgName = a})

-- | The sub-attributes.
pcgAttributes :: Lens' ProductCustomGroup [ProductCustomAttribute]
pcgAttributes
  = lens _pcgAttributes
      (\ s a -> s{_pcgAttributes = a})
      . _Default
      . _Coerce

instance FromJSON ProductCustomGroup where
        parseJSON
          = withObject "ProductCustomGroup"
              (\ o ->
                 ProductCustomGroup <$>
                   (o .:? "name") <*> (o .:? "attributes" .!= mempty))

instance ToJSON ProductCustomGroup where
        toJSON ProductCustomGroup{..}
          = object
              (catMaybes
                 [("name" .=) <$> _pcgName,
                  ("attributes" .=) <$> _pcgAttributes])

--
-- /See:/ 'accountstatusesCustomBatchResponse' smart constructor.
data AccountstatusesCustomBatchResponse = AccountstatusesCustomBatchResponse
    { _acbr1Entries :: !(Maybe [AccountstatusesCustomBatchResponseEntry])
    , _acbr1Kind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbr1Entries'
--
-- * 'acbr1Kind'
accountstatusesCustomBatchResponse
    :: AccountstatusesCustomBatchResponse
accountstatusesCustomBatchResponse =
    AccountstatusesCustomBatchResponse
    { _acbr1Entries = Nothing
    , _acbr1Kind = "content#accountstatusesCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
acbr1Entries :: Lens' AccountstatusesCustomBatchResponse [AccountstatusesCustomBatchResponseEntry]
acbr1Entries
  = lens _acbr1Entries (\ s a -> s{_acbr1Entries = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesCustomBatchResponse\".
acbr1Kind :: Lens' AccountstatusesCustomBatchResponse Text
acbr1Kind
  = lens _acbr1Kind (\ s a -> s{_acbr1Kind = a})

instance FromJSON AccountstatusesCustomBatchResponse
         where
        parseJSON
          = withObject "AccountstatusesCustomBatchResponse"
              (\ o ->
                 AccountstatusesCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accountstatusesCustomBatchResponse"))

instance ToJSON AccountstatusesCustomBatchResponse
         where
        toJSON AccountstatusesCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _acbr1Entries,
                  Just ("kind" .= _acbr1Kind)])

-- | The status of a product, i.e., information about a product computed
-- asynchronously by the data quality analysis.
--
-- /See:/ 'productStatus' smart constructor.
data ProductStatus = ProductStatus
    { _psDataQualityIssues    :: !(Maybe [ProductStatusDataQualityIssue])
    , _psKind                 :: !Text
    , _psLink                 :: !(Maybe Text)
    , _psDestinationStatuses  :: !(Maybe [ProductStatusDestinationStatus])
    , _psLastUpdateDate       :: !(Maybe Text)
    , _psCreationDate         :: !(Maybe Text)
    , _psTitle                :: !(Maybe Text)
    , _psGoogleExpirationDate :: !(Maybe Text)
    , _psProductId            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psDataQualityIssues'
--
-- * 'psKind'
--
-- * 'psLink'
--
-- * 'psDestinationStatuses'
--
-- * 'psLastUpdateDate'
--
-- * 'psCreationDate'
--
-- * 'psTitle'
--
-- * 'psGoogleExpirationDate'
--
-- * 'psProductId'
productStatus
    :: ProductStatus
productStatus =
    ProductStatus
    { _psDataQualityIssues = Nothing
    , _psKind = "content#productStatus"
    , _psLink = Nothing
    , _psDestinationStatuses = Nothing
    , _psLastUpdateDate = Nothing
    , _psCreationDate = Nothing
    , _psTitle = Nothing
    , _psGoogleExpirationDate = Nothing
    , _psProductId = Nothing
    }

-- | A list of data quality issues associated with the product.
psDataQualityIssues :: Lens' ProductStatus [ProductStatusDataQualityIssue]
psDataQualityIssues
  = lens _psDataQualityIssues
      (\ s a -> s{_psDataQualityIssues = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productStatus\".
psKind :: Lens' ProductStatus Text
psKind = lens _psKind (\ s a -> s{_psKind = a})

-- | The link to the product.
psLink :: Lens' ProductStatus (Maybe Text)
psLink = lens _psLink (\ s a -> s{_psLink = a})

-- | The intended destinations for the product.
psDestinationStatuses :: Lens' ProductStatus [ProductStatusDestinationStatus]
psDestinationStatuses
  = lens _psDestinationStatuses
      (\ s a -> s{_psDestinationStatuses = a})
      . _Default
      . _Coerce

-- | Date on which the item has been last updated, in ISO 8601 format.
psLastUpdateDate :: Lens' ProductStatus (Maybe Text)
psLastUpdateDate
  = lens _psLastUpdateDate
      (\ s a -> s{_psLastUpdateDate = a})

-- | Date on which the item has been created, in ISO 8601 format.
psCreationDate :: Lens' ProductStatus (Maybe Text)
psCreationDate
  = lens _psCreationDate
      (\ s a -> s{_psCreationDate = a})

-- | The title of the product.
psTitle :: Lens' ProductStatus (Maybe Text)
psTitle = lens _psTitle (\ s a -> s{_psTitle = a})

-- | Date on which the item expires in Google Shopping, in ISO 8601 format.
psGoogleExpirationDate :: Lens' ProductStatus (Maybe Text)
psGoogleExpirationDate
  = lens _psGoogleExpirationDate
      (\ s a -> s{_psGoogleExpirationDate = a})

-- | The id of the product for which status is reported.
psProductId :: Lens' ProductStatus (Maybe Text)
psProductId
  = lens _psProductId (\ s a -> s{_psProductId = a})

instance FromJSON ProductStatus where
        parseJSON
          = withObject "ProductStatus"
              (\ o ->
                 ProductStatus <$>
                   (o .:? "dataQualityIssues" .!= mempty) <*>
                     (o .:? "kind" .!= "content#productStatus")
                     <*> (o .:? "link")
                     <*> (o .:? "destinationStatuses" .!= mempty)
                     <*> (o .:? "lastUpdateDate")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "title")
                     <*> (o .:? "googleExpirationDate")
                     <*> (o .:? "productId"))

instance ToJSON ProductStatus where
        toJSON ProductStatus{..}
          = object
              (catMaybes
                 [("dataQualityIssues" .=) <$> _psDataQualityIssues,
                  Just ("kind" .= _psKind), ("link" .=) <$> _psLink,
                  ("destinationStatuses" .=) <$>
                    _psDestinationStatuses,
                  ("lastUpdateDate" .=) <$> _psLastUpdateDate,
                  ("creationDate" .=) <$> _psCreationDate,
                  ("title" .=) <$> _psTitle,
                  ("googleExpirationDate" .=) <$>
                    _psGoogleExpirationDate,
                  ("productId" .=) <$> _psProductId])

--
-- /See:/ 'accountstatusesListResponse' smart constructor.
data AccountstatusesListResponse = AccountstatusesListResponse
    { _alrlNextPageToken :: !(Maybe Text)
    , _alrlKind          :: !Text
    , _alrlResources     :: !(Maybe [AccountStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrlNextPageToken'
--
-- * 'alrlKind'
--
-- * 'alrlResources'
accountstatusesListResponse
    :: AccountstatusesListResponse
accountstatusesListResponse =
    AccountstatusesListResponse
    { _alrlNextPageToken = Nothing
    , _alrlKind = "content#accountstatusesListResponse"
    , _alrlResources = Nothing
    }

-- | The token for the retrieval of the next page of account statuses.
alrlNextPageToken :: Lens' AccountstatusesListResponse (Maybe Text)
alrlNextPageToken
  = lens _alrlNextPageToken
      (\ s a -> s{_alrlNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountstatusesListResponse\".
alrlKind :: Lens' AccountstatusesListResponse Text
alrlKind = lens _alrlKind (\ s a -> s{_alrlKind = a})

alrlResources :: Lens' AccountstatusesListResponse [AccountStatus]
alrlResources
  = lens _alrlResources
      (\ s a -> s{_alrlResources = a})
      . _Default
      . _Coerce

instance FromJSON AccountstatusesListResponse where
        parseJSON
          = withObject "AccountstatusesListResponse"
              (\ o ->
                 AccountstatusesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#accountstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccountstatusesListResponse where
        toJSON AccountstatusesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alrlNextPageToken,
                  Just ("kind" .= _alrlKind),
                  ("resources" .=) <$> _alrlResources])

--
-- /See:/ 'accounttaxCustomBatchRequest' smart constructor.
newtype AccounttaxCustomBatchRequest = AccounttaxCustomBatchRequest
    { _aaEntries :: Maybe [AccounttaxCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaEntries'
accounttaxCustomBatchRequest
    :: AccounttaxCustomBatchRequest
accounttaxCustomBatchRequest =
    AccounttaxCustomBatchRequest
    { _aaEntries = Nothing
    }

-- | The request entries to be processed in the batch.
aaEntries :: Lens' AccounttaxCustomBatchRequest [AccounttaxCustomBatchRequestEntry]
aaEntries
  = lens _aaEntries (\ s a -> s{_aaEntries = a}) .
      _Default
      . _Coerce

instance FromJSON AccounttaxCustomBatchRequest where
        parseJSON
          = withObject "AccounttaxCustomBatchRequest"
              (\ o ->
                 AccounttaxCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON AccounttaxCustomBatchRequest where
        toJSON AccounttaxCustomBatchRequest{..}
          = object (catMaybes [("entries" .=) <$> _aaEntries])

-- | A batch entry encoding a single non-batch products request.
--
-- /See:/ 'productsCustomBatchRequestEntry' smart constructor.
data ProductsCustomBatchRequestEntry = ProductsCustomBatchRequestEntry
    { _pMerchantId :: !(Maybe (Textual Word64))
    , _pMethod     :: !(Maybe Text)
    , _pProduct    :: !(Maybe Product)
    , _pProductId  :: !(Maybe Text)
    , _pBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pMerchantId'
--
-- * 'pMethod'
--
-- * 'pProduct'
--
-- * 'pProductId'
--
-- * 'pBatchId'
productsCustomBatchRequestEntry
    :: ProductsCustomBatchRequestEntry
productsCustomBatchRequestEntry =
    ProductsCustomBatchRequestEntry
    { _pMerchantId = Nothing
    , _pMethod = Nothing
    , _pProduct = Nothing
    , _pProductId = Nothing
    , _pBatchId = Nothing
    }

-- | The ID of the managing account.
pMerchantId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word64)
pMerchantId
  = lens _pMerchantId (\ s a -> s{_pMerchantId = a}) .
      mapping _Coerce

pMethod :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
pMethod = lens _pMethod (\ s a -> s{_pMethod = a})

-- | The product to insert. Only required if the method is insert.
pProduct :: Lens' ProductsCustomBatchRequestEntry (Maybe Product)
pProduct = lens _pProduct (\ s a -> s{_pProduct = a})

-- | The ID of the product to get or delete. Only defined if the method is
-- get or delete.
pProductId :: Lens' ProductsCustomBatchRequestEntry (Maybe Text)
pProductId
  = lens _pProductId (\ s a -> s{_pProductId = a})

-- | An entry ID, unique within the batch request.
pBatchId :: Lens' ProductsCustomBatchRequestEntry (Maybe Word32)
pBatchId
  = lens _pBatchId (\ s a -> s{_pBatchId = a}) .
      mapping _Coerce

instance FromJSON ProductsCustomBatchRequestEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchRequestEntry"
              (\ o ->
                 ProductsCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "method") <*>
                     (o .:? "product")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchRequestEntry where
        toJSON ProductsCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _pMerchantId,
                  ("method" .=) <$> _pMethod,
                  ("product" .=) <$> _pProduct,
                  ("productId" .=) <$> _pProductId,
                  ("batchId" .=) <$> _pBatchId])

-- | A batch entry encoding a single non-batch datafeedstatuses request.
--
-- /See:/ 'datafeedstatusesCustomBatchRequestEntry' smart constructor.
data DatafeedstatusesCustomBatchRequestEntry = DatafeedstatusesCustomBatchRequestEntry
    { _dMerchantId :: !(Maybe (Textual Word64))
    , _dMethod     :: !(Maybe Text)
    , _dDatafeedId :: !(Maybe (Textual Word64))
    , _dBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dMerchantId'
--
-- * 'dMethod'
--
-- * 'dDatafeedId'
--
-- * 'dBatchId'
datafeedstatusesCustomBatchRequestEntry
    :: DatafeedstatusesCustomBatchRequestEntry
datafeedstatusesCustomBatchRequestEntry =
    DatafeedstatusesCustomBatchRequestEntry
    { _dMerchantId = Nothing
    , _dMethod = Nothing
    , _dDatafeedId = Nothing
    , _dBatchId = Nothing
    }

-- | The ID of the managing account.
dMerchantId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dMerchantId
  = lens _dMerchantId (\ s a -> s{_dMerchantId = a}) .
      mapping _Coerce

dMethod :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Text)
dMethod = lens _dMethod (\ s a -> s{_dMethod = a})

-- | The ID of the data feed to get or delete.
dDatafeedId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word64)
dDatafeedId
  = lens _dDatafeedId (\ s a -> s{_dDatafeedId = a}) .
      mapping _Coerce

-- | An entry ID, unique within the batch request.
dBatchId :: Lens' DatafeedstatusesCustomBatchRequestEntry (Maybe Word32)
dBatchId
  = lens _dBatchId (\ s a -> s{_dBatchId = a}) .
      mapping _Coerce

instance FromJSON
         DatafeedstatusesCustomBatchRequestEntry where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchRequestEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "method") <*>
                     (o .:? "datafeedId")
                     <*> (o .:? "batchId"))

instance ToJSON
         DatafeedstatusesCustomBatchRequestEntry where
        toJSON DatafeedstatusesCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _dMerchantId,
                  ("method" .=) <$> _dMethod,
                  ("datafeedId" .=) <$> _dDatafeedId,
                  ("batchId" .=) <$> _dBatchId])

--
-- /See:/ 'orderCustomer' smart constructor.
data OrderCustomer = OrderCustomer
    { _ocFullName                    :: !(Maybe Text)
    , _ocEmail                       :: !(Maybe Text)
    , _ocExplicitMarketingPreference :: !(Maybe Bool)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderCustomer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocFullName'
--
-- * 'ocEmail'
--
-- * 'ocExplicitMarketingPreference'
orderCustomer
    :: OrderCustomer
orderCustomer =
    OrderCustomer
    { _ocFullName = Nothing
    , _ocEmail = Nothing
    , _ocExplicitMarketingPreference = Nothing
    }

-- | Full name of the customer.
ocFullName :: Lens' OrderCustomer (Maybe Text)
ocFullName
  = lens _ocFullName (\ s a -> s{_ocFullName = a})

-- | Email address of the customer.
ocEmail :: Lens' OrderCustomer (Maybe Text)
ocEmail = lens _ocEmail (\ s a -> s{_ocEmail = a})

-- | If set, this indicates the user had a choice to opt in or out of
-- providing marketing rights to the merchant. If unset, this indicates the
-- user has already made this choice in a previous purchase, and was thus
-- not shown the marketing right opt in\/out checkbox during the Purchases
-- on Google checkout flow.
ocExplicitMarketingPreference :: Lens' OrderCustomer (Maybe Bool)
ocExplicitMarketingPreference
  = lens _ocExplicitMarketingPreference
      (\ s a -> s{_ocExplicitMarketingPreference = a})

instance FromJSON OrderCustomer where
        parseJSON
          = withObject "OrderCustomer"
              (\ o ->
                 OrderCustomer <$>
                   (o .:? "fullName") <*> (o .:? "email") <*>
                     (o .:? "explicitMarketingPreference"))

instance ToJSON OrderCustomer where
        toJSON OrderCustomer{..}
          = object
              (catMaybes
                 [("fullName" .=) <$> _ocFullName,
                  ("email" .=) <$> _ocEmail,
                  ("explicitMarketingPreference" .=) <$>
                    _ocExplicitMarketingPreference])

-- | A batch entry encoding a single non-batch inventory response.
--
-- /See:/ 'inventoryCustomBatchResponseEntry' smart constructor.
data InventoryCustomBatchResponseEntry = InventoryCustomBatchResponseEntry
    { _icbreKind    :: !Text
    , _icbreErrors  :: !(Maybe Errors)
    , _icbreBatchId :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icbreKind'
--
-- * 'icbreErrors'
--
-- * 'icbreBatchId'
inventoryCustomBatchResponseEntry
    :: InventoryCustomBatchResponseEntry
inventoryCustomBatchResponseEntry =
    InventoryCustomBatchResponseEntry
    { _icbreKind = "content#inventoryCustomBatchResponseEntry"
    , _icbreErrors = Nothing
    , _icbreBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#inventoryCustomBatchResponseEntry\".
icbreKind :: Lens' InventoryCustomBatchResponseEntry Text
icbreKind
  = lens _icbreKind (\ s a -> s{_icbreKind = a})

-- | A list of errors defined if and only if the request failed.
icbreErrors :: Lens' InventoryCustomBatchResponseEntry (Maybe Errors)
icbreErrors
  = lens _icbreErrors (\ s a -> s{_icbreErrors = a})

-- | The ID of the request entry this entry responds to.
icbreBatchId :: Lens' InventoryCustomBatchResponseEntry (Maybe Word32)
icbreBatchId
  = lens _icbreBatchId (\ s a -> s{_icbreBatchId = a})
      . mapping _Coerce

instance FromJSON InventoryCustomBatchResponseEntry
         where
        parseJSON
          = withObject "InventoryCustomBatchResponseEntry"
              (\ o ->
                 InventoryCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#inventoryCustomBatchResponseEntry")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON InventoryCustomBatchResponseEntry
         where
        toJSON InventoryCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _icbreKind),
                  ("errors" .=) <$> _icbreErrors,
                  ("batchId" .=) <$> _icbreBatchId])

--
-- /See:/ 'accountshippingListResponse' smart constructor.
data AccountshippingListResponse = AccountshippingListResponse
    { _alr1NextPageToken :: !(Maybe Text)
    , _alr1Kind          :: !Text
    , _alr1Resources     :: !(Maybe [AccountShipping])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alr1NextPageToken'
--
-- * 'alr1Kind'
--
-- * 'alr1Resources'
accountshippingListResponse
    :: AccountshippingListResponse
accountshippingListResponse =
    AccountshippingListResponse
    { _alr1NextPageToken = Nothing
    , _alr1Kind = "content#accountshippingListResponse"
    , _alr1Resources = Nothing
    }

-- | The token for the retrieval of the next page of account shipping
-- settings.
alr1NextPageToken :: Lens' AccountshippingListResponse (Maybe Text)
alr1NextPageToken
  = lens _alr1NextPageToken
      (\ s a -> s{_alr1NextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountshippingListResponse\".
alr1Kind :: Lens' AccountshippingListResponse Text
alr1Kind = lens _alr1Kind (\ s a -> s{_alr1Kind = a})

alr1Resources :: Lens' AccountshippingListResponse [AccountShipping]
alr1Resources
  = lens _alr1Resources
      (\ s a -> s{_alr1Resources = a})
      . _Default
      . _Coerce

instance FromJSON AccountshippingListResponse where
        parseJSON
          = withObject "AccountshippingListResponse"
              (\ o ->
                 AccountshippingListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#accountshippingListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON AccountshippingListResponse where
        toJSON AccountshippingListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _alr1NextPageToken,
                  Just ("kind" .= _alr1Kind),
                  ("resources" .=) <$> _alr1Resources])

--
-- /See:/ 'inventory' smart constructor.
data Inventory = Inventory
    { _iLoyaltyPoints          :: !(Maybe LoyaltyPoints)
    , _iKind                   :: !Text
    , _iQuantity               :: !(Maybe (Textual Word32))
    , _iInstallment            :: !(Maybe Installment)
    , _iSalePrice              :: !(Maybe Price)
    , _iAvailability           :: !(Maybe Text)
    , _iSalePriceEffectiveDate :: !(Maybe Text)
    , _iSellOnGoogleQuantity   :: !(Maybe (Textual Word32))
    , _iPrice                  :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Inventory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iLoyaltyPoints'
--
-- * 'iKind'
--
-- * 'iQuantity'
--
-- * 'iInstallment'
--
-- * 'iSalePrice'
--
-- * 'iAvailability'
--
-- * 'iSalePriceEffectiveDate'
--
-- * 'iSellOnGoogleQuantity'
--
-- * 'iPrice'
inventory
    :: Inventory
inventory =
    Inventory
    { _iLoyaltyPoints = Nothing
    , _iKind = "content#inventory"
    , _iQuantity = Nothing
    , _iInstallment = Nothing
    , _iSalePrice = Nothing
    , _iAvailability = Nothing
    , _iSalePriceEffectiveDate = Nothing
    , _iSellOnGoogleQuantity = Nothing
    , _iPrice = Nothing
    }

-- | Loyalty points that users receive after purchasing the item. Japan only.
iLoyaltyPoints :: Lens' Inventory (Maybe LoyaltyPoints)
iLoyaltyPoints
  = lens _iLoyaltyPoints
      (\ s a -> s{_iLoyaltyPoints = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#inventory\".
iKind :: Lens' Inventory Text
iKind = lens _iKind (\ s a -> s{_iKind = a})

-- | The quantity of the product. Must be equal to or greater than zero.
-- Supported only for local products.
iQuantity :: Lens' Inventory (Maybe Word32)
iQuantity
  = lens _iQuantity (\ s a -> s{_iQuantity = a}) .
      mapping _Coerce

-- | Number and amount of installments to pay for an item. Brazil only.
iInstallment :: Lens' Inventory (Maybe Installment)
iInstallment
  = lens _iInstallment (\ s a -> s{_iInstallment = a})

-- | The sale price of the product. Mandatory if sale_price_effective_date is
-- defined.
iSalePrice :: Lens' Inventory (Maybe Price)
iSalePrice
  = lens _iSalePrice (\ s a -> s{_iSalePrice = a})

-- | The availability of the product.
iAvailability :: Lens' Inventory (Maybe Text)
iAvailability
  = lens _iAvailability
      (\ s a -> s{_iAvailability = a})

-- | A date range represented by a pair of ISO 8601 dates separated by a
-- space, comma, or slash. Both dates might be specified as \'null\' if
-- undecided.
iSalePriceEffectiveDate :: Lens' Inventory (Maybe Text)
iSalePriceEffectiveDate
  = lens _iSalePriceEffectiveDate
      (\ s a -> s{_iSalePriceEffectiveDate = a})

-- | The quantity of the product that is reserved for sell-on-google ads.
-- Supported only for online products.
iSellOnGoogleQuantity :: Lens' Inventory (Maybe Word32)
iSellOnGoogleQuantity
  = lens _iSellOnGoogleQuantity
      (\ s a -> s{_iSellOnGoogleQuantity = a})
      . mapping _Coerce

-- | The price of the product.
iPrice :: Lens' Inventory (Maybe Price)
iPrice = lens _iPrice (\ s a -> s{_iPrice = a})

instance FromJSON Inventory where
        parseJSON
          = withObject "Inventory"
              (\ o ->
                 Inventory <$>
                   (o .:? "loyaltyPoints") <*>
                     (o .:? "kind" .!= "content#inventory")
                     <*> (o .:? "quantity")
                     <*> (o .:? "installment")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "availability")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "sellOnGoogleQuantity")
                     <*> (o .:? "price"))

instance ToJSON Inventory where
        toJSON Inventory{..}
          = object
              (catMaybes
                 [("loyaltyPoints" .=) <$> _iLoyaltyPoints,
                  Just ("kind" .= _iKind),
                  ("quantity" .=) <$> _iQuantity,
                  ("installment" .=) <$> _iInstallment,
                  ("salePrice" .=) <$> _iSalePrice,
                  ("availability" .=) <$> _iAvailability,
                  ("salePriceEffectiveDate" .=) <$>
                    _iSalePriceEffectiveDate,
                  ("sellOnGoogleQuantity" .=) <$>
                    _iSellOnGoogleQuantity,
                  ("price" .=) <$> _iPrice])

--
-- /See:/ 'ordersGetByMerchantOrderIdResponse' smart constructor.
data OrdersGetByMerchantOrderIdResponse = OrdersGetByMerchantOrderIdResponse
    { _ogbmoirKind  :: !Text
    , _ogbmoirOrder :: !(Maybe Order)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersGetByMerchantOrderIdResponse
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
                 OrdersGetByMerchantOrderIdResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersGetByMerchantOrderIdResponse")
                     <*> (o .:? "order"))

instance ToJSON OrdersGetByMerchantOrderIdResponse
         where
        toJSON OrdersGetByMerchantOrderIdResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ogbmoirKind),
                  ("order" .=) <$> _ogbmoirOrder])

--
-- /See:/ 'orderPromotionBenefit' smart constructor.
data OrderPromotionBenefit = OrderPromotionBenefit
    { _opbTaxImpact :: !(Maybe Price)
    , _opbDiscount  :: !(Maybe Price)
    , _opbOfferIds  :: !(Maybe [Text])
    , _opbSubType   :: !(Maybe Text)
    , _opbType      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderPromotionBenefit' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opbTaxImpact'
--
-- * 'opbDiscount'
--
-- * 'opbOfferIds'
--
-- * 'opbSubType'
--
-- * 'opbType'
orderPromotionBenefit
    :: OrderPromotionBenefit
orderPromotionBenefit =
    OrderPromotionBenefit
    { _opbTaxImpact = Nothing
    , _opbDiscount = Nothing
    , _opbOfferIds = Nothing
    , _opbSubType = Nothing
    , _opbType = Nothing
    }

-- | The impact on tax when the promotion is applied.
opbTaxImpact :: Lens' OrderPromotionBenefit (Maybe Price)
opbTaxImpact
  = lens _opbTaxImpact (\ s a -> s{_opbTaxImpact = a})

-- | The discount in the order price when the promotion is applied.
opbDiscount :: Lens' OrderPromotionBenefit (Maybe Price)
opbDiscount
  = lens _opbDiscount (\ s a -> s{_opbDiscount = a})

-- | The OfferId(s) that were purchased in this order and map to this
-- specific benefit of the promotion.
opbOfferIds :: Lens' OrderPromotionBenefit [Text]
opbOfferIds
  = lens _opbOfferIds (\ s a -> s{_opbOfferIds = a}) .
      _Default
      . _Coerce

-- | Further describes the benefit of the promotion. Note that we will expand
-- on this enumeration as we support new promotion sub-types.
opbSubType :: Lens' OrderPromotionBenefit (Maybe Text)
opbSubType
  = lens _opbSubType (\ s a -> s{_opbSubType = a})

-- | Describes whether the promotion applies to products (e.g. 20% off) or to
-- shipping (e.g. Free Shipping).
opbType :: Lens' OrderPromotionBenefit (Maybe Text)
opbType = lens _opbType (\ s a -> s{_opbType = a})

instance FromJSON OrderPromotionBenefit where
        parseJSON
          = withObject "OrderPromotionBenefit"
              (\ o ->
                 OrderPromotionBenefit <$>
                   (o .:? "taxImpact") <*> (o .:? "discount") <*>
                     (o .:? "offerIds" .!= mempty)
                     <*> (o .:? "subType")
                     <*> (o .:? "type"))

instance ToJSON OrderPromotionBenefit where
        toJSON OrderPromotionBenefit{..}
          = object
              (catMaybes
                 [("taxImpact" .=) <$> _opbTaxImpact,
                  ("discount" .=) <$> _opbDiscount,
                  ("offerIds" .=) <$> _opbOfferIds,
                  ("subType" .=) <$> _opbSubType,
                  ("type" .=) <$> _opbType])

--
-- /See:/ 'ordersCancelRequest' smart constructor.
data OrdersCancelRequest = OrdersCancelRequest
    { _ocrReason      :: !(Maybe Text)
    , _ocrOperationId :: !(Maybe Text)
    , _ocrReasonText  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersCancelRequest
    { _ocrReason = Nothing
    , _ocrOperationId = Nothing
    , _ocrReasonText = Nothing
    }

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
                 OrdersCancelRequest <$>
                   (o .:? "reason") <*> (o .:? "operationId") <*>
                     (o .:? "reasonText"))

instance ToJSON OrdersCancelRequest where
        toJSON OrdersCancelRequest{..}
          = object
              (catMaybes
                 [("reason" .=) <$> _ocrReason,
                  ("operationId" .=) <$> _ocrOperationId,
                  ("reasonText" .=) <$> _ocrReasonText])

--
-- /See:/ 'orderLineItemProductVariantAttribute' smart constructor.
data OrderLineItemProductVariantAttribute = OrderLineItemProductVariantAttribute
    { _olipvaDimension :: !(Maybe Text)
    , _olipvaValue     :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderLineItemProductVariantAttribute
    { _olipvaDimension = Nothing
    , _olipvaValue = Nothing
    }

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
         OrderLineItemProductVariantAttribute where
        parseJSON
          = withObject "OrderLineItemProductVariantAttribute"
              (\ o ->
                 OrderLineItemProductVariantAttribute <$>
                   (o .:? "dimension") <*> (o .:? "value"))

instance ToJSON OrderLineItemProductVariantAttribute
         where
        toJSON OrderLineItemProductVariantAttribute{..}
          = object
              (catMaybes
                 [("dimension" .=) <$> _olipvaDimension,
                  ("value" .=) <$> _olipvaValue])

--
-- /See:/ 'ordersCustomBatchResponseEntry' smart constructor.
data OrdersCustomBatchResponseEntry = OrdersCustomBatchResponseEntry
    { _oKind            :: !Text
    , _oExecutionStatus :: !(Maybe Text)
    , _oErrors          :: !(Maybe Errors)
    , _oOrder           :: !(Maybe Order)
    , _oBatchId         :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oKind'
--
-- * 'oExecutionStatus'
--
-- * 'oErrors'
--
-- * 'oOrder'
--
-- * 'oBatchId'
ordersCustomBatchResponseEntry
    :: OrdersCustomBatchResponseEntry
ordersCustomBatchResponseEntry =
    OrdersCustomBatchResponseEntry
    { _oKind = "content#ordersCustomBatchResponseEntry"
    , _oExecutionStatus = Nothing
    , _oErrors = Nothing
    , _oOrder = Nothing
    , _oBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCustomBatchResponseEntry\".
oKind :: Lens' OrdersCustomBatchResponseEntry Text
oKind = lens _oKind (\ s a -> s{_oKind = a})

-- | The status of the execution. Only defined if the method is not get or
-- getByMerchantOrderId and if the request was successful.
oExecutionStatus :: Lens' OrdersCustomBatchResponseEntry (Maybe Text)
oExecutionStatus
  = lens _oExecutionStatus
      (\ s a -> s{_oExecutionStatus = a})

-- | A list of errors defined if and only if the request failed.
oErrors :: Lens' OrdersCustomBatchResponseEntry (Maybe Errors)
oErrors = lens _oErrors (\ s a -> s{_oErrors = a})

-- | The retrieved order. Only defined if the method is get and if the
-- request was successful.
oOrder :: Lens' OrdersCustomBatchResponseEntry (Maybe Order)
oOrder = lens _oOrder (\ s a -> s{_oOrder = a})

-- | The ID of the request entry this entry responds to.
oBatchId :: Lens' OrdersCustomBatchResponseEntry (Maybe Word32)
oBatchId
  = lens _oBatchId (\ s a -> s{_oBatchId = a}) .
      mapping _Coerce

instance FromJSON OrdersCustomBatchResponseEntry
         where
        parseJSON
          = withObject "OrdersCustomBatchResponseEntry"
              (\ o ->
                 OrdersCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#ordersCustomBatchResponseEntry")
                     <*> (o .:? "executionStatus")
                     <*> (o .:? "errors")
                     <*> (o .:? "order")
                     <*> (o .:? "batchId"))

instance ToJSON OrdersCustomBatchResponseEntry where
        toJSON OrdersCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oKind),
                  ("executionStatus" .=) <$> _oExecutionStatus,
                  ("errors" .=) <$> _oErrors, ("order" .=) <$> _oOrder,
                  ("batchId" .=) <$> _oBatchId])

-- | A carrier-calculated shipping rate.
--
-- /See:/ 'accountShippingCarrierRate' smart constructor.
data AccountShippingCarrierRate = AccountShippingCarrierRate
    { _ascrCarrier          :: !(Maybe Text)
    , _ascrSaleCountry      :: !(Maybe Text)
    , _ascrShippingOrigin   :: !(Maybe Text)
    , _ascrCarrierService   :: !(Maybe Text)
    , _ascrModifierPercent  :: !(Maybe Text)
    , _ascrName             :: !(Maybe Text)
    , _ascrModifierFlatRate :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingCarrierRate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascrCarrier'
--
-- * 'ascrSaleCountry'
--
-- * 'ascrShippingOrigin'
--
-- * 'ascrCarrierService'
--
-- * 'ascrModifierPercent'
--
-- * 'ascrName'
--
-- * 'ascrModifierFlatRate'
accountShippingCarrierRate
    :: AccountShippingCarrierRate
accountShippingCarrierRate =
    AccountShippingCarrierRate
    { _ascrCarrier = Nothing
    , _ascrSaleCountry = Nothing
    , _ascrShippingOrigin = Nothing
    , _ascrCarrierService = Nothing
    , _ascrModifierPercent = Nothing
    , _ascrName = Nothing
    , _ascrModifierFlatRate = Nothing
    }

-- | The carrier that is responsible for the shipping, such as \"UPS\",
-- \"FedEx\", or \"USPS\".
ascrCarrier :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrCarrier
  = lens _ascrCarrier (\ s a -> s{_ascrCarrier = a})

-- | The sale country for which this carrier rate is valid, represented as a
-- CLDR territory code.
ascrSaleCountry :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrSaleCountry
  = lens _ascrSaleCountry
      (\ s a -> s{_ascrSaleCountry = a})

-- | Shipping origin represented as a postal code.
ascrShippingOrigin :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrShippingOrigin
  = lens _ascrShippingOrigin
      (\ s a -> s{_ascrShippingOrigin = a})

-- | The carrier service, such as \"Ground\" or \"2Day\".
ascrCarrierService :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrCarrierService
  = lens _ascrCarrierService
      (\ s a -> s{_ascrCarrierService = a})

-- | Multiplicative shipping rate modifier in percent. Represented as a
-- floating point number without the percentage character.
ascrModifierPercent :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrModifierPercent
  = lens _ascrModifierPercent
      (\ s a -> s{_ascrModifierPercent = a})

-- | The name of the carrier rate.
ascrName :: Lens' AccountShippingCarrierRate (Maybe Text)
ascrName = lens _ascrName (\ s a -> s{_ascrName = a})

-- | Additive shipping rate modifier.
ascrModifierFlatRate :: Lens' AccountShippingCarrierRate (Maybe Price)
ascrModifierFlatRate
  = lens _ascrModifierFlatRate
      (\ s a -> s{_ascrModifierFlatRate = a})

instance FromJSON AccountShippingCarrierRate where
        parseJSON
          = withObject "AccountShippingCarrierRate"
              (\ o ->
                 AccountShippingCarrierRate <$>
                   (o .:? "carrier") <*> (o .:? "saleCountry") <*>
                     (o .:? "shippingOrigin")
                     <*> (o .:? "carrierService")
                     <*> (o .:? "modifierPercent")
                     <*> (o .:? "name")
                     <*> (o .:? "modifierFlatRate"))

instance ToJSON AccountShippingCarrierRate where
        toJSON AccountShippingCarrierRate{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ascrCarrier,
                  ("saleCountry" .=) <$> _ascrSaleCountry,
                  ("shippingOrigin" .=) <$> _ascrShippingOrigin,
                  ("carrierService" .=) <$> _ascrCarrierService,
                  ("modifierPercent" .=) <$> _ascrModifierPercent,
                  ("name" .=) <$> _ascrName,
                  ("modifierFlatRate" .=) <$> _ascrModifierFlatRate])

--
-- /See:/ 'orderPromotion' smart constructor.
data OrderPromotion = OrderPromotion
    { _opEffectiveDates        :: !(Maybe Text)
    , _opGenericRedemptionCode :: !(Maybe Text)
    , _opRedemptionChannel     :: !(Maybe Text)
    , _opBenefits              :: !(Maybe [OrderPromotionBenefit])
    , _opLongTitle             :: !(Maybe Text)
    , _opId                    :: !(Maybe Text)
    , _opProductApplicability  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderPromotion' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opEffectiveDates'
--
-- * 'opGenericRedemptionCode'
--
-- * 'opRedemptionChannel'
--
-- * 'opBenefits'
--
-- * 'opLongTitle'
--
-- * 'opId'
--
-- * 'opProductApplicability'
orderPromotion
    :: OrderPromotion
orderPromotion =
    OrderPromotion
    { _opEffectiveDates = Nothing
    , _opGenericRedemptionCode = Nothing
    , _opRedemptionChannel = Nothing
    , _opBenefits = Nothing
    , _opLongTitle = Nothing
    , _opId = Nothing
    , _opProductApplicability = Nothing
    }

-- | The date and time frame when the promotion is active and ready for
-- validation review. Note that the promotion live time may be delayed for
-- a few hours due to the validation review. Start date and end date are
-- separated by a forward slash (\/). The start date is specified by the
-- format (YYYY-MM-DD), followed by the letter ?T?, the time of the day
-- when the sale starts (in Greenwich Mean Time, GMT), followed by an
-- expression of the time zone for the sale. The end date is in the same
-- format.
opEffectiveDates :: Lens' OrderPromotion (Maybe Text)
opEffectiveDates
  = lens _opEffectiveDates
      (\ s a -> s{_opEffectiveDates = a})

-- | Optional. The text code that corresponds to the promotion when applied
-- on the retailer?s website.
opGenericRedemptionCode :: Lens' OrderPromotion (Maybe Text)
opGenericRedemptionCode
  = lens _opGenericRedemptionCode
      (\ s a -> s{_opGenericRedemptionCode = a})

-- | Indicates that the promotion is valid online.
opRedemptionChannel :: Lens' OrderPromotion (Maybe Text)
opRedemptionChannel
  = lens _opRedemptionChannel
      (\ s a -> s{_opRedemptionChannel = a})

opBenefits :: Lens' OrderPromotion [OrderPromotionBenefit]
opBenefits
  = lens _opBenefits (\ s a -> s{_opBenefits = a}) .
      _Default
      . _Coerce

-- | The full title of the promotion.
opLongTitle :: Lens' OrderPromotion (Maybe Text)
opLongTitle
  = lens _opLongTitle (\ s a -> s{_opLongTitle = a})

-- | The unique ID of the promotion.
opId :: Lens' OrderPromotion (Maybe Text)
opId = lens _opId (\ s a -> s{_opId = a})

-- | Whether the promotion is applicable to all products or only specific
-- products.
opProductApplicability :: Lens' OrderPromotion (Maybe Text)
opProductApplicability
  = lens _opProductApplicability
      (\ s a -> s{_opProductApplicability = a})

instance FromJSON OrderPromotion where
        parseJSON
          = withObject "OrderPromotion"
              (\ o ->
                 OrderPromotion <$>
                   (o .:? "effectiveDates") <*>
                     (o .:? "genericRedemptionCode")
                     <*> (o .:? "redemptionChannel")
                     <*> (o .:? "benefits" .!= mempty)
                     <*> (o .:? "longTitle")
                     <*> (o .:? "id")
                     <*> (o .:? "productApplicability"))

instance ToJSON OrderPromotion where
        toJSON OrderPromotion{..}
          = object
              (catMaybes
                 [("effectiveDates" .=) <$> _opEffectiveDates,
                  ("genericRedemptionCode" .=) <$>
                    _opGenericRedemptionCode,
                  ("redemptionChannel" .=) <$> _opRedemptionChannel,
                  ("benefits" .=) <$> _opBenefits,
                  ("longTitle" .=) <$> _opLongTitle,
                  ("id" .=) <$> _opId,
                  ("productApplicability" .=) <$>
                    _opProductApplicability])

--
-- /See:/ 'price' smart constructor.
data Price = Price
    { _pValue    :: !(Maybe Text)
    , _pCurrency :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Price' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pValue'
--
-- * 'pCurrency'
price
    :: Price
price =
    Price
    { _pValue = Nothing
    , _pCurrency = Nothing
    }

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
                 Price <$> (o .:? "value") <*> (o .:? "currency"))

instance ToJSON Price where
        toJSON Price{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pValue,
                  ("currency" .=) <$> _pCurrency])

--
-- /See:/ 'orderLineItemShippingDetails' smart constructor.
data OrderLineItemShippingDetails = OrderLineItemShippingDetails
    { _olisdShipByDate    :: !(Maybe Text)
    , _olisdMethod        :: !(Maybe OrderLineItemShippingDetailsMethod)
    , _olisdDeliverByDate :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderLineItemShippingDetails
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
                 OrderLineItemShippingDetails <$>
                   (o .:? "shipByDate") <*> (o .:? "method") <*>
                     (o .:? "deliverByDate"))

instance ToJSON OrderLineItemShippingDetails where
        toJSON OrderLineItemShippingDetails{..}
          = object
              (catMaybes
                 [("shipByDate" .=) <$> _olisdShipByDate,
                  ("method" .=) <$> _olisdMethod,
                  ("deliverByDate" .=) <$> _olisdDeliverByDate])

--
-- /See:/ 'datafeedsCustomBatchResponse' smart constructor.
data DatafeedsCustomBatchResponse = DatafeedsCustomBatchResponse
    { _datEntries :: !(Maybe [DatafeedsCustomBatchResponseEntry])
    , _datKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedsCustomBatchResponse
    { _datEntries = Nothing
    , _datKind = "content#datafeedsCustomBatchResponse"
    }

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
                 DatafeedsCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#datafeedsCustomBatchResponse"))

instance ToJSON DatafeedsCustomBatchResponse where
        toJSON DatafeedsCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _datEntries,
                  Just ("kind" .= _datKind)])

--
-- /See:/ 'orderDeliveryDetails' smart constructor.
data OrderDeliveryDetails = OrderDeliveryDetails
    { _oddAddress     :: !(Maybe OrderAddress)
    , _oddPhoneNumber :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderDeliveryDetails
    { _oddAddress = Nothing
    , _oddPhoneNumber = Nothing
    }

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
                 OrderDeliveryDetails <$>
                   (o .:? "address") <*> (o .:? "phoneNumber"))

instance ToJSON OrderDeliveryDetails where
        toJSON OrderDeliveryDetails{..}
          = object
              (catMaybes
                 [("address" .=) <$> _oddAddress,
                  ("phoneNumber" .=) <$> _oddPhoneNumber])

--
-- /See:/ 'ordersCancelResponse' smart constructor.
data OrdersCancelResponse = OrdersCancelResponse
    { _ocrKind            :: !Text
    , _ocrExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersCancelResponse
    { _ocrKind = "content#ordersCancelResponse"
    , _ocrExecutionStatus = Nothing
    }

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
                 OrdersCancelResponse <$>
                   (o .:? "kind" .!= "content#ordersCancelResponse") <*>
                     (o .:? "executionStatus"))

instance ToJSON OrdersCancelResponse where
        toJSON OrdersCancelResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _ocrKind),
                  ("executionStatus" .=) <$> _ocrExecutionStatus])

--
-- /See:/ 'testOrder' smart constructor.
data TestOrder = TestOrder
    { _toKind                      :: !Text
    , _toLineItems                 :: !(Maybe [TestOrderLineItem])
    , _toShippingOption            :: !(Maybe Text)
    , _toPredefinedDeliveryAddress :: !(Maybe Text)
    , _toShippingCostTax           :: !(Maybe Price)
    , _toCustomer                  :: !(Maybe TestOrderCustomer)
    , _toPaymentMethod             :: !(Maybe TestOrderPaymentMethod)
    , _toPromotions                :: !(Maybe [OrderPromotion])
    , _toShippingCost              :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'toPaymentMethod'
--
-- * 'toPromotions'
--
-- * 'toShippingCost'
testOrder
    :: TestOrder
testOrder =
    TestOrder
    { _toKind = "content#testOrder"
    , _toLineItems = Nothing
    , _toShippingOption = Nothing
    , _toPredefinedDeliveryAddress = Nothing
    , _toShippingCostTax = Nothing
    , _toCustomer = Nothing
    , _toPaymentMethod = Nothing
    , _toPromotions = Nothing
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

-- | The details of the payment method.
toPaymentMethod :: Lens' TestOrder (Maybe TestOrderPaymentMethod)
toPaymentMethod
  = lens _toPaymentMethod
      (\ s a -> s{_toPaymentMethod = a})

-- | The details of the merchant provided promotions applied to the order.
-- More details about the program are here.
toPromotions :: Lens' TestOrder [OrderPromotion]
toPromotions
  = lens _toPromotions (\ s a -> s{_toPromotions = a})
      . _Default
      . _Coerce

-- | The total cost of shipping for all items.
toShippingCost :: Lens' TestOrder (Maybe Price)
toShippingCost
  = lens _toShippingCost
      (\ s a -> s{_toShippingCost = a})

instance FromJSON TestOrder where
        parseJSON
          = withObject "TestOrder"
              (\ o ->
                 TestOrder <$>
                   (o .:? "kind" .!= "content#testOrder") <*>
                     (o .:? "lineItems" .!= mempty)
                     <*> (o .:? "shippingOption")
                     <*> (o .:? "predefinedDeliveryAddress")
                     <*> (o .:? "shippingCostTax")
                     <*> (o .:? "customer")
                     <*> (o .:? "paymentMethod")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "shippingCost"))

instance ToJSON TestOrder where
        toJSON TestOrder{..}
          = object
              (catMaybes
                 [Just ("kind" .= _toKind),
                  ("lineItems" .=) <$> _toLineItems,
                  ("shippingOption" .=) <$> _toShippingOption,
                  ("predefinedDeliveryAddress" .=) <$>
                    _toPredefinedDeliveryAddress,
                  ("shippingCostTax" .=) <$> _toShippingCostTax,
                  ("customer" .=) <$> _toCustomer,
                  ("paymentMethod" .=) <$> _toPaymentMethod,
                  ("promotions" .=) <$> _toPromotions,
                  ("shippingCost" .=) <$> _toShippingCost])

-- | A batch entry encoding a single non-batch datafeedstatuses response.
--
-- /See:/ 'datafeedstatusesCustomBatchResponseEntry' smart constructor.
data DatafeedstatusesCustomBatchResponseEntry = DatafeedstatusesCustomBatchResponseEntry
    { _datErrors         :: !(Maybe Errors)
    , _datDatafeedStatus :: !(Maybe DatafeedStatus)
    , _datBatchId        :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedstatusesCustomBatchResponseEntry
    { _datErrors = Nothing
    , _datDatafeedStatus = Nothing
    , _datBatchId = Nothing
    }

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
         DatafeedstatusesCustomBatchResponseEntry where
        parseJSON
          = withObject
              "DatafeedstatusesCustomBatchResponseEntry"
              (\ o ->
                 DatafeedstatusesCustomBatchResponseEntry <$>
                   (o .:? "errors") <*> (o .:? "datafeedStatus") <*>
                     (o .:? "batchId"))

instance ToJSON
         DatafeedstatusesCustomBatchResponseEntry where
        toJSON DatafeedstatusesCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [("errors" .=) <$> _datErrors,
                  ("datafeedStatus" .=) <$> _datDatafeedStatus,
                  ("batchId" .=) <$> _datBatchId])

--
-- /See:/ 'orderRefund' smart constructor.
data OrderRefund = OrderRefund
    { _oAmount       :: !(Maybe Price)
    , _oActor        :: !(Maybe Text)
    , _oReason       :: !(Maybe Text)
    , _oCreationDate :: !(Maybe Text)
    , _oReasonText   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oAmount'
--
-- * 'oActor'
--
-- * 'oReason'
--
-- * 'oCreationDate'
--
-- * 'oReasonText'
orderRefund
    :: OrderRefund
orderRefund =
    OrderRefund
    { _oAmount = Nothing
    , _oActor = Nothing
    , _oReason = Nothing
    , _oCreationDate = Nothing
    , _oReasonText = Nothing
    }

-- | The amount that is refunded.
oAmount :: Lens' OrderRefund (Maybe Price)
oAmount = lens _oAmount (\ s a -> s{_oAmount = a})

-- | The actor that created the refund.
oActor :: Lens' OrderRefund (Maybe Text)
oActor = lens _oActor (\ s a -> s{_oActor = a})

-- | The reason for the refund.
oReason :: Lens' OrderRefund (Maybe Text)
oReason = lens _oReason (\ s a -> s{_oReason = a})

-- | Date on which the item has been created, in ISO 8601 format.
oCreationDate :: Lens' OrderRefund (Maybe Text)
oCreationDate
  = lens _oCreationDate
      (\ s a -> s{_oCreationDate = a})

-- | The explanation of the reason.
oReasonText :: Lens' OrderRefund (Maybe Text)
oReasonText
  = lens _oReasonText (\ s a -> s{_oReasonText = a})

instance FromJSON OrderRefund where
        parseJSON
          = withObject "OrderRefund"
              (\ o ->
                 OrderRefund <$>
                   (o .:? "amount") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderRefund where
        toJSON OrderRefund{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _oAmount,
                  ("actor" .=) <$> _oActor, ("reason" .=) <$> _oReason,
                  ("creationDate" .=) <$> _oCreationDate,
                  ("reasonText" .=) <$> _oReasonText])

--
-- /See:/ 'testOrderLineItemProduct' smart constructor.
data TestOrderLineItemProduct = TestOrderLineItemProduct
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
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TestOrderLineItemProduct
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
                 TestOrderLineItemProduct <$>
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
        toJSON TestOrderLineItemProduct{..}
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
data AccounttaxCustomBatchResponse = AccounttaxCustomBatchResponse
    { _a2Entries :: !(Maybe [AccounttaxCustomBatchResponseEntry])
    , _a2Kind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a2Entries'
--
-- * 'a2Kind'
accounttaxCustomBatchResponse
    :: AccounttaxCustomBatchResponse
accounttaxCustomBatchResponse =
    AccounttaxCustomBatchResponse
    { _a2Entries = Nothing
    , _a2Kind = "content#accounttaxCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
a2Entries :: Lens' AccounttaxCustomBatchResponse [AccounttaxCustomBatchResponseEntry]
a2Entries
  = lens _a2Entries (\ s a -> s{_a2Entries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accounttaxCustomBatchResponse\".
a2Kind :: Lens' AccounttaxCustomBatchResponse Text
a2Kind = lens _a2Kind (\ s a -> s{_a2Kind = a})

instance FromJSON AccounttaxCustomBatchResponse where
        parseJSON
          = withObject "AccounttaxCustomBatchResponse"
              (\ o ->
                 AccounttaxCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#accounttaxCustomBatchResponse"))

instance ToJSON AccounttaxCustomBatchResponse where
        toJSON AccounttaxCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _a2Entries,
                  Just ("kind" .= _a2Kind)])

-- | A batch entry encoding a single non-batch inventory request.
--
-- /See:/ 'inventoryCustomBatchRequestEntry' smart constructor.
data InventoryCustomBatchRequestEntry = InventoryCustomBatchRequestEntry
    { _iMerchantId :: !(Maybe (Textual Word64))
    , _iStoreCode  :: !(Maybe Text)
    , _iInventory  :: !(Maybe Inventory)
    , _iProductId  :: !(Maybe Text)
    , _iBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iMerchantId'
--
-- * 'iStoreCode'
--
-- * 'iInventory'
--
-- * 'iProductId'
--
-- * 'iBatchId'
inventoryCustomBatchRequestEntry
    :: InventoryCustomBatchRequestEntry
inventoryCustomBatchRequestEntry =
    InventoryCustomBatchRequestEntry
    { _iMerchantId = Nothing
    , _iStoreCode = Nothing
    , _iInventory = Nothing
    , _iProductId = Nothing
    , _iBatchId = Nothing
    }

-- | The ID of the managing account.
iMerchantId :: Lens' InventoryCustomBatchRequestEntry (Maybe Word64)
iMerchantId
  = lens _iMerchantId (\ s a -> s{_iMerchantId = a}) .
      mapping _Coerce

-- | The code of the store for which to update price and availability. Use
-- online to update price and availability of an online product.
iStoreCode :: Lens' InventoryCustomBatchRequestEntry (Maybe Text)
iStoreCode
  = lens _iStoreCode (\ s a -> s{_iStoreCode = a})

-- | Price and availability of the product.
iInventory :: Lens' InventoryCustomBatchRequestEntry (Maybe Inventory)
iInventory
  = lens _iInventory (\ s a -> s{_iInventory = a})

-- | The ID of the product for which to update price and availability.
iProductId :: Lens' InventoryCustomBatchRequestEntry (Maybe Text)
iProductId
  = lens _iProductId (\ s a -> s{_iProductId = a})

-- | An entry ID, unique within the batch request.
iBatchId :: Lens' InventoryCustomBatchRequestEntry (Maybe Word32)
iBatchId
  = lens _iBatchId (\ s a -> s{_iBatchId = a}) .
      mapping _Coerce

instance FromJSON InventoryCustomBatchRequestEntry
         where
        parseJSON
          = withObject "InventoryCustomBatchRequestEntry"
              (\ o ->
                 InventoryCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "storeCode") <*>
                     (o .:? "inventory")
                     <*> (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON InventoryCustomBatchRequestEntry
         where
        toJSON InventoryCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _iMerchantId,
                  ("storeCode" .=) <$> _iStoreCode,
                  ("inventory" .=) <$> _iInventory,
                  ("productId" .=) <$> _iProductId,
                  ("batchId" .=) <$> _iBatchId])

--
-- /See:/ 'orderAddress' smart constructor.
data OrderAddress = OrderAddress
    { _oaRecipientName   :: !(Maybe Text)
    , _oaStreetAddress   :: !(Maybe [Text])
    , _oaCountry         :: !(Maybe Text)
    , _oaPostalCode      :: !(Maybe Text)
    , _oaLocality        :: !(Maybe Text)
    , _oaIsPostOfficeBox :: !(Maybe Bool)
    , _oaFullAddress     :: !(Maybe [Text])
    , _oaRegion          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderAddress
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

-- | Top-level administrative subdivision of the country (e.g. \"CA\").
oaRegion :: Lens' OrderAddress (Maybe Text)
oaRegion = lens _oaRegion (\ s a -> s{_oaRegion = a})

instance FromJSON OrderAddress where
        parseJSON
          = withObject "OrderAddress"
              (\ o ->
                 OrderAddress <$>
                   (o .:? "recipientName") <*>
                     (o .:? "streetAddress" .!= mempty)
                     <*> (o .:? "country")
                     <*> (o .:? "postalCode")
                     <*> (o .:? "locality")
                     <*> (o .:? "isPostOfficeBox")
                     <*> (o .:? "fullAddress" .!= mempty)
                     <*> (o .:? "region"))

instance ToJSON OrderAddress where
        toJSON OrderAddress{..}
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
-- /See:/ 'productUnitPricingBaseMeasure' smart constructor.
data ProductUnitPricingBaseMeasure = ProductUnitPricingBaseMeasure
    { _pupbmValue :: !(Maybe (Textual Int64))
    , _pupbmUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductUnitPricingBaseMeasure
    { _pupbmValue = Nothing
    , _pupbmUnit = Nothing
    }

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
                 ProductUnitPricingBaseMeasure <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductUnitPricingBaseMeasure where
        toJSON ProductUnitPricingBaseMeasure{..}
          = object
              (catMaybes
                 [("value" .=) <$> _pupbmValue,
                  ("unit" .=) <$> _pupbmUnit])

--
-- /See:/ 'accountShippingCondition' smart constructor.
data AccountShippingCondition = AccountShippingCondition
    { _ascWeightMax               :: !(Maybe Weight)
    , _ascDeliveryPostalCode      :: !(Maybe Text)
    , _ascDeliveryLocationGroup   :: !(Maybe Text)
    , _ascPriceMax                :: !(Maybe Price)
    , _ascShippingLabel           :: !(Maybe Text)
    , _ascDeliveryLocationId      :: !(Maybe (Textual Int64))
    , _ascDeliveryPostalCodeRange :: !(Maybe AccountShippingPostalCodeRange)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingCondition' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ascWeightMax'
--
-- * 'ascDeliveryPostalCode'
--
-- * 'ascDeliveryLocationGroup'
--
-- * 'ascPriceMax'
--
-- * 'ascShippingLabel'
--
-- * 'ascDeliveryLocationId'
--
-- * 'ascDeliveryPostalCodeRange'
accountShippingCondition
    :: AccountShippingCondition
accountShippingCondition =
    AccountShippingCondition
    { _ascWeightMax = Nothing
    , _ascDeliveryPostalCode = Nothing
    , _ascDeliveryLocationGroup = Nothing
    , _ascPriceMax = Nothing
    , _ascShippingLabel = Nothing
    , _ascDeliveryLocationId = Nothing
    , _ascDeliveryPostalCodeRange = Nothing
    }

-- | Maximum shipping weight. Forms an interval between the maximum of
-- smaller weight (exclusive) and this weight (inclusive).
ascWeightMax :: Lens' AccountShippingCondition (Maybe Weight)
ascWeightMax
  = lens _ascWeightMax (\ s a -> s{_ascWeightMax = a})

-- | Delivery location in terms of a postal code.
ascDeliveryPostalCode :: Lens' AccountShippingCondition (Maybe Text)
ascDeliveryPostalCode
  = lens _ascDeliveryPostalCode
      (\ s a -> s{_ascDeliveryPostalCode = a})

-- | Delivery location in terms of a location group name. A location group
-- with this name must be specified among location groups.
ascDeliveryLocationGroup :: Lens' AccountShippingCondition (Maybe Text)
ascDeliveryLocationGroup
  = lens _ascDeliveryLocationGroup
      (\ s a -> s{_ascDeliveryLocationGroup = a})

-- | Maximum shipping price. Forms an interval between the maximum of smaller
-- prices (exclusive) and this price (inclusive).
ascPriceMax :: Lens' AccountShippingCondition (Maybe Price)
ascPriceMax
  = lens _ascPriceMax (\ s a -> s{_ascPriceMax = a})

-- | Shipping label of the product. The products with the label are matched.
ascShippingLabel :: Lens' AccountShippingCondition (Maybe Text)
ascShippingLabel
  = lens _ascShippingLabel
      (\ s a -> s{_ascShippingLabel = a})

-- | Delivery location in terms of a location ID. Can be used to represent
-- administrative areas, smaller country subdivisions, or cities.
ascDeliveryLocationId :: Lens' AccountShippingCondition (Maybe Int64)
ascDeliveryLocationId
  = lens _ascDeliveryLocationId
      (\ s a -> s{_ascDeliveryLocationId = a})
      . mapping _Coerce

-- | Delivery location in terms of a postal code range.
ascDeliveryPostalCodeRange :: Lens' AccountShippingCondition (Maybe AccountShippingPostalCodeRange)
ascDeliveryPostalCodeRange
  = lens _ascDeliveryPostalCodeRange
      (\ s a -> s{_ascDeliveryPostalCodeRange = a})

instance FromJSON AccountShippingCondition where
        parseJSON
          = withObject "AccountShippingCondition"
              (\ o ->
                 AccountShippingCondition <$>
                   (o .:? "weightMax") <*> (o .:? "deliveryPostalCode")
                     <*> (o .:? "deliveryLocationGroup")
                     <*> (o .:? "priceMax")
                     <*> (o .:? "shippingLabel")
                     <*> (o .:? "deliveryLocationId")
                     <*> (o .:? "deliveryPostalCodeRange"))

instance ToJSON AccountShippingCondition where
        toJSON AccountShippingCondition{..}
          = object
              (catMaybes
                 [("weightMax" .=) <$> _ascWeightMax,
                  ("deliveryPostalCode" .=) <$> _ascDeliveryPostalCode,
                  ("deliveryLocationGroup" .=) <$>
                    _ascDeliveryLocationGroup,
                  ("priceMax" .=) <$> _ascPriceMax,
                  ("shippingLabel" .=) <$> _ascShippingLabel,
                  ("deliveryLocationId" .=) <$> _ascDeliveryLocationId,
                  ("deliveryPostalCodeRange" .=) <$>
                    _ascDeliveryPostalCodeRange])

--
-- /See:/ 'datafeedsListResponse' smart constructor.
data DatafeedsListResponse = DatafeedsListResponse
    { _dlrNextPageToken :: !(Maybe Text)
    , _dlrKind          :: !Text
    , _dlrResources     :: !(Maybe [Datafeed])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedsListResponse
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
                 DatafeedsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#datafeedsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON DatafeedsListResponse where
        toJSON DatafeedsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrNextPageToken,
                  Just ("kind" .= _dlrKind),
                  ("resources" .=) <$> _dlrResources])

-- | A batch entry encoding a single non-batch products response.
--
-- /See:/ 'productsCustomBatchResponseEntry' smart constructor.
data ProductsCustomBatchResponseEntry = ProductsCustomBatchResponseEntry
    { _proKind    :: !Text
    , _proProduct :: !(Maybe Product)
    , _proErrors  :: !(Maybe Errors)
    , _proBatchId :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proKind'
--
-- * 'proProduct'
--
-- * 'proErrors'
--
-- * 'proBatchId'
productsCustomBatchResponseEntry
    :: ProductsCustomBatchResponseEntry
productsCustomBatchResponseEntry =
    ProductsCustomBatchResponseEntry
    { _proKind = "content#productsCustomBatchResponseEntry"
    , _proProduct = Nothing
    , _proErrors = Nothing
    , _proBatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsCustomBatchResponseEntry\".
proKind :: Lens' ProductsCustomBatchResponseEntry Text
proKind = lens _proKind (\ s a -> s{_proKind = a})

-- | The inserted product. Only defined if the method is insert and if the
-- request was successful.
proProduct :: Lens' ProductsCustomBatchResponseEntry (Maybe Product)
proProduct
  = lens _proProduct (\ s a -> s{_proProduct = a})

-- | A list of errors defined if and only if the request failed.
proErrors :: Lens' ProductsCustomBatchResponseEntry (Maybe Errors)
proErrors
  = lens _proErrors (\ s a -> s{_proErrors = a})

-- | The ID of the request entry this entry responds to.
proBatchId :: Lens' ProductsCustomBatchResponseEntry (Maybe Word32)
proBatchId
  = lens _proBatchId (\ s a -> s{_proBatchId = a}) .
      mapping _Coerce

instance FromJSON ProductsCustomBatchResponseEntry
         where
        parseJSON
          = withObject "ProductsCustomBatchResponseEntry"
              (\ o ->
                 ProductsCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#productsCustomBatchResponseEntry")
                     <*> (o .:? "product")
                     <*> (o .:? "errors")
                     <*> (o .:? "batchId"))

instance ToJSON ProductsCustomBatchResponseEntry
         where
        toJSON ProductsCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _proKind),
                  ("product" .=) <$> _proProduct,
                  ("errors" .=) <$> _proErrors,
                  ("batchId" .=) <$> _proBatchId])

--
-- /See:/ 'orderPaymentMethod' smart constructor.
data OrderPaymentMethod = OrderPaymentMethod
    { _opmExpirationMonth :: !(Maybe (Textual Int32))
    , _opmExpirationYear  :: !(Maybe (Textual Int32))
    , _opmPhoneNumber     :: !(Maybe Text)
    , _opmBillingAddress  :: !(Maybe OrderAddress)
    , _opmLastFourDigits  :: !(Maybe Text)
    , _opmType            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderPaymentMethod' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'opmExpirationMonth'
--
-- * 'opmExpirationYear'
--
-- * 'opmPhoneNumber'
--
-- * 'opmBillingAddress'
--
-- * 'opmLastFourDigits'
--
-- * 'opmType'
orderPaymentMethod
    :: OrderPaymentMethod
orderPaymentMethod =
    OrderPaymentMethod
    { _opmExpirationMonth = Nothing
    , _opmExpirationYear = Nothing
    , _opmPhoneNumber = Nothing
    , _opmBillingAddress = Nothing
    , _opmLastFourDigits = Nothing
    , _opmType = Nothing
    }

-- | The card expiration month (January = 1, February = 2 etc.).
opmExpirationMonth :: Lens' OrderPaymentMethod (Maybe Int32)
opmExpirationMonth
  = lens _opmExpirationMonth
      (\ s a -> s{_opmExpirationMonth = a})
      . mapping _Coerce

-- | The card expiration year (4-digit, e.g. 2015).
opmExpirationYear :: Lens' OrderPaymentMethod (Maybe Int32)
opmExpirationYear
  = lens _opmExpirationYear
      (\ s a -> s{_opmExpirationYear = a})
      . mapping _Coerce

-- | The billing phone number.
opmPhoneNumber :: Lens' OrderPaymentMethod (Maybe Text)
opmPhoneNumber
  = lens _opmPhoneNumber
      (\ s a -> s{_opmPhoneNumber = a})

-- | The billing address.
opmBillingAddress :: Lens' OrderPaymentMethod (Maybe OrderAddress)
opmBillingAddress
  = lens _opmBillingAddress
      (\ s a -> s{_opmBillingAddress = a})

-- | The last four digits of the card number.
opmLastFourDigits :: Lens' OrderPaymentMethod (Maybe Text)
opmLastFourDigits
  = lens _opmLastFourDigits
      (\ s a -> s{_opmLastFourDigits = a})

-- | The type of instrument (VISA, Mastercard, etc).
opmType :: Lens' OrderPaymentMethod (Maybe Text)
opmType = lens _opmType (\ s a -> s{_opmType = a})

instance FromJSON OrderPaymentMethod where
        parseJSON
          = withObject "OrderPaymentMethod"
              (\ o ->
                 OrderPaymentMethod <$>
                   (o .:? "expirationMonth") <*>
                     (o .:? "expirationYear")
                     <*> (o .:? "phoneNumber")
                     <*> (o .:? "billingAddress")
                     <*> (o .:? "lastFourDigits")
                     <*> (o .:? "type"))

instance ToJSON OrderPaymentMethod where
        toJSON OrderPaymentMethod{..}
          = object
              (catMaybes
                 [("expirationMonth" .=) <$> _opmExpirationMonth,
                  ("expirationYear" .=) <$> _opmExpirationYear,
                  ("phoneNumber" .=) <$> _opmPhoneNumber,
                  ("billingAddress" .=) <$> _opmBillingAddress,
                  ("lastFourDigits" .=) <$> _opmLastFourDigits,
                  ("type" .=) <$> _opmType])

-- | Product data.
--
-- /See:/ 'product' smart constructor.
data Product = Product
    { _ppDisplayAdsLink         :: !(Maybe Text)
    , _ppCustomLabel1           :: !(Maybe Text)
    , _ppShippingWidth          :: !(Maybe ProductShippingDimension)
    , _ppCustomGroups           :: !(Maybe [ProductCustomGroup])
    , _ppImageLink              :: !(Maybe Text)
    , _ppDisplayAdsValue        :: !(Maybe (Textual Double))
    , _ppLoyaltyPoints          :: !(Maybe LoyaltyPoints)
    , _ppAdditionalImageLinks   :: !(Maybe [Text])
    , _ppValidatedDestinations  :: !(Maybe [Text])
    , _ppColor                  :: !(Maybe Text)
    , _ppCustomLabel0           :: !(Maybe Text)
    , _ppKind                   :: !Text
    , _ppMultipack              :: !(Maybe (Textual Int64))
    , _ppPattern                :: !(Maybe Text)
    , _ppLink                   :: !(Maybe Text)
    , _ppSizeSystem             :: !(Maybe Text)
    , _ppUnitPricingBaseMeasure :: !(Maybe ProductUnitPricingBaseMeasure)
    , _ppTaxes                  :: !(Maybe [ProductTax])
    , _ppMaterial               :: !(Maybe Text)
    , _ppInstallment            :: !(Maybe Installment)
    , _ppChannel                :: !(Maybe Text)
    , _ppProductType            :: !(Maybe Text)
    , _ppIdentifierExists       :: !(Maybe Bool)
    , _ppOnlineOnly             :: !(Maybe Bool)
    , _ppBrand                  :: !(Maybe Text)
    , _ppUnitPricingMeasure     :: !(Maybe ProductUnitPricingMeasure)
    , _ppSalePrice              :: !(Maybe Price)
    , _ppShippingLength         :: !(Maybe ProductShippingDimension)
    , _ppCustomLabel3           :: !(Maybe Text)
    , _ppWarnings               :: !(Maybe [Error'])
    , _ppAvailability           :: !(Maybe Text)
    , _ppTargetCountry          :: !(Maybe Text)
    , _ppShippingLabel          :: !(Maybe Text)
    , _ppCustomAttributes       :: !(Maybe [ProductCustomAttribute])
    , _ppGtin                   :: !(Maybe Text)
    , _ppAgeGroup               :: !(Maybe Text)
    , _ppDisplayAdsTitle        :: !(Maybe Text)
    , _ppGender                 :: !(Maybe Text)
    , _ppDestinations           :: !(Maybe [ProductDestination])
    , _ppExpirationDate         :: !(Maybe Text)
    , _ppItemGroupId            :: !(Maybe Text)
    , _ppAdwordsGrouping        :: !(Maybe Text)
    , _ppSalePriceEffectiveDate :: !(Maybe Text)
    , _ppCustomLabel2           :: !(Maybe Text)
    , _ppGoogleProductCategory  :: !(Maybe Text)
    , _ppShipping               :: !(Maybe [ProductShipping])
    , _ppAdwordsRedirect        :: !(Maybe Text)
    , _ppShippingWeight         :: !(Maybe ProductShippingWeight)
    , _ppSellOnGoogleQuantity   :: !(Maybe (Textual Int64))
    , _ppShippingHeight         :: !(Maybe ProductShippingDimension)
    , _ppAvailabilityDate       :: !(Maybe Text)
    , _ppOfferId                :: !(Maybe Text)
    , _ppId                     :: !(Maybe Text)
    , _ppAdwordsLabels          :: !(Maybe [Text])
    , _ppPrice                  :: !(Maybe Price)
    , _ppPromotionIds           :: !(Maybe [Text])
    , _ppSizeType               :: !(Maybe Text)
    , _ppMobileLink             :: !(Maybe Text)
    , _ppTitle                  :: !(Maybe Text)
    , _ppAdult                  :: !(Maybe Bool)
    , _ppContentLanguage        :: !(Maybe Text)
    , _ppAspects                :: !(Maybe [ProductAspect])
    , _ppEnergyEfficiencyClass  :: !(Maybe Text)
    , _ppDisplayAdsSimilarIds   :: !(Maybe [Text])
    , _ppMpn                    :: !(Maybe Text)
    , _ppCondition              :: !(Maybe Text)
    , _ppSizes                  :: !(Maybe [Text])
    , _ppIsBundle               :: !(Maybe Bool)
    , _ppDescription            :: !(Maybe Text)
    , _ppCustomLabel4           :: !(Maybe Text)
    , _ppDisplayAdsId           :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Product' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ppDisplayAdsLink'
--
-- * 'ppCustomLabel1'
--
-- * 'ppShippingWidth'
--
-- * 'ppCustomGroups'
--
-- * 'ppImageLink'
--
-- * 'ppDisplayAdsValue'
--
-- * 'ppLoyaltyPoints'
--
-- * 'ppAdditionalImageLinks'
--
-- * 'ppValidatedDestinations'
--
-- * 'ppColor'
--
-- * 'ppCustomLabel0'
--
-- * 'ppKind'
--
-- * 'ppMultipack'
--
-- * 'ppPattern'
--
-- * 'ppLink'
--
-- * 'ppSizeSystem'
--
-- * 'ppUnitPricingBaseMeasure'
--
-- * 'ppTaxes'
--
-- * 'ppMaterial'
--
-- * 'ppInstallment'
--
-- * 'ppChannel'
--
-- * 'ppProductType'
--
-- * 'ppIdentifierExists'
--
-- * 'ppOnlineOnly'
--
-- * 'ppBrand'
--
-- * 'ppUnitPricingMeasure'
--
-- * 'ppSalePrice'
--
-- * 'ppShippingLength'
--
-- * 'ppCustomLabel3'
--
-- * 'ppWarnings'
--
-- * 'ppAvailability'
--
-- * 'ppTargetCountry'
--
-- * 'ppShippingLabel'
--
-- * 'ppCustomAttributes'
--
-- * 'ppGtin'
--
-- * 'ppAgeGroup'
--
-- * 'ppDisplayAdsTitle'
--
-- * 'ppGender'
--
-- * 'ppDestinations'
--
-- * 'ppExpirationDate'
--
-- * 'ppItemGroupId'
--
-- * 'ppAdwordsGrouping'
--
-- * 'ppSalePriceEffectiveDate'
--
-- * 'ppCustomLabel2'
--
-- * 'ppGoogleProductCategory'
--
-- * 'ppShipping'
--
-- * 'ppAdwordsRedirect'
--
-- * 'ppShippingWeight'
--
-- * 'ppSellOnGoogleQuantity'
--
-- * 'ppShippingHeight'
--
-- * 'ppAvailabilityDate'
--
-- * 'ppOfferId'
--
-- * 'ppId'
--
-- * 'ppAdwordsLabels'
--
-- * 'ppPrice'
--
-- * 'ppPromotionIds'
--
-- * 'ppSizeType'
--
-- * 'ppMobileLink'
--
-- * 'ppTitle'
--
-- * 'ppAdult'
--
-- * 'ppContentLanguage'
--
-- * 'ppAspects'
--
-- * 'ppEnergyEfficiencyClass'
--
-- * 'ppDisplayAdsSimilarIds'
--
-- * 'ppMpn'
--
-- * 'ppCondition'
--
-- * 'ppSizes'
--
-- * 'ppIsBundle'
--
-- * 'ppDescription'
--
-- * 'ppCustomLabel4'
--
-- * 'ppDisplayAdsId'
product
    :: Product
product =
    Product
    { _ppDisplayAdsLink = Nothing
    , _ppCustomLabel1 = Nothing
    , _ppShippingWidth = Nothing
    , _ppCustomGroups = Nothing
    , _ppImageLink = Nothing
    , _ppDisplayAdsValue = Nothing
    , _ppLoyaltyPoints = Nothing
    , _ppAdditionalImageLinks = Nothing
    , _ppValidatedDestinations = Nothing
    , _ppColor = Nothing
    , _ppCustomLabel0 = Nothing
    , _ppKind = "content#product"
    , _ppMultipack = Nothing
    , _ppPattern = Nothing
    , _ppLink = Nothing
    , _ppSizeSystem = Nothing
    , _ppUnitPricingBaseMeasure = Nothing
    , _ppTaxes = Nothing
    , _ppMaterial = Nothing
    , _ppInstallment = Nothing
    , _ppChannel = Nothing
    , _ppProductType = Nothing
    , _ppIdentifierExists = Nothing
    , _ppOnlineOnly = Nothing
    , _ppBrand = Nothing
    , _ppUnitPricingMeasure = Nothing
    , _ppSalePrice = Nothing
    , _ppShippingLength = Nothing
    , _ppCustomLabel3 = Nothing
    , _ppWarnings = Nothing
    , _ppAvailability = Nothing
    , _ppTargetCountry = Nothing
    , _ppShippingLabel = Nothing
    , _ppCustomAttributes = Nothing
    , _ppGtin = Nothing
    , _ppAgeGroup = Nothing
    , _ppDisplayAdsTitle = Nothing
    , _ppGender = Nothing
    , _ppDestinations = Nothing
    , _ppExpirationDate = Nothing
    , _ppItemGroupId = Nothing
    , _ppAdwordsGrouping = Nothing
    , _ppSalePriceEffectiveDate = Nothing
    , _ppCustomLabel2 = Nothing
    , _ppGoogleProductCategory = Nothing
    , _ppShipping = Nothing
    , _ppAdwordsRedirect = Nothing
    , _ppShippingWeight = Nothing
    , _ppSellOnGoogleQuantity = Nothing
    , _ppShippingHeight = Nothing
    , _ppAvailabilityDate = Nothing
    , _ppOfferId = Nothing
    , _ppId = Nothing
    , _ppAdwordsLabels = Nothing
    , _ppPrice = Nothing
    , _ppPromotionIds = Nothing
    , _ppSizeType = Nothing
    , _ppMobileLink = Nothing
    , _ppTitle = Nothing
    , _ppAdult = Nothing
    , _ppContentLanguage = Nothing
    , _ppAspects = Nothing
    , _ppEnergyEfficiencyClass = Nothing
    , _ppDisplayAdsSimilarIds = Nothing
    , _ppMpn = Nothing
    , _ppCondition = Nothing
    , _ppSizes = Nothing
    , _ppIsBundle = Nothing
    , _ppDescription = Nothing
    , _ppCustomLabel4 = Nothing
    , _ppDisplayAdsId = Nothing
    }

-- | URL directly to your item\'s landing page for dynamic remarketing
-- campaigns.
ppDisplayAdsLink :: Lens' Product (Maybe Text)
ppDisplayAdsLink
  = lens _ppDisplayAdsLink
      (\ s a -> s{_ppDisplayAdsLink = a})

-- | Custom label 1 for custom grouping of items in a Shopping campaign.
ppCustomLabel1 :: Lens' Product (Maybe Text)
ppCustomLabel1
  = lens _ppCustomLabel1
      (\ s a -> s{_ppCustomLabel1 = a})

-- | Width of the item for shipping.
ppShippingWidth :: Lens' Product (Maybe ProductShippingDimension)
ppShippingWidth
  = lens _ppShippingWidth
      (\ s a -> s{_ppShippingWidth = a})

-- | A list of custom (merchant-provided) custom attribute groups.
ppCustomGroups :: Lens' Product [ProductCustomGroup]
ppCustomGroups
  = lens _ppCustomGroups
      (\ s a -> s{_ppCustomGroups = a})
      . _Default
      . _Coerce

-- | URL of an image of the item.
ppImageLink :: Lens' Product (Maybe Text)
ppImageLink
  = lens _ppImageLink (\ s a -> s{_ppImageLink = a})

-- | Offer margin for dynamic remarketing campaigns.
ppDisplayAdsValue :: Lens' Product (Maybe Double)
ppDisplayAdsValue
  = lens _ppDisplayAdsValue
      (\ s a -> s{_ppDisplayAdsValue = a})
      . mapping _Coerce

-- | Loyalty points that users receive after purchasing the item. Japan only.
ppLoyaltyPoints :: Lens' Product (Maybe LoyaltyPoints)
ppLoyaltyPoints
  = lens _ppLoyaltyPoints
      (\ s a -> s{_ppLoyaltyPoints = a})

-- | Additional URLs of images of the item.
ppAdditionalImageLinks :: Lens' Product [Text]
ppAdditionalImageLinks
  = lens _ppAdditionalImageLinks
      (\ s a -> s{_ppAdditionalImageLinks = a})
      . _Default
      . _Coerce

-- | The read-only list of intended destinations which passed validation.
ppValidatedDestinations :: Lens' Product [Text]
ppValidatedDestinations
  = lens _ppValidatedDestinations
      (\ s a -> s{_ppValidatedDestinations = a})
      . _Default
      . _Coerce

-- | Color of the item.
ppColor :: Lens' Product (Maybe Text)
ppColor = lens _ppColor (\ s a -> s{_ppColor = a})

-- | Custom label 0 for custom grouping of items in a Shopping campaign.
ppCustomLabel0 :: Lens' Product (Maybe Text)
ppCustomLabel0
  = lens _ppCustomLabel0
      (\ s a -> s{_ppCustomLabel0 = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#product\".
ppKind :: Lens' Product Text
ppKind = lens _ppKind (\ s a -> s{_ppKind = a})

-- | The number of identical products in a merchant-defined multipack.
ppMultipack :: Lens' Product (Maybe Int64)
ppMultipack
  = lens _ppMultipack (\ s a -> s{_ppMultipack = a}) .
      mapping _Coerce

-- | The item\'s pattern (e.g. polka dots).
ppPattern :: Lens' Product (Maybe Text)
ppPattern
  = lens _ppPattern (\ s a -> s{_ppPattern = a})

-- | URL directly linking to your item\'s page on your website.
ppLink :: Lens' Product (Maybe Text)
ppLink = lens _ppLink (\ s a -> s{_ppLink = a})

-- | System in which the size is specified. Recommended for apparel items.
ppSizeSystem :: Lens' Product (Maybe Text)
ppSizeSystem
  = lens _ppSizeSystem (\ s a -> s{_ppSizeSystem = a})

-- | The preference of the denominator of the unit price.
ppUnitPricingBaseMeasure :: Lens' Product (Maybe ProductUnitPricingBaseMeasure)
ppUnitPricingBaseMeasure
  = lens _ppUnitPricingBaseMeasure
      (\ s a -> s{_ppUnitPricingBaseMeasure = a})

-- | Tax information.
ppTaxes :: Lens' Product [ProductTax]
ppTaxes
  = lens _ppTaxes (\ s a -> s{_ppTaxes = a}) . _Default
      . _Coerce

-- | The material of which the item is made.
ppMaterial :: Lens' Product (Maybe Text)
ppMaterial
  = lens _ppMaterial (\ s a -> s{_ppMaterial = a})

-- | Number and amount of installments to pay for an item. Brazil only.
ppInstallment :: Lens' Product (Maybe Installment)
ppInstallment
  = lens _ppInstallment
      (\ s a -> s{_ppInstallment = a})

-- | The item\'s channel (online or local).
ppChannel :: Lens' Product (Maybe Text)
ppChannel
  = lens _ppChannel (\ s a -> s{_ppChannel = a})

-- | Your category of the item (formatted as in product feeds specification).
ppProductType :: Lens' Product (Maybe Text)
ppProductType
  = lens _ppProductType
      (\ s a -> s{_ppProductType = a})

-- | False when the item does not have unique product identifiers appropriate
-- to its category, such as GTIN, MPN, and brand. Required according to the
-- Unique Product Identifier Rules for all target countries except for
-- Canada.
ppIdentifierExists :: Lens' Product (Maybe Bool)
ppIdentifierExists
  = lens _ppIdentifierExists
      (\ s a -> s{_ppIdentifierExists = a})

-- | Whether an item is available for purchase only online.
ppOnlineOnly :: Lens' Product (Maybe Bool)
ppOnlineOnly
  = lens _ppOnlineOnly (\ s a -> s{_ppOnlineOnly = a})

-- | Brand of the item.
ppBrand :: Lens' Product (Maybe Text)
ppBrand = lens _ppBrand (\ s a -> s{_ppBrand = a})

-- | The measure and dimension of an item.
ppUnitPricingMeasure :: Lens' Product (Maybe ProductUnitPricingMeasure)
ppUnitPricingMeasure
  = lens _ppUnitPricingMeasure
      (\ s a -> s{_ppUnitPricingMeasure = a})

-- | Advertised sale price of the item.
ppSalePrice :: Lens' Product (Maybe Price)
ppSalePrice
  = lens _ppSalePrice (\ s a -> s{_ppSalePrice = a})

-- | Length of the item for shipping.
ppShippingLength :: Lens' Product (Maybe ProductShippingDimension)
ppShippingLength
  = lens _ppShippingLength
      (\ s a -> s{_ppShippingLength = a})

-- | Custom label 3 for custom grouping of items in a Shopping campaign.
ppCustomLabel3 :: Lens' Product (Maybe Text)
ppCustomLabel3
  = lens _ppCustomLabel3
      (\ s a -> s{_ppCustomLabel3 = a})

-- | Read-only warnings.
ppWarnings :: Lens' Product [Error']
ppWarnings
  = lens _ppWarnings (\ s a -> s{_ppWarnings = a}) .
      _Default
      . _Coerce

-- | Availability status of the item.
ppAvailability :: Lens' Product (Maybe Text)
ppAvailability
  = lens _ppAvailability
      (\ s a -> s{_ppAvailability = a})

-- | The CLDR territory code for the item.
ppTargetCountry :: Lens' Product (Maybe Text)
ppTargetCountry
  = lens _ppTargetCountry
      (\ s a -> s{_ppTargetCountry = a})

-- | The shipping label of the product, used to group product in
-- account-level shipping rules.
ppShippingLabel :: Lens' Product (Maybe Text)
ppShippingLabel
  = lens _ppShippingLabel
      (\ s a -> s{_ppShippingLabel = a})

-- | A list of custom (merchant-provided) attributes. It can also be used for
-- submitting any attribute of the feed specification in its generic form
-- (e.g., { \"name\": \"size type\", \"type\": \"text\", \"value\":
-- \"regular\" }). This is useful for submitting attributes not explicitly
-- exposed by the API.
ppCustomAttributes :: Lens' Product [ProductCustomAttribute]
ppCustomAttributes
  = lens _ppCustomAttributes
      (\ s a -> s{_ppCustomAttributes = a})
      . _Default
      . _Coerce

-- | Global Trade Item Number (GTIN) of the item.
ppGtin :: Lens' Product (Maybe Text)
ppGtin = lens _ppGtin (\ s a -> s{_ppGtin = a})

-- | Target age group of the item.
ppAgeGroup :: Lens' Product (Maybe Text)
ppAgeGroup
  = lens _ppAgeGroup (\ s a -> s{_ppAgeGroup = a})

-- | Title of an item for dynamic remarketing campaigns.
ppDisplayAdsTitle :: Lens' Product (Maybe Text)
ppDisplayAdsTitle
  = lens _ppDisplayAdsTitle
      (\ s a -> s{_ppDisplayAdsTitle = a})

-- | Target gender of the item.
ppGender :: Lens' Product (Maybe Text)
ppGender = lens _ppGender (\ s a -> s{_ppGender = a})

-- | Specifies the intended destinations for the product.
ppDestinations :: Lens' Product [ProductDestination]
ppDestinations
  = lens _ppDestinations
      (\ s a -> s{_ppDestinations = a})
      . _Default
      . _Coerce

-- | Date on which the item should expire, as specified upon insertion, in
-- ISO 8601 format. The actual expiration date in Google Shopping is
-- exposed in productstatuses as googleExpirationDate and might be earlier
-- if expirationDate is too far in the future.
ppExpirationDate :: Lens' Product (Maybe Text)
ppExpirationDate
  = lens _ppExpirationDate
      (\ s a -> s{_ppExpirationDate = a})

-- | Shared identifier for all variants of the same product.
ppItemGroupId :: Lens' Product (Maybe Text)
ppItemGroupId
  = lens _ppItemGroupId
      (\ s a -> s{_ppItemGroupId = a})

-- | Used to group items in an arbitrary way. Only for CPA%, discouraged
-- otherwise.
ppAdwordsGrouping :: Lens' Product (Maybe Text)
ppAdwordsGrouping
  = lens _ppAdwordsGrouping
      (\ s a -> s{_ppAdwordsGrouping = a})

-- | Date range during which the item is on sale (see product feed
-- specifications).
ppSalePriceEffectiveDate :: Lens' Product (Maybe Text)
ppSalePriceEffectiveDate
  = lens _ppSalePriceEffectiveDate
      (\ s a -> s{_ppSalePriceEffectiveDate = a})

-- | Custom label 2 for custom grouping of items in a Shopping campaign.
ppCustomLabel2 :: Lens' Product (Maybe Text)
ppCustomLabel2
  = lens _ppCustomLabel2
      (\ s a -> s{_ppCustomLabel2 = a})

-- | Google\'s category of the item (see Google product taxonomy).
ppGoogleProductCategory :: Lens' Product (Maybe Text)
ppGoogleProductCategory
  = lens _ppGoogleProductCategory
      (\ s a -> s{_ppGoogleProductCategory = a})

-- | Shipping rules.
ppShipping :: Lens' Product [ProductShipping]
ppShipping
  = lens _ppShipping (\ s a -> s{_ppShipping = a}) .
      _Default
      . _Coerce

-- | Allows advertisers to override the item URL when the product is shown
-- within the context of Product Ads.
ppAdwordsRedirect :: Lens' Product (Maybe Text)
ppAdwordsRedirect
  = lens _ppAdwordsRedirect
      (\ s a -> s{_ppAdwordsRedirect = a})

-- | Weight of the item for shipping.
ppShippingWeight :: Lens' Product (Maybe ProductShippingWeight)
ppShippingWeight
  = lens _ppShippingWeight
      (\ s a -> s{_ppShippingWeight = a})

-- | The quantity of the product that is reserved for sell-on-google ads.
ppSellOnGoogleQuantity :: Lens' Product (Maybe Int64)
ppSellOnGoogleQuantity
  = lens _ppSellOnGoogleQuantity
      (\ s a -> s{_ppSellOnGoogleQuantity = a})
      . mapping _Coerce

-- | Height of the item for shipping.
ppShippingHeight :: Lens' Product (Maybe ProductShippingDimension)
ppShippingHeight
  = lens _ppShippingHeight
      (\ s a -> s{_ppShippingHeight = a})

-- | The day a pre-ordered product becomes available for delivery, in ISO
-- 8601 format.
ppAvailabilityDate :: Lens' Product (Maybe Text)
ppAvailabilityDate
  = lens _ppAvailabilityDate
      (\ s a -> s{_ppAvailabilityDate = a})

-- | An identifier of the item.
ppOfferId :: Lens' Product (Maybe Text)
ppOfferId
  = lens _ppOfferId (\ s a -> s{_ppOfferId = a})

-- | The REST id of the product.
ppId :: Lens' Product (Maybe Text)
ppId = lens _ppId (\ s a -> s{_ppId = a})

-- | Similar to adwords_grouping, but only works on CPC.
ppAdwordsLabels :: Lens' Product [Text]
ppAdwordsLabels
  = lens _ppAdwordsLabels
      (\ s a -> s{_ppAdwordsLabels = a})
      . _Default
      . _Coerce

-- | Price of the item.
ppPrice :: Lens' Product (Maybe Price)
ppPrice = lens _ppPrice (\ s a -> s{_ppPrice = a})

-- | The unique ID of a promotion.
ppPromotionIds :: Lens' Product [Text]
ppPromotionIds
  = lens _ppPromotionIds
      (\ s a -> s{_ppPromotionIds = a})
      . _Default
      . _Coerce

-- | The cut of the item. Recommended for apparel items.
ppSizeType :: Lens' Product (Maybe Text)
ppSizeType
  = lens _ppSizeType (\ s a -> s{_ppSizeType = a})

-- | Link to a mobile-optimized version of the landing page.
ppMobileLink :: Lens' Product (Maybe Text)
ppMobileLink
  = lens _ppMobileLink (\ s a -> s{_ppMobileLink = a})

-- | Title of the item.
ppTitle :: Lens' Product (Maybe Text)
ppTitle = lens _ppTitle (\ s a -> s{_ppTitle = a})

-- | Set to true if the item is targeted towards adults.
ppAdult :: Lens' Product (Maybe Bool)
ppAdult = lens _ppAdult (\ s a -> s{_ppAdult = a})

-- | The two-letter ISO 639-1 language code for the item.
ppContentLanguage :: Lens' Product (Maybe Text)
ppContentLanguage
  = lens _ppContentLanguage
      (\ s a -> s{_ppContentLanguage = a})

-- | Specifies the intended aspects for the product.
ppAspects :: Lens' Product [ProductAspect]
ppAspects
  = lens _ppAspects (\ s a -> s{_ppAspects = a}) .
      _Default
      . _Coerce

-- | The energy efficiency class as defined in EU directive 2010\/30\/EU.
ppEnergyEfficiencyClass :: Lens' Product (Maybe Text)
ppEnergyEfficiencyClass
  = lens _ppEnergyEfficiencyClass
      (\ s a -> s{_ppEnergyEfficiencyClass = a})

-- | Advertiser-specified recommendations.
ppDisplayAdsSimilarIds :: Lens' Product [Text]
ppDisplayAdsSimilarIds
  = lens _ppDisplayAdsSimilarIds
      (\ s a -> s{_ppDisplayAdsSimilarIds = a})
      . _Default
      . _Coerce

-- | Manufacturer Part Number (MPN) of the item.
ppMpn :: Lens' Product (Maybe Text)
ppMpn = lens _ppMpn (\ s a -> s{_ppMpn = a})

-- | Condition or state of the item.
ppCondition :: Lens' Product (Maybe Text)
ppCondition
  = lens _ppCondition (\ s a -> s{_ppCondition = a})

-- | Size of the item.
ppSizes :: Lens' Product [Text]
ppSizes
  = lens _ppSizes (\ s a -> s{_ppSizes = a}) . _Default
      . _Coerce

-- | Whether the item is a merchant-defined bundle. A bundle is a custom
-- grouping of different products sold by a merchant for a single price.
ppIsBundle :: Lens' Product (Maybe Bool)
ppIsBundle
  = lens _ppIsBundle (\ s a -> s{_ppIsBundle = a})

-- | Description of the item.
ppDescription :: Lens' Product (Maybe Text)
ppDescription
  = lens _ppDescription
      (\ s a -> s{_ppDescription = a})

-- | Custom label 4 for custom grouping of items in a Shopping campaign.
ppCustomLabel4 :: Lens' Product (Maybe Text)
ppCustomLabel4
  = lens _ppCustomLabel4
      (\ s a -> s{_ppCustomLabel4 = a})

-- | An identifier for an item for dynamic remarketing campaigns.
ppDisplayAdsId :: Lens' Product (Maybe Text)
ppDisplayAdsId
  = lens _ppDisplayAdsId
      (\ s a -> s{_ppDisplayAdsId = a})

instance FromJSON Product where
        parseJSON
          = withObject "Product"
              (\ o ->
                 Product <$>
                   (o .:? "displayAdsLink") <*> (o .:? "customLabel1")
                     <*> (o .:? "shippingWidth")
                     <*> (o .:? "customGroups" .!= mempty)
                     <*> (o .:? "imageLink")
                     <*> (o .:? "displayAdsValue")
                     <*> (o .:? "loyaltyPoints")
                     <*> (o .:? "additionalImageLinks" .!= mempty)
                     <*> (o .:? "validatedDestinations" .!= mempty)
                     <*> (o .:? "color")
                     <*> (o .:? "customLabel0")
                     <*> (o .:? "kind" .!= "content#product")
                     <*> (o .:? "multipack")
                     <*> (o .:? "pattern")
                     <*> (o .:? "link")
                     <*> (o .:? "sizeSystem")
                     <*> (o .:? "unitPricingBaseMeasure")
                     <*> (o .:? "taxes" .!= mempty)
                     <*> (o .:? "material")
                     <*> (o .:? "installment")
                     <*> (o .:? "channel")
                     <*> (o .:? "productType")
                     <*> (o .:? "identifierExists")
                     <*> (o .:? "onlineOnly")
                     <*> (o .:? "brand")
                     <*> (o .:? "unitPricingMeasure")
                     <*> (o .:? "salePrice")
                     <*> (o .:? "shippingLength")
                     <*> (o .:? "customLabel3")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "availability")
                     <*> (o .:? "targetCountry")
                     <*> (o .:? "shippingLabel")
                     <*> (o .:? "customAttributes" .!= mempty)
                     <*> (o .:? "gtin")
                     <*> (o .:? "ageGroup")
                     <*> (o .:? "displayAdsTitle")
                     <*> (o .:? "gender")
                     <*> (o .:? "destinations" .!= mempty)
                     <*> (o .:? "expirationDate")
                     <*> (o .:? "itemGroupId")
                     <*> (o .:? "adwordsGrouping")
                     <*> (o .:? "salePriceEffectiveDate")
                     <*> (o .:? "customLabel2")
                     <*> (o .:? "googleProductCategory")
                     <*> (o .:? "shipping" .!= mempty)
                     <*> (o .:? "adwordsRedirect")
                     <*> (o .:? "shippingWeight")
                     <*> (o .:? "sellOnGoogleQuantity")
                     <*> (o .:? "shippingHeight")
                     <*> (o .:? "availabilityDate")
                     <*> (o .:? "offerId")
                     <*> (o .:? "id")
                     <*> (o .:? "adwordsLabels" .!= mempty)
                     <*> (o .:? "price")
                     <*> (o .:? "promotionIds" .!= mempty)
                     <*> (o .:? "sizeType")
                     <*> (o .:? "mobileLink")
                     <*> (o .:? "title")
                     <*> (o .:? "adult")
                     <*> (o .:? "contentLanguage")
                     <*> (o .:? "aspects" .!= mempty)
                     <*> (o .:? "energyEfficiencyClass")
                     <*> (o .:? "displayAdsSimilarIds" .!= mempty)
                     <*> (o .:? "mpn")
                     <*> (o .:? "condition")
                     <*> (o .:? "sizes" .!= mempty)
                     <*> (o .:? "isBundle")
                     <*> (o .:? "description")
                     <*> (o .:? "customLabel4")
                     <*> (o .:? "displayAdsId"))

instance ToJSON Product where
        toJSON Product{..}
          = object
              (catMaybes
                 [("displayAdsLink" .=) <$> _ppDisplayAdsLink,
                  ("customLabel1" .=) <$> _ppCustomLabel1,
                  ("shippingWidth" .=) <$> _ppShippingWidth,
                  ("customGroups" .=) <$> _ppCustomGroups,
                  ("imageLink" .=) <$> _ppImageLink,
                  ("displayAdsValue" .=) <$> _ppDisplayAdsValue,
                  ("loyaltyPoints" .=) <$> _ppLoyaltyPoints,
                  ("additionalImageLinks" .=) <$>
                    _ppAdditionalImageLinks,
                  ("validatedDestinations" .=) <$>
                    _ppValidatedDestinations,
                  ("color" .=) <$> _ppColor,
                  ("customLabel0" .=) <$> _ppCustomLabel0,
                  Just ("kind" .= _ppKind),
                  ("multipack" .=) <$> _ppMultipack,
                  ("pattern" .=) <$> _ppPattern,
                  ("link" .=) <$> _ppLink,
                  ("sizeSystem" .=) <$> _ppSizeSystem,
                  ("unitPricingBaseMeasure" .=) <$>
                    _ppUnitPricingBaseMeasure,
                  ("taxes" .=) <$> _ppTaxes,
                  ("material" .=) <$> _ppMaterial,
                  ("installment" .=) <$> _ppInstallment,
                  ("channel" .=) <$> _ppChannel,
                  ("productType" .=) <$> _ppProductType,
                  ("identifierExists" .=) <$> _ppIdentifierExists,
                  ("onlineOnly" .=) <$> _ppOnlineOnly,
                  ("brand" .=) <$> _ppBrand,
                  ("unitPricingMeasure" .=) <$> _ppUnitPricingMeasure,
                  ("salePrice" .=) <$> _ppSalePrice,
                  ("shippingLength" .=) <$> _ppShippingLength,
                  ("customLabel3" .=) <$> _ppCustomLabel3,
                  ("warnings" .=) <$> _ppWarnings,
                  ("availability" .=) <$> _ppAvailability,
                  ("targetCountry" .=) <$> _ppTargetCountry,
                  ("shippingLabel" .=) <$> _ppShippingLabel,
                  ("customAttributes" .=) <$> _ppCustomAttributes,
                  ("gtin" .=) <$> _ppGtin,
                  ("ageGroup" .=) <$> _ppAgeGroup,
                  ("displayAdsTitle" .=) <$> _ppDisplayAdsTitle,
                  ("gender" .=) <$> _ppGender,
                  ("destinations" .=) <$> _ppDestinations,
                  ("expirationDate" .=) <$> _ppExpirationDate,
                  ("itemGroupId" .=) <$> _ppItemGroupId,
                  ("adwordsGrouping" .=) <$> _ppAdwordsGrouping,
                  ("salePriceEffectiveDate" .=) <$>
                    _ppSalePriceEffectiveDate,
                  ("customLabel2" .=) <$> _ppCustomLabel2,
                  ("googleProductCategory" .=) <$>
                    _ppGoogleProductCategory,
                  ("shipping" .=) <$> _ppShipping,
                  ("adwordsRedirect" .=) <$> _ppAdwordsRedirect,
                  ("shippingWeight" .=) <$> _ppShippingWeight,
                  ("sellOnGoogleQuantity" .=) <$>
                    _ppSellOnGoogleQuantity,
                  ("shippingHeight" .=) <$> _ppShippingHeight,
                  ("availabilityDate" .=) <$> _ppAvailabilityDate,
                  ("offerId" .=) <$> _ppOfferId, ("id" .=) <$> _ppId,
                  ("adwordsLabels" .=) <$> _ppAdwordsLabels,
                  ("price" .=) <$> _ppPrice,
                  ("promotionIds" .=) <$> _ppPromotionIds,
                  ("sizeType" .=) <$> _ppSizeType,
                  ("mobileLink" .=) <$> _ppMobileLink,
                  ("title" .=) <$> _ppTitle, ("adult" .=) <$> _ppAdult,
                  ("contentLanguage" .=) <$> _ppContentLanguage,
                  ("aspects" .=) <$> _ppAspects,
                  ("energyEfficiencyClass" .=) <$>
                    _ppEnergyEfficiencyClass,
                  ("displayAdsSimilarIds" .=) <$>
                    _ppDisplayAdsSimilarIds,
                  ("mpn" .=) <$> _ppMpn,
                  ("condition" .=) <$> _ppCondition,
                  ("sizes" .=) <$> _ppSizes,
                  ("isBundle" .=) <$> _ppIsBundle,
                  ("description" .=) <$> _ppDescription,
                  ("customLabel4" .=) <$> _ppCustomLabel4,
                  ("displayAdsId" .=) <$> _ppDisplayAdsId])

-- | A list of errors returned by a failed batch entry.
--
-- /See:/ 'errors' smart constructor.
data Errors = Errors
    { _errCode    :: !(Maybe (Textual Word32))
    , _errMessage :: !(Maybe Text)
    , _errErrors  :: !(Maybe [Error'])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    Errors
    { _errCode = Nothing
    , _errMessage = Nothing
    , _errErrors = Nothing
    }

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
                 Errors <$>
                   (o .:? "code") <*> (o .:? "message") <*>
                     (o .:? "errors" .!= mempty))

instance ToJSON Errors where
        toJSON Errors{..}
          = object
              (catMaybes
                 [("code" .=) <$> _errCode,
                  ("message" .=) <$> _errMessage,
                  ("errors" .=) <$> _errErrors])

-- | A batch entry encoding a single non-batch accountstatuses response.
--
-- /See:/ 'accountstatusesCustomBatchResponseEntry' smart constructor.
data AccountstatusesCustomBatchResponseEntry = AccountstatusesCustomBatchResponseEntry
    { _acccAccountStatus :: !(Maybe AccountStatus)
    , _acccErrors        :: !(Maybe Errors)
    , _acccBatchId       :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acccAccountStatus'
--
-- * 'acccErrors'
--
-- * 'acccBatchId'
accountstatusesCustomBatchResponseEntry
    :: AccountstatusesCustomBatchResponseEntry
accountstatusesCustomBatchResponseEntry =
    AccountstatusesCustomBatchResponseEntry
    { _acccAccountStatus = Nothing
    , _acccErrors = Nothing
    , _acccBatchId = Nothing
    }

-- | The requested account status. Defined if and only if the request was
-- successful.
acccAccountStatus :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe AccountStatus)
acccAccountStatus
  = lens _acccAccountStatus
      (\ s a -> s{_acccAccountStatus = a})

-- | A list of errors defined if and only if the request failed.
acccErrors :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Errors)
acccErrors
  = lens _acccErrors (\ s a -> s{_acccErrors = a})

-- | The ID of the request entry this entry responds to.
acccBatchId :: Lens' AccountstatusesCustomBatchResponseEntry (Maybe Word32)
acccBatchId
  = lens _acccBatchId (\ s a -> s{_acccBatchId = a}) .
      mapping _Coerce

instance FromJSON
         AccountstatusesCustomBatchResponseEntry where
        parseJSON
          = withObject
              "AccountstatusesCustomBatchResponseEntry"
              (\ o ->
                 AccountstatusesCustomBatchResponseEntry <$>
                   (o .:? "accountStatus") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON
         AccountstatusesCustomBatchResponseEntry where
        toJSON AccountstatusesCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [("accountStatus" .=) <$> _acccAccountStatus,
                  ("errors" .=) <$> _acccErrors,
                  ("batchId" .=) <$> _acccBatchId])

--
-- /See:/ 'inventorySetResponse' smart constructor.
newtype InventorySetResponse = InventorySetResponse
    { _isrKind :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventorySetResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isrKind'
inventorySetResponse
    :: InventorySetResponse
inventorySetResponse =
    InventorySetResponse
    { _isrKind = "content#inventorySetResponse"
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#inventorySetResponse\".
isrKind :: Lens' InventorySetResponse Text
isrKind = lens _isrKind (\ s a -> s{_isrKind = a})

instance FromJSON InventorySetResponse where
        parseJSON
          = withObject "InventorySetResponse"
              (\ o ->
                 InventorySetResponse <$>
                   (o .:? "kind" .!= "content#inventorySetResponse"))

instance ToJSON InventorySetResponse where
        toJSON InventorySetResponse{..}
          = object (catMaybes [Just ("kind" .= _isrKind)])

--
-- /See:/ 'ordersCancelLineItemResponse' smart constructor.
data OrdersCancelLineItemResponse = OrdersCancelLineItemResponse
    { _oclirKind            :: !Text
    , _oclirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersCancelLineItemResponse
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
                 OrdersCancelLineItemResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersCancelLineItemResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersCancelLineItemResponse where
        toJSON OrdersCancelLineItemResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oclirKind),
                  ("executionStatus" .=) <$> _oclirExecutionStatus])

--
-- /See:/ 'testOrderLineItem' smart constructor.
data TestOrderLineItem = TestOrderLineItem
    { _toliQuantityOrdered :: !(Maybe (Textual Word32))
    , _toliReturnInfo      :: !(Maybe OrderLineItemReturnInfo)
    , _toliShippingDetails :: !(Maybe OrderLineItemShippingDetails)
    , _toliProduct         :: !(Maybe TestOrderLineItemProduct)
    , _toliUnitTax         :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    TestOrderLineItem
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
                 TestOrderLineItem <$>
                   (o .:? "quantityOrdered") <*> (o .:? "returnInfo")
                     <*> (o .:? "shippingDetails")
                     <*> (o .:? "product")
                     <*> (o .:? "unitTax"))

instance ToJSON TestOrderLineItem where
        toJSON TestOrderLineItem{..}
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
data ProductstatusesCustomBatchRequestEntry = ProductstatusesCustomBatchRequestEntry
    { _pcbrecMerchantId :: !(Maybe (Textual Word64))
    , _pcbrecMethod     :: !(Maybe Text)
    , _pcbrecProductId  :: !(Maybe Text)
    , _pcbrecBatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductstatusesCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrecMerchantId'
--
-- * 'pcbrecMethod'
--
-- * 'pcbrecProductId'
--
-- * 'pcbrecBatchId'
productstatusesCustomBatchRequestEntry
    :: ProductstatusesCustomBatchRequestEntry
productstatusesCustomBatchRequestEntry =
    ProductstatusesCustomBatchRequestEntry
    { _pcbrecMerchantId = Nothing
    , _pcbrecMethod = Nothing
    , _pcbrecProductId = Nothing
    , _pcbrecBatchId = Nothing
    }

-- | The ID of the managing account.
pcbrecMerchantId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word64)
pcbrecMerchantId
  = lens _pcbrecMerchantId
      (\ s a -> s{_pcbrecMerchantId = a})
      . mapping _Coerce

pcbrecMethod :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
pcbrecMethod
  = lens _pcbrecMethod (\ s a -> s{_pcbrecMethod = a})

-- | The ID of the product whose status to get.
pcbrecProductId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Text)
pcbrecProductId
  = lens _pcbrecProductId
      (\ s a -> s{_pcbrecProductId = a})

-- | An entry ID, unique within the batch request.
pcbrecBatchId :: Lens' ProductstatusesCustomBatchRequestEntry (Maybe Word32)
pcbrecBatchId
  = lens _pcbrecBatchId
      (\ s a -> s{_pcbrecBatchId = a})
      . mapping _Coerce

instance FromJSON
         ProductstatusesCustomBatchRequestEntry where
        parseJSON
          = withObject "ProductstatusesCustomBatchRequestEntry"
              (\ o ->
                 ProductstatusesCustomBatchRequestEntry <$>
                   (o .:? "merchantId") <*> (o .:? "method") <*>
                     (o .:? "productId")
                     <*> (o .:? "batchId"))

instance ToJSON
         ProductstatusesCustomBatchRequestEntry where
        toJSON ProductstatusesCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("merchantId" .=) <$> _pcbrecMerchantId,
                  ("method" .=) <$> _pcbrecMethod,
                  ("productId" .=) <$> _pcbrecProductId,
                  ("batchId" .=) <$> _pcbrecBatchId])

-- | A batch entry encoding a single non-batch accountshipping response.
--
-- /See:/ 'accountshippingCustomBatchResponseEntry' smart constructor.
data AccountshippingCustomBatchResponseEntry = AccountshippingCustomBatchResponseEntry
    { _acbre1Kind            :: !Text
    , _acbre1Errors          :: !(Maybe Errors)
    , _acbre1AccountShipping :: !(Maybe AccountShipping)
    , _acbre1BatchId         :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountshippingCustomBatchResponseEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acbre1Kind'
--
-- * 'acbre1Errors'
--
-- * 'acbre1AccountShipping'
--
-- * 'acbre1BatchId'
accountshippingCustomBatchResponseEntry
    :: AccountshippingCustomBatchResponseEntry
accountshippingCustomBatchResponseEntry =
    AccountshippingCustomBatchResponseEntry
    { _acbre1Kind = "content#accountshippingCustomBatchResponseEntry"
    , _acbre1Errors = Nothing
    , _acbre1AccountShipping = Nothing
    , _acbre1BatchId = Nothing
    }

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountshippingCustomBatchResponseEntry\".
acbre1Kind :: Lens' AccountshippingCustomBatchResponseEntry Text
acbre1Kind
  = lens _acbre1Kind (\ s a -> s{_acbre1Kind = a})

-- | A list of errors defined if and only if the request failed.
acbre1Errors :: Lens' AccountshippingCustomBatchResponseEntry (Maybe Errors)
acbre1Errors
  = lens _acbre1Errors (\ s a -> s{_acbre1Errors = a})

-- | The retrieved or updated account shipping settings.
acbre1AccountShipping :: Lens' AccountshippingCustomBatchResponseEntry (Maybe AccountShipping)
acbre1AccountShipping
  = lens _acbre1AccountShipping
      (\ s a -> s{_acbre1AccountShipping = a})

-- | The ID of the request entry this entry responds to.
acbre1BatchId :: Lens' AccountshippingCustomBatchResponseEntry (Maybe Word32)
acbre1BatchId
  = lens _acbre1BatchId
      (\ s a -> s{_acbre1BatchId = a})
      . mapping _Coerce

instance FromJSON
         AccountshippingCustomBatchResponseEntry where
        parseJSON
          = withObject
              "AccountshippingCustomBatchResponseEntry"
              (\ o ->
                 AccountshippingCustomBatchResponseEntry <$>
                   (o .:? "kind" .!=
                      "content#accountshippingCustomBatchResponseEntry")
                     <*> (o .:? "errors")
                     <*> (o .:? "accountShipping")
                     <*> (o .:? "batchId"))

instance ToJSON
         AccountshippingCustomBatchResponseEntry where
        toJSON AccountshippingCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [Just ("kind" .= _acbre1Kind),
                  ("errors" .=) <$> _acbre1Errors,
                  ("accountShipping" .=) <$> _acbre1AccountShipping,
                  ("batchId" .=) <$> _acbre1BatchId])

--
-- /See:/ 'productAspect' smart constructor.
data ProductAspect = ProductAspect
    { _paIntention       :: !(Maybe Text)
    , _paAspectName      :: !(Maybe Text)
    , _paDestinationName :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductAspect' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'paIntention'
--
-- * 'paAspectName'
--
-- * 'paDestinationName'
productAspect
    :: ProductAspect
productAspect =
    ProductAspect
    { _paIntention = Nothing
    , _paAspectName = Nothing
    , _paDestinationName = Nothing
    }

-- | Whether the aspect is required, excluded or should be validated.
paIntention :: Lens' ProductAspect (Maybe Text)
paIntention
  = lens _paIntention (\ s a -> s{_paIntention = a})

-- | The name of the aspect.
paAspectName :: Lens' ProductAspect (Maybe Text)
paAspectName
  = lens _paAspectName (\ s a -> s{_paAspectName = a})

-- | The name of the destination. Leave out to apply to all destinations.
paDestinationName :: Lens' ProductAspect (Maybe Text)
paDestinationName
  = lens _paDestinationName
      (\ s a -> s{_paDestinationName = a})

instance FromJSON ProductAspect where
        parseJSON
          = withObject "ProductAspect"
              (\ o ->
                 ProductAspect <$>
                   (o .:? "intention") <*> (o .:? "aspectName") <*>
                     (o .:? "destinationName"))

instance ToJSON ProductAspect where
        toJSON ProductAspect{..}
          = object
              (catMaybes
                 [("intention" .=) <$> _paIntention,
                  ("aspectName" .=) <$> _paAspectName,
                  ("destinationName" .=) <$> _paDestinationName])

-- | The shipping settings of a merchant account.
--
-- /See:/ 'accountShipping' smart constructor.
data AccountShipping = AccountShipping
    { _assRateTables     :: !(Maybe [AccountShippingRateTable])
    , _assCarrierRates   :: !(Maybe [AccountShippingCarrierRate])
    , _assKind           :: !Text
    , _assLocationGroups :: !(Maybe [AccountShippingLocationGroup])
    , _assAccountId      :: !(Maybe (Textual Word64))
    , _assServices       :: !(Maybe [AccountShippingShippingService])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShipping' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assRateTables'
--
-- * 'assCarrierRates'
--
-- * 'assKind'
--
-- * 'assLocationGroups'
--
-- * 'assAccountId'
--
-- * 'assServices'
accountShipping
    :: AccountShipping
accountShipping =
    AccountShipping
    { _assRateTables = Nothing
    , _assCarrierRates = Nothing
    , _assKind = "content#accountShipping"
    , _assLocationGroups = Nothing
    , _assAccountId = Nothing
    , _assServices = Nothing
    }

-- | Rate tables definitions.
assRateTables :: Lens' AccountShipping [AccountShippingRateTable]
assRateTables
  = lens _assRateTables
      (\ s a -> s{_assRateTables = a})
      . _Default
      . _Coerce

-- | Carrier-based shipping calculations.
assCarrierRates :: Lens' AccountShipping [AccountShippingCarrierRate]
assCarrierRates
  = lens _assCarrierRates
      (\ s a -> s{_assCarrierRates = a})
      . _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#accountShipping\".
assKind :: Lens' AccountShipping Text
assKind = lens _assKind (\ s a -> s{_assKind = a})

-- | Location groups for shipping.
assLocationGroups :: Lens' AccountShipping [AccountShippingLocationGroup]
assLocationGroups
  = lens _assLocationGroups
      (\ s a -> s{_assLocationGroups = a})
      . _Default
      . _Coerce

-- | The ID of the account to which these account shipping settings belong.
assAccountId :: Lens' AccountShipping (Maybe Word64)
assAccountId
  = lens _assAccountId (\ s a -> s{_assAccountId = a})
      . mapping _Coerce

-- | Shipping services describing shipping fees calculation.
assServices :: Lens' AccountShipping [AccountShippingShippingService]
assServices
  = lens _assServices (\ s a -> s{_assServices = a}) .
      _Default
      . _Coerce

instance FromJSON AccountShipping where
        parseJSON
          = withObject "AccountShipping"
              (\ o ->
                 AccountShipping <$>
                   (o .:? "rateTables" .!= mempty) <*>
                     (o .:? "carrierRates" .!= mempty)
                     <*> (o .:? "kind" .!= "content#accountShipping")
                     <*> (o .:? "locationGroups" .!= mempty)
                     <*> (o .:? "accountId")
                     <*> (o .:? "services" .!= mempty))

instance ToJSON AccountShipping where
        toJSON AccountShipping{..}
          = object
              (catMaybes
                 [("rateTables" .=) <$> _assRateTables,
                  ("carrierRates" .=) <$> _assCarrierRates,
                  Just ("kind" .= _assKind),
                  ("locationGroups" .=) <$> _assLocationGroups,
                  ("accountId" .=) <$> _assAccountId,
                  ("services" .=) <$> _assServices])

--
-- /See:/ 'ordersUpdateMerchantOrderIdResponse' smart constructor.
data OrdersUpdateMerchantOrderIdResponse = OrdersUpdateMerchantOrderIdResponse
    { _oumoirKind            :: !Text
    , _oumoirExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersUpdateMerchantOrderIdResponse
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
                 OrdersUpdateMerchantOrderIdResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersUpdateMerchantOrderIdResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersUpdateMerchantOrderIdResponse
         where
        toJSON OrdersUpdateMerchantOrderIdResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oumoirKind),
                  ("executionStatus" .=) <$> _oumoirExecutionStatus])

-- | An example occurrence for a particular error.
--
-- /See:/ 'datafeedStatusExample' smart constructor.
data DatafeedStatusExample = DatafeedStatusExample
    { _dseLineNumber :: !(Maybe (Textual Word64))
    , _dseItemId     :: !(Maybe Text)
    , _dseValue      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedStatusExample
    { _dseLineNumber = Nothing
    , _dseItemId = Nothing
    , _dseValue = Nothing
    }

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
                 DatafeedStatusExample <$>
                   (o .:? "lineNumber") <*> (o .:? "itemId") <*>
                     (o .:? "value"))

instance ToJSON DatafeedStatusExample where
        toJSON DatafeedStatusExample{..}
          = object
              (catMaybes
                 [("lineNumber" .=) <$> _dseLineNumber,
                  ("itemId" .=) <$> _dseItemId,
                  ("value" .=) <$> _dseValue])

--
-- /See:/ 'ordersAcknowledgeResponse' smart constructor.
data OrdersAcknowledgeResponse = OrdersAcknowledgeResponse
    { _oarKind            :: !Text
    , _oarExecutionStatus :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrdersAcknowledgeResponse
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
                 OrdersAcknowledgeResponse <$>
                   (o .:? "kind" .!=
                      "content#ordersAcknowledgeResponse")
                     <*> (o .:? "executionStatus"))

instance ToJSON OrdersAcknowledgeResponse where
        toJSON OrdersAcknowledgeResponse{..}
          = object
              (catMaybes
                 [Just ("kind" .= _oarKind),
                  ("executionStatus" .=) <$> _oarExecutionStatus])

--
-- /See:/ 'order' smart constructor.
data Order = Order
    { _ooStatus          :: !(Maybe Text)
    , _ooMerchantId      :: !(Maybe (Textual Word64))
    , _ooRefunds         :: !(Maybe [OrderRefund])
    , _ooKind            :: !Text
    , _ooLineItems       :: !(Maybe [OrderLineItem])
    , _ooShipments       :: !(Maybe [OrderShipment])
    , _ooNetAmount       :: !(Maybe Price)
    , _ooPlacedDate      :: !(Maybe Text)
    , _ooDeliveryDetails :: !(Maybe OrderDeliveryDetails)
    , _ooShippingOption  :: !(Maybe Text)
    , _ooMerchantOrderId :: !(Maybe Text)
    , _ooAcknowledged    :: !(Maybe Bool)
    , _ooShippingCostTax :: !(Maybe Price)
    , _ooCustomer        :: !(Maybe OrderCustomer)
    , _ooId              :: !(Maybe Text)
    , _ooPaymentMethod   :: !(Maybe OrderPaymentMethod)
    , _ooPromotions      :: !(Maybe [OrderPromotion])
    , _ooPaymentStatus   :: !(Maybe Text)
    , _ooShippingCost    :: !(Maybe Price)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Order' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ooStatus'
--
-- * 'ooMerchantId'
--
-- * 'ooRefunds'
--
-- * 'ooKind'
--
-- * 'ooLineItems'
--
-- * 'ooShipments'
--
-- * 'ooNetAmount'
--
-- * 'ooPlacedDate'
--
-- * 'ooDeliveryDetails'
--
-- * 'ooShippingOption'
--
-- * 'ooMerchantOrderId'
--
-- * 'ooAcknowledged'
--
-- * 'ooShippingCostTax'
--
-- * 'ooCustomer'
--
-- * 'ooId'
--
-- * 'ooPaymentMethod'
--
-- * 'ooPromotions'
--
-- * 'ooPaymentStatus'
--
-- * 'ooShippingCost'
order
    :: Order
order =
    Order
    { _ooStatus = Nothing
    , _ooMerchantId = Nothing
    , _ooRefunds = Nothing
    , _ooKind = "content#order"
    , _ooLineItems = Nothing
    , _ooShipments = Nothing
    , _ooNetAmount = Nothing
    , _ooPlacedDate = Nothing
    , _ooDeliveryDetails = Nothing
    , _ooShippingOption = Nothing
    , _ooMerchantOrderId = Nothing
    , _ooAcknowledged = Nothing
    , _ooShippingCostTax = Nothing
    , _ooCustomer = Nothing
    , _ooId = Nothing
    , _ooPaymentMethod = Nothing
    , _ooPromotions = Nothing
    , _ooPaymentStatus = Nothing
    , _ooShippingCost = Nothing
    }

-- | The status of the order.
ooStatus :: Lens' Order (Maybe Text)
ooStatus = lens _ooStatus (\ s a -> s{_ooStatus = a})

ooMerchantId :: Lens' Order (Maybe Word64)
ooMerchantId
  = lens _ooMerchantId (\ s a -> s{_ooMerchantId = a})
      . mapping _Coerce

-- | Refunds for the order.
ooRefunds :: Lens' Order [OrderRefund]
ooRefunds
  = lens _ooRefunds (\ s a -> s{_ooRefunds = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#order\".
ooKind :: Lens' Order Text
ooKind = lens _ooKind (\ s a -> s{_ooKind = a})

-- | Line items that are ordered.
ooLineItems :: Lens' Order [OrderLineItem]
ooLineItems
  = lens _ooLineItems (\ s a -> s{_ooLineItems = a}) .
      _Default
      . _Coerce

-- | Shipments of the order.
ooShipments :: Lens' Order [OrderShipment]
ooShipments
  = lens _ooShipments (\ s a -> s{_ooShipments = a}) .
      _Default
      . _Coerce

-- | The net amount for the order. For example, if an order was originally
-- for a grand total of $100 and a refund was issued for $20, the net
-- amount will be $80.
ooNetAmount :: Lens' Order (Maybe Price)
ooNetAmount
  = lens _ooNetAmount (\ s a -> s{_ooNetAmount = a})

-- | The date when the order was placed, in ISO 8601 format.
ooPlacedDate :: Lens' Order (Maybe Text)
ooPlacedDate
  = lens _ooPlacedDate (\ s a -> s{_ooPlacedDate = a})

-- | The details for the delivery.
ooDeliveryDetails :: Lens' Order (Maybe OrderDeliveryDetails)
ooDeliveryDetails
  = lens _ooDeliveryDetails
      (\ s a -> s{_ooDeliveryDetails = a})

-- | The requested shipping option.
ooShippingOption :: Lens' Order (Maybe Text)
ooShippingOption
  = lens _ooShippingOption
      (\ s a -> s{_ooShippingOption = a})

-- | Merchant-provided id of the order.
ooMerchantOrderId :: Lens' Order (Maybe Text)
ooMerchantOrderId
  = lens _ooMerchantOrderId
      (\ s a -> s{_ooMerchantOrderId = a})

-- | Whether the order was acknowledged.
ooAcknowledged :: Lens' Order (Maybe Bool)
ooAcknowledged
  = lens _ooAcknowledged
      (\ s a -> s{_ooAcknowledged = a})

-- | The tax for the total shipping cost.
ooShippingCostTax :: Lens' Order (Maybe Price)
ooShippingCostTax
  = lens _ooShippingCostTax
      (\ s a -> s{_ooShippingCostTax = a})

-- | The details of the customer who placed the order.
ooCustomer :: Lens' Order (Maybe OrderCustomer)
ooCustomer
  = lens _ooCustomer (\ s a -> s{_ooCustomer = a})

-- | The REST id of the order. Globally unique.
ooId :: Lens' Order (Maybe Text)
ooId = lens _ooId (\ s a -> s{_ooId = a})

-- | The details of the payment method.
ooPaymentMethod :: Lens' Order (Maybe OrderPaymentMethod)
ooPaymentMethod
  = lens _ooPaymentMethod
      (\ s a -> s{_ooPaymentMethod = a})

-- | The details of the merchant provided promotions applied to the order.
-- More details about the program are here.
ooPromotions :: Lens' Order [OrderPromotion]
ooPromotions
  = lens _ooPromotions (\ s a -> s{_ooPromotions = a})
      . _Default
      . _Coerce

-- | The status of the payment.
ooPaymentStatus :: Lens' Order (Maybe Text)
ooPaymentStatus
  = lens _ooPaymentStatus
      (\ s a -> s{_ooPaymentStatus = a})

-- | The total cost of shipping for all items.
ooShippingCost :: Lens' Order (Maybe Price)
ooShippingCost
  = lens _ooShippingCost
      (\ s a -> s{_ooShippingCost = a})

instance FromJSON Order where
        parseJSON
          = withObject "Order"
              (\ o ->
                 Order <$>
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
                     <*> (o .:? "id")
                     <*> (o .:? "paymentMethod")
                     <*> (o .:? "promotions" .!= mempty)
                     <*> (o .:? "paymentStatus")
                     <*> (o .:? "shippingCost"))

instance ToJSON Order where
        toJSON Order{..}
          = object
              (catMaybes
                 [("status" .=) <$> _ooStatus,
                  ("merchantId" .=) <$> _ooMerchantId,
                  ("refunds" .=) <$> _ooRefunds,
                  Just ("kind" .= _ooKind),
                  ("lineItems" .=) <$> _ooLineItems,
                  ("shipments" .=) <$> _ooShipments,
                  ("netAmount" .=) <$> _ooNetAmount,
                  ("placedDate" .=) <$> _ooPlacedDate,
                  ("deliveryDetails" .=) <$> _ooDeliveryDetails,
                  ("shippingOption" .=) <$> _ooShippingOption,
                  ("merchantOrderId" .=) <$> _ooMerchantOrderId,
                  ("acknowledged" .=) <$> _ooAcknowledged,
                  ("shippingCostTax" .=) <$> _ooShippingCostTax,
                  ("customer" .=) <$> _ooCustomer, ("id" .=) <$> _ooId,
                  ("paymentMethod" .=) <$> _ooPaymentMethod,
                  ("promotions" .=) <$> _ooPromotions,
                  ("paymentStatus" .=) <$> _ooPaymentStatus,
                  ("shippingCost" .=) <$> _ooShippingCost])

--
-- /See:/ 'inventoryCustomBatchResponse' smart constructor.
data InventoryCustomBatchResponse = InventoryCustomBatchResponse
    { _invEntries :: !(Maybe [InventoryCustomBatchResponseEntry])
    , _invKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'invEntries'
--
-- * 'invKind'
inventoryCustomBatchResponse
    :: InventoryCustomBatchResponse
inventoryCustomBatchResponse =
    InventoryCustomBatchResponse
    { _invEntries = Nothing
    , _invKind = "content#inventoryCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
invEntries :: Lens' InventoryCustomBatchResponse [InventoryCustomBatchResponseEntry]
invEntries
  = lens _invEntries (\ s a -> s{_invEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#inventoryCustomBatchResponse\".
invKind :: Lens' InventoryCustomBatchResponse Text
invKind = lens _invKind (\ s a -> s{_invKind = a})

instance FromJSON InventoryCustomBatchResponse where
        parseJSON
          = withObject "InventoryCustomBatchResponse"
              (\ o ->
                 InventoryCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#inventoryCustomBatchResponse"))

instance ToJSON InventoryCustomBatchResponse where
        toJSON InventoryCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _invEntries,
                  Just ("kind" .= _invKind)])

--
-- /See:/ 'orderLineItemProduct' smart constructor.
data OrderLineItemProduct = OrderLineItemProduct
    { _olipImageLink         :: !(Maybe Text)
    , _olipShownImage        :: !(Maybe Text)
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
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrderLineItemProduct' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olipImageLink'
--
-- * 'olipShownImage'
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
    OrderLineItemProduct
    { _olipImageLink = Nothing
    , _olipShownImage = Nothing
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
                 OrderLineItemProduct <$>
                   (o .:? "imageLink") <*> (o .:? "shownImage") <*>
                     (o .:? "channel")
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
        toJSON OrderLineItemProduct{..}
          = object
              (catMaybes
                 [("imageLink" .=) <$> _olipImageLink,
                  ("shownImage" .=) <$> _olipShownImage,
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
data AccounttaxCustomBatchRequestEntry = AccounttaxCustomBatchRequestEntry
    { _a2AccountTax :: !(Maybe AccountTax)
    , _a2MerchantId :: !(Maybe (Textual Word64))
    , _a2AccountId  :: !(Maybe (Textual Word64))
    , _a2Method     :: !(Maybe Text)
    , _a2BatchId    :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccounttaxCustomBatchRequestEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'a2AccountTax'
--
-- * 'a2MerchantId'
--
-- * 'a2AccountId'
--
-- * 'a2Method'
--
-- * 'a2BatchId'
accounttaxCustomBatchRequestEntry
    :: AccounttaxCustomBatchRequestEntry
accounttaxCustomBatchRequestEntry =
    AccounttaxCustomBatchRequestEntry
    { _a2AccountTax = Nothing
    , _a2MerchantId = Nothing
    , _a2AccountId = Nothing
    , _a2Method = Nothing
    , _a2BatchId = Nothing
    }

-- | The account tax settings to update. Only defined if the method is
-- update.
a2AccountTax :: Lens' AccounttaxCustomBatchRequestEntry (Maybe AccountTax)
a2AccountTax
  = lens _a2AccountTax (\ s a -> s{_a2AccountTax = a})

-- | The ID of the managing account.
a2MerchantId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
a2MerchantId
  = lens _a2MerchantId (\ s a -> s{_a2MerchantId = a})
      . mapping _Coerce

-- | The ID of the account for which to get\/update account tax settings.
a2AccountId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word64)
a2AccountId
  = lens _a2AccountId (\ s a -> s{_a2AccountId = a}) .
      mapping _Coerce

a2Method :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Text)
a2Method = lens _a2Method (\ s a -> s{_a2Method = a})

-- | An entry ID, unique within the batch request.
a2BatchId :: Lens' AccounttaxCustomBatchRequestEntry (Maybe Word32)
a2BatchId
  = lens _a2BatchId (\ s a -> s{_a2BatchId = a}) .
      mapping _Coerce

instance FromJSON AccounttaxCustomBatchRequestEntry
         where
        parseJSON
          = withObject "AccounttaxCustomBatchRequestEntry"
              (\ o ->
                 AccounttaxCustomBatchRequestEntry <$>
                   (o .:? "accountTax") <*> (o .:? "merchantId") <*>
                     (o .:? "accountId")
                     <*> (o .:? "method")
                     <*> (o .:? "batchId"))

instance ToJSON AccounttaxCustomBatchRequestEntry
         where
        toJSON AccounttaxCustomBatchRequestEntry{..}
          = object
              (catMaybes
                 [("accountTax" .=) <$> _a2AccountTax,
                  ("merchantId" .=) <$> _a2MerchantId,
                  ("accountId" .=) <$> _a2AccountId,
                  ("method" .=) <$> _a2Method,
                  ("batchId" .=) <$> _a2BatchId])

-- | An error occurring in the feed, like \"invalid price\".
--
-- /See:/ 'datafeedStatusError' smart constructor.
data DatafeedStatusError = DatafeedStatusError
    { _dseCount    :: !(Maybe (Textual Word64))
    , _dseCode     :: !(Maybe Text)
    , _dseMessage  :: !(Maybe Text)
    , _dseExamples :: !(Maybe [DatafeedStatusExample])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedStatusError
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
                 DatafeedStatusError <$>
                   (o .:? "count") <*> (o .:? "code") <*>
                     (o .:? "message")
                     <*> (o .:? "examples" .!= mempty))

instance ToJSON DatafeedStatusError where
        toJSON DatafeedStatusError{..}
          = object
              (catMaybes
                 [("count" .=) <$> _dseCount,
                  ("code" .=) <$> _dseCode,
                  ("message" .=) <$> _dseMessage,
                  ("examples" .=) <$> _dseExamples])

--
-- /See:/ 'productsCustomBatchRequest' smart constructor.
newtype ProductsCustomBatchRequest = ProductsCustomBatchRequest
    { _pcbrcEntries :: Maybe [ProductsCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcbrcEntries'
productsCustomBatchRequest
    :: ProductsCustomBatchRequest
productsCustomBatchRequest =
    ProductsCustomBatchRequest
    { _pcbrcEntries = Nothing
    }

-- | The request entries to be processed in the batch.
pcbrcEntries :: Lens' ProductsCustomBatchRequest [ProductsCustomBatchRequestEntry]
pcbrcEntries
  = lens _pcbrcEntries (\ s a -> s{_pcbrcEntries = a})
      . _Default
      . _Coerce

instance FromJSON ProductsCustomBatchRequest where
        parseJSON
          = withObject "ProductsCustomBatchRequest"
              (\ o ->
                 ProductsCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON ProductsCustomBatchRequest where
        toJSON ProductsCustomBatchRequest{..}
          = object
              (catMaybes [("entries" .=) <$> _pcbrcEntries])

--
-- /See:/ 'ordersCustomBatchRequestEntryReturnLineItem' smart constructor.
data OrdersCustomBatchRequestEntryReturnLineItem = OrdersCustomBatchRequestEntryReturnLineItem
    { _ocbrerliQuantity   :: !(Maybe (Textual Word32))
    , _ocbrerliLineItemId :: !(Maybe Text)
    , _ocbrerliReason     :: !(Maybe Text)
    , _ocbrerliReasonText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryReturnLineItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrerliQuantity'
--
-- * 'ocbrerliLineItemId'
--
-- * 'ocbrerliReason'
--
-- * 'ocbrerliReasonText'
ordersCustomBatchRequestEntryReturnLineItem
    :: OrdersCustomBatchRequestEntryReturnLineItem
ordersCustomBatchRequestEntryReturnLineItem =
    OrdersCustomBatchRequestEntryReturnLineItem
    { _ocbrerliQuantity = Nothing
    , _ocbrerliLineItemId = Nothing
    , _ocbrerliReason = Nothing
    , _ocbrerliReasonText = Nothing
    }

-- | The quantity to return.
ocbrerliQuantity :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Word32)
ocbrerliQuantity
  = lens _ocbrerliQuantity
      (\ s a -> s{_ocbrerliQuantity = a})
      . mapping _Coerce

-- | The ID of the line item to return.
ocbrerliLineItemId :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliLineItemId
  = lens _ocbrerliLineItemId
      (\ s a -> s{_ocbrerliLineItemId = a})

-- | The reason for the return.
ocbrerliReason :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliReason
  = lens _ocbrerliReason
      (\ s a -> s{_ocbrerliReason = a})

-- | The explanation of the reason.
ocbrerliReasonText :: Lens' OrdersCustomBatchRequestEntryReturnLineItem (Maybe Text)
ocbrerliReasonText
  = lens _ocbrerliReasonText
      (\ s a -> s{_ocbrerliReasonText = a})

instance FromJSON
         OrdersCustomBatchRequestEntryReturnLineItem where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryReturnLineItem"
              (\ o ->
                 OrdersCustomBatchRequestEntryReturnLineItem <$>
                   (o .:? "quantity") <*> (o .:? "lineItemId") <*>
                     (o .:? "reason")
                     <*> (o .:? "reasonText"))

instance ToJSON
         OrdersCustomBatchRequestEntryReturnLineItem where
        toJSON
          OrdersCustomBatchRequestEntryReturnLineItem{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocbrerliQuantity,
                  ("lineItemId" .=) <$> _ocbrerliLineItemId,
                  ("reason" .=) <$> _ocbrerliReason,
                  ("reasonText" .=) <$> _ocbrerliReasonText])

--
-- /See:/ 'ordersCustomBatchRequestEntryUpdateShipment' smart constructor.
data OrdersCustomBatchRequestEntryUpdateShipment = OrdersCustomBatchRequestEntryUpdateShipment
    { _ocbreusCarrier    :: !(Maybe Text)
    , _ocbreusStatus     :: !(Maybe Text)
    , _ocbreusTrackingId :: !(Maybe Text)
    , _ocbreusShipmentId :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryUpdateShipment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbreusCarrier'
--
-- * 'ocbreusStatus'
--
-- * 'ocbreusTrackingId'
--
-- * 'ocbreusShipmentId'
ordersCustomBatchRequestEntryUpdateShipment
    :: OrdersCustomBatchRequestEntryUpdateShipment
ordersCustomBatchRequestEntryUpdateShipment =
    OrdersCustomBatchRequestEntryUpdateShipment
    { _ocbreusCarrier = Nothing
    , _ocbreusStatus = Nothing
    , _ocbreusTrackingId = Nothing
    , _ocbreusShipmentId = Nothing
    }

-- | The carrier handling the shipment. Not updated if missing.
ocbreusCarrier :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusCarrier
  = lens _ocbreusCarrier
      (\ s a -> s{_ocbreusCarrier = a})

-- | New status for the shipment. Not updated if missing.
ocbreusStatus :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusStatus
  = lens _ocbreusStatus
      (\ s a -> s{_ocbreusStatus = a})

-- | The tracking id for the shipment. Not updated if missing.
ocbreusTrackingId :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusTrackingId
  = lens _ocbreusTrackingId
      (\ s a -> s{_ocbreusTrackingId = a})

-- | The ID of the shipment.
ocbreusShipmentId :: Lens' OrdersCustomBatchRequestEntryUpdateShipment (Maybe Text)
ocbreusShipmentId
  = lens _ocbreusShipmentId
      (\ s a -> s{_ocbreusShipmentId = a})

instance FromJSON
         OrdersCustomBatchRequestEntryUpdateShipment where
        parseJSON
          = withObject
              "OrdersCustomBatchRequestEntryUpdateShipment"
              (\ o ->
                 OrdersCustomBatchRequestEntryUpdateShipment <$>
                   (o .:? "carrier") <*> (o .:? "status") <*>
                     (o .:? "trackingId")
                     <*> (o .:? "shipmentId"))

instance ToJSON
         OrdersCustomBatchRequestEntryUpdateShipment where
        toJSON
          OrdersCustomBatchRequestEntryUpdateShipment{..}
          = object
              (catMaybes
                 [("carrier" .=) <$> _ocbreusCarrier,
                  ("status" .=) <$> _ocbreusStatus,
                  ("trackingId" .=) <$> _ocbreusTrackingId,
                  ("shipmentId" .=) <$> _ocbreusShipmentId])

-- | The status of a datafeed, i.e., the result of the last retrieval of the
-- datafeed computed asynchronously when the feed processing is finished.
--
-- /See:/ 'datafeedStatus' smart constructor.
data DatafeedStatus = DatafeedStatus
    { _dsItemsTotal       :: !(Maybe (Textual Word64))
    , _dsKind             :: !Text
    , _dsWarnings         :: !(Maybe [DatafeedStatusError])
    , _dsDatafeedId       :: !(Maybe (Textual Word64))
    , _dsProcessingStatus :: !(Maybe Text)
    , _dsLastUploadDate   :: !(Maybe Text)
    , _dsItemsValid       :: !(Maybe (Textual Word64))
    , _dsErrors           :: !(Maybe [DatafeedStatusError])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsItemsTotal'
--
-- * 'dsKind'
--
-- * 'dsWarnings'
--
-- * 'dsDatafeedId'
--
-- * 'dsProcessingStatus'
--
-- * 'dsLastUploadDate'
--
-- * 'dsItemsValid'
--
-- * 'dsErrors'
datafeedStatus
    :: DatafeedStatus
datafeedStatus =
    DatafeedStatus
    { _dsItemsTotal = Nothing
    , _dsKind = "content#datafeedStatus"
    , _dsWarnings = Nothing
    , _dsDatafeedId = Nothing
    , _dsProcessingStatus = Nothing
    , _dsLastUploadDate = Nothing
    , _dsItemsValid = Nothing
    , _dsErrors = Nothing
    }

-- | The number of items in the feed that were processed.
dsItemsTotal :: Lens' DatafeedStatus (Maybe Word64)
dsItemsTotal
  = lens _dsItemsTotal (\ s a -> s{_dsItemsTotal = a})
      . mapping _Coerce

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
                 DatafeedStatus <$>
                   (o .:? "itemsTotal") <*>
                     (o .:? "kind" .!= "content#datafeedStatus")
                     <*> (o .:? "warnings" .!= mempty)
                     <*> (o .:? "datafeedId")
                     <*> (o .:? "processingStatus")
                     <*> (o .:? "lastUploadDate")
                     <*> (o .:? "itemsValid")
                     <*> (o .:? "errors" .!= mempty))

instance ToJSON DatafeedStatus where
        toJSON DatafeedStatus{..}
          = object
              (catMaybes
                 [("itemsTotal" .=) <$> _dsItemsTotal,
                  Just ("kind" .= _dsKind),
                  ("warnings" .=) <$> _dsWarnings,
                  ("datafeedId" .=) <$> _dsDatafeedId,
                  ("processingStatus" .=) <$> _dsProcessingStatus,
                  ("lastUploadDate" .=) <$> _dsLastUploadDate,
                  ("itemsValid" .=) <$> _dsItemsValid,
                  ("errors" .=) <$> _dsErrors])

--
-- /See:/ 'datafeedstatusesCustomBatchRequest' smart constructor.
newtype DatafeedstatusesCustomBatchRequest = DatafeedstatusesCustomBatchRequest
    { _dcbrcEntries :: Maybe [DatafeedstatusesCustomBatchRequestEntry]
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DatafeedstatusesCustomBatchRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcbrcEntries'
datafeedstatusesCustomBatchRequest
    :: DatafeedstatusesCustomBatchRequest
datafeedstatusesCustomBatchRequest =
    DatafeedstatusesCustomBatchRequest
    { _dcbrcEntries = Nothing
    }

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
                 DatafeedstatusesCustomBatchRequest <$>
                   (o .:? "entries" .!= mempty))

instance ToJSON DatafeedstatusesCustomBatchRequest
         where
        toJSON DatafeedstatusesCustomBatchRequest{..}
          = object
              (catMaybes [("entries" .=) <$> _dcbrcEntries])

-- | A user-defined locations group in a given country. All the locations of
-- the group must be of the same type.
--
-- /See:/ 'accountShippingLocationGroup' smart constructor.
data AccountShippingLocationGroup = AccountShippingLocationGroup
    { _aslgCountry          :: !(Maybe Text)
    , _aslgLocationIds      :: !(Maybe [Textual Int64])
    , _aslgPostalCodeRanges :: !(Maybe [AccountShippingPostalCodeRange])
    , _aslgName             :: !(Maybe Text)
    , _aslgPostalCodes      :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountShippingLocationGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aslgCountry'
--
-- * 'aslgLocationIds'
--
-- * 'aslgPostalCodeRanges'
--
-- * 'aslgName'
--
-- * 'aslgPostalCodes'
accountShippingLocationGroup
    :: AccountShippingLocationGroup
accountShippingLocationGroup =
    AccountShippingLocationGroup
    { _aslgCountry = Nothing
    , _aslgLocationIds = Nothing
    , _aslgPostalCodeRanges = Nothing
    , _aslgName = Nothing
    , _aslgPostalCodes = Nothing
    }

-- | The CLDR territory code of the country in which this location group is.
aslgCountry :: Lens' AccountShippingLocationGroup (Maybe Text)
aslgCountry
  = lens _aslgCountry (\ s a -> s{_aslgCountry = a})

-- | A location ID (also called criteria ID) representing administrative
-- areas, smaller country subdivisions (counties), or cities.
aslgLocationIds :: Lens' AccountShippingLocationGroup [Int64]
aslgLocationIds
  = lens _aslgLocationIds
      (\ s a -> s{_aslgLocationIds = a})
      . _Default
      . _Coerce

-- | A postal code range representing a city or a set of cities.
aslgPostalCodeRanges :: Lens' AccountShippingLocationGroup [AccountShippingPostalCodeRange]
aslgPostalCodeRanges
  = lens _aslgPostalCodeRanges
      (\ s a -> s{_aslgPostalCodeRanges = a})
      . _Default
      . _Coerce

-- | The name of the location group.
aslgName :: Lens' AccountShippingLocationGroup (Maybe Text)
aslgName = lens _aslgName (\ s a -> s{_aslgName = a})

-- | A postal code representing a city or a set of cities. - A single postal
-- code (e.g., 12345) - A postal code prefix followed by a star (e.g.,
-- 1234*)
aslgPostalCodes :: Lens' AccountShippingLocationGroup [Text]
aslgPostalCodes
  = lens _aslgPostalCodes
      (\ s a -> s{_aslgPostalCodes = a})
      . _Default
      . _Coerce

instance FromJSON AccountShippingLocationGroup where
        parseJSON
          = withObject "AccountShippingLocationGroup"
              (\ o ->
                 AccountShippingLocationGroup <$>
                   (o .:? "country") <*>
                     (o .:? "locationIds" .!= mempty)
                     <*> (o .:? "postalCodeRanges" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "postalCodes" .!= mempty))

instance ToJSON AccountShippingLocationGroup where
        toJSON AccountShippingLocationGroup{..}
          = object
              (catMaybes
                 [("country" .=) <$> _aslgCountry,
                  ("locationIds" .=) <$> _aslgLocationIds,
                  ("postalCodeRanges" .=) <$> _aslgPostalCodeRanges,
                  ("name" .=) <$> _aslgName,
                  ("postalCodes" .=) <$> _aslgPostalCodes])

--
-- /See:/ 'accountStatusDataQualityIssue' smart constructor.
data AccountStatusDataQualityIssue = AccountStatusDataQualityIssue
    { _asdqiSubmittedValue :: !(Maybe Text)
    , _asdqiCountry        :: !(Maybe Text)
    , _asdqiDisplayedValue :: !(Maybe Text)
    , _asdqiNumItems       :: !(Maybe (Textual Word32))
    , _asdqiSeverity       :: !(Maybe Text)
    , _asdqiExampleItems   :: !(Maybe [AccountStatusExampleItem])
    , _asdqiLastChecked    :: !(Maybe Text)
    , _asdqiId             :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountStatusDataQualityIssue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdqiSubmittedValue'
--
-- * 'asdqiCountry'
--
-- * 'asdqiDisplayedValue'
--
-- * 'asdqiNumItems'
--
-- * 'asdqiSeverity'
--
-- * 'asdqiExampleItems'
--
-- * 'asdqiLastChecked'
--
-- * 'asdqiId'
accountStatusDataQualityIssue
    :: AccountStatusDataQualityIssue
accountStatusDataQualityIssue =
    AccountStatusDataQualityIssue
    { _asdqiSubmittedValue = Nothing
    , _asdqiCountry = Nothing
    , _asdqiDisplayedValue = Nothing
    , _asdqiNumItems = Nothing
    , _asdqiSeverity = Nothing
    , _asdqiExampleItems = Nothing
    , _asdqiLastChecked = Nothing
    , _asdqiId = Nothing
    }

-- | Submitted value that causes the issue.
asdqiSubmittedValue :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiSubmittedValue
  = lens _asdqiSubmittedValue
      (\ s a -> s{_asdqiSubmittedValue = a})

-- | Country for which this issue is reported.
asdqiCountry :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiCountry
  = lens _asdqiCountry (\ s a -> s{_asdqiCountry = a})

-- | Actual value displayed on the landing page.
asdqiDisplayedValue :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiDisplayedValue
  = lens _asdqiDisplayedValue
      (\ s a -> s{_asdqiDisplayedValue = a})

-- | Number of items in the account found to have the said issue.
asdqiNumItems :: Lens' AccountStatusDataQualityIssue (Maybe Word32)
asdqiNumItems
  = lens _asdqiNumItems
      (\ s a -> s{_asdqiNumItems = a})
      . mapping _Coerce

-- | Severity of the problem.
asdqiSeverity :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiSeverity
  = lens _asdqiSeverity
      (\ s a -> s{_asdqiSeverity = a})

-- | Example items featuring the issue.
asdqiExampleItems :: Lens' AccountStatusDataQualityIssue [AccountStatusExampleItem]
asdqiExampleItems
  = lens _asdqiExampleItems
      (\ s a -> s{_asdqiExampleItems = a})
      . _Default
      . _Coerce

-- | Last time the account was checked for this issue.
asdqiLastChecked :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiLastChecked
  = lens _asdqiLastChecked
      (\ s a -> s{_asdqiLastChecked = a})

-- | Issue identifier.
asdqiId :: Lens' AccountStatusDataQualityIssue (Maybe Text)
asdqiId = lens _asdqiId (\ s a -> s{_asdqiId = a})

instance FromJSON AccountStatusDataQualityIssue where
        parseJSON
          = withObject "AccountStatusDataQualityIssue"
              (\ o ->
                 AccountStatusDataQualityIssue <$>
                   (o .:? "submittedValue") <*> (o .:? "country") <*>
                     (o .:? "displayedValue")
                     <*> (o .:? "numItems")
                     <*> (o .:? "severity")
                     <*> (o .:? "exampleItems" .!= mempty)
                     <*> (o .:? "lastChecked")
                     <*> (o .:? "id"))

instance ToJSON AccountStatusDataQualityIssue where
        toJSON AccountStatusDataQualityIssue{..}
          = object
              (catMaybes
                 [("submittedValue" .=) <$> _asdqiSubmittedValue,
                  ("country" .=) <$> _asdqiCountry,
                  ("displayedValue" .=) <$> _asdqiDisplayedValue,
                  ("numItems" .=) <$> _asdqiNumItems,
                  ("severity" .=) <$> _asdqiSeverity,
                  ("exampleItems" .=) <$> _asdqiExampleItems,
                  ("lastChecked" .=) <$> _asdqiLastChecked,
                  ("id" .=) <$> _asdqiId])

--
-- /See:/ 'productShippingDimension' smart constructor.
data ProductShippingDimension = ProductShippingDimension
    { _psdValue :: !(Maybe (Textual Double))
    , _psdUnit  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    ProductShippingDimension
    { _psdValue = Nothing
    , _psdUnit = Nothing
    }

-- | The dimension of the product used to calculate the shipping cost of the
-- item.
psdValue :: Lens' ProductShippingDimension (Maybe Double)
psdValue
  = lens _psdValue (\ s a -> s{_psdValue = a}) .
      mapping _Coerce

-- | The unit of value. Acceptable values are: - \"cm\" - \"in\"
psdUnit :: Lens' ProductShippingDimension (Maybe Text)
psdUnit = lens _psdUnit (\ s a -> s{_psdUnit = a})

instance FromJSON ProductShippingDimension where
        parseJSON
          = withObject "ProductShippingDimension"
              (\ o ->
                 ProductShippingDimension <$>
                   (o .:? "value") <*> (o .:? "unit"))

instance ToJSON ProductShippingDimension where
        toJSON ProductShippingDimension{..}
          = object
              (catMaybes
                 [("value" .=) <$> _psdValue,
                  ("unit" .=) <$> _psdUnit])

-- | A batch entry encoding a single non-batch datafeeds response.
--
-- /See:/ 'datafeedsCustomBatchResponseEntry' smart constructor.
data DatafeedsCustomBatchResponseEntry = DatafeedsCustomBatchResponseEntry
    { _dcbrecDatafeed :: !(Maybe Datafeed)
    , _dcbrecErrors   :: !(Maybe Errors)
    , _dcbrecBatchId  :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedsCustomBatchResponseEntry
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
                 DatafeedsCustomBatchResponseEntry <$>
                   (o .:? "datafeed") <*> (o .:? "errors") <*>
                     (o .:? "batchId"))

instance ToJSON DatafeedsCustomBatchResponseEntry
         where
        toJSON DatafeedsCustomBatchResponseEntry{..}
          = object
              (catMaybes
                 [("datafeed" .=) <$> _dcbrecDatafeed,
                  ("errors" .=) <$> _dcbrecErrors,
                  ("batchId" .=) <$> _dcbrecBatchId])

--
-- /See:/ 'ordersCustomBatchRequestEntryRefund' smart constructor.
data OrdersCustomBatchRequestEntryRefund = OrdersCustomBatchRequestEntryRefund
    { _ocbrerAmount     :: !(Maybe Price)
    , _ocbrerReason     :: !(Maybe Text)
    , _ocbrerReasonText :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchRequestEntryRefund' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocbrerAmount'
--
-- * 'ocbrerReason'
--
-- * 'ocbrerReasonText'
ordersCustomBatchRequestEntryRefund
    :: OrdersCustomBatchRequestEntryRefund
ordersCustomBatchRequestEntryRefund =
    OrdersCustomBatchRequestEntryRefund
    { _ocbrerAmount = Nothing
    , _ocbrerReason = Nothing
    , _ocbrerReasonText = Nothing
    }

-- | The amount that is refunded.
ocbrerAmount :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe Price)
ocbrerAmount
  = lens _ocbrerAmount (\ s a -> s{_ocbrerAmount = a})

-- | The reason for the refund.
ocbrerReason :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe Text)
ocbrerReason
  = lens _ocbrerReason (\ s a -> s{_ocbrerReason = a})

-- | The explanation of the reason.
ocbrerReasonText :: Lens' OrdersCustomBatchRequestEntryRefund (Maybe Text)
ocbrerReasonText
  = lens _ocbrerReasonText
      (\ s a -> s{_ocbrerReasonText = a})

instance FromJSON OrdersCustomBatchRequestEntryRefund
         where
        parseJSON
          = withObject "OrdersCustomBatchRequestEntryRefund"
              (\ o ->
                 OrdersCustomBatchRequestEntryRefund <$>
                   (o .:? "amount") <*> (o .:? "reason") <*>
                     (o .:? "reasonText"))

instance ToJSON OrdersCustomBatchRequestEntryRefund
         where
        toJSON OrdersCustomBatchRequestEntryRefund{..}
          = object
              (catMaybes
                 [("amount" .=) <$> _ocbrerAmount,
                  ("reason" .=) <$> _ocbrerReason,
                  ("reasonText" .=) <$> _ocbrerReasonText])

--
-- /See:/ 'datafeedstatusesListResponse' smart constructor.
data DatafeedstatusesListResponse = DatafeedstatusesListResponse
    { _dlrlNextPageToken :: !(Maybe Text)
    , _dlrlKind          :: !Text
    , _dlrlResources     :: !(Maybe [DatafeedStatus])
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    DatafeedstatusesListResponse
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
                 DatafeedstatusesListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "content#datafeedstatusesListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON DatafeedstatusesListResponse where
        toJSON DatafeedstatusesListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _dlrlNextPageToken,
                  Just ("kind" .= _dlrlKind),
                  ("resources" .=) <$> _dlrlResources])

--
-- /See:/ 'productsListResponse' smart constructor.
data ProductsListResponse = ProductsListResponse
    { _plrlNextPageToken :: !(Maybe Text)
    , _plrlKind          :: !Text
    , _plrlResources     :: !(Maybe [Product])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProductsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plrlNextPageToken'
--
-- * 'plrlKind'
--
-- * 'plrlResources'
productsListResponse
    :: ProductsListResponse
productsListResponse =
    ProductsListResponse
    { _plrlNextPageToken = Nothing
    , _plrlKind = "content#productsListResponse"
    , _plrlResources = Nothing
    }

-- | The token for the retrieval of the next page of products.
plrlNextPageToken :: Lens' ProductsListResponse (Maybe Text)
plrlNextPageToken
  = lens _plrlNextPageToken
      (\ s a -> s{_plrlNextPageToken = a})

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#productsListResponse\".
plrlKind :: Lens' ProductsListResponse Text
plrlKind = lens _plrlKind (\ s a -> s{_plrlKind = a})

plrlResources :: Lens' ProductsListResponse [Product]
plrlResources
  = lens _plrlResources
      (\ s a -> s{_plrlResources = a})
      . _Default
      . _Coerce

instance FromJSON ProductsListResponse where
        parseJSON
          = withObject "ProductsListResponse"
              (\ o ->
                 ProductsListResponse <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!= "content#productsListResponse")
                     <*> (o .:? "resources" .!= mempty))

instance ToJSON ProductsListResponse where
        toJSON ProductsListResponse{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _plrlNextPageToken,
                  Just ("kind" .= _plrlKind),
                  ("resources" .=) <$> _plrlResources])

--
-- /See:/ 'accountAdwordsLink' smart constructor.
data AccountAdwordsLink = AccountAdwordsLink
    { _aalStatus    :: !(Maybe Text)
    , _aalAdwordsId :: !(Maybe (Textual Word64))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountAdwordsLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalStatus'
--
-- * 'aalAdwordsId'
accountAdwordsLink
    :: AccountAdwordsLink
accountAdwordsLink =
    AccountAdwordsLink
    { _aalStatus = Nothing
    , _aalAdwordsId = Nothing
    }

-- | Status of the link between this Merchant Center account and the AdWords
-- account. Upon retrieval, it represents the actual status of the link and
-- can be either active if it was approved in Google AdWords or pending if
-- it\'s pending approval. Upon insertion, it represents the intended
-- status of the link. Re-uploading a link with status active when it\'s
-- still pending or with status pending when it\'s already active will have
-- no effect: the status will remain unchanged. Re-uploading a link with
-- deprecated status inactive is equivalent to not submitting the link at
-- all and will delete the link if it was active or cancel the link request
-- if it was pending.
aalStatus :: Lens' AccountAdwordsLink (Maybe Text)
aalStatus
  = lens _aalStatus (\ s a -> s{_aalStatus = a})

-- | Customer ID of the AdWords account.
aalAdwordsId :: Lens' AccountAdwordsLink (Maybe Word64)
aalAdwordsId
  = lens _aalAdwordsId (\ s a -> s{_aalAdwordsId = a})
      . mapping _Coerce

instance FromJSON AccountAdwordsLink where
        parseJSON
          = withObject "AccountAdwordsLink"
              (\ o ->
                 AccountAdwordsLink <$>
                   (o .:? "status") <*> (o .:? "adwordsId"))

instance ToJSON AccountAdwordsLink where
        toJSON AccountAdwordsLink{..}
          = object
              (catMaybes
                 [("status" .=) <$> _aalStatus,
                  ("adwordsId" .=) <$> _aalAdwordsId])

--
-- /See:/ 'orderCancellation' smart constructor.
data OrderCancellation = OrderCancellation
    { _ocQuantity     :: !(Maybe (Textual Word32))
    , _ocActor        :: !(Maybe Text)
    , _ocReason       :: !(Maybe Text)
    , _ocCreationDate :: !(Maybe Text)
    , _ocReasonText   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
    OrderCancellation
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

-- | The reason for the cancellation.
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
                 OrderCancellation <$>
                   (o .:? "quantity") <*> (o .:? "actor") <*>
                     (o .:? "reason")
                     <*> (o .:? "creationDate")
                     <*> (o .:? "reasonText"))

instance ToJSON OrderCancellation where
        toJSON OrderCancellation{..}
          = object
              (catMaybes
                 [("quantity" .=) <$> _ocQuantity,
                  ("actor" .=) <$> _ocActor,
                  ("reason" .=) <$> _ocReason,
                  ("creationDate" .=) <$> _ocCreationDate,
                  ("reasonText" .=) <$> _ocReasonText])

--
-- /See:/ 'ordersCustomBatchResponse' smart constructor.
data OrdersCustomBatchResponse = OrdersCustomBatchResponse
    { _ordEntries :: !(Maybe [OrdersCustomBatchResponseEntry])
    , _ordKind    :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersCustomBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ordEntries'
--
-- * 'ordKind'
ordersCustomBatchResponse
    :: OrdersCustomBatchResponse
ordersCustomBatchResponse =
    OrdersCustomBatchResponse
    { _ordEntries = Nothing
    , _ordKind = "content#ordersCustomBatchResponse"
    }

-- | The result of the execution of the batch requests.
ordEntries :: Lens' OrdersCustomBatchResponse [OrdersCustomBatchResponseEntry]
ordEntries
  = lens _ordEntries (\ s a -> s{_ordEntries = a}) .
      _Default
      . _Coerce

-- | Identifies what kind of resource this is. Value: the fixed string
-- \"content#ordersCustomBatchResponse\".
ordKind :: Lens' OrdersCustomBatchResponse Text
ordKind = lens _ordKind (\ s a -> s{_ordKind = a})

instance FromJSON OrdersCustomBatchResponse where
        parseJSON
          = withObject "OrdersCustomBatchResponse"
              (\ o ->
                 OrdersCustomBatchResponse <$>
                   (o .:? "entries" .!= mempty) <*>
                     (o .:? "kind" .!=
                        "content#ordersCustomBatchResponse"))

instance ToJSON OrdersCustomBatchResponse where
        toJSON OrdersCustomBatchResponse{..}
          = object
              (catMaybes
                 [("entries" .=) <$> _ordEntries,
                  Just ("kind" .= _ordKind)])
