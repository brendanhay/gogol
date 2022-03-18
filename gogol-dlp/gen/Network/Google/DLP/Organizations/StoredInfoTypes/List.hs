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
-- Module      : Network.Google.DLP.Organizations.StoredInfoTypes.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists stored infoTypes. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.storedInfoTypes.list@.
module Network.Google.DLP.Organizations.StoredInfoTypes.List
  ( -- * Resource
    DLPOrganizationsStoredInfoTypesListResource,

    -- ** Constructing a Request
    newDLPOrganizationsStoredInfoTypesList,
    DLPOrganizationsStoredInfoTypesList,
  )
where

import Network.Google.DLP.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dlp.organizations.storedInfoTypes.list@ method which the
-- 'DLPOrganizationsStoredInfoTypesList' request conforms to.
type DLPOrganizationsStoredInfoTypesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "storedInfoTypes"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "locationId" Core.Text
    Core.:> Core.QueryParam "orderBy" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GooglePrivacyDlpV2ListStoredInfoTypesResponse

-- | Lists stored infoTypes. See https:\/\/cloud.google.com\/dlp\/docs\/creating-stored-infotypes to learn more.
--
-- /See:/ 'newDLPOrganizationsStoredInfoTypesList' smart constructor.
data DLPOrganizationsStoredInfoTypesList = DLPOrganizationsStoredInfoTypesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | Comma separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: @name asc, display_name, create_time desc@ Supported fields are: - @create_time@: corresponds to time the most recent version of the resource was created. - @state@: corresponds to the state of the resource. - @name@: corresponds to resource name. - @display_name@: corresponds to info type\'s display name.
    orderBy :: (Core.Maybe Core.Text),
    -- | Size of the page, can be limited by server. If zero server returns a page of max size 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token to continue retrieval. Comes from previous call to @ListStoredInfoTypes@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsStoredInfoTypesList' with the minimum fields required to make a request.
newDLPOrganizationsStoredInfoTypesList ::
  -- |  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  DLPOrganizationsStoredInfoTypesList
newDLPOrganizationsStoredInfoTypesList parent =
  DLPOrganizationsStoredInfoTypesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      locationId = Core.Nothing,
      orderBy = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPOrganizationsStoredInfoTypesList
  where
  type
    Rs DLPOrganizationsStoredInfoTypesList =
      GooglePrivacyDlpV2ListStoredInfoTypesResponse
  type
    Scopes DLPOrganizationsStoredInfoTypesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient DLPOrganizationsStoredInfoTypesList {..} =
    go
      parent
      xgafv
      accessToken
      callback
      locationId
      orderBy
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      dLPService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                DLPOrganizationsStoredInfoTypesListResource
          )
          Core.mempty
