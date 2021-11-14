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
-- Module      : Network.Google.Resource.Content.Orders.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the orders in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.orders.list@.
module Network.Google.Resource.Content.Orders.List
    (
    -- * REST Resource
      OrdersListResource

    -- * Creating a Request
    , ordersList
    , OrdersList

    -- * Request Lenses
    , ollXgafv
    , ollPlacedDateEnd
    , ollMerchantId
    , ollUploadProtocol
    , ollOrderBy
    , ollAccessToken
    , ollUploadType
    , ollAcknowledged
    , ollStatuses
    , ollPageToken
    , ollPlacedDateStart
    , ollMaxResults
    , ollCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.list@ method which the
-- 'OrdersList' request conforms to.
type OrdersListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "placedDateEnd" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "orderBy" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "acknowledged" Bool :>
                           QueryParams "statuses" OrdersListStatuses :>
                             QueryParam "pageToken" Text :>
                               QueryParam "placedDateStart" Text :>
                                 QueryParam "maxResults" (Textual Word32) :>
                                   QueryParam "callback" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] OrdersListResponse

-- | Lists the orders in your Merchant Center account.
--
-- /See:/ 'ordersList' smart constructor.
data OrdersList =
  OrdersList'
    { _ollXgafv :: !(Maybe Xgafv)
    , _ollPlacedDateEnd :: !(Maybe Text)
    , _ollMerchantId :: !(Textual Word64)
    , _ollUploadProtocol :: !(Maybe Text)
    , _ollOrderBy :: !(Maybe Text)
    , _ollAccessToken :: !(Maybe Text)
    , _ollUploadType :: !(Maybe Text)
    , _ollAcknowledged :: !(Maybe Bool)
    , _ollStatuses :: !(Maybe [OrdersListStatuses])
    , _ollPageToken :: !(Maybe Text)
    , _ollPlacedDateStart :: !(Maybe Text)
    , _ollMaxResults :: !(Maybe (Textual Word32))
    , _ollCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrdersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ollXgafv'
--
-- * 'ollPlacedDateEnd'
--
-- * 'ollMerchantId'
--
-- * 'ollUploadProtocol'
--
-- * 'ollOrderBy'
--
-- * 'ollAccessToken'
--
-- * 'ollUploadType'
--
-- * 'ollAcknowledged'
--
-- * 'ollStatuses'
--
-- * 'ollPageToken'
--
-- * 'ollPlacedDateStart'
--
-- * 'ollMaxResults'
--
-- * 'ollCallback'
ordersList
    :: Word64 -- ^ 'ollMerchantId'
    -> OrdersList
ordersList pOllMerchantId_ =
  OrdersList'
    { _ollXgafv = Nothing
    , _ollPlacedDateEnd = Nothing
    , _ollMerchantId = _Coerce # pOllMerchantId_
    , _ollUploadProtocol = Nothing
    , _ollOrderBy = Nothing
    , _ollAccessToken = Nothing
    , _ollUploadType = Nothing
    , _ollAcknowledged = Nothing
    , _ollStatuses = Nothing
    , _ollPageToken = Nothing
    , _ollPlacedDateStart = Nothing
    , _ollMaxResults = Nothing
    , _ollCallback = Nothing
    }


-- | V1 error format.
ollXgafv :: Lens' OrdersList (Maybe Xgafv)
ollXgafv = lens _ollXgafv (\ s a -> s{_ollXgafv = a})

-- | Obtains orders placed before this date (exclusively), in ISO 8601
-- format.
ollPlacedDateEnd :: Lens' OrdersList (Maybe Text)
ollPlacedDateEnd
  = lens _ollPlacedDateEnd
      (\ s a -> s{_ollPlacedDateEnd = a})

-- | The ID of the account that manages the order. This cannot be a
-- multi-client account.
ollMerchantId :: Lens' OrdersList Word64
ollMerchantId
  = lens _ollMerchantId
      (\ s a -> s{_ollMerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ollUploadProtocol :: Lens' OrdersList (Maybe Text)
ollUploadProtocol
  = lens _ollUploadProtocol
      (\ s a -> s{_ollUploadProtocol = a})

-- | Order results by placement date in descending or ascending order.
-- Acceptable values are: - placedDateAsc - placedDateDesc
ollOrderBy :: Lens' OrdersList (Maybe Text)
ollOrderBy
  = lens _ollOrderBy (\ s a -> s{_ollOrderBy = a})

-- | OAuth access token.
ollAccessToken :: Lens' OrdersList (Maybe Text)
ollAccessToken
  = lens _ollAccessToken
      (\ s a -> s{_ollAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ollUploadType :: Lens' OrdersList (Maybe Text)
ollUploadType
  = lens _ollUploadType
      (\ s a -> s{_ollUploadType = a})

-- | Obtains orders that match the acknowledgement status. When set to true,
-- obtains orders that have been acknowledged. When false, obtains orders
-- that have not been acknowledged. We recommend using this filter set to
-- \`false\`, in conjunction with the \`acknowledge\` call, such that only
-- un-acknowledged orders are returned.
ollAcknowledged :: Lens' OrdersList (Maybe Bool)
ollAcknowledged
  = lens _ollAcknowledged
      (\ s a -> s{_ollAcknowledged = a})

-- | Obtains orders that match any of the specified statuses. Please note
-- that \`active\` is a shortcut for \`pendingShipment\` and
-- \`partiallyShipped\`, and \`completed\` is a shortcut for \`shipped\`,
-- \`partiallyDelivered\`, \`delivered\`, \`partiallyReturned\`,
-- \`returned\`, and \`canceled\`.
ollStatuses :: Lens' OrdersList [OrdersListStatuses]
ollStatuses
  = lens _ollStatuses (\ s a -> s{_ollStatuses = a}) .
      _Default
      . _Coerce

-- | The token returned by the previous request.
ollPageToken :: Lens' OrdersList (Maybe Text)
ollPageToken
  = lens _ollPageToken (\ s a -> s{_ollPageToken = a})

-- | Obtains orders placed after this date (inclusively), in ISO 8601 format.
ollPlacedDateStart :: Lens' OrdersList (Maybe Text)
ollPlacedDateStart
  = lens _ollPlacedDateStart
      (\ s a -> s{_ollPlacedDateStart = a})

-- | The maximum number of orders to return in the response, used for paging.
-- The default value is 25 orders per page, and the maximum allowed value
-- is 250 orders per page.
ollMaxResults :: Lens' OrdersList (Maybe Word32)
ollMaxResults
  = lens _ollMaxResults
      (\ s a -> s{_ollMaxResults = a})
      . mapping _Coerce

-- | JSONP
ollCallback :: Lens' OrdersList (Maybe Text)
ollCallback
  = lens _ollCallback (\ s a -> s{_ollCallback = a})

instance GoogleRequest OrdersList where
        type Rs OrdersList = OrdersListResponse
        type Scopes OrdersList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersList'{..}
          = go _ollMerchantId _ollXgafv _ollPlacedDateEnd
              _ollUploadProtocol
              _ollOrderBy
              _ollAccessToken
              _ollUploadType
              _ollAcknowledged
              (_ollStatuses ^. _Default)
              _ollPageToken
              _ollPlacedDateStart
              _ollMaxResults
              _ollCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersListResource)
                      mempty
