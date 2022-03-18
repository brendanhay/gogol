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
-- Module      : Gogol.Admin.Directory.Users.Photos.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the user\'s photo.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.users.photos.get@.
module Gogol.Admin.Directory.Users.Photos.Get
    (
    -- * Resource
      DirectoryUsersPhotosGetResource

    -- ** Constructing a Request
    , newDirectoryUsersPhotosGet
    , DirectoryUsersPhotosGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Admin.Directory.Types

-- | A resource alias for @directory.users.photos.get@ method which the
-- 'DirectoryUsersPhotosGet' request conforms to.
type DirectoryUsersPhotosGetResource =
     "admin" Core.:>
       "directory" Core.:>
         "v1" Core.:>
           "users" Core.:>
             Core.Capture "userKey" Core.Text Core.:>
               "photos" Core.:>
                 "thumbnail" Core.:>
                   Core.QueryParam "$.xgafv" Xgafv Core.:>
                     Core.QueryParam "access_token" Core.Text Core.:>
                       Core.QueryParam "callback" Core.Text Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "upload_protocol" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.Get '[Core.JSON] UserPhoto

-- | Retrieves the user\'s photo.
--
-- /See:/ 'newDirectoryUsersPhotosGet' smart constructor.
data DirectoryUsersPhotosGet = DirectoryUsersPhotosGet
    {
      -- | V1 error format.
      xgafv :: (Core.Maybe Xgafv)
      -- | OAuth access token.
    , accessToken :: (Core.Maybe Core.Text)
      -- | JSONP
    , callback :: (Core.Maybe Core.Text)
      -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    , uploadProtocol :: (Core.Maybe Core.Text)
      -- | Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID.
    , userKey :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'DirectoryUsersPhotosGet' with the minimum fields required to make a request.
newDirectoryUsersPhotosGet 
    ::  Core.Text
       -- ^  Identifies the user in the API request. The value can be the user\'s primary email address, alias email address, or unique user ID. See 'userKey'.
    -> DirectoryUsersPhotosGet
newDirectoryUsersPhotosGet userKey =
  DirectoryUsersPhotosGet
    { xgafv = Core.Nothing
    , accessToken = Core.Nothing
    , callback = Core.Nothing
    , uploadType = Core.Nothing
    , uploadProtocol = Core.Nothing
    , userKey = userKey
    }

instance Core.GoogleRequest DirectoryUsersPhotosGet
         where
        type Rs DirectoryUsersPhotosGet = UserPhoto
        type Scopes DirectoryUsersPhotosGet =
             '["https://www.googleapis.com/auth/admin.directory.user",
               "https://www.googleapis.com/auth/admin.directory.user.readonly"]
        requestClient DirectoryUsersPhotosGet{..}
          = go userKey xgafv accessToken callback uploadType
              uploadProtocol
              (Core.Just Core.AltJSON)
              adminDirectoryService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy DirectoryUsersPhotosGetResource)
                      Core.mempty

