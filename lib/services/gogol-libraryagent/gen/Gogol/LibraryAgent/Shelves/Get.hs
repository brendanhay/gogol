{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
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
-- Module      : Gogol.LibraryAgent.Shelves.Get
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a shelf. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.get@.
module Gogol.LibraryAgent.Shelves.Get
  ( -- * Resource
    LibraryAgentShelvesGetResource,

    -- ** Constructing a Request
    LibraryAgentShelvesGet (..),
    newLibraryAgentShelvesGet,
  )
where

import Gogol.LibraryAgent.Types
import Gogol.Prelude qualified as Core

-- | A resource alias for @libraryagent.shelves.get@ method which the
-- 'LibraryAgentShelvesGet' request conforms to.
type LibraryAgentShelvesGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleExampleLibraryagentV1Shelf

-- | Gets a shelf. Returns NOT_FOUND if the shelf does not exist.
--
-- /See:/ 'newLibraryAgentShelvesGet' smart constructor.
data LibraryAgentShelvesGet = LibraryAgentShelvesGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the shelf to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesGet' with the minimum fields required to make a request.
newLibraryAgentShelvesGet ::
  -- |  Required. The name of the shelf to retrieve. See 'name'.
  Core.Text ->
  LibraryAgentShelvesGet
newLibraryAgentShelvesGet name =
  LibraryAgentShelvesGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LibraryAgentShelvesGet where
  type Rs LibraryAgentShelvesGet = GoogleExampleLibraryagentV1Shelf
  type Scopes LibraryAgentShelvesGet = '[CloudPlatform'FullControl]
  requestClient LibraryAgentShelvesGet {..} =
    go
      name
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      libraryAgentService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy LibraryAgentShelvesGetResource)
          Core.mempty
