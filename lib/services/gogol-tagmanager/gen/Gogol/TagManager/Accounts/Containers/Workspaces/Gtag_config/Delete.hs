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
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Google tag config.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.gtag_config.delete@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Gtag_config.Delete
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesGtag_configDeleteResource

    -- ** Constructing a Request
    , TagManagerAccountsContainersWorkspacesGtag_configDelete (..)
    , newTagManagerAccountsContainersWorkspacesGtag_configDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.gtag_config.delete@ method which the
-- 'TagManagerAccountsContainersWorkspacesGtag_configDelete' request conforms to.
type TagManagerAccountsContainersWorkspacesGtag_configDeleteResource
     =
     "tagmanager" Core.:>
       "v2" Core.:>
         Core.Capture "path" Core.Text Core.:>
           Core.QueryParam "$.xgafv" Xgafv Core.:>
             Core.QueryParam "access_token" Core.Text Core.:>
               Core.QueryParam "callback" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "upload_protocol" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.Delete '[Core.JSON] ()

-- | Deletes a Google tag config.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesGtag_configDelete' smart constructor.
data TagManagerAccountsContainersWorkspacesGtag_configDelete = TagManagerAccountsContainersWorkspacesGtag_configDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id}
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesGtag_configDelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesGtag_configDelete 
    ::  Core.Text
       -- ^  Google tag config\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/gtag/config\/{gtag/config/id} See 'path'.
    -> TagManagerAccountsContainersWorkspacesGtag_configDelete
newTagManagerAccountsContainersWorkspacesGtag_configDelete path =
  TagManagerAccountsContainersWorkspacesGtag_configDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersWorkspacesGtag_configDelete
         where
        type Rs
               TagManagerAccountsContainersWorkspacesGtag_configDelete
             = ()
        type Scopes
               TagManagerAccountsContainersWorkspacesGtag_configDelete
             = '[Tagmanager'Edit'Containers]
        requestClient
          TagManagerAccountsContainersWorkspacesGtag_configDelete{..}
          = go path xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersWorkspacesGtag_configDeleteResource)
                      Core.mempty

