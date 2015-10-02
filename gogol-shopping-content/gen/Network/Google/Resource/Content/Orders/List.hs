{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Content.Orders.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the orders in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentOrdersList@.
module Network.Google.Resource.Content.Orders.List
    (
    -- * REST Resource
      OrdersListResource

    -- * Creating a Request
    , ordersList'
    , OrdersList'

    -- * Request Lenses
    , olPlacedDateEnd
    , olQuotaUser
    , olMerchantId
    , olPrettyPrint
    , olOrderBy
    , olUserIP
    , olAcknowledged
    , olKey
    , olStatuses
    , olPageToken
    , olOAuthToken
    , olPlacedDateStart
    , olMaxResults
    , olFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentOrdersList@ which the
-- 'OrdersList'' request conforms to.
type OrdersListResource =
     Capture "merchantId" Word64 :>
       "orders" :>
         QueryParam "placedDateEnd" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "orderBy" ContentOrdersListOrderBy :>
                 QueryParam "userIp" Text :>
                   QueryParam "acknowledged" Bool :>
                     QueryParam "key" Key :>
                       QueryParams "statuses" ContentOrdersListStatuses :>
                         QueryParam "pageToken" Text :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "placedDateStart" Text :>
                               QueryParam "maxResults" Word32 :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] OrdersListResponse

-- | Lists the orders in your Merchant Center account.
--
-- /See:/ 'ordersList'' smart constructor.
data OrdersList' = OrdersList'
    { _olPlacedDateEnd   :: !(Maybe Text)
    , _olQuotaUser       :: !(Maybe Text)
    , _olMerchantId      :: !Word64
    , _olPrettyPrint     :: !Bool
    , _olOrderBy         :: !(Maybe ContentOrdersListOrderBy)
    , _olUserIP          :: !(Maybe Text)
    , _olAcknowledged    :: !(Maybe Bool)
    , _olKey             :: !(Maybe Key)
    , _olStatuses        :: !(Maybe ContentOrdersListStatuses)
    , _olPageToken       :: !(Maybe Text)
    , _olOAuthToken      :: !(Maybe OAuthToken)
    , _olPlacedDateStart :: !(Maybe Text)
    , _olMaxResults      :: !(Maybe Word32)
    , _olFields          :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'OrdersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olPlacedDateEnd'
--
-- * 'olQuotaUser'
--
-- * 'olMerchantId'
--
-- * 'olPrettyPrint'
--
-- * 'olOrderBy'
--
-- * 'olUserIP'
--
-- * 'olAcknowledged'
--
-- * 'olKey'
--
-- * 'olStatuses'
--
-- * 'olPageToken'
--
-- * 'olOAuthToken'
--
-- * 'olPlacedDateStart'
--
-- * 'olMaxResults'
--
-- * 'olFields'
ordersList'
    :: Word64 -- ^ 'merchantId'
    -> OrdersList'
ordersList' pOlMerchantId_ =
    OrdersList'
    { _olPlacedDateEnd = Nothing
    , _olQuotaUser = Nothing
    , _olMerchantId = pOlMerchantId_
    , _olPrettyPrint = True
    , _olOrderBy = Nothing
    , _olUserIP = Nothing
    , _olAcknowledged = Nothing
    , _olKey = Nothing
    , _olStatuses = Nothing
    , _olPageToken = Nothing
    , _olOAuthToken = Nothing
    , _olPlacedDateStart = Nothing
    , _olMaxResults = Nothing
    , _olFields = Nothing
    }

-- | Obtains orders placed before this date (exclusively), in ISO 8601
-- format.
olPlacedDateEnd :: Lens' OrdersList' (Maybe Text)
olPlacedDateEnd
  = lens _olPlacedDateEnd
      (\ s a -> s{_olPlacedDateEnd = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
olQuotaUser :: Lens' OrdersList' (Maybe Text)
olQuotaUser
  = lens _olQuotaUser (\ s a -> s{_olQuotaUser = a})

-- | The ID of the managing account.
olMerchantId :: Lens' OrdersList' Word64
olMerchantId
  = lens _olMerchantId (\ s a -> s{_olMerchantId = a})

-- | Returns response with indentations and line breaks.
olPrettyPrint :: Lens' OrdersList' Bool
olPrettyPrint
  = lens _olPrettyPrint
      (\ s a -> s{_olPrettyPrint = a})

-- | The ordering of the returned list. The only supported value are
-- placedDate desc and placedDate asc for now, which returns orders sorted
-- by placement date. \"placedDate desc\" stands for listing orders by
-- placement date, from oldest to most recent. \"placedDate asc\" stands
-- for listing orders by placement date, from most recent to oldest. In
-- future releases we\'ll support other sorting criteria.
olOrderBy :: Lens' OrdersList' (Maybe ContentOrdersListOrderBy)
olOrderBy
  = lens _olOrderBy (\ s a -> s{_olOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
olUserIP :: Lens' OrdersList' (Maybe Text)
olUserIP = lens _olUserIP (\ s a -> s{_olUserIP = a})

-- | Obtains orders that match the acknowledgement status. When set to true,
-- obtains orders that have been acknowledged. When false, obtains orders
-- that have not been acknowledged. We recommend using this filter set to
-- false, in conjunction with the acknowledge call, such that only
-- un-acknowledged orders are returned.
olAcknowledged :: Lens' OrdersList' (Maybe Bool)
olAcknowledged
  = lens _olAcknowledged
      (\ s a -> s{_olAcknowledged = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
olKey :: Lens' OrdersList' (Maybe Key)
olKey = lens _olKey (\ s a -> s{_olKey = a})

-- | Obtains orders that match any of the specified statuses. Multiple values
-- can be specified with comma separation. Additionally, please note that
-- active is a shortcut for pendingShipment and partiallyShipped, and
-- completed is a shortcut for shipped , partiallyDelivered, delivered,
-- partiallyReturned, returned, and canceled.
olStatuses :: Lens' OrdersList' (Maybe ContentOrdersListStatuses)
olStatuses
  = lens _olStatuses (\ s a -> s{_olStatuses = a})

-- | The token returned by the previous request.
olPageToken :: Lens' OrdersList' (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | OAuth 2.0 token for the current user.
olOAuthToken :: Lens' OrdersList' (Maybe OAuthToken)
olOAuthToken
  = lens _olOAuthToken (\ s a -> s{_olOAuthToken = a})

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

-- | Selector specifying which fields to include in a partial response.
olFields :: Lens' OrdersList' (Maybe Text)
olFields = lens _olFields (\ s a -> s{_olFields = a})

instance GoogleAuth OrdersList' where
        authKey = olKey . _Just
        authToken = olOAuthToken . _Just

instance GoogleRequest OrdersList' where
        type Rs OrdersList' = OrdersListResponse
        request = requestWithRoute defReq shoppingContentURL
        requestWithRoute r u OrdersList'{..}
          = go _olPlacedDateEnd _olQuotaUser _olMerchantId
              (Just _olPrettyPrint)
              _olOrderBy
              _olUserIP
              _olAcknowledged
              _olKey
              _olStatuses
              _olPageToken
              _olOAuthToken
              _olPlacedDateStart
              _olMaxResults
              _olFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy OrdersListResource)
                      r
                      u
