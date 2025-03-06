{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent subsequent calls from returning the same notifications.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.acknowledgeNotificationSet@.
module Gogol.AndroidEnterprise.Enterprises.AcknowledgeNotificationSet
  ( -- * Resource
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource,

    -- ** Constructing a Request
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSet (..),
    newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet,
  )
where

import Gogol.AndroidEnterprise.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @androidenterprise.enterprises.acknowledgeNotificationSet@ method which the
-- 'AndroidEnterpriseEnterprisesAcknowledgeNotificationSet' request conforms to.
type AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource =
  "androidenterprise"
    Core.:> "v1"
    Core.:> "enterprises"
    Core.:> "acknowledgeNotificationSet"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "notificationSetId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post '[Core.JSON] ()

-- | Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent subsequent calls from returning the same notifications.
--
-- /See:/ 'newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet' smart constructor.
data AndroidEnterpriseEnterprisesAcknowledgeNotificationSet = AndroidEnterpriseEnterprisesAcknowledgeNotificationSet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | The notification set ID as returned by Enterprises.PullNotificationSet. This must be provided.
    notificationSetId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AndroidEnterpriseEnterprisesAcknowledgeNotificationSet' with the minimum fields required to make a request.
newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet ::
  AndroidEnterpriseEnterprisesAcknowledgeNotificationSet
newAndroidEnterpriseEnterprisesAcknowledgeNotificationSet =
  AndroidEnterpriseEnterprisesAcknowledgeNotificationSet
    { xgafv =
        Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      notificationSetId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSet
  where
  type Rs AndroidEnterpriseEnterprisesAcknowledgeNotificationSet = ()
  type
    Scopes AndroidEnterpriseEnterprisesAcknowledgeNotificationSet =
      '[Androidenterprise'FullControl]
  requestClient
    AndroidEnterpriseEnterprisesAcknowledgeNotificationSet {..} =
      go
        xgafv
        accessToken
        callback
        notificationSetId
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        androidEnterpriseService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  AndroidEnterpriseEnterprisesAcknowledgeNotificationSetResource
            )
            Core.mempty
