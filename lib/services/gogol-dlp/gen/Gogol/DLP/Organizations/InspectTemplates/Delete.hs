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
-- Module      : Gogol.DLP.Organizations.InspectTemplates.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InspectTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.delete@.
module Gogol.DLP.Organizations.InspectTemplates.Delete
  ( -- * Resource
    DLPOrganizationsInspectTemplatesDeleteResource,

    -- ** Constructing a Request
    DLPOrganizationsInspectTemplatesDelete (..),
    newDLPOrganizationsInspectTemplatesDelete,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.organizations.inspectTemplates.delete@ method which the
-- 'DLPOrganizationsInspectTemplatesDelete' request conforms to.
type DLPOrganizationsInspectTemplatesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes an InspectTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'newDLPOrganizationsInspectTemplatesDelete' smart constructor.
data DLPOrganizationsInspectTemplatesDelete = DLPOrganizationsInspectTemplatesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the organization and inspectTemplate to be deleted, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPOrganizationsInspectTemplatesDelete' with the minimum fields required to make a request.
newDLPOrganizationsInspectTemplatesDelete ::
  -- |  Required. Resource name of the organization and inspectTemplate to be deleted, for example @organizations\/433245324\/inspectTemplates\/432452342@ or projects\/project-id\/inspectTemplates\/432452342. See 'name'.
  Core.Text ->
  DLPOrganizationsInspectTemplatesDelete
newDLPOrganizationsInspectTemplatesDelete name =
  DLPOrganizationsInspectTemplatesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPOrganizationsInspectTemplatesDelete
  where
  type
    Rs DLPOrganizationsInspectTemplatesDelete =
      GoogleProtobufEmpty
  type
    Scopes DLPOrganizationsInspectTemplatesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    DLPOrganizationsInspectTemplatesDelete {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        dLPService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  DLPOrganizationsInspectTemplatesDeleteResource
            )
            Core.mempty
