{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AdSense.Accounts.Alerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss (delete) the specified alert from the specified publisher
-- AdSense account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAccountsAlertsDelete@.
module AdSense.Accounts.Alerts.Delete
    (
    -- * REST Resource
      AccountsAlertsDeleteAPI

    -- * Creating a Request
    , accountsAlertsDelete
    , AccountsAlertsDelete

    -- * Request Lenses
    , aadQuotaUser
    , aadPrettyPrint
    , aadUserIp
    , aadAlertId
    , aadAccountId
    , aadKey
    , aadOauthToken
    , aadFields
    , aadAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAccountsAlertsDelete@ which the
-- 'AccountsAlertsDelete' request conforms to.
type AccountsAlertsDeleteAPI =
     "accounts" :>
       Capture "accountId" Text :>
         "alerts" :>
           Capture "alertId" Text :> Delete '[JSON] ()

-- | Dismiss (delete) the specified alert from the specified publisher
-- AdSense account.
--
-- /See:/ 'accountsAlertsDelete' smart constructor.
data AccountsAlertsDelete = AccountsAlertsDelete
    { _aadQuotaUser   :: !(Maybe Text)
    , _aadPrettyPrint :: !Bool
    , _aadUserIp      :: !(Maybe Text)
    , _aadAlertId     :: !Text
    , _aadAccountId   :: !Text
    , _aadKey         :: !(Maybe Text)
    , _aadOauthToken  :: !(Maybe Text)
    , _aadFields      :: !(Maybe Text)
    , _aadAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsAlertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aadQuotaUser'
--
-- * 'aadPrettyPrint'
--
-- * 'aadUserIp'
--
-- * 'aadAlertId'
--
-- * 'aadAccountId'
--
-- * 'aadKey'
--
-- * 'aadOauthToken'
--
-- * 'aadFields'
--
-- * 'aadAlt'
accountsAlertsDelete
    :: Text -- ^ 'alertId'
    -> Text -- ^ 'accountId'
    -> AccountsAlertsDelete
accountsAlertsDelete pAadAlertId_ pAadAccountId_ =
    AccountsAlertsDelete
    { _aadQuotaUser = Nothing
    , _aadPrettyPrint = True
    , _aadUserIp = Nothing
    , _aadAlertId = pAadAlertId_
    , _aadAccountId = pAadAccountId_
    , _aadKey = Nothing
    , _aadOauthToken = Nothing
    , _aadFields = Nothing
    , _aadAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aadQuotaUser :: Lens' AccountsAlertsDelete' (Maybe Text)
aadQuotaUser
  = lens _aadQuotaUser (\ s a -> s{_aadQuotaUser = a})

-- | Returns response with indentations and line breaks.
aadPrettyPrint :: Lens' AccountsAlertsDelete' Bool
aadPrettyPrint
  = lens _aadPrettyPrint
      (\ s a -> s{_aadPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aadUserIp :: Lens' AccountsAlertsDelete' (Maybe Text)
aadUserIp
  = lens _aadUserIp (\ s a -> s{_aadUserIp = a})

-- | Alert to delete.
aadAlertId :: Lens' AccountsAlertsDelete' Text
aadAlertId
  = lens _aadAlertId (\ s a -> s{_aadAlertId = a})

-- | Account which contains the ad unit.
aadAccountId :: Lens' AccountsAlertsDelete' Text
aadAccountId
  = lens _aadAccountId (\ s a -> s{_aadAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aadKey :: Lens' AccountsAlertsDelete' (Maybe Text)
aadKey = lens _aadKey (\ s a -> s{_aadKey = a})

-- | OAuth 2.0 token for the current user.
aadOauthToken :: Lens' AccountsAlertsDelete' (Maybe Text)
aadOauthToken
  = lens _aadOauthToken
      (\ s a -> s{_aadOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
aadFields :: Lens' AccountsAlertsDelete' (Maybe Text)
aadFields
  = lens _aadFields (\ s a -> s{_aadFields = a})

-- | Data format for the response.
aadAlt :: Lens' AccountsAlertsDelete' Text
aadAlt = lens _aadAlt (\ s a -> s{_aadAlt = a})

instance GoogleRequest AccountsAlertsDelete' where
        type Rs AccountsAlertsDelete' = ()
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AccountsAlertsDelete{..}
          = go _aadQuotaUser _aadPrettyPrint _aadUserIp
              _aadAlertId
              _aadAccountId
              _aadKey
              _aadOauthToken
              _aadFields
              _aadAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsAlertsDeleteAPI)
                      r
                      u
