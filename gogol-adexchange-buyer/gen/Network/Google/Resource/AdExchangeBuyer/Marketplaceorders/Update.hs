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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the given order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplaceordersUpdate@.
module Network.Google.Resource.AdExchangeBuyer.Marketplaceorders.Update
    (
    -- * REST Resource
      MarketplaceordersUpdateResource

    -- * Creating a Request
    , marketplaceordersUpdate'
    , MarketplaceordersUpdate'

    -- * Request Lenses
    , muuQuotaUser
    , muuUpdateAction
    , muuPrettyPrint
    , muuUserIp
    , muuRevisionNumber
    , muuKey
    , muuOauthToken
    , muuOrderId
    , muuFields
    , muuAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersUpdate@ which the
-- 'MarketplaceordersUpdate'' request conforms to.
type MarketplaceordersUpdateResource =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction"
             AdexchangebuyerMarketplaceordersUpdateUpdateAction
             :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] MarketplaceOrder

-- | Update the given order
--
-- /See:/ 'marketplaceordersUpdate'' smart constructor.
data MarketplaceordersUpdate' = MarketplaceordersUpdate'
    { _muuQuotaUser      :: !(Maybe Text)
    , _muuUpdateAction   :: !AdexchangebuyerMarketplaceordersUpdateUpdateAction
    , _muuPrettyPrint    :: !Bool
    , _muuUserIp         :: !(Maybe Text)
    , _muuRevisionNumber :: !Int64
    , _muuKey            :: !(Maybe Text)
    , _muuOauthToken     :: !(Maybe Text)
    , _muuOrderId        :: !Text
    , _muuFields         :: !(Maybe Text)
    , _muuAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muuQuotaUser'
--
-- * 'muuUpdateAction'
--
-- * 'muuPrettyPrint'
--
-- * 'muuUserIp'
--
-- * 'muuRevisionNumber'
--
-- * 'muuKey'
--
-- * 'muuOauthToken'
--
-- * 'muuOrderId'
--
-- * 'muuFields'
--
-- * 'muuAlt'
marketplaceordersUpdate'
    :: AdexchangebuyerMarketplaceordersUpdateUpdateAction -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> Text -- ^ 'orderId'
    -> MarketplaceordersUpdate'
marketplaceordersUpdate' pMuuUpdateAction_ pMuuRevisionNumber_ pMuuOrderId_ =
    MarketplaceordersUpdate'
    { _muuQuotaUser = Nothing
    , _muuUpdateAction = pMuuUpdateAction_
    , _muuPrettyPrint = True
    , _muuUserIp = Nothing
    , _muuRevisionNumber = pMuuRevisionNumber_
    , _muuKey = Nothing
    , _muuOauthToken = Nothing
    , _muuOrderId = pMuuOrderId_
    , _muuFields = Nothing
    , _muuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muuQuotaUser :: Lens' MarketplaceordersUpdate' (Maybe Text)
muuQuotaUser
  = lens _muuQuotaUser (\ s a -> s{_muuQuotaUser = a})

-- | The proposed action to take on the order.
muuUpdateAction :: Lens' MarketplaceordersUpdate' AdexchangebuyerMarketplaceordersUpdateUpdateAction
muuUpdateAction
  = lens _muuUpdateAction
      (\ s a -> s{_muuUpdateAction = a})

-- | Returns response with indentations and line breaks.
muuPrettyPrint :: Lens' MarketplaceordersUpdate' Bool
muuPrettyPrint
  = lens _muuPrettyPrint
      (\ s a -> s{_muuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muuUserIp :: Lens' MarketplaceordersUpdate' (Maybe Text)
muuUserIp
  = lens _muuUserIp (\ s a -> s{_muuUserIp = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
muuRevisionNumber :: Lens' MarketplaceordersUpdate' Int64
muuRevisionNumber
  = lens _muuRevisionNumber
      (\ s a -> s{_muuRevisionNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muuKey :: Lens' MarketplaceordersUpdate' (Maybe Text)
muuKey = lens _muuKey (\ s a -> s{_muuKey = a})

-- | OAuth 2.0 token for the current user.
muuOauthToken :: Lens' MarketplaceordersUpdate' (Maybe Text)
muuOauthToken
  = lens _muuOauthToken
      (\ s a -> s{_muuOauthToken = a})

-- | The order id to update.
muuOrderId :: Lens' MarketplaceordersUpdate' Text
muuOrderId
  = lens _muuOrderId (\ s a -> s{_muuOrderId = a})

-- | Selector specifying which fields to include in a partial response.
muuFields :: Lens' MarketplaceordersUpdate' (Maybe Text)
muuFields
  = lens _muuFields (\ s a -> s{_muuFields = a})

-- | Data format for the response.
muuAlt :: Lens' MarketplaceordersUpdate' Alt
muuAlt = lens _muuAlt (\ s a -> s{_muuAlt = a})

instance GoogleRequest MarketplaceordersUpdate' where
        type Rs MarketplaceordersUpdate' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersUpdate'{..}
          = go _muuQuotaUser _muuUpdateAction
              (Just _muuPrettyPrint)
              _muuUserIp
              _muuRevisionNumber
              _muuKey
              _muuOauthToken
              _muuOrderId
              _muuFields
              (Just _muuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersUpdateResource)
                      r
                      u
