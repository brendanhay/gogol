{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Marketplacenotes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get all the notes associated with an order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerMarketplacenotesList@.
module AdExchangeBuyer.Marketplacenotes.List
    (
    -- * REST Resource
      MarketplacenotesListAPI

    -- * Creating a Request
    , marketplacenotesList
    , MarketplacenotesList

    -- * Request Lenses
    , mlQuotaUser
    , mlPrettyPrint
    , mlUserIp
    , mlKey
    , mlOauthToken
    , mlOrderId
    , mlFields
    , mlAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerMarketplacenotesList@ which the
-- 'MarketplacenotesList' request conforms to.
type MarketplacenotesListAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :> Get '[JSON] GetOrderNotesResponse

-- | Get all the notes associated with an order
--
-- /See:/ 'marketplacenotesList' smart constructor.
data MarketplacenotesList = MarketplacenotesList
    { _mlQuotaUser   :: !(Maybe Text)
    , _mlPrettyPrint :: !Bool
    , _mlUserIp      :: !(Maybe Text)
    , _mlKey         :: !(Maybe Text)
    , _mlOauthToken  :: !(Maybe Text)
    , _mlOrderId     :: !Text
    , _mlFields      :: !(Maybe Text)
    , _mlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacenotesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlQuotaUser'
--
-- * 'mlPrettyPrint'
--
-- * 'mlUserIp'
--
-- * 'mlKey'
--
-- * 'mlOauthToken'
--
-- * 'mlOrderId'
--
-- * 'mlFields'
--
-- * 'mlAlt'
marketplacenotesList
    :: Text -- ^ 'orderId'
    -> MarketplacenotesList
marketplacenotesList pMlOrderId_ =
    MarketplacenotesList
    { _mlQuotaUser = Nothing
    , _mlPrettyPrint = True
    , _mlUserIp = Nothing
    , _mlKey = Nothing
    , _mlOauthToken = Nothing
    , _mlOrderId = pMlOrderId_
    , _mlFields = Nothing
    , _mlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlQuotaUser :: Lens' MarketplacenotesList' (Maybe Text)
mlQuotaUser
  = lens _mlQuotaUser (\ s a -> s{_mlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlPrettyPrint :: Lens' MarketplacenotesList' Bool
mlPrettyPrint
  = lens _mlPrettyPrint
      (\ s a -> s{_mlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlUserIp :: Lens' MarketplacenotesList' (Maybe Text)
mlUserIp = lens _mlUserIp (\ s a -> s{_mlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlKey :: Lens' MarketplacenotesList' (Maybe Text)
mlKey = lens _mlKey (\ s a -> s{_mlKey = a})

-- | OAuth 2.0 token for the current user.
mlOauthToken :: Lens' MarketplacenotesList' (Maybe Text)
mlOauthToken
  = lens _mlOauthToken (\ s a -> s{_mlOauthToken = a})

-- | The orderId to get notes for.
mlOrderId :: Lens' MarketplacenotesList' Text
mlOrderId
  = lens _mlOrderId (\ s a -> s{_mlOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mlFields :: Lens' MarketplacenotesList' (Maybe Text)
mlFields = lens _mlFields (\ s a -> s{_mlFields = a})

-- | Data format for the response.
mlAlt :: Lens' MarketplacenotesList' Text
mlAlt = lens _mlAlt (\ s a -> s{_mlAlt = a})

instance GoogleRequest MarketplacenotesList' where
        type Rs MarketplacenotesList' = GetOrderNotesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacenotesList{..}
          = go _mlQuotaUser _mlPrettyPrint _mlUserIp _mlKey
              _mlOauthToken
              _mlOrderId
              _mlFields
              _mlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacenotesListAPI)
                      r
                      u
