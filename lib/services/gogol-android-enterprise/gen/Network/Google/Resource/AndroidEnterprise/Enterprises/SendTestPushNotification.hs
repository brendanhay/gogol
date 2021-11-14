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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a test notification to validate the EMM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.sendTestPushNotification@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.SendTestPushNotification
    (
    -- * REST Resource
      EnterprisesSendTestPushNotificationResource

    -- * Creating a Request
    , enterprisesSendTestPushNotification
    , EnterprisesSendTestPushNotification

    -- * Request Lenses
    , estpnXgafv
    , estpnUploadProtocol
    , estpnEnterpriseId
    , estpnAccessToken
    , estpnUploadType
    , estpnCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.sendTestPushNotification@ method which the
-- 'EnterprisesSendTestPushNotification' request conforms to.
type EnterprisesSendTestPushNotificationResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "sendTestPushNotification" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Post '[JSON]
                             EnterprisesSendTestPushNotificationResponse

-- | Sends a test notification to validate the EMM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ 'enterprisesSendTestPushNotification' smart constructor.
data EnterprisesSendTestPushNotification =
  EnterprisesSendTestPushNotification'
    { _estpnXgafv :: !(Maybe Xgafv)
    , _estpnUploadProtocol :: !(Maybe Text)
    , _estpnEnterpriseId :: !Text
    , _estpnAccessToken :: !(Maybe Text)
    , _estpnUploadType :: !(Maybe Text)
    , _estpnCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesSendTestPushNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'estpnXgafv'
--
-- * 'estpnUploadProtocol'
--
-- * 'estpnEnterpriseId'
--
-- * 'estpnAccessToken'
--
-- * 'estpnUploadType'
--
-- * 'estpnCallback'
enterprisesSendTestPushNotification
    :: Text -- ^ 'estpnEnterpriseId'
    -> EnterprisesSendTestPushNotification
enterprisesSendTestPushNotification pEstpnEnterpriseId_ =
  EnterprisesSendTestPushNotification'
    { _estpnXgafv = Nothing
    , _estpnUploadProtocol = Nothing
    , _estpnEnterpriseId = pEstpnEnterpriseId_
    , _estpnAccessToken = Nothing
    , _estpnUploadType = Nothing
    , _estpnCallback = Nothing
    }


-- | V1 error format.
estpnXgafv :: Lens' EnterprisesSendTestPushNotification (Maybe Xgafv)
estpnXgafv
  = lens _estpnXgafv (\ s a -> s{_estpnXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
estpnUploadProtocol :: Lens' EnterprisesSendTestPushNotification (Maybe Text)
estpnUploadProtocol
  = lens _estpnUploadProtocol
      (\ s a -> s{_estpnUploadProtocol = a})

-- | The ID of the enterprise.
estpnEnterpriseId :: Lens' EnterprisesSendTestPushNotification Text
estpnEnterpriseId
  = lens _estpnEnterpriseId
      (\ s a -> s{_estpnEnterpriseId = a})

-- | OAuth access token.
estpnAccessToken :: Lens' EnterprisesSendTestPushNotification (Maybe Text)
estpnAccessToken
  = lens _estpnAccessToken
      (\ s a -> s{_estpnAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
estpnUploadType :: Lens' EnterprisesSendTestPushNotification (Maybe Text)
estpnUploadType
  = lens _estpnUploadType
      (\ s a -> s{_estpnUploadType = a})

-- | JSONP
estpnCallback :: Lens' EnterprisesSendTestPushNotification (Maybe Text)
estpnCallback
  = lens _estpnCallback
      (\ s a -> s{_estpnCallback = a})

instance GoogleRequest
           EnterprisesSendTestPushNotification
         where
        type Rs EnterprisesSendTestPushNotification =
             EnterprisesSendTestPushNotificationResponse
        type Scopes EnterprisesSendTestPushNotification =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient
          EnterprisesSendTestPushNotification'{..}
          = go _estpnEnterpriseId _estpnXgafv
              _estpnUploadProtocol
              _estpnAccessToken
              _estpnUploadType
              _estpnCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesSendTestPushNotificationResource)
                      mempty
