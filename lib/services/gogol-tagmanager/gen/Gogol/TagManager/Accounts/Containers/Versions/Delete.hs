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
-- Module      : Gogol.TagManager.Accounts.Containers.Versions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a Container Version.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.containers.versions.delete@.
module Gogol.TagManager.Accounts.Containers.Versions.Delete
    (
    -- * Resource
      TagManagerAccountsContainersVersionsDeleteResource

    -- ** Constructing a Request
    , newTagManagerAccountsContainersVersionsDelete
    , TagManagerAccountsContainersVersionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.containers.versions.delete@ method which the
-- 'TagManagerAccountsContainersVersionsDelete' request conforms to.
type TagManagerAccountsContainersVersionsDeleteResource
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

-- | Deletes a Container Version.
--
-- /See:/ 'newTagManagerAccountsContainersVersionsDelete' smart constructor.
data TagManagerAccountsContainersVersionsDelete = TagManagerAccountsContainersVersionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id}
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsContainersVersionsDelete' with the minimum fields required to make a request.
newTagManagerAccountsContainersVersionsDelete 
    ::  Core.Text
       -- ^  GTM ContainerVersion\'s API relative path. Example: accounts\/{account/id}\/containers\/{container/id}\/versions\/{version_id} See 'path'.
    -> TagManagerAccountsContainersVersionsDelete
newTagManagerAccountsContainersVersionsDelete path =
  TagManagerAccountsContainersVersionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsContainersVersionsDelete
         where
        type Rs TagManagerAccountsContainersVersionsDelete =
             ()
        type Scopes
               TagManagerAccountsContainersVersionsDelete
             =
             '["https://www.googleapis.com/auth/tagmanager.edit.containerversions"]
        requestClient
          TagManagerAccountsContainersVersionsDelete{..}
          = go path xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsContainersVersionsDeleteResource)
                      Core.mempty

