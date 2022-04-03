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
-- Module      : Gogol.AlertCenter.Alerts.GetMetadata
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata of an alert. Attempting to get metadata for a non-existent alert returns @NOT_FOUND@ error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.getMetadata@.
module Gogol.AlertCenter.Alerts.GetMetadata
  ( -- * Resource
    AlertCenterAlertsGetMetadataResource,

    -- ** Constructing a Request
    AlertCenterAlertsGetMetadata (..),
    newAlertCenterAlertsGetMetadata,
  )
where

import Gogol.AlertCenter.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @alertcenter.alerts.getMetadata@ method which the
-- 'AlertCenterAlertsGetMetadata' request conforms to.
type AlertCenterAlertsGetMetadataResource =
  "v1beta1"
    Core.:> "alerts"
    Core.:> Core.Capture "alertId" Core.Text
    Core.:> "metadata"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] AlertMetadata

-- | Returns the metadata of an alert. Attempting to get metadata for a non-existent alert returns @NOT_FOUND@ error.
--
-- /See:/ 'newAlertCenterAlertsGetMetadata' smart constructor.
data AlertCenterAlertsGetMetadata = AlertCenterAlertsGetMetadata
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the alert this metadata belongs to.
    alertId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The unique identifier of the Google Workspace organization account of the customer the alert metadata is associated with. Inferred from the caller identity if not provided.
    customerId :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsGetMetadata' with the minimum fields required to make a request.
newAlertCenterAlertsGetMetadata ::
  -- |  Required. The identifier of the alert this metadata belongs to. See 'alertId'.
  Core.Text ->
  AlertCenterAlertsGetMetadata
newAlertCenterAlertsGetMetadata alertId =
  AlertCenterAlertsGetMetadata
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alertId = alertId,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AlertCenterAlertsGetMetadata
  where
  type Rs AlertCenterAlertsGetMetadata = AlertMetadata
  type
    Scopes AlertCenterAlertsGetMetadata =
      '[Apps'Alerts]
  requestClient AlertCenterAlertsGetMetadata {..} =
    go
      alertId
      xgafv
      accessToken
      callback
      customerId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      alertCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AlertCenterAlertsGetMetadataResource
          )
          Core.mempty
