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
-- Module      : Network.Google.DLP.Organizations.DeidentifyTemplates.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a DeidentifyTemplate for re-using frequently used configuration for de-identifying content, images, and storage. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.create@.
module Network.Google.DLP.Organizations.DeidentifyTemplates.Create
  ( -- * Resource
    DLPOrganizationsDeidentifyTemplatesCreateResource,

    -- ** Constructing a Request
    newDLPOrganizationsDeidentifyTemplatesCreate,
    DLPOrganizationsDeidentifyTemplatesCreate,
  )
where

import Network.Google.DLP.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @dlp.organizations.deidentifyTemplates.create@ method which the
-- 'DLPOrganizationsDeidentifyTemplatesCreate' request conforms to.
type DLPOrganizationsDeidentifyTemplatesCreateResource =
  "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "deidentifyTemplates"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody
              '[Core.JSON]
              GooglePrivacyDlpV2CreateDeidentifyTemplateRequest
    Core.:> Core.Post
              '[Core.JSON]
              GooglePrivacyDlpV2DeidentifyTemplate

-- | Creates a DeidentifyTemplate for re-using frequently used configuration for de-identifying content, images, and storage. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ 'newDLPOrganizationsDeidentifyTemplatesCreate' smart constructor.
data DLPOrganizationsDeidentifyTemplatesCreate = DLPOrganizationsDeidentifyTemplatesCreate
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3
    parent :: Core.Text,
    -- | Multipart request metadata.
    payload :: GooglePrivacyDlpV2CreateDeidentifyTemplateRequest,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsDeidentifyTemplatesCreate' with the minimum fields required to make a request.
newDLPOrganizationsDeidentifyTemplatesCreate ::
  -- |  Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have <https://cloud.google.com/dlp/docs/specifying-location specified a processing location>: + Projects scope, location specified: @projects\/@PROJECT/ID@\/locations\/@LOCATION/ID + Projects scope, no location specified (defaults to global): @projects\/@PROJECT/ID + Organizations scope, location specified: @organizations\/@ORG/ID@\/locations\/@LOCATION/ID + Organizations scope, no location specified (defaults to global): @organizations\/@ORG/ID The following example @parent@ string specifies a parent project with the identifier @example-project@, and specifies the @europe-west3@ location for processing data: parent=projects\/example-project\/locations\/europe-west3 See 'parent'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GooglePrivacyDlpV2CreateDeidentifyTemplateRequest ->
  DLPOrganizationsDeidentifyTemplatesCreate
newDLPOrganizationsDeidentifyTemplatesCreate parent payload =
  DLPOrganizationsDeidentifyTemplatesCreate
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
    DLPOrganizationsDeidentifyTemplatesCreate
  where
  type
    Rs DLPOrganizationsDeidentifyTemplatesCreate =
      GooglePrivacyDlpV2DeidentifyTemplate
  type
    Scopes DLPOrganizationsDeidentifyTemplatesCreate =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient
    DLPOrganizationsDeidentifyTemplatesCreate {..} =
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
                  DLPOrganizationsDeidentifyTemplatesCreateResource
            )
            Core.mempty
