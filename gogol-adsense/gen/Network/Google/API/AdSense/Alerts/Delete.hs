{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.AdSense.Alerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @adsense.alerts.delete@.
module Network.Google.API.AdSense.Alerts.Delete
    (
    -- * REST Resource
      AlertsDeleteAPI

    -- * Creating a Request
    , alertsDelete'
    , AlertsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adUserIp
    , adAlertId
    , adKey
    , adOauthToken
    , adFields
    , adAlt
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for adsense.alerts.delete which the
-- 'AlertsDelete'' request conforms to.
type AlertsDeleteAPI =
     "alerts" :>
       Capture "alertId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ 'alertsDelete'' smart constructor.
data AlertsDelete' = AlertsDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adUserIp      :: !(Maybe Text)
    , _adAlertId     :: !Text
    , _adKey         :: !(Maybe Text)
    , _adOauthToken  :: !(Maybe Text)
    , _adFields      :: !(Maybe Text)
    , _adAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIp'
--
-- * 'adAlertId'
--
-- * 'adKey'
--
-- * 'adOauthToken'
--
-- * 'adFields'
--
-- * 'adAlt'
alertsDelete'
    :: Text -- ^ 'alertId'
    -> AlertsDelete'
alertsDelete' pAdAlertId_ =
    AlertsDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adUserIp = Nothing
    , _adAlertId = pAdAlertId_
    , _adKey = Nothing
    , _adOauthToken = Nothing
    , _adFields = Nothing
    , _adAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
adQuotaUser :: Lens' AlertsDelete' (Maybe Text)
adQuotaUser
  = lens _adQuotaUser (\ s a -> s{_adQuotaUser = a})

-- | Returns response with indentations and line breaks.
adPrettyPrint :: Lens' AlertsDelete' Bool
adPrettyPrint
  = lens _adPrettyPrint
      (\ s a -> s{_adPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
adUserIp :: Lens' AlertsDelete' (Maybe Text)
adUserIp = lens _adUserIp (\ s a -> s{_adUserIp = a})

-- | Alert to delete.
adAlertId :: Lens' AlertsDelete' Text
adAlertId
  = lens _adAlertId (\ s a -> s{_adAlertId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AlertsDelete' (Maybe Text)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOauthToken :: Lens' AlertsDelete' (Maybe Text)
adOauthToken
  = lens _adOauthToken (\ s a -> s{_adOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AlertsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

-- | Data format for the response.
adAlt :: Lens' AlertsDelete' Alt
adAlt = lens _adAlt (\ s a -> s{_adAlt = a})

instance GoogleRequest AlertsDelete' where
        type Rs AlertsDelete' = ()
        request = requestWithRoute defReq adSenseURL
        requestWithRoute r u AlertsDelete'{..}
          = go _adQuotaUser (Just _adPrettyPrint) _adUserIp
              _adAlertId
              _adKey
              _adOauthToken
              _adFields
              (Just _adAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AlertsDeleteAPI) r
                      u
