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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsUpdate@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Update
    (
    -- * REST Resource
      MarketplaceDealsUpdateResource

    -- * Creating a Request
    , marketplaceDealsUpdate'
    , MarketplaceDealsUpdate'

    -- * Request Lenses
    , mduQuotaUser
    , mduPrettyPrint
    , mduUserIP
    , mduPayload
    , mduKey
    , mduOAuthToken
    , mduOrderId
    , mduFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsUpdate@ which the
-- 'MarketplaceDealsUpdate'' request conforms to.
type MarketplaceDealsUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "update" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EditAllOrderDealsRequest :>
                             Post '[JSON] EditAllOrderDealsResponse

-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ 'marketplaceDealsUpdate'' smart constructor.
data MarketplaceDealsUpdate' = MarketplaceDealsUpdate'
    { _mduQuotaUser   :: !(Maybe Text)
    , _mduPrettyPrint :: !Bool
    , _mduUserIP      :: !(Maybe Text)
    , _mduPayload     :: !EditAllOrderDealsRequest
    , _mduKey         :: !(Maybe AuthKey)
    , _mduOAuthToken  :: !(Maybe OAuthToken)
    , _mduOrderId     :: !Text
    , _mduFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mduQuotaUser'
--
-- * 'mduPrettyPrint'
--
-- * 'mduUserIP'
--
-- * 'mduPayload'
--
-- * 'mduKey'
--
-- * 'mduOAuthToken'
--
-- * 'mduOrderId'
--
-- * 'mduFields'
marketplaceDealsUpdate'
    :: EditAllOrderDealsRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceDealsUpdate'
marketplaceDealsUpdate' pMduPayload_ pMduOrderId_ =
    MarketplaceDealsUpdate'
    { _mduQuotaUser = Nothing
    , _mduPrettyPrint = True
    , _mduUserIP = Nothing
    , _mduPayload = pMduPayload_
    , _mduKey = Nothing
    , _mduOAuthToken = Nothing
    , _mduOrderId = pMduOrderId_
    , _mduFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mduQuotaUser :: Lens' MarketplaceDealsUpdate' (Maybe Text)
mduQuotaUser
  = lens _mduQuotaUser (\ s a -> s{_mduQuotaUser = a})

-- | Returns response with indentations and line breaks.
mduPrettyPrint :: Lens' MarketplaceDealsUpdate' Bool
mduPrettyPrint
  = lens _mduPrettyPrint
      (\ s a -> s{_mduPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mduUserIP :: Lens' MarketplaceDealsUpdate' (Maybe Text)
mduUserIP
  = lens _mduUserIP (\ s a -> s{_mduUserIP = a})

-- | Multipart request metadata.
mduPayload :: Lens' MarketplaceDealsUpdate' EditAllOrderDealsRequest
mduPayload
  = lens _mduPayload (\ s a -> s{_mduPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mduKey :: Lens' MarketplaceDealsUpdate' (Maybe AuthKey)
mduKey = lens _mduKey (\ s a -> s{_mduKey = a})

-- | OAuth 2.0 token for the current user.
mduOAuthToken :: Lens' MarketplaceDealsUpdate' (Maybe OAuthToken)
mduOAuthToken
  = lens _mduOAuthToken
      (\ s a -> s{_mduOAuthToken = a})

-- | The orderId to edit deals on.
mduOrderId :: Lens' MarketplaceDealsUpdate' Text
mduOrderId
  = lens _mduOrderId (\ s a -> s{_mduOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mduFields :: Lens' MarketplaceDealsUpdate' (Maybe Text)
mduFields
  = lens _mduFields (\ s a -> s{_mduFields = a})

instance GoogleAuth MarketplaceDealsUpdate' where
        authKey = mduKey . _Just
        authToken = mduOAuthToken . _Just

instance GoogleRequest MarketplaceDealsUpdate' where
        type Rs MarketplaceDealsUpdate' =
             EditAllOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceDealsUpdate'{..}
          = go _mduOrderId _mduQuotaUser (Just _mduPrettyPrint)
              _mduUserIP
              _mduFields
              _mduKey
              _mduOAuthToken
              (Just AltJSON)
              _mduPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceDealsUpdateResource)
                      r
                      u
