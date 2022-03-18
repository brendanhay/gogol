{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a GTM Zone.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.workspaces.zones.update@.
module Gogol.TagManager.Accounts.Containers.Workspaces.Zones.Update
    (
    -- * Resource
      TagManagerAccountsContainersWorkspacesZonesUpdateResource

    -- ** Constructing a Request
    , newTagManagerAccountsContainersWorkspacesZonesUpdate
    , TagManagerAccountsContainersWorkspacesZonesUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.workspaces.zones.update@ method which the
-- 'TagManagerAccountsContainersWorkspacesZonesUpdate' request conforms to.
type TagManagerAccountsContainersWorkspacesZonesUpdateResource
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
                         Core.ReqBody '[Core.JSON] Zone Core.:>
                           Core.Put '[Core.JSON] Zone

-- | Updates a GTM Zone.
--
-- /See:/ 'newTagManagerAccountsContainersWorkspacesZonesUpdate' smart constructor.
data TagManagerAccountsContainersWorkspacesZonesUpdate = TagManagerAccountsContainersWorkspacesZonesUpdate
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | When provided, this fingerprint must match the fingerprint of the zone in storage.
    , fingerprint :: (Core.Maybe Core.Text)
      -- | GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id}
    , path :: Core.Text
      -- | Multipart request metadata.
    , payload :: Zone
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersWorkspacesZonesUpdate' with the minimum fields required to make a request.
newTagManagerAccountsContainersWorkspacesZonesUpdate 
    ::  Core.Text
       -- ^  GTM Zone\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/workspaces\/{workspace/id}\/zones\/{zone/id} See 'path'.
    -> Zone
       -- ^  Multipart request metadata. See 'payload'.
    -> TagManagerAccountsContainersWorkspacesZonesUpdate
newTagManagerAccountsContainersWorkspacesZonesUpdate path payload =
  TagManagerAccountsContainersWorkspacesZonesUpdate
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
           TagManagerAccountsContainersWorkspacesZonesUpdate
         where
        type Rs
               TagManagerAccountsContainersWorkspacesZonesUpdate
             = Zone
        type Scopes
               TagManagerAccountsContainersWorkspacesZonesUpdate
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containers"]
        requestClient
          TagManagerAccountsContainersWorkspacesZonesUpdate{..}
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
                           TagManagerAccountsContainersWorkspacesZonesUpdateResource)
                      Core.mempty

