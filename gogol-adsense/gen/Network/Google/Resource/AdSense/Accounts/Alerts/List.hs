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
-- Module      : Network.Google.Resource.AdSense.Accounts.Alerts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List the alerts for the specified AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAlertsList@.
module Network.Google.Resource.AdSense.Accounts.Alerts.List
    (
    -- * REST Resource
      AccountsAlertsListResource

    -- * Creating a Request
    , accountsAlertsList'
    , AccountsAlertsList'

    -- * Request Lenses
    , aalaQuotaUser
    , aalaPrettyPrint
    , aalaUserIp
    , aalaLocale
    , aalaAccountId
    , aalaKey
    , aalaOauthToken
    , aalaFields
    , aalaAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAlertsList@ which the
-- 'AccountsAlertsList'' request conforms to.
type AccountsAlertsListResource =
     "accounts" :>
       Capture "accountId" Text :>
         "alerts" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Alerts

-- | List the alerts for the specified AdSense account.
--
-- /See:/ 'accountsAlertsList'' smart constructor.
data AccountsAlertsList' = AccountsAlertsList'
    { _aalaQuotaUser   :: !(Maybe Text)
    , _aalaPrettyPrint :: !Bool
    , _aalaUserIp      :: !(Maybe Text)
    , _aalaLocale      :: !(Maybe Text)
    , _aalaAccountId   :: !Text
    , _aalaKey         :: !(Maybe Text)
    , _aalaOauthToken  :: !(Maybe Text)
    , _aalaFields      :: !(Maybe Text)
    , _aalaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAlertsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aalaQuotaUser'
--
-- * 'aalaPrettyPrint'
--
-- * 'aalaUserIp'
--
-- * 'aalaLocale'
--
-- * 'aalaAccountId'
--
-- * 'aalaKey'
--
-- * 'aalaOauthToken'
--
-- * 'aalaFields'
--
-- * 'aalaAlt'
accountsAlertsList'
    :: Text -- ^ 'accountId'
    -> AccountsAlertsList'
accountsAlertsList' pAalaAccountId_ =
    AccountsAlertsList'
    { _aalaQuotaUser = Nothing
    , _aalaPrettyPrint = True
    , _aalaUserIp = Nothing
    , _aalaLocale = Nothing
    , _aalaAccountId = pAalaAccountId_
    , _aalaKey = Nothing
    , _aalaOauthToken = Nothing
    , _aalaFields = Nothing
    , _aalaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aalaQuotaUser :: Lens' AccountsAlertsList' (Maybe Text)
aalaQuotaUser
  = lens _aalaQuotaUser
      (\ s a -> s{_aalaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aalaPrettyPrint :: Lens' AccountsAlertsList' Bool
aalaPrettyPrint
  = lens _aalaPrettyPrint
      (\ s a -> s{_aalaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aalaUserIp :: Lens' AccountsAlertsList' (Maybe Text)
aalaUserIp
  = lens _aalaUserIp (\ s a -> s{_aalaUserIp = a})

-- | The locale to use for translating alert messages. The account locale
-- will be used if this is not supplied. The AdSense default (English) will
-- be used if the supplied locale is invalid or unsupported.
aalaLocale :: Lens' AccountsAlertsList' (Maybe Text)
aalaLocale
  = lens _aalaLocale (\ s a -> s{_aalaLocale = a})

-- | Account for which to retrieve the alerts.
aalaAccountId :: Lens' AccountsAlertsList' Text
aalaAccountId
  = lens _aalaAccountId
      (\ s a -> s{_aalaAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aalaKey :: Lens' AccountsAlertsList' (Maybe Text)
aalaKey = lens _aalaKey (\ s a -> s{_aalaKey = a})

-- | OAuth 2.0 token for the current user.
aalaOauthToken :: Lens' AccountsAlertsList' (Maybe Text)
aalaOauthToken
  = lens _aalaOauthToken
      (\ s a -> s{_aalaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aalaFields :: Lens' AccountsAlertsList' (Maybe Text)
aalaFields
  = lens _aalaFields (\ s a -> s{_aalaFields = a})

-- | Data format for the response.
aalaAlt :: Lens' AccountsAlertsList' Alt
aalaAlt = lens _aalaAlt (\ s a -> s{_aalaAlt = a})

instance GoogleRequest AccountsAlertsList' where
        type Rs AccountsAlertsList' = Alerts
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAlertsList'{..}
          = go _aalaQuotaUser (Just _aalaPrettyPrint)
              _aalaUserIp
              _aalaLocale
              _aalaAccountId
              _aalaKey
              _aalaOauthToken
              _aalaFields
              (Just _aalaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAlertsListResource)
                      r
                      u
