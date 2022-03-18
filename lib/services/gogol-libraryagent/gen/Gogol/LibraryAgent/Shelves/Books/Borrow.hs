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
-- Module      : Gogol.LibraryAgent.Shelves.Books.Borrow
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Borrow a book from the library. Returns the book if it is borrowed successfully. Returns NOT_FOUND if the book does not exist in the library. Returns quota exceeded error if the amount of books borrowed exceeds allocation quota in any dimensions.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.books.borrow@.
module Gogol.LibraryAgent.Shelves.Books.Borrow
  ( -- * Resource
    LibraryAgentShelvesBooksBorrowResource,

    -- ** Constructing a Request
    newLibraryAgentShelvesBooksBorrow,
    LibraryAgentShelvesBooksBorrow,
  )
where

import Gogol.LibraryAgent.Types
import qualified Gogol.Prelude as Core

-- | A resource alias for @libraryagent.shelves.books.borrow@ method which the
-- 'LibraryAgentShelvesBooksBorrow' request conforms to.
type LibraryAgentShelvesBooksBorrowResource =
  "v1"
    Core.:> Core.CaptureMode "name" "borrow" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Post
              '[Core.JSON]
              GoogleExampleLibraryagentV1Book

-- | Borrow a book from the library. Returns the book if it is borrowed successfully. Returns NOT_FOUND if the book does not exist in the library. Returns quota exceeded error if the amount of books borrowed exceeds allocation quota in any dimensions.
--
-- /See:/ 'newLibraryAgentShelvesBooksBorrow' smart constructor.
data LibraryAgentShelvesBooksBorrow = LibraryAgentShelvesBooksBorrow
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. The name of the book to borrow.
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesBooksBorrow' with the minimum fields required to make a request.
newLibraryAgentShelvesBooksBorrow ::
  -- |  Required. The name of the book to borrow. See 'name'.
  Core.Text ->
  LibraryAgentShelvesBooksBorrow
newLibraryAgentShelvesBooksBorrow name =
  LibraryAgentShelvesBooksBorrow
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    LibraryAgentShelvesBooksBorrow
  where
  type
    Rs LibraryAgentShelvesBooksBorrow =
      GoogleExampleLibraryagentV1Book
  type
    Scopes LibraryAgentShelvesBooksBorrow =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient LibraryAgentShelvesBooksBorrow {..} =
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
              Core.Proxy LibraryAgentShelvesBooksBorrowResource
          )
          Core.mempty
