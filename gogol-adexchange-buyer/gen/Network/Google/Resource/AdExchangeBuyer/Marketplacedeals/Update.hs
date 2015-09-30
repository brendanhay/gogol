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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacedealsUpdate@.
module Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Update
    (
    -- * REST Resource
      MarketplacedealsUpdateResource

    -- * Creating a Request
    , marketplacedealsUpdate'
    , MarketplacedealsUpdate'

    -- * Request Lenses
    , muQuotaUser
    , muPrettyPrint
    , muUserIp
    , muKey
    , muOauthToken
    , muOrderId
    , muFields
    , muAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacedealsUpdate@ which the
-- 'MarketplacedealsUpdate'' request conforms to.
type MarketplacedealsUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "update" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] EditAllOrderDealsResponse

-- | Replaces all the deals in the order with the passed in deals
--
-- /See:/ 'marketplacedealsUpdate'' smart constructor.
data MarketplacedealsUpdate' = MarketplacedealsUpdate'
    { _muQuotaUser   :: !(Maybe Text)
    , _muPrettyPrint :: !Bool
    , _muUserIp      :: !(Maybe Text)
    , _muKey         :: !(Maybe Text)
    , _muOauthToken  :: !(Maybe Text)
    , _muOrderId     :: !Text
    , _muFields      :: !(Maybe Text)
    , _muAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muQuotaUser'
--
-- * 'muPrettyPrint'
--
-- * 'muUserIp'
--
-- * 'muKey'
--
-- * 'muOauthToken'
--
-- * 'muOrderId'
--
-- * 'muFields'
--
-- * 'muAlt'
marketplacedealsUpdate'
    :: Text -- ^ 'orderId'
    -> MarketplacedealsUpdate'
marketplacedealsUpdate' pMuOrderId_ =
    MarketplacedealsUpdate'
    { _muQuotaUser = Nothing
    , _muPrettyPrint = True
    , _muUserIp = Nothing
    , _muKey = Nothing
    , _muOauthToken = Nothing
    , _muOrderId = pMuOrderId_
    , _muFields = Nothing
    , _muAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muQuotaUser :: Lens' MarketplacedealsUpdate' (Maybe Text)
muQuotaUser
  = lens _muQuotaUser (\ s a -> s{_muQuotaUser = a})

-- | Returns response with indentations and line breaks.
muPrettyPrint :: Lens' MarketplacedealsUpdate' Bool
muPrettyPrint
  = lens _muPrettyPrint
      (\ s a -> s{_muPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muUserIp :: Lens' MarketplacedealsUpdate' (Maybe Text)
muUserIp = lens _muUserIp (\ s a -> s{_muUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muKey :: Lens' MarketplacedealsUpdate' (Maybe Text)
muKey = lens _muKey (\ s a -> s{_muKey = a})

-- | OAuth 2.0 token for the current user.
muOauthToken :: Lens' MarketplacedealsUpdate' (Maybe Text)
muOauthToken
  = lens _muOauthToken (\ s a -> s{_muOauthToken = a})

-- | The orderId to edit deals on.
muOrderId :: Lens' MarketplacedealsUpdate' Text
muOrderId
  = lens _muOrderId (\ s a -> s{_muOrderId = a})

-- | Selector specifying which fields to include in a partial response.
muFields :: Lens' MarketplacedealsUpdate' (Maybe Text)
muFields = lens _muFields (\ s a -> s{_muFields = a})

-- | Data format for the response.
muAlt :: Lens' MarketplacedealsUpdate' Alt
muAlt = lens _muAlt (\ s a -> s{_muAlt = a})

instance GoogleRequest MarketplacedealsUpdate' where
        type Rs MarketplacedealsUpdate' =
             EditAllOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsUpdate'{..}
          = go _muQuotaUser (Just _muPrettyPrint) _muUserIp
              _muKey
              _muOauthToken
              _muOrderId
              _muFields
              (Just _muAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsUpdateResource)
                      r
                      u
