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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the specified deals from the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacedealsDelete@.
module Network.Google.Resource.AdExchangeBuyer.Marketplacedeals.Delete
    (
    -- * REST Resource
      MarketplacedealsDeleteResource

    -- * Creating a Request
    , marketplacedealsDelete'
    , MarketplacedealsDelete'

    -- * Request Lenses
    , mdQuotaUser
    , mdPrettyPrint
    , mdUserIp
    , mdKey
    , mdOauthToken
    , mdOrderId
    , mdFields
    , mdAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacedealsDelete@ which the
-- 'MarketplacedealsDelete'' request conforms to.
type MarketplacedealsDeleteResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "deals" :>
           "delete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Post '[JSON] DeleteOrderDealsResponse

-- | Delete the specified deals from the order
--
-- /See:/ 'marketplacedealsDelete'' smart constructor.
data MarketplacedealsDelete' = MarketplacedealsDelete'
    { _mdQuotaUser   :: !(Maybe Text)
    , _mdPrettyPrint :: !Bool
    , _mdUserIp      :: !(Maybe Text)
    , _mdKey         :: !(Maybe Text)
    , _mdOauthToken  :: !(Maybe Text)
    , _mdOrderId     :: !Text
    , _mdFields      :: !(Maybe Text)
    , _mdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacedealsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdQuotaUser'
--
-- * 'mdPrettyPrint'
--
-- * 'mdUserIp'
--
-- * 'mdKey'
--
-- * 'mdOauthToken'
--
-- * 'mdOrderId'
--
-- * 'mdFields'
--
-- * 'mdAlt'
marketplacedealsDelete'
    :: Text -- ^ 'orderId'
    -> MarketplacedealsDelete'
marketplacedealsDelete' pMdOrderId_ =
    MarketplacedealsDelete'
    { _mdQuotaUser = Nothing
    , _mdPrettyPrint = True
    , _mdUserIp = Nothing
    , _mdKey = Nothing
    , _mdOauthToken = Nothing
    , _mdOrderId = pMdOrderId_
    , _mdFields = Nothing
    , _mdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mdQuotaUser :: Lens' MarketplacedealsDelete' (Maybe Text)
mdQuotaUser
  = lens _mdQuotaUser (\ s a -> s{_mdQuotaUser = a})

-- | Returns response with indentations and line breaks.
mdPrettyPrint :: Lens' MarketplacedealsDelete' Bool
mdPrettyPrint
  = lens _mdPrettyPrint
      (\ s a -> s{_mdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mdUserIp :: Lens' MarketplacedealsDelete' (Maybe Text)
mdUserIp = lens _mdUserIp (\ s a -> s{_mdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mdKey :: Lens' MarketplacedealsDelete' (Maybe Text)
mdKey = lens _mdKey (\ s a -> s{_mdKey = a})

-- | OAuth 2.0 token for the current user.
mdOauthToken :: Lens' MarketplacedealsDelete' (Maybe Text)
mdOauthToken
  = lens _mdOauthToken (\ s a -> s{_mdOauthToken = a})

-- | The orderId to delete deals from.
mdOrderId :: Lens' MarketplacedealsDelete' Text
mdOrderId
  = lens _mdOrderId (\ s a -> s{_mdOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mdFields :: Lens' MarketplacedealsDelete' (Maybe Text)
mdFields = lens _mdFields (\ s a -> s{_mdFields = a})

-- | Data format for the response.
mdAlt :: Lens' MarketplacedealsDelete' Alt
mdAlt = lens _mdAlt (\ s a -> s{_mdAlt = a})

instance GoogleRequest MarketplacedealsDelete' where
        type Rs MarketplacedealsDelete' =
             DeleteOrderDealsResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacedealsDelete'{..}
          = go _mdQuotaUser (Just _mdPrettyPrint) _mdUserIp
              _mdKey
              _mdOauthToken
              _mdOrderId
              _mdFields
              (Just _mdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacedealsDeleteResource)
                      r
                      u
