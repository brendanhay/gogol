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
-- Module      : Gogol.DLP.Organizations.Locations.FileStoreDataProfiles.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists file store data profiles for an organization.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.locations.fileStoreDataProfiles.list@.
module Gogol.DLP.Organizations.Locations.FileStoreDataProfiles.List
    (
    -- * Resource
      DLPOrganizationsLocationsFileStoreDataProfilesListResource

    -- ** Constructing a Request
    , DLPOrganizationsLocationsFileStoreDataProfilesList (..)
    , newDLPOrganizationsLocationsFileStoreDataProfilesList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.DLP.Types

-- | A resource alias for @dlp.organizations.locations.fileStoreDataProfiles.list@ method which the
-- 'DLPOrganizationsLocationsFileStoreDataProfilesList' request conforms to.
type DLPOrganizationsLocationsFileStoreDataProfilesListResource
     =
     "v2" Core.:>
       Core.Capture "parent" Core.Text Core.:>
         "fileStoreDataProfiles" Core.:>
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
                                 GooglePrivacyDlpV2ListFileStoreDataProfilesResponse

-- | Lists file store data profiles for an organization.
--
-- /See:/ 'newDLPOrganizationsLocationsFileStoreDataProfilesList' smart constructor.
data DLPOrganizationsLocationsFileStoreDataProfilesList = DLPOrganizationsLocationsFileStoreDataProfilesList
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Optional. Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by @AND@ or @OR@ logical operators. A sequence of restrictions implicitly uses @AND@. * A restriction has the form of @{field} {operator} {value}@. * Supported fields\/values: - @project_id@ - The Google Cloud project ID. - @account_id@ - The AWS account ID. - @file_store_path@ - The path like \"gs:\/\/bucket\". - @data_source_type@ - The profile\'s data source type, like \"google\/storage\/bucket\". - @data_storage_location@ - The location where the file store\'s data is stored, like \"us-central1\". - @sensitivity_level@ - HIGH|MODERATE|LOW - @data_risk_level@ - HIGH|MODERATE|LOW - @resource_visibility@: PUBLIC|RESTRICTED - @status_code@ - an RPC status code as defined in https:\/\/github.com\/googleapis\/googleapis\/blob\/master\/google\/rpc\/code.proto * The operator must be @=@ or @!=@. Examples: * @project_id = 12345 AND status_code = 1@ *
      -- @project_id = 12345 AND sensitivity_level = HIGH@ * @project_id = 12345 AND resource_visibility = PUBLIC@ * @file_store_path = \"gs:\/\/mybucket\"@ The length of this field should be no more than 500 characters.
    , filter :: (Core.Maybe Core.Text)
      -- | Optional. Comma-separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case insensitive. The default sorting order is ascending. Redundant space characters are insignificant. Only one order field at a time is allowed. Examples: * @project_id asc@ * @name@ * @sensitivity_level desc@ Supported fields are: - @project_id@: The Google Cloud project ID. - @sensitivity_level@: How sensitive the data in a table is, at most. - @data_risk_level@: How much risk is associated with this data. - @profile_last_generated@: When the profile was last updated in epoch seconds. - @last_modified@: The last time the resource was modified. - @resource_visibility@: Visibility restriction for this resource. - @name@: The name of the profile. - @create_time@: The time the file store was first created.
    , orderBy :: (Core.Maybe Core.Text)
      -- | Optional. Size of the page. This value can be limited by the server. If zero, server returns a page of max size 100.
    , pageSize :: (Core.Maybe Core.Int32)
      -- | Optional. Page token to continue retrieval.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Required. Resource name of the organization or project, for example @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@.
    , parent :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsFileStoreDataProfilesList' with the minimum fields required to make a request.
newDLPOrganizationsLocationsFileStoreDataProfilesList 
    ::  Core.Text
       -- ^  Required. Resource name of the organization or project, for example @organizations\/433245324\/locations\/europe@ or @projects\/project-id\/locations\/asia@. See 'parent'.
    -> DLPOrganizationsLocationsFileStoreDataProfilesList
newDLPOrganizationsLocationsFileStoreDataProfilesList parent =
  DLPOrganizationsLocationsFileStoreDataProfilesList
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
           DLPOrganizationsLocationsFileStoreDataProfilesList
         where
        type Rs
               DLPOrganizationsLocationsFileStoreDataProfilesList
             = GooglePrivacyDlpV2ListFileStoreDataProfilesResponse
        type Scopes
               DLPOrganizationsLocationsFileStoreDataProfilesList
             = '[CloudPlatform'FullControl]
        requestClient
          DLPOrganizationsLocationsFileStoreDataProfilesList{..}
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
                           DLPOrganizationsLocationsFileStoreDataProfilesListResource)
                      Core.mempty

