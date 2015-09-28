{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdExchangeBuyer.BillingInfo.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of billing information for all accounts of the
-- authenticated user.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.billingInfo.list@.
module Network.Google.API.AdExchangeBuyer.BillingInfo.List
    (
    -- * REST Resource
      BillingInfoListAPI

    -- * Creating a Request
    , billingInfoList'
    , BillingInfoList'

    -- * Request Lenses
    , bilQuotaUser
    , bilPrettyPrint
    , bilUserIp
    , bilKey
    , bilOauthToken
    , bilFields
    , bilAlt
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for adexchangebuyer.billingInfo.list which the
-- 'BillingInfoList'' request conforms to.
type BillingInfoListAPI =
     "billinginfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Get '[JSON] BillingInfoList

-- | Retrieves a list of billing information for all accounts of the
-- authenticated user.
--
-- /See:/ 'billingInfoList'' smart constructor.
data BillingInfoList' = BillingInfoList'
    { _bilQuotaUser   :: !(Maybe Text)
    , _bilPrettyPrint :: !Bool
    , _bilUserIp      :: !(Maybe Text)
    , _bilKey         :: !(Maybe Text)
    , _bilOauthToken  :: !(Maybe Text)
    , _bilFields      :: !(Maybe Text)
    , _bilAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bilQuotaUser'
--
-- * 'bilPrettyPrint'
--
-- * 'bilUserIp'
--
-- * 'bilKey'
--
-- * 'bilOauthToken'
--
-- * 'bilFields'
--
-- * 'bilAlt'
billingInfoList'
    :: BillingInfoList'
billingInfoList' =
    BillingInfoList'
    { _bilQuotaUser = Nothing
    , _bilPrettyPrint = True
    , _bilUserIp = Nothing
    , _bilKey = Nothing
    , _bilOauthToken = Nothing
    , _bilFields = Nothing
    , _bilAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bilQuotaUser :: Lens' BillingInfoList' (Maybe Text)
bilQuotaUser
  = lens _bilQuotaUser (\ s a -> s{_bilQuotaUser = a})

-- | Returns response with indentations and line breaks.
bilPrettyPrint :: Lens' BillingInfoList' Bool
bilPrettyPrint
  = lens _bilPrettyPrint
      (\ s a -> s{_bilPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bilUserIp :: Lens' BillingInfoList' (Maybe Text)
bilUserIp
  = lens _bilUserIp (\ s a -> s{_bilUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bilKey :: Lens' BillingInfoList' (Maybe Text)
bilKey = lens _bilKey (\ s a -> s{_bilKey = a})

-- | OAuth 2.0 token for the current user.
bilOauthToken :: Lens' BillingInfoList' (Maybe Text)
bilOauthToken
  = lens _bilOauthToken
      (\ s a -> s{_bilOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
bilFields :: Lens' BillingInfoList' (Maybe Text)
bilFields
  = lens _bilFields (\ s a -> s{_bilFields = a})

-- | Data format for the response.
bilAlt :: Lens' BillingInfoList' Alt
bilAlt = lens _bilAlt (\ s a -> s{_bilAlt = a})

instance GoogleRequest BillingInfoList' where
        type Rs BillingInfoList' = BillingInfoList
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BillingInfoList'{..}
          = go _bilQuotaUser (Just _bilPrettyPrint) _bilUserIp
              _bilKey
              _bilOauthToken
              _bilFields
              (Just _bilAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy BillingInfoListAPI)
                      r
                      u
