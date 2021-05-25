{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Content.Orderreturns.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists order returns in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orderreturns.list@.
module Network.Google.Resource.Content.Orderreturns.List
    (
    -- * REST Resource
      OrderreturnsListResource

    -- * Creating a Request
    , orderreturnsList
    , OrderreturnsList

    -- * Request Lenses
    , ol1Xgafv
    , ol1ShipmentTrackingNumbers
    , ol1MerchantId
    , ol1UploadProtocol
    , ol1OrderBy
    , ol1AccessToken
    , ol1CreatedEndDate
    , ol1UploadType
    , ol1GoogleOrderIds
    , ol1ShipmentStatus
    , ol1Acknowledged
    , ol1ShipmentStates
    , ol1CreatedStartDate
    , ol1PageToken
    , ol1ShipmentTypes
    , ol1MaxResults
    , ol1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orderreturns.list@ method which the
-- 'OrderreturnsList' request conforms to.
type OrderreturnsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orderreturns" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParams "shipmentTrackingNumbers" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "orderBy" OrderreturnsListOrderBy :>
                     QueryParam "access_token" Text :>
                       QueryParam "createdEndDate" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParams "googleOrderIds" Text :>
                             QueryParams "shipmentStatus"
                               OrderreturnsListShipmentStatus
                               :>
                               QueryParam "acknowledged" Bool :>
                                 QueryParams "shipmentStates"
                                   OrderreturnsListShipmentStates
                                   :>
                                   QueryParam "createdStartDate" Text :>
                                     QueryParam "pageToken" Text :>
                                       QueryParams "shipmentTypes"
                                         OrderreturnsListShipmentTypes
                                         :>
                                         QueryParam "maxResults"
                                           (Textual Word32)
                                           :>
                                           QueryParam "callback" Text :>
                                             QueryParam "alt" AltJSON :>
                                               Get '[JSON]
                                                 OrderreturnsListResponse

-- | Lists order returns in your Merchant Center account.
--
-- /See:/ 'orderreturnsList' smart constructor.
data OrderreturnsList =
  OrderreturnsList'
    { _ol1Xgafv :: !(Maybe Xgafv)
    , _ol1ShipmentTrackingNumbers :: !(Maybe [Text])
    , _ol1MerchantId :: !(Textual Word64)
    , _ol1UploadProtocol :: !(Maybe Text)
    , _ol1OrderBy :: !(Maybe OrderreturnsListOrderBy)
    , _ol1AccessToken :: !(Maybe Text)
    , _ol1CreatedEndDate :: !(Maybe Text)
    , _ol1UploadType :: !(Maybe Text)
    , _ol1GoogleOrderIds :: !(Maybe [Text])
    , _ol1ShipmentStatus :: !(Maybe [OrderreturnsListShipmentStatus])
    , _ol1Acknowledged :: !(Maybe Bool)
    , _ol1ShipmentStates :: !(Maybe [OrderreturnsListShipmentStates])
    , _ol1CreatedStartDate :: !(Maybe Text)
    , _ol1PageToken :: !(Maybe Text)
    , _ol1ShipmentTypes :: !(Maybe [OrderreturnsListShipmentTypes])
    , _ol1MaxResults :: !(Maybe (Textual Word32))
    , _ol1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrderreturnsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ol1Xgafv'
--
-- * 'ol1ShipmentTrackingNumbers'
--
-- * 'ol1MerchantId'
--
-- * 'ol1UploadProtocol'
--
-- * 'ol1OrderBy'
--
-- * 'ol1AccessToken'
--
-- * 'ol1CreatedEndDate'
--
-- * 'ol1UploadType'
--
-- * 'ol1GoogleOrderIds'
--
-- * 'ol1ShipmentStatus'
--
-- * 'ol1Acknowledged'
--
-- * 'ol1ShipmentStates'
--
-- * 'ol1CreatedStartDate'
--
-- * 'ol1PageToken'
--
-- * 'ol1ShipmentTypes'
--
-- * 'ol1MaxResults'
--
-- * 'ol1Callback'
orderreturnsList
    :: Word64 -- ^ 'ol1MerchantId'
    -> OrderreturnsList
orderreturnsList pOl1MerchantId_ =
  OrderreturnsList'
    { _ol1Xgafv = Nothing
    , _ol1ShipmentTrackingNumbers = Nothing
    , _ol1MerchantId = _Coerce # pOl1MerchantId_
    , _ol1UploadProtocol = Nothing
    , _ol1OrderBy = Nothing
    , _ol1AccessToken = Nothing
    , _ol1CreatedEndDate = Nothing
    , _ol1UploadType = Nothing
    , _ol1GoogleOrderIds = Nothing
    , _ol1ShipmentStatus = Nothing
    , _ol1Acknowledged = Nothing
    , _ol1ShipmentStates = Nothing
    , _ol1CreatedStartDate = Nothing
    , _ol1PageToken = Nothing
    , _ol1ShipmentTypes = Nothing
    , _ol1MaxResults = Nothing
    , _ol1Callback = Nothing
    }


-- | V1 error format.
ol1Xgafv :: Lens' OrderreturnsList (Maybe Xgafv)
ol1Xgafv = lens _ol1Xgafv (\ s a -> s{_ol1Xgafv = a})

-- | Obtains order returns with the specified tracking numbers. If this
-- parameter is provided, createdStartDate, createdEndDate, shipmentType,
-- shipmentStatus, shipmentState and acknowledged parameters must be not
-- set. Note: if googleOrderId and shipmentTrackingNumber parameters are
-- provided, the obtained results will include all order returns that
-- either match the specified order id or the specified tracking number.
ol1ShipmentTrackingNumbers :: Lens' OrderreturnsList [Text]
ol1ShipmentTrackingNumbers
  = lens _ol1ShipmentTrackingNumbers
      (\ s a -> s{_ol1ShipmentTrackingNumbers = a})
      . _Default
      . _Coerce

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ol1MerchantId :: Lens' OrderreturnsList Word64
ol1MerchantId
  = lens _ol1MerchantId
      (\ s a -> s{_ol1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ol1UploadProtocol :: Lens' OrderreturnsList (Maybe Text)
ol1UploadProtocol
  = lens _ol1UploadProtocol
      (\ s a -> s{_ol1UploadProtocol = a})

-- | Return the results in the specified order.
ol1OrderBy :: Lens' OrderreturnsList (Maybe OrderreturnsListOrderBy)
ol1OrderBy
  = lens _ol1OrderBy (\ s a -> s{_ol1OrderBy = a})

-- | OAuth access token.
ol1AccessToken :: Lens' OrderreturnsList (Maybe Text)
ol1AccessToken
  = lens _ol1AccessToken
      (\ s a -> s{_ol1AccessToken = a})

-- | Obtains order returns created before this date (inclusively), in ISO
-- 8601 format.
ol1CreatedEndDate :: Lens' OrderreturnsList (Maybe Text)
ol1CreatedEndDate
  = lens _ol1CreatedEndDate
      (\ s a -> s{_ol1CreatedEndDate = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ol1UploadType :: Lens' OrderreturnsList (Maybe Text)
ol1UploadType
  = lens _ol1UploadType
      (\ s a -> s{_ol1UploadType = a})

-- | Obtains order returns with the specified order ids. If this parameter is
-- provided, createdStartDate, createdEndDate, shipmentType,
-- shipmentStatus, shipmentState and acknowledged parameters must be not
-- set. Note: if googleOrderId and shipmentTrackingNumber parameters are
-- provided, the obtained results will include all order returns that
-- either match the specified order id or the specified tracking number.
ol1GoogleOrderIds :: Lens' OrderreturnsList [Text]
ol1GoogleOrderIds
  = lens _ol1GoogleOrderIds
      (\ s a -> s{_ol1GoogleOrderIds = a})
      . _Default
      . _Coerce

-- | Obtains order returns that match any shipment status provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment statuses.
ol1ShipmentStatus :: Lens' OrderreturnsList [OrderreturnsListShipmentStatus]
ol1ShipmentStatus
  = lens _ol1ShipmentStatus
      (\ s a -> s{_ol1ShipmentStatus = a})
      . _Default
      . _Coerce

-- | Obtains order returns that match the acknowledgement status. When set to
-- true, obtains order returns that have been acknowledged. When false,
-- obtains order returns that have not been acknowledged. When not
-- provided, obtains order returns regardless of their acknowledgement
-- status. We recommend using this filter set to \`false\`, in conjunction
-- with the \`acknowledge\` call, such that only un-acknowledged order
-- returns are returned.
ol1Acknowledged :: Lens' OrderreturnsList (Maybe Bool)
ol1Acknowledged
  = lens _ol1Acknowledged
      (\ s a -> s{_ol1Acknowledged = a})

-- | Obtains order returns that match any shipment state provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment states.
ol1ShipmentStates :: Lens' OrderreturnsList [OrderreturnsListShipmentStates]
ol1ShipmentStates
  = lens _ol1ShipmentStates
      (\ s a -> s{_ol1ShipmentStates = a})
      . _Default
      . _Coerce

-- | Obtains order returns created after this date (inclusively), in ISO 8601
-- format.
ol1CreatedStartDate :: Lens' OrderreturnsList (Maybe Text)
ol1CreatedStartDate
  = lens _ol1CreatedStartDate
      (\ s a -> s{_ol1CreatedStartDate = a})

-- | The token returned by the previous request.
ol1PageToken :: Lens' OrderreturnsList (Maybe Text)
ol1PageToken
  = lens _ol1PageToken (\ s a -> s{_ol1PageToken = a})

-- | Obtains order returns that match any shipment type provided in this
-- parameter. When this parameter is not provided, order returns are
-- obtained regardless of their shipment types.
ol1ShipmentTypes :: Lens' OrderreturnsList [OrderreturnsListShipmentTypes]
ol1ShipmentTypes
  = lens _ol1ShipmentTypes
      (\ s a -> s{_ol1ShipmentTypes = a})
      . _Default
      . _Coerce

-- | The maximum number of order returns to return in the response, used for
-- paging. The default value is 25 returns per page, and the maximum
-- allowed value is 250 returns per page.
ol1MaxResults :: Lens' OrderreturnsList (Maybe Word32)
ol1MaxResults
  = lens _ol1MaxResults
      (\ s a -> s{_ol1MaxResults = a})
      . mapping _Coerce

-- | JSONP
ol1Callback :: Lens' OrderreturnsList (Maybe Text)
ol1Callback
  = lens _ol1Callback (\ s a -> s{_ol1Callback = a})

instance GoogleRequest OrderreturnsList where
        type Rs OrderreturnsList = OrderreturnsListResponse
        type Scopes OrderreturnsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrderreturnsList'{..}
          = go _ol1MerchantId _ol1Xgafv
              (_ol1ShipmentTrackingNumbers ^. _Default)
              _ol1UploadProtocol
              _ol1OrderBy
              _ol1AccessToken
              _ol1CreatedEndDate
              _ol1UploadType
              (_ol1GoogleOrderIds ^. _Default)
              (_ol1ShipmentStatus ^. _Default)
              _ol1Acknowledged
              (_ol1ShipmentStates ^. _Default)
              _ol1CreatedStartDate
              _ol1PageToken
              (_ol1ShipmentTypes ^. _Default)
              _ol1MaxResults
              _ol1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy OrderreturnsListResource)
                      mempty
