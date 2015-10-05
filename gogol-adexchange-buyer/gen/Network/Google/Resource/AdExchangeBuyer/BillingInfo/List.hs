{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AdExchangeBuyer.BillingInfo.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of billing information for all accounts of the
-- authenticated user.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerBillingInfoList@.
module Network.Google.Resource.AdExchangeBuyer.BillingInfo.List
    (
    -- * REST Resource
      BillingInfoListResource

    -- * Creating a Request
    , billingInfoList'
    , BillingInfoList'

    -- * Request Lenses
    , bilQuotaUser
    , bilPrettyPrint
    , bilUserIP
    , bilKey
    , bilOAuthToken
    , bilFields
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerBillingInfoList@ which the
-- 'BillingInfoList'' request conforms to.
type BillingInfoListResource =
     "billinginfo" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" Key :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] BillingInfoList

-- | Retrieves a list of billing information for all accounts of the
-- authenticated user.
--
-- /See:/ 'billingInfoList'' smart constructor.
data BillingInfoList' = BillingInfoList'
    { _bilQuotaUser   :: !(Maybe Text)
    , _bilPrettyPrint :: !Bool
    , _bilUserIP      :: !(Maybe Text)
    , _bilKey         :: !(Maybe Key)
    , _bilOAuthToken  :: !(Maybe OAuthToken)
    , _bilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BillingInfoList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bilQuotaUser'
--
-- * 'bilPrettyPrint'
--
-- * 'bilUserIP'
--
-- * 'bilKey'
--
-- * 'bilOAuthToken'
--
-- * 'bilFields'
billingInfoList'
    :: BillingInfoList'
billingInfoList' =
    BillingInfoList'
    { _bilQuotaUser = Nothing
    , _bilPrettyPrint = True
    , _bilUserIP = Nothing
    , _bilKey = Nothing
    , _bilOAuthToken = Nothing
    , _bilFields = Nothing
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
bilUserIP :: Lens' BillingInfoList' (Maybe Text)
bilUserIP
  = lens _bilUserIP (\ s a -> s{_bilUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bilKey :: Lens' BillingInfoList' (Maybe Key)
bilKey = lens _bilKey (\ s a -> s{_bilKey = a})

-- | OAuth 2.0 token for the current user.
bilOAuthToken :: Lens' BillingInfoList' (Maybe OAuthToken)
bilOAuthToken
  = lens _bilOAuthToken
      (\ s a -> s{_bilOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
bilFields :: Lens' BillingInfoList' (Maybe Text)
bilFields
  = lens _bilFields (\ s a -> s{_bilFields = a})

instance GoogleAuth BillingInfoList' where
        authKey = bilKey . _Just
        authToken = bilOAuthToken . _Just

instance GoogleRequest BillingInfoList' where
        type Rs BillingInfoList' = BillingInfoList
        request = requestWithRoute defReq adExchangeBuyerURL
        requestWithRoute r u BillingInfoList'{..}
          = go _bilQuotaUser (Just _bilPrettyPrint) _bilUserIP
              _bilFields
              _bilKey
              _bilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BillingInfoListResource)
                      r
                      u
