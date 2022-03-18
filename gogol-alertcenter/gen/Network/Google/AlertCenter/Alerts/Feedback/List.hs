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
-- Module      : Network.Google.AlertCenter.Alerts.Feedback.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the feedback for an alert. Attempting to list feedbacks for a non-existent alert returns @NOT_FOUND@ error.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ Google Workspace Alert Center API Reference> for @alertcenter.alerts.feedback.list@.
module Network.Google.AlertCenter.Alerts.Feedback.List
  ( -- * Resource
    AlertCenterAlertsFeedbackListResource,

    -- ** Constructing a Request
    newAlertCenterAlertsFeedbackList,
    AlertCenterAlertsFeedbackList,
  )
where

import Network.Google.AlertCenter.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @alertcenter.alerts.feedback.list@ method which the
-- 'AlertCenterAlertsFeedbackList' request conforms to.
type AlertCenterAlertsFeedbackListResource =
  "v1beta1"
    Core.:> "alerts"
    Core.:> Core.Capture "alertId" Core.Text
    Core.:> "feedback"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "customerId" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListAlertFeedbackResponse

-- | Lists all the feedback for an alert. Attempting to list feedbacks for a non-existent alert returns @NOT_FOUND@ error.
--
-- /See:/ 'newAlertCenterAlertsFeedbackList' smart constructor.
data AlertCenterAlertsFeedbackList = AlertCenterAlertsFeedbackList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | Required. The alert identifier. The \"-\" wildcard could be used to represent all alerts.
    alertId :: Core.Text,
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Optional. The unique identifier of the Google Workspace organization account of the customer the alert feedback are associated with. Inferred from the caller identity if not provided.
    customerId :: (Core.Maybe Core.Text),
    -- | Optional. A query string for filtering alert feedback results. For more details, see <https://developers.google.com/admin-sdk/alertcenter/guides/query-filters Query filters> and <https://developers.google.com/admin-sdk/alertcenter/reference/filter-fields#alerts.feedback.list Supported query filter fields>.
    filter :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'AlertCenterAlertsFeedbackList' with the minimum fields required to make a request.
newAlertCenterAlertsFeedbackList ::
  -- |  Required. The alert identifier. The \"-\" wildcard could be used to represent all alerts. See 'alertId'.
  Core.Text ->
  AlertCenterAlertsFeedbackList
newAlertCenterAlertsFeedbackList alertId =
  AlertCenterAlertsFeedbackList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      alertId = alertId,
      callback = Core.Nothing,
      customerId = Core.Nothing,
      filter = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    AlertCenterAlertsFeedbackList
  where
  type
    Rs AlertCenterAlertsFeedbackList =
      ListAlertFeedbackResponse
  type
    Scopes AlertCenterAlertsFeedbackList =
      '["https://www.googleapis.com/auth/apps.alerts"]
  requestClient AlertCenterAlertsFeedbackList {..} =
    go
      alertId
      xgafv
      accessToken
      callback
      customerId
      filter
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      alertCenterService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy AlertCenterAlertsFeedbackListResource
          )
          Core.mempty
