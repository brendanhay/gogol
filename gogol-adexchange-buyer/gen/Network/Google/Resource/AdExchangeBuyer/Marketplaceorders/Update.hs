{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module AdExchangeBuyer.Marketplaceorders.Update
    (
    -- * REST Resource
      MarketplaceordersUpdateAPI

    -- * Creating a Request
    , marketplaceordersUpdate
    , MarketplaceordersUpdate

    -- * Request Lenses
    , muQuotaUser
    , muUpdateAction
    , muPrettyPrint
    , muUserIp
    , muRevisionNumber
    , muKey
    , muOauthToken
    , muOrderId
    , muFields
    , muAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplaceordersUpdate@ which the
-- 'MarketplaceordersUpdate' request conforms to.
type MarketplaceordersUpdateAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         Capture "revisionNumber" Int64 :>
           Capture "updateAction" Text :>
             Put '[JSON] MarketplaceOrder

-- | Update the given order
--
-- /See:/ 'marketplaceordersUpdate' smart constructor.
data MarketplaceordersUpdate = MarketplaceordersUpdate
    { _muQuotaUser      :: !(Maybe Text)
    , _muUpdateAction   :: !Text
    , _muPrettyPrint    :: !Bool
    , _muUserIp         :: !(Maybe Text)
    , _muRevisionNumber :: !Int64
    , _muKey            :: !(Maybe Text)
    , _muOauthToken     :: !(Maybe Text)
    , _muOrderId        :: !Text
    , _muFields         :: !(Maybe Text)
    , _muAlt            :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplaceordersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'muQuotaUser'
--
-- * 'muUpdateAction'
--
-- * 'muPrettyPrint'
--
-- * 'muUserIp'
--
-- * 'muRevisionNumber'
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
marketplaceordersUpdate
    :: Text -- ^ 'updateAction'
    -> Int64 -- ^ 'revisionNumber'
    -> Text -- ^ 'orderId'
    -> MarketplaceordersUpdate
marketplaceordersUpdate pMuUpdateAction_ pMuRevisionNumber_ pMuOrderId_ =
    MarketplaceordersUpdate
    { _muQuotaUser = Nothing
    , _muUpdateAction = pMuUpdateAction_
    , _muPrettyPrint = True
    , _muUserIp = Nothing
    , _muRevisionNumber = pMuRevisionNumber_
    , _muKey = Nothing
    , _muOauthToken = Nothing
    , _muOrderId = pMuOrderId_
    , _muFields = Nothing
    , _muAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
muQuotaUser :: Lens' MarketplaceordersUpdate' (Maybe Text)
muQuotaUser
  = lens _muQuotaUser (\ s a -> s{_muQuotaUser = a})

-- | The proposed action to take on the order.
muUpdateAction :: Lens' MarketplaceordersUpdate' Text
muUpdateAction
  = lens _muUpdateAction
      (\ s a -> s{_muUpdateAction = a})

-- | Returns response with indentations and line breaks.
muPrettyPrint :: Lens' MarketplaceordersUpdate' Bool
muPrettyPrint
  = lens _muPrettyPrint
      (\ s a -> s{_muPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
muUserIp :: Lens' MarketplaceordersUpdate' (Maybe Text)
muUserIp = lens _muUserIp (\ s a -> s{_muUserIp = a})

-- | The last known revision number to update. If the head revision in the
-- marketplace database has since changed, an error will be thrown. The
-- caller should then fetch the lastest order at head revision and retry
-- the update at that revision.
muRevisionNumber :: Lens' MarketplaceordersUpdate' Int64
muRevisionNumber
  = lens _muRevisionNumber
      (\ s a -> s{_muRevisionNumber = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
muKey :: Lens' MarketplaceordersUpdate' (Maybe Text)
muKey = lens _muKey (\ s a -> s{_muKey = a})

-- | OAuth 2.0 token for the current user.
muOauthToken :: Lens' MarketplaceordersUpdate' (Maybe Text)
muOauthToken
  = lens _muOauthToken (\ s a -> s{_muOauthToken = a})

-- | The order id to update.
muOrderId :: Lens' MarketplaceordersUpdate' Text
muOrderId
  = lens _muOrderId (\ s a -> s{_muOrderId = a})

-- | Selector specifying which fields to include in a partial response.
muFields :: Lens' MarketplaceordersUpdate' (Maybe Text)
muFields = lens _muFields (\ s a -> s{_muFields = a})

-- | Data format for the response.
muAlt :: Lens' MarketplaceordersUpdate' Text
muAlt = lens _muAlt (\ s a -> s{_muAlt = a})

instance GoogleRequest MarketplaceordersUpdate' where
        type Rs MarketplaceordersUpdate' = MarketplaceOrder
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplaceordersUpdate{..}
          = go _muQuotaUser _muUpdateAction _muPrettyPrint
              _muUserIp
              _muRevisionNumber
              _muKey
              _muOauthToken
              _muOrderId
              _muFields
              _muAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplaceordersUpdateAPI)
                      r
                      u
