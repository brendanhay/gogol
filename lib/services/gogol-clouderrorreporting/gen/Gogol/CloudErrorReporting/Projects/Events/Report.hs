{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.CloudErrorReporting.Projects.Events.Report
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Report an individual error event and record the event to a log. This endpoint accepts __either__ an OAuth token, __or__ an <https://support.google.com/cloud/answer/6158862 API key> for authentication. To use an API key, append it to the URL as the value of a @key@ parameter. For example: @POST https:\/\/clouderrorreporting.googleapis.com\/v1beta1\/{projectName}\/events:report?key=123ABC456@ __Note:__ [Error Reporting] (https:\/\/cloud.google.com\/error-reporting) is a service built on Cloud Logging and can analyze log entries when all of the following are true: * Customer-managed encryption keys (CMEK) are disabled on the log bucket. * The log bucket satisfies one of the following: * The log bucket is stored in the same project where the logs originated. * The logs were routed to a project, and then that project stored those logs in a log bucket that it owns.
--
-- /See:/ <https://cloud.google.com/error-reporting/ Error Reporting API Reference> for @clouderrorreporting.projects.events.report@.
module Gogol.CloudErrorReporting.Projects.Events.Report
  ( -- * Resource
    CloudErrorReportingProjectsEventsReportResource,

    -- ** Constructing a Request
    CloudErrorReportingProjectsEventsReport (..),
    newCloudErrorReportingProjectsEventsReport,
  )
where

import Gogol.CloudErrorReporting.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @clouderrorreporting.projects.events.report@ method which the
-- 'CloudErrorReportingProjectsEventsReport' request conforms to.
type CloudErrorReportingProjectsEventsReportResource =
  "v1beta1"
    Core.:> Core.Capture "projectName" Core.Text
    Core.:> "events:report"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] ReportedErrorEvent
    Core.:> Core.Post '[Core.JSON] ReportErrorEventResponse

-- | Report an individual error event and record the event to a log. This endpoint accepts __either__ an OAuth token, __or__ an <https://support.google.com/cloud/answer/6158862 API key> for authentication. To use an API key, append it to the URL as the value of a @key@ parameter. For example: @POST https:\/\/clouderrorreporting.googleapis.com\/v1beta1\/{projectName}\/events:report?key=123ABC456@ __Note:__ [Error Reporting] (https:\/\/cloud.google.com\/error-reporting) is a service built on Cloud Logging and can analyze log entries when all of the following are true: * Customer-managed encryption keys (CMEK) are disabled on the log bucket. * The log bucket satisfies one of the following: * The log bucket is stored in the same project where the logs originated. * The logs were routed to a project, and then that project stored those logs in a log bucket that it owns.
--
-- /See:/ 'newCloudErrorReportingProjectsEventsReport' smart constructor.
data CloudErrorReportingProjectsEventsReport = CloudErrorReportingProjectsEventsReport
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Multipart request metadata.
    payload :: ReportedErrorEvent,
    -- | Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectId}@, where @{projectId}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID>. Example: \/\/ @projects\/my-project-123@.
    projectName :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CloudErrorReportingProjectsEventsReport' with the minimum fields required to make a request.
newCloudErrorReportingProjectsEventsReport ::
  -- |  Multipart request metadata. See 'payload'.
  ReportedErrorEvent ->
  -- |  Required. The resource name of the Google Cloud Platform project. Written as @projects\/{projectId}@, where @{projectId}@ is the <https://support.google.com/cloud/answer/6158840 Google Cloud Platform project ID>. Example: \/\/ @projects\/my-project-123@. See 'projectName'.
  Core.Text ->
  CloudErrorReportingProjectsEventsReport
newCloudErrorReportingProjectsEventsReport payload projectName =
  CloudErrorReportingProjectsEventsReport
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      payload = payload,
      projectName = projectName,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest CloudErrorReportingProjectsEventsReport where
  type
    Rs CloudErrorReportingProjectsEventsReport =
      ReportErrorEventResponse
  type
    Scopes CloudErrorReportingProjectsEventsReport =
      '[CloudPlatform'FullControl]
  requestClient CloudErrorReportingProjectsEventsReport {..} =
    go
      projectName
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      payload
      cloudErrorReportingService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy CloudErrorReportingProjectsEventsReportResource
          )
          Core.mempty
