{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacenotes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Add notes to the order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacenotesInsert@.
module AdExchangeBuyer.Marketplacenotes.Insert
    (
    -- * REST Resource
      MarketplacenotesInsertAPI

    -- * Creating a Request
    , marketplacenotesInsert
    , MarketplacenotesInsert

    -- * Request Lenses
    , miQuotaUser
    , miPrettyPrint
    , miUserIp
    , miKey
    , miOauthToken
    , miOrderId
    , miFields
    , miAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacenotesInsert@ which the
-- 'MarketplacenotesInsert' request conforms to.
type MarketplacenotesInsertAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           "insert" :> Post '[JSON] AddOrderNotesResponse

-- | Add notes to the order
--
-- /See:/ 'marketplacenotesInsert' smart constructor.
data MarketplacenotesInsert = MarketplacenotesInsert
    { _miQuotaUser   :: !(Maybe Text)
    , _miPrettyPrint :: !Bool
    , _miUserIp      :: !(Maybe Text)
    , _miKey         :: !(Maybe Text)
    , _miOauthToken  :: !(Maybe Text)
    , _miOrderId     :: !Text
    , _miFields      :: !(Maybe Text)
    , _miAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacenotesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'miQuotaUser'
--
-- * 'miPrettyPrint'
--
-- * 'miUserIp'
--
-- * 'miKey'
--
-- * 'miOauthToken'
--
-- * 'miOrderId'
--
-- * 'miFields'
--
-- * 'miAlt'
marketplacenotesInsert
    :: Text -- ^ 'orderId'
    -> MarketplacenotesInsert
marketplacenotesInsert pMiOrderId_ =
    MarketplacenotesInsert
    { _miQuotaUser = Nothing
    , _miPrettyPrint = True
    , _miUserIp = Nothing
    , _miKey = Nothing
    , _miOauthToken = Nothing
    , _miOrderId = pMiOrderId_
    , _miFields = Nothing
    , _miAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
miQuotaUser :: Lens' MarketplacenotesInsert' (Maybe Text)
miQuotaUser
  = lens _miQuotaUser (\ s a -> s{_miQuotaUser = a})

-- | Returns response with indentations and line breaks.
miPrettyPrint :: Lens' MarketplacenotesInsert' Bool
miPrettyPrint
  = lens _miPrettyPrint
      (\ s a -> s{_miPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
miUserIp :: Lens' MarketplacenotesInsert' (Maybe Text)
miUserIp = lens _miUserIp (\ s a -> s{_miUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
miKey :: Lens' MarketplacenotesInsert' (Maybe Text)
miKey = lens _miKey (\ s a -> s{_miKey = a})

-- | OAuth 2.0 token for the current user.
miOauthToken :: Lens' MarketplacenotesInsert' (Maybe Text)
miOauthToken
  = lens _miOauthToken (\ s a -> s{_miOauthToken = a})

-- | The orderId to add notes for.
miOrderId :: Lens' MarketplacenotesInsert' Text
miOrderId
  = lens _miOrderId (\ s a -> s{_miOrderId = a})

-- | Selector specifying which fields to include in a partial response.
miFields :: Lens' MarketplacenotesInsert' (Maybe Text)
miFields = lens _miFields (\ s a -> s{_miFields = a})

-- | Data format for the response.
miAlt :: Lens' MarketplacenotesInsert' Text
miAlt = lens _miAlt (\ s a -> s{_miAlt = a})

instance GoogleRequest MarketplacenotesInsert' where
        type Rs MarketplacenotesInsert' =
             AddOrderNotesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacenotesInsert{..}
          = go _miQuotaUser _miPrettyPrint _miUserIp _miKey
              _miOauthToken
              _miOrderId
              _miFields
              _miAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacenotesInsertAPI)
                      r
                      u
