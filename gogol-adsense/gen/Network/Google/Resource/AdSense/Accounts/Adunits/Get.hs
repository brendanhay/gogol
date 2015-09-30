{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Adunits.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the specified ad unit in the specified ad client for the specified
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAdunitsGet@.
module Network.Google.Resource.AdSense.Accounts.Adunits.Get
    (
    -- * REST Resource
      AccountsAdunitsGetResource

    -- * Creating a Request
    , accountsAdunitsGet'
    , AccountsAdunitsGet'

    -- * Request Lenses
    , aagQuotaUser
    , aagPrettyPrint
    , aagUserIp
    , aagAdUnitId
    , aagAdClientId
    , aagAccountId
    , aagKey
    , aagOauthToken
    , aagFields
    , aagAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAdunitsGet@ which the
-- 'AccountsAdunitsGet'' request conforms to.
type AccountsAdunitsGetResource =
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

-- | Gets the specified ad unit in the specified ad client for the specified
-- account.
--
-- /See:/ 'accountsAdunitsGet'' smart constructor.
data AccountsAdunitsGet' = AccountsAdunitsGet'
    { _aagQuotaUser   :: !(Maybe Text)
    , _aagPrettyPrint :: !Bool
    , _aagUserIp      :: !(Maybe Text)
    , _aagAdUnitId    :: !Text
    , _aagAdClientId  :: !Text
    , _aagAccountId   :: !Text
    , _aagKey         :: !(Maybe Text)
    , _aagOauthToken  :: !(Maybe Text)
    , _aagFields      :: !(Maybe Text)
    , _aagAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdunitsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aagQuotaUser'
--
-- * 'aagPrettyPrint'
--
-- * 'aagUserIp'
--
-- * 'aagAdUnitId'
--
-- * 'aagAdClientId'
--
-- * 'aagAccountId'
--
-- * 'aagKey'
--
-- * 'aagOauthToken'
--
-- * 'aagFields'
--
-- * 'aagAlt'
accountsAdunitsGet'
    :: Text -- ^ 'adUnitId'
    -> Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdunitsGet'
accountsAdunitsGet' pAagAdUnitId_ pAagAdClientId_ pAagAccountId_ =
    AccountsAdunitsGet'
    { _aagQuotaUser = Nothing
    , _aagPrettyPrint = True
    , _aagUserIp = Nothing
    , _aagAdUnitId = pAagAdUnitId_
    , _aagAdClientId = pAagAdClientId_
    , _aagAccountId = pAagAccountId_
    , _aagKey = Nothing
    , _aagOauthToken = Nothing
    , _aagFields = Nothing
    , _aagAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aagQuotaUser :: Lens' AccountsAdunitsGet' (Maybe Text)
aagQuotaUser
  = lens _aagQuotaUser (\ s a -> s{_aagQuotaUser = a})

-- | Returns response with indentations and line breaks.
aagPrettyPrint :: Lens' AccountsAdunitsGet' Bool
aagPrettyPrint
  = lens _aagPrettyPrint
      (\ s a -> s{_aagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aagUserIp :: Lens' AccountsAdunitsGet' (Maybe Text)
aagUserIp
  = lens _aagUserIp (\ s a -> s{_aagUserIp = a})

-- | Ad unit to retrieve.
aagAdUnitId :: Lens' AccountsAdunitsGet' Text
aagAdUnitId
  = lens _aagAdUnitId (\ s a -> s{_aagAdUnitId = a})

-- | Ad client for which to get the ad unit.
aagAdClientId :: Lens' AccountsAdunitsGet' Text
aagAdClientId
  = lens _aagAdClientId
      (\ s a -> s{_aagAdClientId = a})

-- | Account to which the ad client belongs.
aagAccountId :: Lens' AccountsAdunitsGet' Text
aagAccountId
  = lens _aagAccountId (\ s a -> s{_aagAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aagKey :: Lens' AccountsAdunitsGet' (Maybe Text)
aagKey = lens _aagKey (\ s a -> s{_aagKey = a})

-- | OAuth 2.0 token for the current user.
aagOauthToken :: Lens' AccountsAdunitsGet' (Maybe Text)
aagOauthToken
  = lens _aagOauthToken
      (\ s a -> s{_aagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aagFields :: Lens' AccountsAdunitsGet' (Maybe Text)
aagFields
  = lens _aagFields (\ s a -> s{_aagFields = a})

-- | Data format for the response.
aagAlt :: Lens' AccountsAdunitsGet' Alt
aagAlt = lens _aagAlt (\ s a -> s{_aagAlt = a})

instance GoogleRequest AccountsAdunitsGet' where
        type Rs AccountsAdunitsGet' = AdUnit
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAdunitsGet'{..}
          = go _aagQuotaUser (Just _aagPrettyPrint) _aagUserIp
              _aagAdUnitId
              _aagAdClientId
              _aagAccountId
              _aagKey
              _aagOauthToken
              _aagFields
              (Just _aagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdunitsGetResource)
                      r
                      u
