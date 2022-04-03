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
-- Module      : Gogol.DLP.Projects.Locations.DeidentifyTemplates.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.locations.deidentifyTemplates.delete@.
module Gogol.DLP.Projects.Locations.DeidentifyTemplates.Delete
  ( -- * Resource
    DLPProjectsLocationsDeidentifyTemplatesDeleteResource,

    -- ** Constructing a Request
    DLPProjectsLocationsDeidentifyTemplatesDelete (..),
    newDLPProjectsLocationsDeidentifyTemplatesDelete,
  )
where

import Gogol.DLP.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @dlp.projects.locations.deidentifyTemplates.delete@ method which the
-- 'DLPProjectsLocationsDeidentifyTemplatesDelete' request conforms to.
type DLPProjectsLocationsDeidentifyTemplatesDeleteResource =
  "v2"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Delete '[Core.JSON] GoogleProtobufEmpty

-- | Deletes a DeidentifyTemplate. See https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn more.
--
-- /See:/ 'newDLPProjectsLocationsDeidentifyTemplatesDelete' smart constructor.
data DLPProjectsLocationsDeidentifyTemplatesDelete = DLPProjectsLocationsDeidentifyTemplatesDelete
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. Resource name of the organization and deidentify template to be deleted, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DLPProjectsLocationsDeidentifyTemplatesDelete' with the minimum fields required to make a request.
newDLPProjectsLocationsDeidentifyTemplatesDelete ::
  -- |  Required. Resource name of the organization and deidentify template to be deleted, for example @organizations\/433245324\/deidentifyTemplates\/432452342@ or projects\/project-id\/deidentifyTemplates\/432452342. See 'name'.
  Core.Text ->
  DLPProjectsLocationsDeidentifyTemplatesDelete
newDLPProjectsLocationsDeidentifyTemplatesDelete name =
  DLPProjectsLocationsDeidentifyTemplatesDelete
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    DLPProjectsLocationsDeidentifyTemplatesDelete
  where
  type
    Rs DLPProjectsLocationsDeidentifyTemplatesDelete =
      GoogleProtobufEmpty
  type
    Scopes
      DLPProjectsLocationsDeidentifyTemplatesDelete =
      '[CloudPlatform'FullControl]
  requestClient
    DLPProjectsLocationsDeidentifyTemplatesDelete {..} =
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
                  DLPProjectsLocationsDeidentifyTemplatesDeleteResource
            )
            Core.mempty
