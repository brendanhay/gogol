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
-- Module      : Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the specified deals from the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceDealsDelete@.
module Network.Google.Resource.AdExchangeBuyer.MarketplaceDeals.Delete
    (
    -- * REST Resource
      MarketplaceDealsDeleteResource

    -- * Creating a Request
    , marketplaceDealsDelete'
    , MarketplaceDealsDelete'

    -- * Request Lenses
    , mddQuotaUser
    , mddPrettyPrint
    , mddUserIP
    , mddPayload
    , mddKey
    , mddOAuthToken
    , mddOrderId
    , mddFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceDealsDelete@ which the
-- 'MarketplaceDealsDelete'' request conforms to.
type MarketplaceDealsDeleteResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "delete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] DeleteOrderDealsRequest :>
                             Post '[JSON] DeleteOrderDealsResponse

-- | Delete the specified deals from the order
--
-- /See:/ 'marketplaceDealsDelete'' smart constructor.
data MarketplaceDealsDelete' = MarketplaceDealsDelete'
    { _mddQuotaUser   :: !(Maybe Text)
    , _mddPrettyPrint :: !Bool
    , _mddUserIP      :: !(Maybe Text)
    , _mddPayload     :: !DeleteOrderDealsRequest
    , _mddKey         :: !(Maybe AuthKey)
    , _mddOAuthToken  :: !(Maybe OAuthToken)
    , _mddOrderId     :: !Text
    , _mddFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceDealsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddQuotaUser'
--
-- * 'mddPrettyPrint'
--
-- * 'mddUserIP'
--
-- * 'mddPayload'
--
-- * 'mddKey'
--
-- * 'mddOAuthToken'
--
-- * 'mddOrderId'
--
-- * 'mddFields'
marketplaceDealsDelete'
    :: DeleteOrderDealsRequest -- ^ 'payload'
    -> Text -- ^ 'orderId'
    -> MarketplaceDealsDelete'
marketplaceDealsDelete' pMddPayload_ pMddOrderId_ =
    MarketplaceDealsDelete'
    { _mddQuotaUser = Nothing
    , _mddPrettyPrint = True
    , _mddUserIP = Nothing
    , _mddPayload = pMddPayload_
    , _mddKey = Nothing
    , _mddOAuthToken = Nothing
    , _mddOrderId = pMddOrderId_
    , _mddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mddQuotaUser :: Lens' MarketplaceDealsDelete' (Maybe Text)
mddQuotaUser
  = lens _mddQuotaUser (\ s a -> s{_mddQuotaUser = a})

-- | Returns response with indentations and line breaks.
mddPrettyPrint :: Lens' MarketplaceDealsDelete' Bool
mddPrettyPrint
  = lens _mddPrettyPrint
      (\ s a -> s{_mddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mddUserIP :: Lens' MarketplaceDealsDelete' (Maybe Text)
mddUserIP
  = lens _mddUserIP (\ s a -> s{_mddUserIP = a})

-- | Multipart request metadata.
mddPayload :: Lens' MarketplaceDealsDelete' DeleteOrderDealsRequest
mddPayload
  = lens _mddPayload (\ s a -> s{_mddPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mddKey :: Lens' MarketplaceDealsDelete' (Maybe AuthKey)
mddKey = lens _mddKey (\ s a -> s{_mddKey = a})

-- | OAuth 2.0 token for the current user.
mddOAuthToken :: Lens' MarketplaceDealsDelete' (Maybe OAuthToken)
mddOAuthToken
  = lens _mddOAuthToken
      (\ s a -> s{_mddOAuthToken = a})

-- | The orderId to delete deals from.
mddOrderId :: Lens' MarketplaceDealsDelete' Text
mddOrderId
  = lens _mddOrderId (\ s a -> s{_mddOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mddFields :: Lens' MarketplaceDealsDelete' (Maybe Text)
mddFields
  = lens _mddFields (\ s a -> s{_mddFields = a})

instance GoogleAuth MarketplaceDealsDelete' where
        authKey = mddKey . _Just
        authToken = mddOAuthToken . _Just

instance GoogleRequest MarketplaceDealsDelete' where
        type Rs MarketplaceDealsDelete' =
             DeleteOrderDealsResponse
        request = requestWith adExchangeBuyerRequest
        requestWith rq MarketplaceDealsDelete'{..}
          = go _mddOrderId _mddQuotaUser (Just _mddPrettyPrint)
              _mddUserIP
              _mddFields
              _mddKey
              _mddOAuthToken
              (Just AltJSON)
              _mddPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy MarketplaceDealsDeleteResource)
                      rq
