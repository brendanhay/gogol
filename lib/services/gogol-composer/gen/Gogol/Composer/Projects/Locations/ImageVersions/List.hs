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
-- Module      : Gogol.Composer.Projects.Locations.ImageVersions.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List ImageVersions for provided location.
--
-- /See:/ <https://cloud.google.com/composer/ Cloud Composer API Reference> for @composer.projects.locations.imageVersions.list@.
module Gogol.Composer.Projects.Locations.ImageVersions.List
  ( -- * Resource
    ComposerProjectsLocationsImageVersionsListResource,

    -- ** Constructing a Request
    ComposerProjectsLocationsImageVersionsList (..),
    newComposerProjectsLocationsImageVersionsList,
  )
where

import Gogol.Composer.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @composer.projects.locations.imageVersions.list@ method which the
-- 'ComposerProjectsLocationsImageVersionsList' request conforms to.
type ComposerProjectsLocationsImageVersionsListResource =
  "v1"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "imageVersions"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includePastReleases" Core.Bool
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListImageVersionsResponse

-- | List ImageVersions for provided location.
--
-- /See:/ 'newComposerProjectsLocationsImageVersionsList' smart constructor.
data ComposerProjectsLocationsImageVersionsList = ComposerProjectsLocationsImageVersionsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Whether or not image versions from old releases should be included.
    includePastReleases :: (Core.Maybe Core.Bool),
    -- | The maximum number of image_versions to return.
    pageSize :: (Core.Maybe Core.Int32),
    -- | The next/page/token value returned from a previous List request, if any.
    pageToken :: (Core.Maybe Core.Text),
    -- | List ImageVersions in the given project and location, in the form: \"projects\/{projectId}\/locations\/{locationId}\"
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ComposerProjectsLocationsImageVersionsList' with the minimum fields required to make a request.
newComposerProjectsLocationsImageVersionsList ::
  -- |  List ImageVersions in the given project and location, in the form: \"projects\/{projectId}\/locations\/{locationId}\" See 'parent'.
  Core.Text ->
  ComposerProjectsLocationsImageVersionsList
newComposerProjectsLocationsImageVersionsList parent =
  ComposerProjectsLocationsImageVersionsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includePastReleases = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    ComposerProjectsLocationsImageVersionsList
  where
  type
    Rs ComposerProjectsLocationsImageVersionsList =
      ListImageVersionsResponse
  type
    Scopes
      ComposerProjectsLocationsImageVersionsList =
      '[CloudPlatform'FullControl]
  requestClient
    ComposerProjectsLocationsImageVersionsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        includePastReleases
        pageSize
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        composerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  ComposerProjectsLocationsImageVersionsListResource
            )
            Core.mempty
