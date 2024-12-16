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
-- Module      : Gogol.TagManager.Accounts.User_permissions.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the account, revoking access to it and all of its containers.
--
-- /See:/ <https://developers.google.com/tag-manager Tag Manager API Reference> for @tagmanager.accounts.user_permissions.delete@.
module Gogol.TagManager.Accounts.User_permissions.Delete
    (
    -- * Resource
      TagManagerAccountsUser_permissionsDeleteResource

    -- ** Constructing a Request
    , TagManagerAccountsUser_permissionsDelete (..)
    , newTagManagerAccountsUser_permissionsDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.TagManager.Types

-- | A resource alias for @tagmanager.accounts.user_permissions.delete@ method which the
-- 'TagManagerAccountsUser_permissionsDelete' request conforms to.
type TagManagerAccountsUser_permissionsDeleteResource
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

-- | Removes a user from the account, revoking access to it and all of its containers.
--
-- /See:/ 'newTagManagerAccountsUser_permissionsDelete' smart constructor.
data TagManagerAccountsUser_permissionsDelete = TagManagerAccountsUser_permissionsDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | GTM UserPermission\'s API relative path. Example: accounts\/{account/id}\/user/permissions\/{user/permission/id}
    , path :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'TagManagerAccountsUser_permissionsDelete' with the minimum fields required to make a request.
newTagManagerAccountsUser_permissionsDelete 
    ::  Core.Text
       -- ^  GTM UserPermission\'s API relative path. Example: accounts\/{account/id}\/user/permissions\/{user/permission/id} See 'path'.
    -> TagManagerAccountsUser_permissionsDelete
newTagManagerAccountsUser_permissionsDelete path =
  TagManagerAccountsUser_permissionsDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , path = path
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest
           TagManagerAccountsUser_permissionsDelete
         where
        type Rs TagManagerAccountsUser_permissionsDelete = ()
        type Scopes TagManagerAccountsUser_permissionsDelete
             = '[Tagmanager'Manage'Users]
        requestClient
          TagManagerAccountsUser_permissionsDelete{..}
          = go path xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              tagManagerService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy
                           TagManagerAccountsUser_permissionsDeleteResource)
                      Core.mempty

