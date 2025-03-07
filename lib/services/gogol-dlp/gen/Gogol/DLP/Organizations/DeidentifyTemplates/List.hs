{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
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
-- Module      : Gogol.DLP.Organizations.DeidentifyTemplates.List
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists DeidentifyTemplates. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates-deid to learn more.
--
-- /See:/ <https://cloud.google.com/sensitive-data-protection/docs/ Sensitive Data Protection (DLP) Reference> for @dlp.organizations.deidentifyTemplates.list@.
module Gogol.DLP.Organizations.DeidentifyTemplates.List
  ( -- * Resource
    DLPOrganizationsDeidentifyTemplatesListResource,

    -- ** Constructing a Request
    DLPOrganizationsDeidentifyTemplatesList (..),
    newDLPOrganizationsDeidentifyTemplatesList,
  )
where

import Gogol.DLP.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @dlp.organizations.deidentifyTemplates.list@ method which the
-- 'DLPOrganizationsDeidentifyTemplatesList' request conforms to.
type DLPOrganizationsDeidentifyTemplatesListResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deidentifyTemplates"
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
              GooglePrivacyDlpV2ListDeidentifyTemplatesResponse

-- | Lists DeidentifyTemplates. See https:\/\/cloud.google.com\/sensitive-data-protection\/docs\/creating-templates-deid to learn more.
--
-- /See:/ 'newDLPOrganizationsDeidentifyTemplatesList' smart constructor.
data DLPOrganizationsDeidentifyTemplatesList = DLPOrganizationsDeidentifyTemplatesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Deprecated. This field has no effect.
    locationId :: (Core.Maybe Core.Text),
    -- | Comma-separated list of fields to order by, followed by @asc@ or @desc@ postfix. This list is case insensitive. The default sorting order is ascending. Redundant space characters are insignificant. Example: @name asc,update_time, create_time desc@ Supported fields are: - @create_time@: corresponds to the time the template was created. - @update_time@: corresponds to the time the template was last updated. - @name@: corresponds to the template\'s name. - @display_name@: corresponds to the template\'s display name.
    orderBy :: (Core.Maybe Core.Text),
    -- | Size of the page. This value can be limited by the server. If zero server returns a page of max size 100.
    pageSize :: (Core.Maybe Core.Int32),
    -- | Page token to continue retrieval. Comes from the previous call to @ListDeidentifyTemplates@.
    pageToken :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ + Organizations scope, location specified: @organizations\/{org_id}\/locations\/{location_id}@ + Organizations scope, no location specified (defaults to global): @organizations\/{org_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsDeidentifyTemplatesList' with the minimum fields required to make a request.
newDLPOrganizationsDeidentifyTemplatesList ::
  -- |  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/sensitive-data-protection/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/{project_id}\/locations\/{location_id}@ + Projects scope, no location specified (defaults to global): @projects\/{project_id}@ + Organizations scope, location specified: @organizations\/{org_id}\/locations\/{location_id}@ + Organizations scope, no location specified (defaults to global): @organizations\/{org_id}@ The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  DLPOrganizationsDeidentifyTemplatesList
newDLPOrganizationsDeidentifyTemplatesList parent =
  DLPOrganizationsDeidentifyTemplatesList
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

instance Core.GoogleRequest DLPOrganizationsDeidentifyTemplatesList where
  type
    Rs DLPOrganizationsDeidentifyTemplatesList =
      GooglePrivacyDlpV2ListDeidentifyTemplatesResponse
  type
    Scopes DLPOrganizationsDeidentifyTemplatesList =
      '[CloudPlatform'FullControl]
  requestClient DLPOrganizationsDeidentifyTemplatesList {..} =
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
              Core.Proxy DLPOrganizationsDeidentifyTemplatesListResource
          )
          Core.mempty
