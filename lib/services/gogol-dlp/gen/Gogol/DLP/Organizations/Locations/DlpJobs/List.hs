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
-- Module      : Gogol.DLP.Organizations.Locations.DlpJobs.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DlpJobs that match the specified filter in the request. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-storage and https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.dlpJobs.list@.
module Gogol.DLP.Organizations.Locations.DlpJobs.List
    (
    -- * Resource
      DLPOrganizationsLocationsDlpJobsListResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsDlpJobsList (..)
    , newDLPOrganizationsLocationsDlpJobsList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.dlpJobs.list@ method which the
-- 'DLPOrganizationsLocationsDlpJobsList' request conforms to.
type DLPOrganizationsLocationsDlpJobsListResource =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "dlpJobs" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "locationId" Core.Text Core.:>
                     Core.QueryParam "orderBy" Core.Text Core.:>
                       Core.QueryParam "pageSize" Core.Int32 Core.:>
                         Core.QueryParam "pageToken" Core.Text Core.:>
                           Core.QueryParam "type"
                             OrganizationsLocationsDlpJobsListType
                             Core.:>
                             Core.QueryParam "uploadType" Core.Text Core.:>
                               Core.QueryParam "upload_protocol" Core.Text
                                 Core.:>
                                 Core.QueryParam "alt" Core.AltJSON Core.:>
                                   Core.Get '[Core.JSON]
                                     GooglePrivacyDlpV2ListDlpJobsResponse

-- | Lists DlpJobs that match the specified filter in the request. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/inspecting-storage and https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/compute-risk-analysis to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsDlpJobsList' smart constructor.
data DLPOrganizationsLocationsDlpJobsList = DLPOrganizationsLocationsDlpJobsList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by @AND@ or @OR@ logical operators. A sequence of restrictions implicitly uses @AND@. * A restriction has the form of @{field} {operator} {value}@. * Supported fields\/values for inspect jobs: - @state@ - PENDING|RUNNING|CANCELED|FINISHED|FAILED - @inspected_storage@ - DATASTORE|CLOUD/STORAGE|BIGQUERY - @trigger_name@ - The name of the trigger that created the job. - \'end/time@- Corresponds to the time the job finished. - \'start_time@ - Corresponds to the time the job finished. * Supported fields for risk analysis jobs: - @state@ - RUNNING|CANCELED|FINISHED|FAILED - \'end/time@- Corresponds to the time the job finished. - \'start_time@ - Corresponds to the time the job finished. * The operator must be @=@ or @!=@. Examples: * inspected/storage = cloud/storage AND state = done * inspected/storage = cloud/storage OR inspected/storage = bigquery * inspected/storage = cloud/storage
      -- AND (state = done OR state = canceled) * end_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.
    , filter :: (Core.Maybe Core.Text)
      -- | Deprecated. This field has no effect.
    , locationId :: (Core.Maybe Core.Text)
      -- | Comma-separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case insensitive. The default sorting order is ascending. Redundant space characters are insignificant. Example: @name asc, end_time asc, create_time desc@ Supported fields are: - @create_time@: corresponds to the time the job was created. - @end_time@: corresponds to the time the job ended. - @name@: corresponds to the job\'s name. - @state@: corresponds to @state@
    , orderBy :: (Core.Maybe Core.Text)
      -- | The standard list page size.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | The standard list page token.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    , parent :: Core.Text
      -- | The type of job. Defaults to @DlpJobType.INSPECT@
    , type' :: (Core.Maybe OrganizationsLocationsDlpJobsListType)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsDlpJobsList' with the minimum fields required to make a request.
newDLPOrganizationsLocationsDlpJobsList 
    ::  Core.Text
       -- ^  Required. Parent resource name. The format of this value varies depending on whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
    -> DLPOrganizationsLocationsDlpJobsList
newDLPOrganizationsLocationsDlpJobsList parent =
  DLPOrganizationsLocationsDlpJobsList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , locationId = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , type' = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPOrganizationsLocationsDlpJobsList
         where
        type Rs DLPOrganizationsLocationsDlpJobsList =
             GooglePrivacyDlpV2ListDlpJobsResponse
        type Scopes DLPOrganizationsLocationsDlpJobsList =
             '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsDlpJobsList{..}
          = go parent xgafv accessToken callback filter
              locationId
              orderBy
              pageSize
              pageToken
              type'
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPOrganizationsLocationsDlpJobsListResource)
                      Core.mempty

