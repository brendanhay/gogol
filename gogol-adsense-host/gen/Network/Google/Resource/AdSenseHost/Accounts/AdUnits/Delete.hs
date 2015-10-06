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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsDelete@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Delete
    (
    -- * REST Resource
      AccountsAdUnitsDeleteResource

    -- * Creating a Request
    , accountsAdUnitsDelete'
    , AccountsAdUnitsDelete'

    -- * Request Lenses
    , aaudQuotaUser
    , aaudPrettyPrint
    , aaudUserIP
    , aaudAdUnitId
    , aaudAdClientId
    , aaudAccountId
    , aaudKey
    , aaudOAuthToken
    , aaudFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsDelete@ which the
-- 'AccountsAdUnitsDelete'' request conforms to.
type AccountsAdUnitsDeleteResource =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] AdUnit

-- | Delete the specified ad unit from the specified publisher AdSense
-- account.
--
-- /See:/ 'accountsAdUnitsDelete'' smart constructor.
data AccountsAdUnitsDelete' = AccountsAdUnitsDelete'
    { _aaudQuotaUser   :: !(Maybe Text)
    , _aaudPrettyPrint :: !Bool
    , _aaudUserIP      :: !(Maybe Text)
    , _aaudAdUnitId    :: !Text
    , _aaudAdClientId  :: !Text
    , _aaudAccountId   :: !Text
    , _aaudKey         :: !(Maybe AuthKey)
    , _aaudOAuthToken  :: !(Maybe OAuthToken)
    , _aaudFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaudQuotaUser'
--
-- * 'aaudPrettyPrint'
--
-- * 'aaudUserIP'
--
-- * 'aaudAdUnitId'
--
-- * 'aaudAdClientId'
--
-- * 'aaudAccountId'
--
-- * 'aaudKey'
--
-- * 'aaudOAuthToken'
--
-- * 'aaudFields'
accountsAdUnitsDelete'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsDelete'
accountsAdUnitsDelete' pAaudAdUnitId_ pAaudAdClientId_ pAaudAccountId_ =
    AccountsAdUnitsDelete'
    { _aaudQuotaUser = Nothing
    , _aaudPrettyPrint = True
    , _aaudUserIP = Nothing
    , _aaudAdUnitId = pAaudAdUnitId_
    , _aaudAdClientId = pAaudAdClientId_
    , _aaudAccountId = pAaudAccountId_
    , _aaudKey = Nothing
    , _aaudOAuthToken = Nothing
    , _aaudFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaudQuotaUser :: Lens' AccountsAdUnitsDelete' (Maybe Text)
aaudQuotaUser
  = lens _aaudQuotaUser
      (\ s a -> s{_aaudQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaudPrettyPrint :: Lens' AccountsAdUnitsDelete' Bool
aaudPrettyPrint
  = lens _aaudPrettyPrint
      (\ s a -> s{_aaudPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaudUserIP :: Lens' AccountsAdUnitsDelete' (Maybe Text)
aaudUserIP
  = lens _aaudUserIP (\ s a -> s{_aaudUserIP = a})

-- | Ad unit to delete.
aaudAdUnitId :: Lens' AccountsAdUnitsDelete' Text
aaudAdUnitId
  = lens _aaudAdUnitId (\ s a -> s{_aaudAdUnitId = a})

-- | Ad client for which to get ad unit.
aaudAdClientId :: Lens' AccountsAdUnitsDelete' Text
aaudAdClientId
  = lens _aaudAdClientId
      (\ s a -> s{_aaudAdClientId = a})

-- | Account which contains the ad unit.
aaudAccountId :: Lens' AccountsAdUnitsDelete' Text
aaudAccountId
  = lens _aaudAccountId
      (\ s a -> s{_aaudAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaudKey :: Lens' AccountsAdUnitsDelete' (Maybe AuthKey)
aaudKey = lens _aaudKey (\ s a -> s{_aaudKey = a})

-- | OAuth 2.0 token for the current user.
aaudOAuthToken :: Lens' AccountsAdUnitsDelete' (Maybe OAuthToken)
aaudOAuthToken
  = lens _aaudOAuthToken
      (\ s a -> s{_aaudOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaudFields :: Lens' AccountsAdUnitsDelete' (Maybe Text)
aaudFields
  = lens _aaudFields (\ s a -> s{_aaudFields = a})

instance GoogleAuth AccountsAdUnitsDelete' where
        _AuthKey = aaudKey . _Just
        _AuthToken = aaudOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsDelete' where
        type Rs AccountsAdUnitsDelete' = AdUnit
        request = requestWith adSenseHostRequest
        requestWith rq AccountsAdUnitsDelete'{..}
          = go _aaudAccountId _aaudAdClientId _aaudAdUnitId
              _aaudQuotaUser
              (Just _aaudPrettyPrint)
              _aaudUserIP
              _aaudFields
              _aaudKey
              _aaudOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAdUnitsDeleteResource)
                      rq
