{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.Marketplacenotes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get all the notes associated with an order
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.marketplacenotes.list@.
module Network.Google.API.AdExchangeBuyer.Marketplacenotes.List
    (
    -- * REST Resource
      MarketplacenotesListAPI

    -- * Creating a Request
    , marketplacenotesList'
    , MarketplacenotesList'

    -- * Request Lenses
    , mllQuotaUser
    , mllPrettyPrint
    , mllUserIp
    , mllKey
    , mllOauthToken
    , mllOrderId
    , mllFields
    , mllAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.marketplacenotes.list which the
-- 'MarketplacenotesList'' request conforms to.
type MarketplacenotesListAPI =
     "marketplaceOrders" :>
       Capture "orderId" Text :>
         "notes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Get '[JSON] GetOrderNotesResponse

-- | Get all the notes associated with an order
--
-- /See:/ 'marketplacenotesList'' smart constructor.
data MarketplacenotesList' = MarketplacenotesList'
    { _mllQuotaUser   :: !(Maybe Text)
    , _mllPrettyPrint :: !Bool
    , _mllUserIp      :: !(Maybe Text)
    , _mllKey         :: !(Maybe Text)
    , _mllOauthToken  :: !(Maybe Text)
    , _mllOrderId     :: !Text
    , _mllFields      :: !(Maybe Text)
    , _mllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MarketplacenotesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mllQuotaUser'
--
-- * 'mllPrettyPrint'
--
-- * 'mllUserIp'
--
-- * 'mllKey'
--
-- * 'mllOauthToken'
--
-- * 'mllOrderId'
--
-- * 'mllFields'
--
-- * 'mllAlt'
marketplacenotesList'
    :: Text -- ^ 'orderId'
    -> MarketplacenotesList'
marketplacenotesList' pMllOrderId_ =
    MarketplacenotesList'
    { _mllQuotaUser = Nothing
    , _mllPrettyPrint = True
    , _mllUserIp = Nothing
    , _mllKey = Nothing
    , _mllOauthToken = Nothing
    , _mllOrderId = pMllOrderId_
    , _mllFields = Nothing
    , _mllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mllQuotaUser :: Lens' MarketplacenotesList' (Maybe Text)
mllQuotaUser
  = lens _mllQuotaUser (\ s a -> s{_mllQuotaUser = a})

-- | Returns response with indentations and line breaks.
mllPrettyPrint :: Lens' MarketplacenotesList' Bool
mllPrettyPrint
  = lens _mllPrettyPrint
      (\ s a -> s{_mllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mllUserIp :: Lens' MarketplacenotesList' (Maybe Text)
mllUserIp
  = lens _mllUserIp (\ s a -> s{_mllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mllKey :: Lens' MarketplacenotesList' (Maybe Text)
mllKey = lens _mllKey (\ s a -> s{_mllKey = a})

-- | OAuth 2.0 token for the current user.
mllOauthToken :: Lens' MarketplacenotesList' (Maybe Text)
mllOauthToken
  = lens _mllOauthToken
      (\ s a -> s{_mllOauthToken = a})

-- | The orderId to get notes for.
mllOrderId :: Lens' MarketplacenotesList' Text
mllOrderId
  = lens _mllOrderId (\ s a -> s{_mllOrderId = a})

-- | Selector specifying which fields to include in a partial response.
mllFields :: Lens' MarketplacenotesList' (Maybe Text)
mllFields
  = lens _mllFields (\ s a -> s{_mllFields = a})

-- | Data format for the response.
mllAlt :: Lens' MarketplacenotesList' Alt
mllAlt = lens _mllAlt (\ s a -> s{_mllAlt = a})

instance GoogleRequest MarketplacenotesList' where
        type Rs MarketplacenotesList' = GetOrderNotesResponse
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u MarketplacenotesList'{..}
          = go _mllQuotaUser (Just _mllPrettyPrint) _mllUserIp
              _mllKey
              _mllOauthToken
              _mllOrderId
              _mllFields
              (Just _mllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MarketplacenotesListAPI)
                      r
                      u
