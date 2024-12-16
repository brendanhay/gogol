{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Tag.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.tags.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Tags.Update
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesTagsUpdateResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesTagsUpdate (..)
    , newTagManagerAccountsContainersWorkspacesTagsUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.tags.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesTagsUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesTagsUpdateResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "path" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "fingerprint" Core.Text Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "upload_protocol" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Tag Core.:>
                           Core.Put '[Core.JSON] Tag

-- | Updates a GTM Tag.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesTagsUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesTagsUpdate = TagManagerAccountsContainersWorkspacesTagsUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | When provided, this fingerprint must match the fingerprint of the tag in storage.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | GTM Tag\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/tags\/{tag/id}
    , path :: Core.Text
      -- | Multipart request metadata.
    , payload :: Tag
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesTagsUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesTagsUpdate 
    ::  Core.Text
       -- ^  GTM Tag\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/tags\/{tag/id} See 'path'.
    -> Tag
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersWorkspacesTagsUpdate
newTagManagerAccountsContainersWorkspacesTagsUpdate path payload =
  TagManagerAccountsContainersWorkspacesTagsUpdate
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , fingerprint = Core.Nothing
    , path = path
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesTagsUpdate
         where
        type Rs
               TagManagerAccountsContainersWorkspacesTagsUpdate
             = Tag
        type Scopes
               TagManagerAccountsContainersWorkspacesTagsUpdate
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesTagsUpdate{..}
          = go path xgafv accessToken callback fingerprint
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesTagsUpdateResource)
                      Core.mempty

