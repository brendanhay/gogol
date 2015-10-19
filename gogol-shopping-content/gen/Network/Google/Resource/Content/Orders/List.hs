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
-- Copyright   : (c) 2015 Brendan Hay
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
    , ordersList'
    , OrdersList'

    -- * Request Lenses
    , olPlacedDateEnd
    , olMerchantId
    , olOrderBy
    , olAcknowledged
    , olStatuses
    , olPageToken
    , olPlacedDateStart
    , olMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.orders.list@ method which the
-- 'OrdersList'' request conforms to.
type OrdersListResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         QueryParam "placedDateEnd" Text :>
           QueryParam "orderBy" OrdersListOrderBy :>
             QueryParam "acknowledged" Bool :>
               QueryParams "statuses" OrdersListStatuses :>
                 QueryParam "pageToken" Text :>
                   QueryParam "placedDateStart" Text :>
                     QueryParam "maxResults" Word32 :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] OrdersListResponse

-- | Lists the orders in your Merchant Center account.
--
-- /See:/ 'ordersList'' smart constructor.
data OrdersList' = OrdersList'
    { _olPlacedDateEnd   :: !(Maybe Text)
    , _olMerchantId      :: !Word64
    , _olOrderBy         :: !(Maybe OrdersListOrderBy)
    , _olAcknowledged    :: !(Maybe Bool)
    , _olStatuses        :: !(Maybe [OrdersListStatuses])
    , _olPageToken       :: !(Maybe Text)
    , _olPlacedDateStart :: !(Maybe Text)
    , _olMaxResults      :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olPlacedDateEnd'
--
-- * 'olMerchantId'
--
-- * 'olOrderBy'
--
-- * 'olAcknowledged'
--
-- * 'olStatuses'
--
-- * 'olPageToken'
--
-- * 'olPlacedDateStart'
--
-- * 'olMaxResults'
ordersList'
    :: Word64 -- ^ 'olMerchantId'
    -> OrdersList'
ordersList' pOlMerchantId_ =
    OrdersList'
    { _olPlacedDateEnd = Nothing
    , _olMerchantId = pOlMerchantId_
    , _olOrderBy = Nothing
    , _olAcknowledged = Nothing
    , _olStatuses = Nothing
    , _olPageToken = Nothing
    , _olPlacedDateStart = Nothing
    , _olMaxResults = Nothing
    }

-- | Obtains orders placed before this date (exclusively), in ISO 8601
-- format.
olPlacedDateEnd :: Lens' OrdersList' (Maybe Text)
olPlacedDateEnd
  = lens _olPlacedDateEnd
      (\ s a -> s{_olPlacedDateEnd = a})

-- | The ID of the managing account.
olMerchantId :: Lens' OrdersList' Word64
olMerchantId
  = lens _olMerchantId (\ s a -> s{_olMerchantId = a})

-- | The ordering of the returned list. The only supported value are
-- placedDate desc and placedDate asc for now, which returns orders sorted
-- by placement date. \"placedDate desc\" stands for listing orders by
-- placement date, from oldest to most recent. \"placedDate asc\" stands
-- for listing orders by placement date, from most recent to oldest. In
-- future releases we\'ll support other sorting criteria.
olOrderBy :: Lens' OrdersList' (Maybe OrdersListOrderBy)
olOrderBy
  = lens _olOrderBy (\ s a -> s{_olOrderBy = a})

-- | Obtains orders that match the acknowledgement status. When set to true,
-- obtains orders that have been acknowledged. When false, obtains orders
-- that have not been acknowledged. We recommend using this filter set to
-- false, in conjunction with the acknowledge call, such that only
-- un-acknowledged orders are returned.
olAcknowledged :: Lens' OrdersList' (Maybe Bool)
olAcknowledged
  = lens _olAcknowledged
      (\ s a -> s{_olAcknowledged = a})

-- | Obtains orders that match any of the specified statuses. Multiple values
-- can be specified with comma separation. Additionally, please note that
-- active is a shortcut for pendingShipment and partiallyShipped, and
-- completed is a shortcut for shipped , partiallyDelivered, delivered,
-- partiallyReturned, returned, and canceled.
olStatuses :: Lens' OrdersList' [OrdersListStatuses]
olStatuses
  = lens _olStatuses (\ s a -> s{_olStatuses = a}) .
      _Default
      . _Coerce

-- | The token returned by the previous request.
olPageToken :: Lens' OrdersList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Obtains orders placed after this date (inclusively), in ISO 8601 format.
olPlacedDateStart :: Lens' OrdersList' (Maybe Text)
olPlacedDateStart
  = lens _olPlacedDateStart
      (\ s a -> s{_olPlacedDateStart = a})

-- | The maximum number of orders to return in the response, used for paging.
-- The default value is 25 orders per page, and the maximum allowed value
-- is 250 orders per page. Known issue: All List calls will return all
-- Orders without limit regardless of the value of this field.
olMaxResults :: Lens' OrdersList' (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})

instance GoogleRequest OrdersList' where
        type Rs OrdersList' = OrdersListResponse
        requestClient OrdersList'{..}
          = go _olMerchantId _olPlacedDateEnd _olOrderBy
              _olAcknowledged
              (_olStatuses ^. _Default)
              _olPageToken
              _olPlacedDateStart
              _olMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient (Proxy :: Proxy OrdersListResource)
                      mempty
