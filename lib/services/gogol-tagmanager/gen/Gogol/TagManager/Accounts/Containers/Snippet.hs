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
-- Module      : Gogol.TagManager.Accounts.Containers.Snippet
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the tagging snippet for a Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.snippet@.
module Gogol.TagManager.Accounts.Containers.Snippet
  ( -- * Resource
    TagManagerAccountsContainersSnippetResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersSnippet (..),
    newTagManagerAccountsContainersSnippet,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.snippet@ method which the
-- 'TagManagerAccountsContainersSnippet' request conforms to.
type TagManagerAccountsContainersSnippetResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.CaptureMode "path" "snippet" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GetContainerSnippetResponse

-- | Gets the tagging snippet for a Container.
--
-- /See:/ 'newTagManagerAccountsContainersSnippet' smart constructor.
data TagManagerAccountsContainersSnippet = TagManagerAccountsContainersSnippet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Container snippet\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}:snippet
    path :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersSnippet' with the minimum fields required to make a request.
newTagManagerAccountsContainersSnippet ::
  -- |  Container snippet\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}:snippet See 'path'.
  Core.Text ->
  TagManagerAccountsContainersSnippet
newTagManagerAccountsContainersSnippet path =
  TagManagerAccountsContainersSnippet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      path = path,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersSnippet
  where
  type
    Rs TagManagerAccountsContainersSnippet =
      GetContainerSnippetResponse
  type
    Scopes TagManagerAccountsContainersSnippet =
      '[Tagmanager'Edit'Containers, Tagmanager'Readonly]
  requestClient TagManagerAccountsContainersSnippet {..} =
    go
      path
      xgafv
      accessToken
      callback
      uploadType
      uploadProtocol
      (Core.Just Core.AltJSON)
      tagManagerService
    where
      go =
        Core.buildClient
          ( Core.Proxy ::
              Core.Proxy
                TagManagerAccountsContainersSnippetResource
          )
          Core.mempty
