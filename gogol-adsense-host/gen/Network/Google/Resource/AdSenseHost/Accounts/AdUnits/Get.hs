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
-- Module      : Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @AdsensehostAccountsAdUnitsGet@.
module Network.Google.Resource.AdSenseHost.Accounts.AdUnits.Get
    (
    -- * REST Resource
      AccountsAdUnitsGetResource

    -- * Creating a Request
    , accountsAdUnitsGet'
    , AccountsAdUnitsGet'

    -- * Request Lenses
    , aaugQuotaUser
    , aaugPrettyPrint
    , aaugUserIP
    , aaugAdUnitId
    , aaugAdClientId
    , aaugAccountId
    , aaugKey
    , aaugOAuthToken
    , aaugFields
    ) where

import           Network.Google.AdSenseHost.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsensehostAccountsAdUnitsGet@ method which the
-- 'AccountsAdUnitsGet'' request conforms to.
type AccountsAdUnitsGetResource =
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
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] AdUnit

-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ 'accountsAdUnitsGet'' smart constructor.
data AccountsAdUnitsGet' = AccountsAdUnitsGet'
    { _aaugQuotaUser   :: !(Maybe Text)
    , _aaugPrettyPrint :: !Bool
    , _aaugUserIP      :: !(Maybe Text)
    , _aaugAdUnitId    :: !Text
    , _aaugAdClientId  :: !Text
    , _aaugAccountId   :: !Text
    , _aaugKey         :: !(Maybe AuthKey)
    , _aaugOAuthToken  :: !(Maybe OAuthToken)
    , _aaugFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdUnitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaugQuotaUser'
--
-- * 'aaugPrettyPrint'
--
-- * 'aaugUserIP'
--
-- * 'aaugAdUnitId'
--
-- * 'aaugAdClientId'
--
-- * 'aaugAccountId'
--
-- * 'aaugKey'
--
-- * 'aaugOAuthToken'
--
-- * 'aaugFields'
accountsAdUnitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdUnitsGet'
accountsAdUnitsGet' pAaugAdUnitId_ pAaugAdClientId_ pAaugAccountId_ =
    AccountsAdUnitsGet'
    { _aaugQuotaUser = Nothing
    , _aaugPrettyPrint = True
    , _aaugUserIP = Nothing
    , _aaugAdUnitId = pAaugAdUnitId_
    , _aaugAdClientId = pAaugAdClientId_
    , _aaugAccountId = pAaugAccountId_
    , _aaugKey = Nothing
    , _aaugOAuthToken = Nothing
    , _aaugFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaugQuotaUser :: Lens' AccountsAdUnitsGet' (Maybe Text)
aaugQuotaUser
  = lens _aaugQuotaUser
      (\ s a -> s{_aaugQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaugPrettyPrint :: Lens' AccountsAdUnitsGet' Bool
aaugPrettyPrint
  = lens _aaugPrettyPrint
      (\ s a -> s{_aaugPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaugUserIP :: Lens' AccountsAdUnitsGet' (Maybe Text)
aaugUserIP
  = lens _aaugUserIP (\ s a -> s{_aaugUserIP = a})

-- | Ad unit to get.
aaugAdUnitId :: Lens' AccountsAdUnitsGet' Text
aaugAdUnitId
  = lens _aaugAdUnitId (\ s a -> s{_aaugAdUnitId = a})

-- | Ad client for which to get ad unit.
aaugAdClientId :: Lens' AccountsAdUnitsGet' Text
aaugAdClientId
  = lens _aaugAdClientId
      (\ s a -> s{_aaugAdClientId = a})

-- | Account which contains the ad unit.
aaugAccountId :: Lens' AccountsAdUnitsGet' Text
aaugAccountId
  = lens _aaugAccountId
      (\ s a -> s{_aaugAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaugKey :: Lens' AccountsAdUnitsGet' (Maybe AuthKey)
aaugKey = lens _aaugKey (\ s a -> s{_aaugKey = a})

-- | OAuth 2.0 token for the current user.
aaugOAuthToken :: Lens' AccountsAdUnitsGet' (Maybe OAuthToken)
aaugOAuthToken
  = lens _aaugOAuthToken
      (\ s a -> s{_aaugOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaugFields :: Lens' AccountsAdUnitsGet' (Maybe Text)
aaugFields
  = lens _aaugFields (\ s a -> s{_aaugFields = a})

instance GoogleAuth AccountsAdUnitsGet' where
        _AuthKey = aaugKey . _Just
        _AuthToken = aaugOAuthToken . _Just

instance GoogleRequest AccountsAdUnitsGet' where
        type Rs AccountsAdUnitsGet' = AdUnit
        request = requestWith adSenseHostRequest
        requestWith rq AccountsAdUnitsGet'{..}
          = go _aaugAccountId _aaugAdClientId _aaugAdUnitId
              _aaugQuotaUser
              (Just _aaugPrettyPrint)
              _aaugUserIP
              _aaugFields
              _aaugKey
              _aaugOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountsAdUnitsGetResource)
                      rq
