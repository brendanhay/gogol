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
-- Module      : Network.Google.LibraryAgent.Shelves.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists shelves. The order is unspecified but deterministic. Newly created shelves will not necessarily be added to the end of this list.
--
-- /See:/ <https://cloud.google.com/docs/quota Library Agent API Reference> for @libraryagent.shelves.list@.
module Network.Google.LibraryAgent.Shelves.List
  ( -- * Resource
    LibraryAgentShelvesListResource,

    -- ** Constructing a Request
    newLibraryAgentShelvesList,
    LibraryAgentShelvesList,
  )
where

import Network.Google.LibraryAgent.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @libraryagent.shelves.list@ method which the
-- 'LibraryAgentShelvesList' request conforms to.
type LibraryAgentShelvesListResource =
  "v1"
    Core.:> "shelves"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageSize" Core.Int32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get
              '[Core.JSON]
              GoogleExampleLibraryagentV1ListShelvesResponse

-- | Lists shelves. The order is unspecified but deterministic. Newly created shelves will not necessarily be added to the end of this list.
--
-- /See:/ 'newLibraryAgentShelvesList' smart constructor.
data LibraryAgentShelvesList = LibraryAgentShelvesList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Requested page size. Server may return fewer shelves than requested. If unspecified, server will pick an appropriate default.
    pageSize :: (Core.Maybe Core.Int32),
    -- | A token identifying a page of results the server should return. Typically, this is the value of ListShelvesResponse.next/page/token returned from the previous call to @ListShelves@ method.
    pageToken :: (Core.Maybe Core.Text),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'LibraryAgentShelvesList' with the minimum fields required to make a request.
newLibraryAgentShelvesList ::
  LibraryAgentShelvesList
newLibraryAgentShelvesList =
  LibraryAgentShelvesList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageSize = Core.Nothing,
      pageToken = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest LibraryAgentShelvesList where
  type
    Rs LibraryAgentShelvesList =
      GoogleExampleLibraryagentV1ListShelvesResponse
  type
    Scopes LibraryAgentShelvesList =
      '["https://www.googleapis.com/auth/cloud-platform"]
  requestClient LibraryAgentShelvesList {..} =
    go
      xgafv
      accessToken
      callback
      pageSize
      pageToken
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      libraryAgentService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy LibraryAgentShelvesListResource
          )
          Core.mempty
