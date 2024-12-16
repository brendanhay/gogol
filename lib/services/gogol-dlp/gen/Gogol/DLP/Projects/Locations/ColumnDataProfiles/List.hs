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
-- Module      : Gogol.DLP.Projects.Locations.ColumnDataProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists column data profiles for an organization.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.projects.locations.columnDataProfiles.list@.
module Gogol.DLP.Projects.Locations.ColumnDataProfiles.List
    (
    -- * Resource
      DLPProjectsLocationsColumnDataProfilesListResource

    -- ** Constructing a Request
    , DLPProjectsLocationsColumnDataProfilesList (..)
    , newDLPProjectsLocationsColumnDataProfilesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.projects.locations.columnDataProfiles.list@ method which the
-- 'DLPProjectsLocationsColumnDataProfilesList' request conforms to.
type DLPProjectsLocationsColumnDataProfilesListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "columnDataProfiles" Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "filter" Core.Text Core.:>
                   Core.QueryParam "orderBy" Core.Text Core.:>
                     Core.QueryParam "pageSize" Core.Int32 Core.:>
                       Core.QueryParam "pageToken" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON]
                                 GooglePrivacyDlpV2ListColumnDataProfilesResponse

-- | Lists column data profiles for an organization.
--
-- /See:/ 'newDLPProjectsLocationsColumnDataProfilesList' smart constructor.
data DLPProjectsLocationsColumnDataProfilesList = DLPProjectsLocationsColumnDataProfilesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by @AND@ or @OR@ logical operators. A sequence of restrictions implicitly uses @AND@. * A restriction has the form of @{field} {operator} {value}@. * Supported fields\/values: - @table_data_profile_name@ - The name of the related table data profile. - @project_id@ - The Google Cloud project ID. (REQUIRED) - @dataset_id@ - The BigQuery dataset ID. (REQUIRED) - @table_id@ - The BigQuery table ID. (REQUIRED) - @field_id@ - The ID of the BigQuery field. - @info_type@ - The infotype detected in the resource. - @sensitivity_level@ - HIGH|MEDIUM|LOW - @data_risk_level@: How much risk is associated with this data. - @status_code@ - an RPC status code as defined in https:\/\/github.com\/googleapis\/googleapis\/blob\/master\/google\/rpc\/code.proto * The operator must be @=@ for project/id, dataset/id, and table/id. Other filters also support @!=@. Examples: * project/id = 12345 AND
      -- status/code = 1 * project/id = 12345 AND sensitivity/level = HIGH * project/id = 12345 AND info/type = STREET/ADDRESS The length of this field should be no more than 500 characters.
    , filter :: (Core.Maybe Core.Text)
      -- | Comma-separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case insensitive. The default sorting order is ascending. Redundant space characters are insignificant. Only one order field at a time is allowed. Examples: * @project_id asc@ * @table_id@ * @sensitivity_level desc@ Supported fields are: - @project_id@: The Google Cloud project ID. - @dataset_id@: The ID of a BigQuery dataset. - @table_id@: The ID of a BigQuery table. - @sensitivity_level@: How sensitive the data in a column is, at most. - @data_risk_level@: How much risk is associated with this data. - @profile_last_generated@: When the profile was last updated in epoch seconds.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Page token to continue retrieval.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization or project, for example @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsColumnDataProfilesList' with the minimum fields required to make a request.
newDLPProjectsLocationsColumnDataProfilesList 
    ::  Core.Text
       -- ^  Required. Resource name of the organization or project, for example @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@. See 'parent'.
    -> DLPProjectsLocationsColumnDataProfilesList
newDLPProjectsLocationsColumnDataProfilesList parent =
  DLPProjectsLocationsColumnDataProfilesList
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , filter = Core.Nothing
    , orderBy = Core.Nothing
    , pageSize = Core.Nothing
    , pageToken = Core.Nothing
    , parent = parent
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           DLPProjectsLocationsColumnDataProfilesList
         where
        type Rs DLPProjectsLocationsColumnDataProfilesList =
             GooglePrivacyDlpV2ListColumnDataProfilesResponse
        type Scopes
               DLPProjectsLocationsColumnDataProfilesList
             = '[CloudPlatform'FullControl]
        requestClient
          DLPProjectsLocationsColumnDataProfilesList{..}
          = go parent xgafv accessToken callback filter orderBy
              pageSize
              pageToken
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              dLPService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           DLPProjectsLocationsColumnDataProfilesListResource)
                      Core.mempty

