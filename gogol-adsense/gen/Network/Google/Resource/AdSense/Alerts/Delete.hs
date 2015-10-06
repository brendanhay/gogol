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
-- Module      : Network.Google.Resource.AdSense.Alerts.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ <https://developers.google.com/adsense/management/ AdSense Management API Reference> for @AdsenseAlertsDelete@.
module Network.Google.Resource.AdSense.Alerts.Delete
    (
    -- * REST Resource
      AlertsDeleteResource

    -- * Creating a Request
    , alertsDelete'
    , AlertsDelete'

    -- * Request Lenses
    , adQuotaUser
    , adPrettyPrint
    , adUserIP
    , adAlertId
    , adKey
    , adOAuthToken
    , adFields
    ) where

import           Network.Google.AdSense.Types
import           Network.Google.Prelude

-- | A resource alias for @AdsenseAlertsDelete@ which the
-- 'AlertsDelete'' request conforms to.
type AlertsDeleteResource =
     "alerts" :>
       Capture "alertId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Dismiss (delete) the specified alert from the publisher\'s AdSense
-- account.
--
-- /See:/ 'alertsDelete'' smart constructor.
data AlertsDelete' = AlertsDelete'
    { _adQuotaUser   :: !(Maybe Text)
    , _adPrettyPrint :: !Bool
    , _adUserIP      :: !(Maybe Text)
    , _adAlertId     :: !Text
    , _adKey         :: !(Maybe AuthKey)
    , _adOAuthToken  :: !(Maybe OAuthToken)
    , _adFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AlertsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adQuotaUser'
--
-- * 'adPrettyPrint'
--
-- * 'adUserIP'
--
-- * 'adAlertId'
--
-- * 'adKey'
--
-- * 'adOAuthToken'
--
-- * 'adFields'
alertsDelete'
    :: Text -- ^ 'alertId'
    -> AlertsDelete'
alertsDelete' pAdAlertId_ =
    AlertsDelete'
    { _adQuotaUser = Nothing
    , _adPrettyPrint = True
    , _adUserIP = Nothing
    , _adAlertId = pAdAlertId_
    , _adKey = Nothing
    , _adOAuthToken = Nothing
    , _adFields = Nothing
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
adUserIP :: Lens' AlertsDelete' (Maybe Text)
adUserIP = lens _adUserIP (\ s a -> s{_adUserIP = a})

-- | Alert to delete.
adAlertId :: Lens' AlertsDelete' Text
adAlertId
  = lens _adAlertId (\ s a -> s{_adAlertId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
adKey :: Lens' AlertsDelete' (Maybe AuthKey)
adKey = lens _adKey (\ s a -> s{_adKey = a})

-- | OAuth 2.0 token for the current user.
adOAuthToken :: Lens' AlertsDelete' (Maybe OAuthToken)
adOAuthToken
  = lens _adOAuthToken (\ s a -> s{_adOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
adFields :: Lens' AlertsDelete' (Maybe Text)
adFields = lens _adFields (\ s a -> s{_adFields = a})

instance GoogleAuth AlertsDelete' where
        authKey = adKey . _Just
        authToken = adOAuthToken . _Just

instance GoogleRequest AlertsDelete' where
        type Rs AlertsDelete' = ()
        request = requestWith adSenseRequest
        requestWith rq AlertsDelete'{..}
          = go _adAlertId _adQuotaUser (Just _adPrettyPrint)
              _adUserIP
              _adFields
              _adKey
              _adOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy AlertsDeleteResource)
                      rq
