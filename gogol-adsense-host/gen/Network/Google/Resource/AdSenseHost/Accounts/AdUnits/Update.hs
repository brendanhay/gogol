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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsUpdate@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Update
    (
    -- * REST Resource
      AccountsAdUnitsUpdateResource

    -- * Creating a Request
    , accountsAdUnitsUpdate'
    , AccountsAdUnitsUpdate'

    -- * Request Lenses
    , aauuQuotaUser
    , aauuPrettyPrint
    , aauuUserIP
    , aauuPayload
    , aauuAdClientId
    , aauuAccountId
    , aauuKey
    , aauuOAuthToken
    , aauuFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsUpdate@ method which the
-- 'AccountsAdUnitsUpdate'' request conforms to.
type AccountsAdUnitsUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AdUnit :> Put '[JSON] AdUnit

-- | Update the supplied ad unit in the specified publisher AdSense account.
--
-- /See:/ 'accountsAdUnitsUpdate'' smart constructor.
data AccountsAdUnitsUpdate' = AccountsAdUnitsUpdate'
    { _aauuQuotaUser   :: !(Maybe Text)
    , _aauuPrettyPrint :: !Bool
    , _aauuUserIP      :: !(Maybe Text)
    , _aauuPayload     :: !AdUnit
    , _aauuAdClientId  :: !Text
    , _aauuAccountId   :: !Text
    , _aauuKey         :: !(Maybe AuthKey)
    , _aauuOAuthToken  :: !(Maybe OAuthToken)
    , _aauuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aauuQuotaUser'
--
-- * 'aauuPrettyPrint'
--
-- * 'aauuUserIP'
--
-- * 'aauuPayload'
--
-- * 'aauuAdClientId'
--
-- * 'aauuAccountId'
--
-- * 'aauuKey'
--
-- * 'aauuOAuthToken'
--
-- * 'aauuFields'
accountsAdUnitsUpdate'
    :: AdUnit -- ^ 'payload'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsUpdate'
accountsAdUnitsUpdate' pAauuPayload_ pAauuAdClientId_ pAauuAccountId_ =
    AccountsAdUnitsUpdate'
    { _aauuQuotaUser = Nothing
    , _aauuPrettyPrint = True
    , _aauuUserIP = Nothing
    , _aauuPayload = pAauuPayload_
    , _aauuAdClientId = pAauuAdClientId_
    , _aauuAccountId = pAauuAccountId_
    , _aauuKey = Nothing
    , _aauuOAuthToken = Nothing
    , _aauuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aauuQuotaUser :: Lens' AccountsAdUnitsUpdate' (Maybe Text)
aauuQuotaUser
  = lens _aauuQuotaUser
      (\ s a -> s{_aauuQuotaUser = a})

-- | Returns response with indentations and line breaks.
aauuPrettyPrint :: Lens' AccountsAdUnitsUpdate' Bool
aauuPrettyPrint
  = lens _aauuPrettyPrint
      (\ s a -> s{_aauuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aauuUserIP :: Lens' AccountsAdUnitsUpdate' (Maybe Text)
aauuUserIP
  = lens _aauuUserIP (\ s a -> s{_aauuUserIP = a})

-- | Multipart request metadata.
aauuPayload :: Lens' AccountsAdUnitsUpdate' AdUnit
aauuPayload
  = lens _aauuPayload (\ s a -> s{_aauuPayload = a})

-- | Ad client which contains the ad unit.
aauuAdClientId :: Lens' AccountsAdUnitsUpdate' Text
aauuAdClientId
  = lens _aauuAdClientId
      (\ s a -> s{_aauuAdClientId = a})

-- | Account which contains the ad client.
aauuAccountId :: Lens' AccountsAdUnitsUpdate' Text
aauuAccountId
  = lens _aauuAccountId
      (\ s a -> s{_aauuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aauuKey :: Lens' AccountsAdUnitsUpdate' (Maybe AuthKey)
aauuKey = lens _aauuKey (\ s a -> s{_aauuKey = a})

-- | OAuth 2.0 token for the current user.
aauuOAuthToken :: Lens' AccountsAdUnitsUpdate' (Maybe OAuthToken)
aauuOAuthToken
  = lens _aauuOAuthToken
      (\ s a -> s{_aauuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aauuFields :: Lens' AccountsAdUnitsUpdate' (Maybe Text)
aauuFields
  = lens _aauuFields (\ s a -> s{_aauuFields = a})

instance GoogleAuth AccountsAdUnitsUpdate' where
        _AuthKey = aauuKey . _Just
        _AuthToken = aauuOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsUpdate' where
        type Rs AccountsAdUnitsUpdate' = AdUnit
        request = requestWith adSenseHostRequest
        requestWith rq AccountsAdUnitsUpdate'{..}
          = go _aauuAccountId _aauuAdClientId _aauuQuotaUser
              (Just _aauuPrettyPrint)
              _aauuUserIP
              _aauuFields
              _aauuKey
              _aauuOAuthToken
              (Just AltJSON)
              _aauuPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAdUnitsUpdateResource)
                      rq
