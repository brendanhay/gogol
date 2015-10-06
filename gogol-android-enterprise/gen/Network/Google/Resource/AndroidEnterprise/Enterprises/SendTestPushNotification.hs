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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sends a test push notification to validate the MDM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseEnterprisesSendTestPushNotification@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
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
    , estpnUserIP
    , estpnKey
    , estpnOAuthToken
    , estpnFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseEnterprisesSendTestPushNotification@ which the
-- 'EnterprisesSendTestPushNotification'' request conforms to.
type EnterprisesSendTestPushNotificationResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "sendTestPushNotification" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
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
    , _estpnUserIP       :: !(Maybe Text)
    , _estpnKey          :: !(Maybe AuthKey)
    , _estpnOAuthToken   :: !(Maybe OAuthToken)
    , _estpnFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'estpnUserIP'
--
-- * 'estpnKey'
--
-- * 'estpnOAuthToken'
--
-- * 'estpnFields'
enterprisesSendTestPushNotification'
    :: Text -- ^ 'enterpriseId'
    -> EnterprisesSendTestPushNotification'
enterprisesSendTestPushNotification' pEstpnEnterpriseId_ =
    EnterprisesSendTestPushNotification'
    { _estpnQuotaUser = Nothing
    , _estpnPrettyPrint = True
    , _estpnEnterpriseId = pEstpnEnterpriseId_
    , _estpnUserIP = Nothing
    , _estpnKey = Nothing
    , _estpnOAuthToken = Nothing
    , _estpnFields = Nothing
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
estpnUserIP :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnUserIP
  = lens _estpnUserIP (\ s a -> s{_estpnUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
estpnKey :: Lens' EnterprisesSendTestPushNotification' (Maybe AuthKey)
estpnKey = lens _estpnKey (\ s a -> s{_estpnKey = a})

-- | OAuth 2.0 token for the current user.
estpnOAuthToken :: Lens' EnterprisesSendTestPushNotification' (Maybe OAuthToken)
estpnOAuthToken
  = lens _estpnOAuthToken
      (\ s a -> s{_estpnOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
estpnFields :: Lens' EnterprisesSendTestPushNotification' (Maybe Text)
estpnFields
  = lens _estpnFields (\ s a -> s{_estpnFields = a})

instance GoogleAuth
         EnterprisesSendTestPushNotification' where
        _AuthKey = estpnKey . _Just
        _AuthToken = estpnOAuthToken . _Just

instance GoogleRequest
         EnterprisesSendTestPushNotification' where
        type Rs EnterprisesSendTestPushNotification' =
             EnterprisesSendTestPushNotificationResponse
        request = requestWith androidEnterpriseRequest
        requestWith rq
          EnterprisesSendTestPushNotification'{..}
          = go _estpnEnterpriseId _estpnQuotaUser
              (Just _estpnPrettyPrint)
              _estpnUserIP
              _estpnFields
              _estpnKey
              _estpnOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy EnterprisesSendTestPushNotificationResource)
                      rq
