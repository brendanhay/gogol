{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Accounts.Adunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adunits.get@.
module Network.Google.API.AdSenseHost.Accounts.Adunits.Get
    (
    -- * REST Resource
      AccountsAdunitsGetAPI

    -- * Creating a Request
    , accountsAdunitsGet'
    , AccountsAdunitsGet'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aUserIp
    , aAdUnitId
    , aAdClientId
    , aAccountId
    , aKey
    , aOauthToken
    , aFields
    , aAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.accounts.adunits.get which the
-- 'AccountsAdunitsGet'' request conforms to.
type AccountsAdunitsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             "adunits" :>
               Capture "adUnitId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] AdUnit

-- | Get the specified host ad unit in this AdSense account.
--
-- /See:/ 'accountsAdunitsGet'' smart constructor.
data AccountsAdunitsGet' = AccountsAdunitsGet'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aUserIp      :: !(Maybe Text)
    , _aAdUnitId    :: !Text
    , _aAdClientId  :: !Text
    , _aAccountId   :: !Text
    , _aKey         :: !(Maybe Text)
    , _aOauthToken  :: !(Maybe Text)
    , _aFields      :: !(Maybe Text)
    , _aAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aUserIp'
--
-- * 'aAdUnitId'
--
-- * 'aAdClientId'
--
-- * 'aAccountId'
--
-- * 'aKey'
--
-- * 'aOauthToken'
--
-- * 'aFields'
--
-- * 'aAlt'
accountsAdunitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsGet'
accountsAdunitsGet' pAAdUnitId_ pAAdClientId_ pAAccountId_ =
    AccountsAdunitsGet'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aUserIp = Nothing
    , _aAdUnitId = pAAdUnitId_
    , _aAdClientId = pAAdClientId_
    , _aAccountId = pAAccountId_
    , _aKey = Nothing
    , _aOauthToken = Nothing
    , _aFields = Nothing
    , _aAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AccountsAdunitsGet' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AccountsAdunitsGet' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIp :: Lens' AccountsAdunitsGet' (Maybe Text)
aUserIp = lens _aUserIp (\ s a -> s{_aUserIp = a})

-- | Ad unit to get.
aAdUnitId :: Lens' AccountsAdunitsGet' Text
aAdUnitId
  = lens _aAdUnitId (\ s a -> s{_aAdUnitId = a})

-- | Ad client for which to get ad unit.
aAdClientId :: Lens' AccountsAdunitsGet' Text
aAdClientId
  = lens _aAdClientId (\ s a -> s{_aAdClientId = a})

-- | Account which contains the ad unit.
aAccountId :: Lens' AccountsAdunitsGet' Text
aAccountId
  = lens _aAccountId (\ s a -> s{_aAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AccountsAdunitsGet' (Maybe Text)
aKey = lens _aKey (\ s a -> s{_aKey = a})

-- | OAuth 2.0 token for the current user.
aOauthToken :: Lens' AccountsAdunitsGet' (Maybe Text)
aOauthToken
  = lens _aOauthToken (\ s a -> s{_aOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AccountsAdunitsGet' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

-- | Data format for the response.
aAlt :: Lens' AccountsAdunitsGet' Alt
aAlt = lens _aAlt (\ s a -> s{_aAlt = a})

instance GoogleRequest AccountsAdunitsGet' where
        type Rs AccountsAdunitsGet' = AdUnit
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdunitsGet'{..}
          = go _aQuotaUser (Just _aPrettyPrint) _aUserIp
              _aAdUnitId
              _aAdClientId
              _aAccountId
              _aKey
              _aOauthToken
              _aFields
              (Just _aAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsGetAPI)
                      r
                      u
