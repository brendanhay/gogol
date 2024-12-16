{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidEnterprise.Enterprises.SendTestPushNotification
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sends a test notification to validate the EMM integration with the Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.sendTestPushNotification@.
module Gogol.AndroidEnterprise.Enterprises.SendTestPushNotification
    (
    -- * Resource
      AndroidEnterpriseEnterprisesSendTestPushNotificationResource

    -- ** Constructing a Request
    , AndroidEnterpriseEnterprisesSendTestPushNotification (..)
    , newAndroidEnterpriseEnterprisesSendTestPushNotification
    ) where

import qualified Gogol.Prelude as Core
import Gogol.AndroidEnterprise.Types

-- | A resource alias for @androidenterprise.enterprises.sendTestPushNotification@ method which the
-- 'AndroidEnterpriseEnterprisesSendTestPushNotification' request conforms to.
type AndroidEnterpriseEnterprisesSendTestPushNotificationResource
     =
     "androidenterprise" Core.:>
       "v1" Core.:>
         "enterprises" Core.:>
           Core.Capture "enterpriseId" Core.Text Core.:>
             "sendTestPushNotification" Core.:>
               Core.QueryParam "$.xgafv" Xgafv Core.:>
                 Core.QueryParam "access_token" Core.Text Core.:>
                   Core.QueryParam "callback" Core.Text Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "upload_protocol" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.Post '[Core.JSON]
                             EnterprisesSendTestPushNotificationResponse

-- | Sends a test notification to validate the EMM integration with the Google Cloud Pub\/Sub service for this enterprise.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesSendTestPushNotification' smart constructor.
data AndroidEnterpriseEnterprisesSendTestPushNotification = AndroidEnterpriseEnterprisesSendTestPushNotification
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The ID of the enterprise.
    , enterpriseId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesSendTestPushNotification' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesSendTestPushNotification 
    ::  Core.Text
       -- ^  The ID of the enterprise. See 'enterpriseId'.
    -> AndroidEnterpriseEnterprisesSendTestPushNotification
newAndroidEnterpriseEnterprisesSendTestPushNotification enterpriseId =
  AndroidEnterpriseEnterprisesSendTestPushNotification
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , enterpriseId = enterpriseId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           AndroidEnterpriseEnterprisesSendTestPushNotification
         where
        type Rs
               AndroidEnterpriseEnterprisesSendTestPushNotification
             = EnterprisesSendTestPushNotificationResponse
        type Scopes
               AndroidEnterpriseEnterprisesSendTestPushNotification
             = '[Androidenterprise'FullControl]
        requestClient
          AndroidEnterpriseEnterprisesSendTestPushNotification{..}
          = go enterpriseId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              androidEnterpriseService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           AndroidEnterpriseEnterprisesSendTestPushNotificationResource)
                      Core.mempty

