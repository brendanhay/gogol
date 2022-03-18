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
-- Module      : Network.Google.DLP.Projects.DlpJobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DlpJobs that match the specified filter in the request. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.dlpJobs.list@.
module Network.Google.DLP.Projects.DlpJobs.List
  ( -- * Resource
    DLPProjectsDlpJobsListResource,

    -- ** Constructing a Request
    newDLPProjectsDlpJobsList,
    DLPProjectsDlpJobsList,
  )
where

import Network.Google.DLP.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dlp.projects.dlpJobs.list@ method which the
-- 'DLPProjectsDlpJobsList' request conforms to.
type DLPProjectsDlpJobsListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "dlpJobs"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "filter" Core.Text
    Core.:> Core.QueryParam "locationId" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "type" ProjectsDlpJobsListType
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GooglePrivacyDlpV2ListDlpJobsResponse

-- | Lists DlpJobs that match the specified filter in the request. See https:\/\/cloud.google.com\/dlp\/docs\/inspecting-storage and https:\/\/cloud.google.com\/dlp\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPProjectsDlpJobsList' smart constructor.
data DLPProjectsDlpJobsList = DLPProjectsDlpJobsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by @AND@ or @OR@ logical operators. A sequence of restrictions implicitly uses @AND@. * A restriction has the form of @{field} {operator} {value}@. * Supported fields\/values for inspect jobs: - @state@ - PENDING|RUNNING|CANCELED|FINISHED|FAILED - @inspected_storage@ - DATASTORE|CLOUD/STORAGE|BIGQUERY - @trigger_name@ - The resource name of the trigger that created job. - \'end/time@- Corresponds to time the job finished. - \'start_time@ - Corresponds to time the job finished. * Supported fields for risk analysis jobs: - @state@ - RUNNING|CANCELED|FINISHED|FAILED - \'end/time@- Corresponds to time the job finished. - \'start_time@ - Corresponds to time the job finished. * The operator must be @=@ or @!=@. Examples: * inspected/storage = cloud/storage AND state = done * inspected/storage = cloud/storage OR inspected/storage = bigquery * inspected/storage = cloud/storage AND (state =
    -- done OR state = canceled) * end_time > \"2017-12-12T00:00:00+00:00\" The length of this field should be no more than 500 characters.
    filter :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | Comma separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: @name asc, end_time asc, create_time desc@ Supported fields are: - @create_time@: corresponds to time the job was created. - @end_time@: corresponds to time the job ended. - @name@: corresponds to job\'s name. - @state@: corresponds to @state@
    orderBy :: (Core.Maybe Core.Text),
    -- | The standard list page size.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The standard list page token.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | The type of job. Defaults to @DlpJobType.INSPECT@
    type' :: (Core.Maybe ProjectsDlpJobsListType),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsDlpJobsList' with the minimum fields required to make a request.
newDLPProjectsDlpJobsList ::
  -- |  Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT_ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  DLPProjectsDlpJobsList
newDLPProjectsDlpJobsList parent =
  DLPProjectsDlpJobsList
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

instance Core.GoogleRequest DLPProjectsDlpJobsList where
  type
    Rs DLPProjectsDlpJobsList =
      GooglePrivacyDlpV2ListDlpJobsResponse
  type
    Scopes DLPProjectsDlpJobsList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient DLPProjectsDlpJobsList {..} =
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
              Core.Proxy DLPProjectsDlpJobsListResource
          )
          Core.mempty
