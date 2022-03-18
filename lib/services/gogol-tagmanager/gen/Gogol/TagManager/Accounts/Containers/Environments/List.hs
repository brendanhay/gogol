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
-- Module      : Gogol.TagManager.Accounts.Containers.Environments.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all GTM Environments of a GTM Container.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.environments.list@.
module Gogol.TagManager.Accounts.Containers.Environments.List
  ( -- * Resource
    TagManagerAccountsContainersEnvironmentsListResource,

    -- ** Constructing a Request
    newTagManagerAccountsContainersEnvironmentsList,
    TagManagerAccountsContainersEnvironmentsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.environments.list@ method which the
-- 'TagManagerAccountsContainersEnvironmentsList' request conforms to.
type TagManagerAccountsContainersEnvironmentsListResource =
  "tagmanager"
    Core.:> "v2"
    Core.:> Core.Capture "parent" Core.Text
    Core.:> "environments"
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] ListEnvironmentsResponse

-- | Lists all GTM Environments of a GTM Container.
--
-- /See:/ 'newTagManagerAccountsContainersEnvironmentsList' smart constructor.
data TagManagerAccountsContainersEnvironmentsList = TagManagerAccountsContainersEnvironmentsList
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
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

-- | Creates a value of 'TagManagerAccountsContainersEnvironmentsList' with the minimum fields required to make a request.
newTagManagerAccountsContainersEnvironmentsList ::
  -- |  GTM Container\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id} See 'parent'.
  Core.Text ->
  TagManagerAccountsContainersEnvironmentsList
newTagManagerAccountsContainersEnvironmentsList parent =
  TagManagerAccountsContainersEnvironmentsList
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      pageToken = Core.Nothing,
      parent = parent,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    TagManagerAccountsContainersEnvironmentsList
  where
  type
    Rs TagManagerAccountsContainersEnvironmentsList =
      ListEnvironmentsResponse
  type
    Scopes
      TagManagerAccountsContainersEnvironmentsList =
      '[ "https://www.googleapis.com/auth/tagmanager.edit.containers",
         "https://www.googleapis.com/auth/tagmanager.readonly"
       ]
  requestClient
    TagManagerAccountsContainersEnvironmentsList {..} =
      go
        parent
        xgafv
        accessToken
        callback
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
                  TagManagerAccountsContainersEnvironmentsListResource
            )
            Core.mempty
