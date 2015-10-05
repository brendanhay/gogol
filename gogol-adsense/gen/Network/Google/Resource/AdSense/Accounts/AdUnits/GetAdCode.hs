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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get ad code for the specified ad unit.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdUnitsGetAdCode@.
module Network.Google.Resource.AdSense.Accounts.AdUnits.GetAdCode
    (
    -- * REST Resource
      AccountsAdUnitsGetAdCodeResource

    -- * Creating a Request
    , accountsAdUnitsGetAdCode'
    , AccountsAdUnitsGetAdCode'

    -- * Request Lenses
    , aaugacQuotaUser
    , aaugacPrettyPrint
    , aaugacUserIP
    , aaugacAdUnitId
    , aaugacAdClientId
    , aaugacAccountId
    , aaugacKey
    , aaugacOAuthToken
    , aaugacFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdUnitsGetAdCode@ which the
-- 'AccountsAdUnitsGetAdCode'' request conforms to.
type AccountsAdUnitsGetAdCodeResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 "adcode" :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Get '[JSON] AdCode

-- | Get ad code for the specified ad unit.
--
-- /See:/ 'accountsAdUnitsGetAdCode'' smart constructor.
data AccountsAdUnitsGetAdCode' = AccountsAdUnitsGetAdCode'
    { _aaugacQuotaUser   :: !(Maybe Text)
    , _aaugacPrettyPrint :: !Bool
    , _aaugacUserIP      :: !(Maybe Text)
    , _aaugacAdUnitId    :: !Text
    , _aaugacAdClientId  :: !Text
    , _aaugacAccountId   :: !Text
    , _aaugacKey         :: !(Maybe AuthKey)
    , _aaugacOAuthToken  :: !(Maybe OAuthToken)
    , _aaugacFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsGetAdCode'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugacQuotaUser'
--
-- * 'aaugacPrettyPrint'
--
-- * 'aaugacUserIP'
--
-- * 'aaugacAdUnitId'
--
-- * 'aaugacAdClientId'
--
-- * 'aaugacAccountId'
--
-- * 'aaugacKey'
--
-- * 'aaugacOAuthToken'
--
-- * 'aaugacFields'
accountsAdUnitsGetAdCode'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsGetAdCode'
accountsAdUnitsGetAdCode' pAaugacAdUnitId_ pAaugacAdClientId_ pAaugacAccountId_ =
    AccountsAdUnitsGetAdCode'
    { _aaugacQuotaUser = Nothing
    , _aaugacPrettyPrint = True
    , _aaugacUserIP = Nothing
    , _aaugacAdUnitId = pAaugacAdUnitId_
    , _aaugacAdClientId = pAaugacAdClientId_
    , _aaugacAccountId = pAaugacAccountId_
    , _aaugacKey = Nothing
    , _aaugacOAuthToken = Nothing
    , _aaugacFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaugacQuotaUser :: Lens' AccountsAdUnitsGetAdCode' (Maybe Text)
aaugacQuotaUser
  = lens _aaugacQuotaUser
      (\ s a -> s{_aaugacQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaugacPrettyPrint :: Lens' AccountsAdUnitsGetAdCode' Bool
aaugacPrettyPrint
  = lens _aaugacPrettyPrint
      (\ s a -> s{_aaugacPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaugacUserIP :: Lens' AccountsAdUnitsGetAdCode' (Maybe Text)
aaugacUserIP
  = lens _aaugacUserIP (\ s a -> s{_aaugacUserIP = a})

-- | Ad unit to get the code for.
aaugacAdUnitId :: Lens' AccountsAdUnitsGetAdCode' Text
aaugacAdUnitId
  = lens _aaugacAdUnitId
      (\ s a -> s{_aaugacAdUnitId = a})

-- | Ad client with contains the ad unit.
aaugacAdClientId :: Lens' AccountsAdUnitsGetAdCode' Text
aaugacAdClientId
  = lens _aaugacAdClientId
      (\ s a -> s{_aaugacAdClientId = a})

-- | Account which contains the ad client.
aaugacAccountId :: Lens' AccountsAdUnitsGetAdCode' Text
aaugacAccountId
  = lens _aaugacAccountId
      (\ s a -> s{_aaugacAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaugacKey :: Lens' AccountsAdUnitsGetAdCode' (Maybe AuthKey)
aaugacKey
  = lens _aaugacKey (\ s a -> s{_aaugacKey = a})

-- | OAuth 2.0 token for the current user.
aaugacOAuthToken :: Lens' AccountsAdUnitsGetAdCode' (Maybe OAuthToken)
aaugacOAuthToken
  = lens _aaugacOAuthToken
      (\ s a -> s{_aaugacOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaugacFields :: Lens' AccountsAdUnitsGetAdCode' (Maybe Text)
aaugacFields
  = lens _aaugacFields (\ s a -> s{_aaugacFields = a})

instance GoogleAuth AccountsAdUnitsGetAdCode' where
        authKey = aaugacKey . _Just
        authToken = aaugacOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsGetAdCode'
         where
        type Rs AccountsAdUnitsGetAdCode' = AdCode
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdUnitsGetAdCode'{..}
          = go _aaugacAccountId _aaugacAdClientId
              _aaugacAdUnitId
              _aaugacQuotaUser
              (Just _aaugacPrettyPrint)
              _aaugacUserIP
              _aaugacFields
              _aaugacKey
              _aaugacOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdUnitsGetAdCodeResource)
                      r
                      u
