{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.AlertCenter.Alerts.BatchDelete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Performs batch delete operation on alerts.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.batchDelete@.
module Network.Google.AlertCenter.Alerts.BatchDelete
  ( -- * Resource
    AlertCenterAlertsBatchDeleteResource,

    -- ** Constructing a Request
    newAlertCenterAlertsBatchDelete,
    AlertCenterAlertsBatchDelete,
  )
where

import Network.Google.AlertCenter.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @alertcenter.alerts.batchDelete@ method which the
-- 'AlertCenterAlertsBatchDelete' request conforms to.
type AlertCenterAlertsBatchDeleteResource =
  "v1beta1"
    Core.:> "alerts:batchDelete"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] BatchDeleteAlertsRequest
    Core.:> Core.Post '[Core.JSON] BatchDeleteAlertsResponse

-- | Performs batch delete operation on alerts.
--
-- /See:/ 'newAlertCenterAlertsBatchDelete' smart constructor.
data AlertCenterAlertsBatchDelete = AlertCenterAlertsBatchDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: BatchDeleteAlertsRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsBatchDelete' with the minimum fields required to make a request.
newAlertCenterAlertsBatchDelete ::
  -- |  Multipart request metadata. See 'payload'.
  BatchDeleteAlertsRequest ->
  AlertCenterAlertsBatchDelete
newAlertCenterAlertsBatchDelete payload =
  AlertCenterAlertsBatchDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AlertCenterAlertsBatchDelete
  where
  type
    Rs AlertCenterAlertsBatchDelete =
      BatchDeleteAlertsResponse
  type
    Scopes AlertCenterAlertsBatchDelete =
      '["https://www.googleapis.com/auth/apps.alerts"]
  requestClient AlertCenterAlertsBatchDelete {..} =
    go
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      alertCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AlertCenterAlertsBatchDeleteResource
          )
          Core.mempty
