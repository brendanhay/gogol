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
-- Module      : Gogol.TagManager.Accounts.Containers.Version_headers.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all Container Versions of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.version_headers.list@.
module Gogol.TagManager.Accounts.Containers.Version_headers.List
  ( -- * Resource
    TagManagerAccountsContainersVersion_headersListResource,

    -- ** Constructing a Request
    TagManagerAccountsContainersVersion_headersList (..),
    newTagManagerAccountsContainersVersion_headersList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.version_headers.list@ method which the
-- 'TagManagerAccountsContainersVersion_headersList' request conforms to.
type TagManagerAccountsContainersVersion_headersListResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "version_headers"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "includeDeleted" Core.Bool
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListContainerVersionsResponse

-- | Lists all Container Versions of a GTM Container.
--
-- /See:/ 'newTagManagerAccountsContainersVersion_headersList' smart constructor.
data TagManagerAccountsContainersVersion_headersList = TagManagerAccountsContainersVersion_headersList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Also retrieve deleted (archived) versions when true.
    includeDeleted :: (Core.Maybe Core.Bool),
    -- | Continuation token for fetching the next page of results.
    pageToken :: (Core.Maybe Core.Text),
    -- | GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}
    parent :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersVersion_headersList' with the minimum fields required to make a request.
newTagManagerAccountsContainersVersion_headersList ::
  -- |  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'parent'.
  Core.Text ->
  TagManagerAccountsContainersVersion_headersList
newTagManagerAccountsContainersVersion_headersList parent =
  TagManagerAccountsContainersVersion_headersList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      includeDeleted = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersVersion_headersList
  where
  type
    Rs
      TagManagerAccountsContainersVersion_headersList =
      ListContainerVersionsResponse
  type
    Scopes
      TagManagerAccountsContainersVersion_headersList =
      '[ Tagmanager'Edit'Containers,
         Tagmanager'Edit'Containerversions,
         Tagmanager'Readonly
       ]
  requestClient
    TagManagerAccountsContainersVersion_headersList {..} =
      go
        parent
        xgafv
        accessToken
        callback
        includeDeleted
        pageToken
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        tagManagerService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  TagManagerAccountsContainersVersion_headersListResource
            )
            Core.mempty
