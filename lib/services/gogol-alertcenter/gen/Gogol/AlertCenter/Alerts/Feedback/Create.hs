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
-- Module      : Gogol.AlertCenter.Alerts.Feedback.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates new feedback for an alert. Attempting to create a feedback for a non-existent alert returns @NOT_FOUND@ error. Attempting to create a feedback for an alert that is marked for deletion returns \`FAILED_PRECONDITION\' error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.feedback.create@.
module Gogol.AlertCenter.Alerts.Feedback.Create
  ( -- * Resource
    AlertCenterAlertsFeedbackCreateResource,

    -- ** Constructing a Request
    newAlertCenterAlertsFeedbackCreate,
    AlertCenterAlertsFeedbackCreate,
  )
where

import Gogol.AlertCenter.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @alertcenter.alerts.feedback.create@ method which the
-- 'AlertCenterAlertsFeedbackCreate' request conforms to.
type AlertCenterAlertsFeedbackCreateResource =
  "v1beta1"
    Core.:> "alerts"
    Core.:> Core.Capture "alertId" Core.Text
    Core.:> "feedback"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] AlertFeedback
    Core.:> Core.Post '[Core.JSON] AlertFeedback

-- | Creates new feedback for an alert. Attempting to create a feedback for a non-existent alert returns @NOT_FOUND@ error. Attempting to create a feedback for an alert that is marked for deletion returns \`FAILED_PRECONDITION\' error.
--
-- /See:/ 'newAlertCenterAlertsFeedbackCreate' smart constructor.
data AlertCenterAlertsFeedbackCreate = AlertCenterAlertsFeedbackCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The identifier of the alert this feedback belongs to.
    alertId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The unique identifier of the Google Workspace organization account of the customer the alert is associated with. Inferred from the caller identity if not provided.
    customerId :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: AlertFeedback,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsFeedbackCreate' with the minimum fields required to make a request.
newAlertCenterAlertsFeedbackCreate ::
  -- |  Required. The identifier of the alert this feedback belongs to. See 'alertId'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  AlertFeedback ->
  AlertCenterAlertsFeedbackCreate
newAlertCenterAlertsFeedbackCreate alertId payload =
  AlertCenterAlertsFeedbackCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alertId = alertId,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AlertCenterAlertsFeedbackCreate
  where
  type
    Rs AlertCenterAlertsFeedbackCreate =
      AlertFeedback
  type
    Scopes AlertCenterAlertsFeedbackCreate =
      '[Apps'Alerts]
  requestClient AlertCenterAlertsFeedbackCreate {..} =
    go
      alertId
      xgafv
      accessToken
      callback
      customerId
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      alertCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AlertCenterAlertsFeedbackCreateResource
          )
          Core.mempty
