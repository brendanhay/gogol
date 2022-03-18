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
-- Module      : Gogol.LibraryAgent.Shelves.Books.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a book. Returns NOT_FOUND if the book does not exist.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.get@.
module Gogol.LibraryAgent.Shelves.Books.Get
  ( -- * Resource
    LibraryAgentShelvesBooksGetResource,

    -- ** Constructing a Request
    newLibraryAgentShelvesBooksGet,
    LibraryAgentShelvesBooksGet,
  )
where

import Gogol.LibraryAgent.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @libraryagent.shelves.books.get@ method which the
-- 'LibraryAgentShelvesBooksGet' request conforms to.
type LibraryAgentShelvesBooksGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleExampleLibraryagentV1Book

-- | Gets a book. Returns NOT_FOUND if the book does not exist.
--
-- /See:/ 'newLibraryAgentShelvesBooksGet' smart constructor.
data LibraryAgentShelvesBooksGet = LibraryAgentShelvesBooksGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the book to retrieve.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesBooksGet' with the minimum fields required to make a request.
newLibraryAgentShelvesBooksGet ::
  -- |  Required. The name of the book to retrieve. See 'name'.
  Core.Text ->
  LibraryAgentShelvesBooksGet
newLibraryAgentShelvesBooksGet name =
  LibraryAgentShelvesBooksGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LibraryAgentShelvesBooksGet
  where
  type
    Rs LibraryAgentShelvesBooksGet =
      GoogleExampleLibraryagentV1Book
  type
    Scopes LibraryAgentShelvesBooksGet =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient LibraryAgentShelvesBooksGet {..} =
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
          ( Core.Proxy ::
              Core.Proxy LibraryAgentShelvesBooksGetResource
          )
          Core.mempty
