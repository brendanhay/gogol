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
-- Sends a test push notification to validate the EMM integration with the
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
    , estpnEnterpriseId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.sendTestPushNotification@ method which the
-- 'EnterprisesSendTestPushNotification' request conforms to.
type EnterprisesSendTestPushNotificationResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "sendTestPushNotification" :>
               QueryParam "alt" AltJSON :>
                 Post '[JSON]
                   EnterprisesSendTestPushNotificationResponse

-- | Sends a test push notification to validate the EMM integration with the
-- Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ 'enterprisesSendTestPushNotification' smart constructor.
newtype EnterprisesSendTestPushNotification = EnterprisesSendTestPushNotification
    { _estpnEnterpriseId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EnterprisesSendTestPushNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'estpnEnterpriseId'
enterprisesSendTestPushNotification
    :: Text -- ^ 'estpnEnterpriseId'
    -> EnterprisesSendTestPushNotification
enterprisesSendTestPushNotification pEstpnEnterpriseId_ =
    EnterprisesSendTestPushNotification
    { _estpnEnterpriseId = pEstpnEnterpriseId_
    }

-- | The ID of the enterprise.
estpnEnterpriseId :: Lens' EnterprisesSendTestPushNotification Text
estpnEnterpriseId
  = lens _estpnEnterpriseId
      (\ s a -> s{_estpnEnterpriseId = a})

instance GoogleRequest
         EnterprisesSendTestPushNotification where
        type Rs EnterprisesSendTestPushNotification =
             EnterprisesSendTestPushNotificationResponse
        requestClient EnterprisesSendTestPushNotification{..}
          = go _estpnEnterpriseId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy EnterprisesSendTestPushNotificationResource)
                      mempty
