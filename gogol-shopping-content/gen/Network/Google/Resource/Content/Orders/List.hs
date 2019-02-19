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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the orders in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.orders.list@.
module Network.Google.Resource.Content.Orders.List
    (
    -- * REST Resource
      OrdersListResource

    -- * Creating a Request
    , ordersList
    , OrdersList

    -- * Request Lenses
    , ollPlacedDateEnd
    , ollMerchantId
    , ollOrderBy
    , ollAcknowledged
    , ollStatuses
    , ollPageToken
    , ollPlacedDateStart
    , ollMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.list@ method which the
-- 'OrdersList' request conforms to.
type OrdersListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "orders" :>
             QueryParam "placedDateEnd" Text :>
               QueryParam "orderBy" OrdersListOrderBy :>
                 QueryParam "acknowledged" Bool :>
                   QueryParams "statuses" OrdersListStatuses :>
                     QueryParam "pageToken" Text :>
                       QueryParam "placedDateStart" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] OrdersListResponse

-- | Lists the orders in your Merchant Center account.
--
-- /See:/ 'ordersList' smart constructor.
data OrdersList =
  OrdersList'
    { _ollPlacedDateEnd   :: !(Maybe Text)
    , _ollMerchantId      :: !(Textual Word64)
    , _ollOrderBy         :: !(Maybe OrdersListOrderBy)
    , _ollAcknowledged    :: !(Maybe Bool)
    , _ollStatuses        :: !(Maybe [OrdersListStatuses])
    , _ollPageToken       :: !(Maybe Text)
    , _ollPlacedDateStart :: !(Maybe Text)
    , _ollMaxResults      :: !(Maybe (Textual Word32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrdersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ollPlacedDateEnd'
--
-- * 'ollMerchantId'
--
-- * 'ollOrderBy'
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
ordersList
    :: Word64 -- ^ 'ollMerchantId'
    -> OrdersList
ordersList pOllMerchantId_ =
  OrdersList'
    { _ollPlacedDateEnd = Nothing
    , _ollMerchantId = _Coerce # pOllMerchantId_
    , _ollOrderBy = Nothing
    , _ollAcknowledged = Nothing
    , _ollStatuses = Nothing
    , _ollPageToken = Nothing
    , _ollPlacedDateStart = Nothing
    , _ollMaxResults = Nothing
    }

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

-- | The ordering of the returned list. The only supported value are
-- placedDate desc and placedDate asc for now, which returns orders sorted
-- by placement date. \"placedDate desc\" stands for listing orders by
-- placement date, from oldest to most recent. \"placedDate asc\" stands
-- for listing orders by placement date, from most recent to oldest. In
-- future releases we\'ll support other sorting criteria.
ollOrderBy :: Lens' OrdersList (Maybe OrdersListOrderBy)
ollOrderBy
  = lens _ollOrderBy (\ s a -> s{_ollOrderBy = a})

-- | Obtains orders that match the acknowledgement status. When set to true,
-- obtains orders that have been acknowledged. When false, obtains orders
-- that have not been acknowledged. We recommend using this filter set to
-- false, in conjunction with the acknowledge call, such that only
-- un-acknowledged orders are returned.
ollAcknowledged :: Lens' OrdersList (Maybe Bool)
ollAcknowledged
  = lens _ollAcknowledged
      (\ s a -> s{_ollAcknowledged = a})

-- | Obtains orders that match any of the specified statuses. Multiple values
-- can be specified with comma separation. Additionally, please note that
-- active is a shortcut for pendingShipment and partiallyShipped, and
-- completed is a shortcut for shipped , partiallyDelivered, delivered,
-- partiallyReturned, returned, and canceled.
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
-- is 250 orders per page. Known issue: All List calls will return all
-- Orders without limit regardless of the value of this field.
ollMaxResults :: Lens' OrdersList (Maybe Word32)
ollMaxResults
  = lens _ollMaxResults
      (\ s a -> s{_ollMaxResults = a})
      . mapping _Coerce

instance GoogleRequest OrdersList where
        type Rs OrdersList = OrdersListResponse
        type Scopes OrdersList =
             '["https://www.googleapis.com/auth/content"]
        requestClient OrdersList'{..}
          = go _ollMerchantId _ollPlacedDateEnd _ollOrderBy
              _ollAcknowledged
              (_ollStatuses ^. _Default)
              _ollPageToken
              _ollPlacedDateStart
              _ollMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersListResource)
                      mempty
