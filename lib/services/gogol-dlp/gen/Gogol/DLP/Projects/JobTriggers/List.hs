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
-- Module      : Gogol.DLP.Projects.JobTriggers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists job triggers. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.jobTriggers.list@.
module Gogol.DLP.Projects.JobTriggers.List
  ( -- * Resource
    DLPProjectsJobTriggersListResource,

    -- ** Constructing a Request
    DLPProjectsJobTriggersList (..),
    newDLPProjectsJobTriggersList,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.jobTriggers.list@ method which the
-- 'DLPProjectsJobTriggersList' request conforms to.
type DLPProjectsJobTriggersListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "jobTriggers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "locationId" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "type" ProjectsJobTriggersListType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GooglePrivacyDlpV2ListJobTriggersResponse

-- | Lists job triggers. See https:\/\/cloud.google.com\/dlp\/docs\/creating-job-triggers to learn more.
--
-- /See:/ 'newDLPProjectsJobTriggersList' smart constructor.
data DLPProjectsJobTriggersList = DLPProjectsJobTriggersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by @AND@ or @OR@ logical operators. A sequence of restrictions implicitly uses @AND@. * A restriction has the form of @{field} {operator} {value}@. * Supported fields\/values for inspect triggers: - @status@ - HEALTHY|PAUSED|CANCELLED - @inspected_storage@ - DATASTORE|CLOUD/STORAGE|BIGQUERY - \'last/run/time@- RFC 3339 formatted timestamp, surrounded by quotation marks. Nanoseconds are ignored. - \'error_count\' - Number of errors that have occurred while running. * The operator must be@=@or@!=\` for status and inspected/storage. Examples: * inspected/storage = cloud/storage AND status = HEALTHY * inspected/storage = cloud/storage OR inspected/storage = bigquery * inspected/storage = cloud/storage AND (state = PAUSED OR state = HEALTHY) * last/run_time > \"2017-12-12T00:00:00+00:00\" The length of this field should be no more than 500 characters.
    filter :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | Comma separated list of triggeredJob fields to order by, followed by @asc@ or @desc@ postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: @name asc,update_time, create_time desc@ Supported fields are: - @create_time@: corresponds to time the JobTrigger was created. - @update_time@: corresponds to time the JobTrigger was last updated. - @last_run_time@: corresponds to the last time the JobTrigger ran. - @name@: corresponds to JobTrigger\'s name. - @display_name@: corresponds to JobTrigger\'s display name. - @status@: corresponds to JobTrigger\'s status.
    orderBy :: (Core.Maybe Core.Text),
    -- | Size of the page, can be limited by a server.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token to continue retrieval. Comes from previous call to ListJobTriggers. @order_by@ field must not change for subsequent calls.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | The type of jobs. Will use @DlpJobType.INSPECT@ if not set.
    type' :: (Core.Maybe ProjectsJobTriggersListType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsJobTriggersList' with the minimum fields required to make a request.
newDLPProjectsJobTriggersList ::
  -- |  Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  DLPProjectsJobTriggersList
newDLPProjectsJobTriggersList parent =
  DLPProjectsJobTriggersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      filter = Core.Nothing,
      locationId = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      type' = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsJobTriggersList
  where
  type
    Rs DLPProjectsJobTriggersList =
      GooglePrivacyDlpV2ListJobTriggersResponse
  type
    Scopes DLPProjectsJobTriggersList =
      '[CloudPlatform'FullControl]
  requestClient DLPProjectsJobTriggersList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      filter
      locationId
      orderBy
      pageSize
      pageToken
      type'
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy DLPProjectsJobTriggersListResource
          )
          Core.mempty
