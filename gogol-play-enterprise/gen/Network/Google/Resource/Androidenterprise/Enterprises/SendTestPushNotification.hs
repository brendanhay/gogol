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
-- Module      : Network.Google.Resource.Androidenterprise.Enterprises.SendTestPushNotification
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends a test push notification to validate the MDM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseEnterprisesSendTestPushNotification@.
module Network.Google.Resource.Androidenterprise.Enterprises.SendTestPushNotification
    (
    -- * REST Resource
      EnterprisesSendTestPushNotificationResource

    -- * Creating a Request
    , enterprisesSendTestPushNotification'
    , EnterprisesSendTestPushNotification'

    -- * Request Lenses
    , estpnQuotaUser
    , estpnPrettyPrint
    , estpnEnterpriseId
    , estpnUserIp
    , estpnKey
    , estpnOauthToken
    , estpnFields
    , estpnAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseEnterprisesSendTestPushNotification@ which the
-- 'EnterprisesSendTestPushNotification'' request conforms to.
type EnterprisesSendTestPushNotificationResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "sendTestPushNotification" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :>
                         Post '[JSON]
                           EnterprisesSendTestPushNotificationResponse

-- | Sends a test push notification to validate the MDM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ 'enterprisesSendTestPushNotification'' smart constructor.
data EnterprisesSendTestPushNotification' = EnterprisesSendTestPushNotification'
    { _estpnQuotaUser    :: !(Maybe Text)
    , _estpnPrettyPrint  :: !Bool
    , _estpnEnterpriseId :: !Text
    , _estpnUserIp       :: !(Maybe Text)
    , _estpnKey          :: !(Maybe Text)
    , _estpnOauthToken   :: !(Maybe Text)
    , _estpnFields       :: !(Maybe Text)
    , _estpnAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesSendTestPushNotification'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'estpnQuotaUser'
--
-- * 'estpnPrettyPrint'
--
-- * 'estpnEnterpriseId'
--
-- * 'estpnUserIp'
--
-- * 'estpnKey'
--
-- * 'estpnOauthToken'
--
-- * 'estpnFields'
--
-- * 'estpnAlt'
enterprisesSendTestPushNotification'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesSendTestPushNotification'
enterprisesSendTestPushNotification' pEstpnEnterpriseId_ =
    EnterprisesSendTestPushNotification'
    { _estpnQuotaUser = Nothing
    , _estpnPrettyPrint = True
    , _estpnEnterpriseId = pEstpnEnterpriseId_
    , _estpnUserIp = Nothing
    , _estpnKey = Nothing
    , _estpnOauthToken = Nothing
    , _estpnFields = Nothing
    , _estpnAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
estpnQuotaUser :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnQuotaUser
  = lens _estpnQuotaUser
      (\ s a -> s{_estpnQuotaUser = a})

-- | Returns response with indentations and line breaks.
estpnPrettyPrint :: Lens' EnterprisesSendTestPushNotification' Bool
estpnPrettyPrint
  = lens _estpnPrettyPrint
      (\ s a -> s{_estpnPrettyPrint = a})

-- | The ID of the enterprise.
estpnEnterpriseId :: Lens' EnterprisesSendTestPushNotification' Text
estpnEnterpriseId
  = lens _estpnEnterpriseId
      (\ s a -> s{_estpnEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
estpnUserIp :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnUserIp
  = lens _estpnUserIp (\ s a -> s{_estpnUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
estpnKey :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnKey = lens _estpnKey (\ s a -> s{_estpnKey = a})

-- | OAuth 2.0 token for the current user.
estpnOauthToken :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnOauthToken
  = lens _estpnOauthToken
      (\ s a -> s{_estpnOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
estpnFields :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnFields
  = lens _estpnFields (\ s a -> s{_estpnFields = a})

-- | Data format for the response.
estpnAlt :: Lens' EnterprisesSendTestPushNotification' Alt
estpnAlt = lens _estpnAlt (\ s a -> s{_estpnAlt = a})

instance GoogleRequest
         EnterprisesSendTestPushNotification' where
        type Rs EnterprisesSendTestPushNotification' =
             EnterprisesSendTestPushNotificationResponse
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u
          EnterprisesSendTestPushNotification'{..}
          = go _estpnQuotaUser (Just _estpnPrettyPrint)
              _estpnEnterpriseId
              _estpnUserIp
              _estpnKey
              _estpnOauthToken
              _estpnFields
              (Just _estpnAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy EnterprisesSendTestPushNotificationResource)
                      r
                      u
