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
-- Module      : Gogol.Admin.Directory.Roles.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a role.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.roles.insert@.
module Gogol.Admin.Directory.Roles.Insert
    (
    -- * Resource
      DirectoryRolesInsertResource

    -- ** Constructing a Request
    , DirectoryRolesInsert (..)
    , newDirectoryRolesInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.roles.insert@ method which the
-- 'DirectoryRolesInsert' request conforms to.
type DirectoryRolesInsertResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "customer" Core.:>
             Core.Capture "customer" Core.Text Core.:>
               "roles" Core.:>
                 Core.QueryParam "$.xgafv" Xgafv Core.:>
                   Core.QueryParam "access_token" Core.Text Core.:>
                     Core.QueryParam "callback" Core.Text Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "upload_protocol" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.ReqBody '[Core.JSON] Role Core.:>
                               Core.Post '[Core.JSON] Role

-- | Creates a role.
--
-- /See:/ 'newDirectoryRolesInsert' smart constructor.
data DirectoryRolesInsert = DirectoryRolesInsert
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Immutable ID of the Google Workspace account.
    , customer :: Core.Text
      -- | Multipart request metadata.
    , payload :: Role
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryRolesInsert' with the minimum fields required to make a request.
newDirectoryRolesInsert 
    ::  Core.Text
       -- ^  Immutable ID of the Google Workspace account. See 'customer'.
    -> Role
       -- ^  Multipart request metadata. See 'payload'.
    -> DirectoryRolesInsert
newDirectoryRolesInsert customer payload =
  DirectoryRolesInsert
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , customer = customer
    , payload = payload
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    }

instance Core.GoogleRequest DirectoryRolesInsert
         where
        type Rs DirectoryRolesInsert = Role
        type Scopes DirectoryRolesInsert =
             '[Admin'Directory'Rolemanagement]
        requestClient DirectoryRolesInsert{..}
          = go customer xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              payload
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryRolesInsertResource)
                      Core.mempty

