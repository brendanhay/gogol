{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSenseHost.Accounts.Adclients.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/host/ AdSense Host API Reference> for @adsensehost.accounts.adclients.get@.
module Network.Google.API.AdSenseHost.Accounts.Adclients.Get
    (
    -- * REST Resource
      AccountsAdclientsGetAPI

    -- * Creating a Request
    , accountsAdclientsGet'
    , AccountsAdclientsGet'

    -- * Request Lenses
    , aagQuotaUser
    , aagPrettyPrint
    , aagUserIp
    , aagAdClientId
    , aagAccountId
    , aagKey
    , aagOauthToken
    , aagFields
    , aagAlt
    ) where

import           Network.Google.AdSense.Host.Types
import           Network.Google.Prelude

-- | A resource alias for adsensehost.accounts.adclients.get which the
-- 'AccountsAdclientsGet'' request conforms to.
type AccountsAdclientsGetAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "adclients" :>
           Capture "adClientId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AdClient

-- | Get information about one of the ad clients in the specified
-- publisher\'s AdSense account.
--
-- /See:/ 'accountsAdclientsGet'' smart constructor.
data AccountsAdclientsGet' = AccountsAdclientsGet'
    { _aagQuotaUser   :: !(Maybe Text)
    , _aagPrettyPrint :: !Bool
    , _aagUserIp      :: !(Maybe Text)
    , _aagAdClientId  :: !Text
    , _aagAccountId   :: !Text
    , _aagKey         :: !(Maybe Text)
    , _aagOauthToken  :: !(Maybe Text)
    , _aagFields      :: !(Maybe Text)
    , _aagAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAdclientsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aagQuotaUser'
--
-- * 'aagPrettyPrint'
--
-- * 'aagUserIp'
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
accountsAdclientsGet'
    :: Text -- ^ 'adClientId'
    -> Text -- ^ 'accountId'
    -> AccountsAdclientsGet'
accountsAdclientsGet' pAagAdClientId_ pAagAccountId_ =
    AccountsAdclientsGet'
    { _aagQuotaUser = Nothing
    , _aagPrettyPrint = True
    , _aagUserIp = Nothing
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
aagQuotaUser :: Lens' AccountsAdclientsGet' (Maybe Text)
aagQuotaUser
  = lens _aagQuotaUser (\ s a -> s{_aagQuotaUser = a})

-- | Returns response with indentations and line breaks.
aagPrettyPrint :: Lens' AccountsAdclientsGet' Bool
aagPrettyPrint
  = lens _aagPrettyPrint
      (\ s a -> s{_aagPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aagUserIp :: Lens' AccountsAdclientsGet' (Maybe Text)
aagUserIp
  = lens _aagUserIp (\ s a -> s{_aagUserIp = a})

-- | Ad client to get.
aagAdClientId :: Lens' AccountsAdclientsGet' Text
aagAdClientId
  = lens _aagAdClientId
      (\ s a -> s{_aagAdClientId = a})

-- | Account which contains the ad client.
aagAccountId :: Lens' AccountsAdclientsGet' Text
aagAccountId
  = lens _aagAccountId (\ s a -> s{_aagAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aagKey :: Lens' AccountsAdclientsGet' (Maybe Text)
aagKey = lens _aagKey (\ s a -> s{_aagKey = a})

-- | OAuth 2.0 token for the current user.
aagOauthToken :: Lens' AccountsAdclientsGet' (Maybe Text)
aagOauthToken
  = lens _aagOauthToken
      (\ s a -> s{_aagOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aagFields :: Lens' AccountsAdclientsGet' (Maybe Text)
aagFields
  = lens _aagFields (\ s a -> s{_aagFields = a})

-- | Data format for the response.
aagAlt :: Lens' AccountsAdclientsGet' Alt
aagAlt = lens _aagAlt (\ s a -> s{_aagAlt = a})

instance GoogleRequest AccountsAdclientsGet' where
        type Rs AccountsAdclientsGet' = AdClient
        request = requestWithRoute defReq adSenseHostURL
        requestWithRoute r u AccountsAdclientsGet'{..}
          = go _aagQuotaUser (Just _aagPrettyPrint) _aagUserIp
              _aagAdClientId
              _aagAccountId
              _aagKey
              _aagOauthToken
              _aagFields
              (Just _aagAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAdclientsGetAPI)
                      r
                      u
