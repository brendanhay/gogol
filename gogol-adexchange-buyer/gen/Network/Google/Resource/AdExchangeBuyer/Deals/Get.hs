{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.Deals.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the requested deal.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerDealsGet@.
module AdExchangeBuyer.Deals.Get
    (
    -- * REST Resource
      DealsGetAPI

    -- * Creating a Request
    , dealsGet
    , DealsGet

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgUserIp
    , dgDealId
    , dgKey
    , dgOauthToken
    , dgFields
    , dgAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerDealsGet@ which the
-- 'DealsGet' request conforms to.
type DealsGetAPI =
     "deals" :>
       Capture "dealId" Int64 :> Get '[JSON] NegotiationDto

-- | Gets the requested deal.
--
-- /See:/ 'dealsGet' smart constructor.
data DealsGet = DealsGet
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgUserIp      :: !(Maybe Text)
    , _dgDealId      :: !Int64
    , _dgKey         :: !(Maybe Text)
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DealsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgUserIp'
--
-- * 'dgDealId'
--
-- * 'dgKey'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
dealsGet
    :: Int64 -- ^ 'dealId'
    -> DealsGet
dealsGet pDgDealId_ =
    DealsGet
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgUserIp = Nothing
    , _dgDealId = pDgDealId_
    , _dgKey = Nothing
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DealsGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DealsGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIp :: Lens' DealsGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

dgDealId :: Lens' DealsGet' Int64
dgDealId = lens _dgDealId (\ s a -> s{_dgDealId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DealsGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DealsGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DealsGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DealsGet' Text
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

instance GoogleRequest DealsGet' where
        type Rs DealsGet' = NegotiationDto
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u DealsGet{..}
          = go _dgQuotaUser _dgPrettyPrint _dgUserIp _dgDealId
              _dgKey
              _dgOauthToken
              _dgFields
              _dgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy DealsGetAPI) r u
