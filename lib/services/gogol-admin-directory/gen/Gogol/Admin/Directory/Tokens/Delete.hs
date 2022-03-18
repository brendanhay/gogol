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
-- Module      : Gogol.Admin.Directory.Tokens.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes all access tokens issued by a user for an application.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.tokens.delete@.
module Gogol.Admin.Directory.Tokens.Delete
    (
    -- * Resource
      DirectoryTokensDeleteResource

    -- ** Constructing a Request
    , newDirectoryTokensDelete
    , DirectoryTokensDelete
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.tokens.delete@ method which the
-- 'DirectoryTokensDelete' request conforms to.
type DirectoryTokensDeleteResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "users" Core.:>
             Core.Capture "userKey" Core.Text Core.:>
               "tokens" Core.:>
                 Core.Capture "clientId" Core.Text Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Delete '[Core.JSON] ()

-- | Deletes all access tokens issued by a user for an application.
--
-- /See:/ 'newDirectoryTokensDelete' smart constructor.
data DirectoryTokensDelete = DirectoryTokensDelete
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | The Client ID of the application the token is issued to.
    , clientId :: Core.Text
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    , userKey :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryTokensDelete' with the minimum fields required to make a request.
newDirectoryTokensDelete 
    ::  Core.Text
       -- ^  The Client ID of the application the token is issued to. See 'clientId'.
    -> Core.Text
       -- ^  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
    -> DirectoryTokensDelete
newDirectoryTokensDelete clientId userKey =
  DirectoryTokensDelete
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , clientId = clientId
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = userKey
    }

instance Core.GoogleRequest DirectoryTokensDelete
         where
        type Rs DirectoryTokensDelete = ()
        type Scopes DirectoryTokensDelete =
             '["https://www.googleapis.com/auth/admin.directory.user.security"]
        requestClient DirectoryTokensDelete{..}
          = go userKey clientId xgafv accessToken callback
              uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryTokensDeleteResource)
                      Core.mempty

