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
-- Module      : Gogol.DLP.Organizations.Locations.InspectTemplates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an InspectTemplate for re-using frequently used configuration for inspecting content, images, and storage. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.create@.
module Gogol.DLP.Organizations.Locations.InspectTemplates.Create
  ( -- * Resource
    DLPOrganizationsLocationsInspectTemplatesCreateResource,

    -- ** Constructing a Request
    newDLPOrganizationsLocationsInspectTemplatesCreate,
    DLPOrganizationsLocationsInspectTemplatesCreate,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.create@ method which the
-- 'DLPOrganizationsLocationsInspectTemplatesCreate' request conforms to.
type DLPOrganizationsLocationsInspectTemplatesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "inspectTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2CreateInspectTemplateRequest
    Core.:> Core.Post
              '[Core.JSON]
              GooglePrivacyDlpV2InspectTemplate

-- | Creates an InspectTemplate for re-using frequently used configuration for inspecting content, images, and storage. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'newDLPOrganizationsLocationsInspectTemplatesCreate' smart constructor.
data DLPOrganizationsLocationsInspectTemplatesCreate = DLPOrganizationsLocationsInspectTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2CreateInspectTemplateRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsLocationsInspectTemplatesCreate' with the minimum fields required to make a request.
newDLPOrganizationsLocationsInspectTemplatesCreate ::
  -- |  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CreateInspectTemplateRequest ->
  DLPOrganizationsLocationsInspectTemplatesCreate
newDLPOrganizationsLocationsInspectTemplatesCreate parent payload =
  DLPOrganizationsLocationsInspectTemplatesCreate
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      parent = parent,
      payload = payload,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPOrganizationsLocationsInspectTemplatesCreate
  where
  type
    Rs
      DLPOrganizationsLocationsInspectTemplatesCreate =
      GooglePrivacyDlpV2InspectTemplate
  type
    Scopes
      DLPOrganizationsLocationsInspectTemplatesCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DLPOrganizationsLocationsInspectTemplatesCreate {..} =
      go
        parent
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        dLPService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DLPOrganizationsLocationsInspectTemplatesCreateResource
            )
            Core.mempty
