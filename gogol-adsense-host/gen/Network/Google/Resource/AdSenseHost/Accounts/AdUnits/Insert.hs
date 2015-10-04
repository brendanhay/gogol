{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsInsert@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Insert
    (
    -- * REST Resource
      AccountsAdUnitsInsertResource

    -- * Creating a Request
    , accountsAdUnitsInsert'
    , AccountsAdUnitsInsert'

    -- * Request Lenses
    , aauiQuotaUser
    , aauiPrettyPrint
    , aauiUserIP
    , aauiPayload
    , aauiAdClientId
    , aauiAccountId
    , aauiKey
    , aauiOAuthToken
    , aauiFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsInsert@ which the
-- 'AccountsAdUnitsInsert'' request conforms to.
type AccountsAdUnitsInsertResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[OctetStream] AdUnit :>
                               Post '[JSON] AdUnit

-- | Insert the supplied ad unit into the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdUnitsInsert'' smart constructor.
data AccountsAdUnitsInsert' = AccountsAdUnitsInsert'
    { _aauiQuotaUser   :: !(Maybe Text)
    , _aauiPrettyPrint :: !Bool
    , _aauiUserIP      :: !(Maybe Text)
    , _aauiPayload     :: !AdUnit
    , _aauiAdClientId  :: !Text
    , _aauiAccountId   :: !Text
    , _aauiKey         :: !(Maybe Key)
    , _aauiOAuthToken  :: !(Maybe OAuthToken)
    , _aauiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aauiQuotaUser'
--
-- * 'aauiPrettyPrint'
--
-- * 'aauiUserIP'
--
-- * 'aauiPayload'
--
-- * 'aauiAdClientId'
--
-- * 'aauiAccountId'
--
-- * 'aauiKey'
--
-- * 'aauiOAuthToken'
--
-- * 'aauiFields'
accountsAdUnitsInsert'
    :: AdUnit -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsInsert'
accountsAdUnitsInsert' pAauiPayload_ pAauiAdClientId_ pAauiAccountId_ =
    AccountsAdUnitsInsert'
    { _aauiQuotaUser = Nothing
    , _aauiPrettyPrint = True
    , _aauiUserIP = Nothing
    , _aauiPayload = pAauiPayload_
    , _aauiAdClientId = pAauiAdClientId_
    , _aauiAccountId = pAauiAccountId_
    , _aauiKey = Nothing
    , _aauiOAuthToken = Nothing
    , _aauiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aauiQuotaUser :: Lens' AccountsAdUnitsInsert' (Maybe Text)
aauiQuotaUser
  = lens _aauiQuotaUser
      (\ s a -> s{_aauiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aauiPrettyPrint :: Lens' AccountsAdUnitsInsert' Bool
aauiPrettyPrint
  = lens _aauiPrettyPrint
      (\ s a -> s{_aauiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aauiUserIP :: Lens' AccountsAdUnitsInsert' (Maybe Text)
aauiUserIP
  = lens _aauiUserIP (\ s a -> s{_aauiUserIP = a})

-- | Multipart request metadata.
aauiPayload :: Lens' AccountsAdUnitsInsert' AdUnit
aauiPayload
  = lens _aauiPayload (\ s a -> s{_aauiPayload = a})

-- | Ad client into which to insert the ad unit.
aauiAdClientId :: Lens' AccountsAdUnitsInsert' Text
aauiAdClientId
  = lens _aauiAdClientId
      (\ s a -> s{_aauiAdClientId = a})

-- | Account which will contain the ad unit.
aauiAccountId :: Lens' AccountsAdUnitsInsert' Text
aauiAccountId
  = lens _aauiAccountId
      (\ s a -> s{_aauiAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aauiKey :: Lens' AccountsAdUnitsInsert' (Maybe Key)
aauiKey = lens _aauiKey (\ s a -> s{_aauiKey = a})

-- | OAuth 2.0 token for the current user.
aauiOAuthToken :: Lens' AccountsAdUnitsInsert' (Maybe OAuthToken)
aauiOAuthToken
  = lens _aauiOAuthToken
      (\ s a -> s{_aauiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aauiFields :: Lens' AccountsAdUnitsInsert' (Maybe Text)
aauiFields
  = lens _aauiFields (\ s a -> s{_aauiFields = a})

instance GoogleAuth AccountsAdUnitsInsert' where
        authKey = aauiKey . _Just
        authToken = aauiOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsInsert' where
        type Rs AccountsAdUnitsInsert' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdUnitsInsert'{..}
          = go _aauiAccountId _aauiAdClientId _aauiQuotaUser
              (Just _aauiPrettyPrint)
              _aauiUserIP
              _aauiFields
              _aauiKey
              _aauiOAuthToken
              (Just AltJSON)
              _aauiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdUnitsInsertResource)
                      r
                      u
