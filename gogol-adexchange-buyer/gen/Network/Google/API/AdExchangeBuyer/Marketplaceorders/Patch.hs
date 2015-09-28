{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplaceorders.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the given order. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplaceorders.patch@.
module Network.Google.API.AdExchangeBuyer.Marketplaceorders.Patch
    (
    -- * REST Resource
      MarketplaceordersPatchAPI

    -- * Creating a Request
    , marketplaceordersPatch'
    , MarketplaceordersPatch'

    -- * Request Lenses
    , mpQuotaUser
    , mpUpdateAction
    , mpPrettyPrint
    , mpUserIp
    , mpRevisionNumber
    , mpKey
    , mpOauthToken
    , mpOrderId
    , mpFields
    , mpAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplaceorders.patch which the
-- 'MarketplaceordersPatch'' request conforms to.
type MarketplaceordersPatchAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction"
             MarketplaceordersPatch'UpdateAction
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Patch '[JSON] MarketplaceOrder

-- | Update the given order. This method supports patch semantics.
--
-- /See:/ 'marketplaceordersPatch'' smart constructor.
data MarketplaceordersPatch' = MarketplaceordersPatch'
    { _mpQuotaUser      :: !(Maybe Text)
    , _mpUpdateAction   :: !MarketplaceordersPatch'UpdateAction
    , _mpPrettyPrint    :: !Bool
    , _mpUserIp         :: !(Maybe Text)
    , _mpRevisionNumber :: !Int64
    , _mpKey            :: !(Maybe Text)
    , _mpOauthToken     :: !(Maybe Text)
    , _mpOrderId        :: !Text
    , _mpFields         :: !(Maybe Text)
    , _mpAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpQuotaUser'
--
-- * 'mpUpdateAction'
--
-- * 'mpPrettyPrint'
--
-- * 'mpUserIp'
--
-- * 'mpRevisionNumber'
--
-- * 'mpKey'
--
-- * 'mpOauthToken'
--
-- * 'mpOrderId'
--
-- * 'mpFields'
--
-- * 'mpAlt'
marketplaceordersPatch'
    :: MarketplaceordersPatch'UpdateAction -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> Text -- ^ 'orderId'
    -> MarketplaceordersPatch'
marketplaceordersPatch' pMpUpdateAction_ pMpRevisionNumber_ pMpOrderId_ =
    MarketplaceordersPatch'
    { _mpQuotaUser = Nothing
    , _mpUpdateAction = pMpUpdateAction_
    , _mpPrettyPrint = True
    , _mpUserIp = Nothing
    , _mpRevisionNumber = pMpRevisionNumber_
    , _mpKey = Nothing
    , _mpOauthToken = Nothing
    , _mpOrderId = pMpOrderId_
    , _mpFields = Nothing
    , _mpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mpQuotaUser :: Lens' MarketplaceordersPatch' (Maybe Text)
mpQuotaUser
  = lens _mpQuotaUser (\ s a -> s{_mpQuotaUser = a})

-- | The proposed action to take on the order.
mpUpdateAction :: Lens' MarketplaceordersPatch' MarketplaceordersPatch'UpdateAction
mpUpdateAction
  = lens _mpUpdateAction
      (\ s a -> s{_mpUpdateAction = a})

-- | Returns response with indentations and line breaks.
mpPrettyPrint :: Lens' MarketplaceordersPatch' Bool
mpPrettyPrint
  = lens _mpPrettyPrint
      (\ s a -> s{_mpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mpUserIp :: Lens' MarketplaceordersPatch' (Maybe Text)
mpUserIp = lens _mpUserIp (\ s a -> s{_mpUserIp = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
mpRevisionNumber :: Lens' MarketplaceordersPatch' Int64
mpRevisionNumber
  = lens _mpRevisionNumber
      (\ s a -> s{_mpRevisionNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mpKey :: Lens' MarketplaceordersPatch' (Maybe Text)
mpKey = lens _mpKey (\ s a -> s{_mpKey = a})

-- | OAuth 2.0 token for the current user.
mpOauthToken :: Lens' MarketplaceordersPatch' (Maybe Text)
mpOauthToken
  = lens _mpOauthToken (\ s a -> s{_mpOauthToken = a})

-- | The order id to update.
mpOrderId :: Lens' MarketplaceordersPatch' Text
mpOrderId
  = lens _mpOrderId (\ s a -> s{_mpOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mpFields :: Lens' MarketplaceordersPatch' (Maybe Text)
mpFields = lens _mpFields (\ s a -> s{_mpFields = a})

-- | Data format for the response.
mpAlt :: Lens' MarketplaceordersPatch' Alt
mpAlt = lens _mpAlt (\ s a -> s{_mpAlt = a})

instance GoogleRequest MarketplaceordersPatch' where
        type Rs MarketplaceordersPatch' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersPatch'{..}
          = go _mpQuotaUser _mpUpdateAction
              (Just _mpPrettyPrint)
              _mpUserIp
              _mpRevisionNumber
              _mpKey
              _mpOauthToken
              _mpOrderId
              _mpFields
              (Just _mpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersPatchAPI)
                      r
                      u
