-- |
-- Module      : Gogol.Storage.Projects.HmacKeys.Create
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.create@.
module Gogol.Storage.Projects.HmacKeys.Create
    (
    -- * Constructing a Request
    StorageProjectsHmacKeysCreate (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsHmacKeysCreate (..),
#endif
    mkStorageProjectsHmacKeysCreate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a new HMAC key for the specified service account.
--
-- Construct a default value using the 'MkStorageProjectsHmacKeysCreate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsHmacKeysCreate = StorageProjectsHmacKeysCreate
    {
      -- | Project ID owning the service account.
      projectId :: Core.Text
      -- | Email address of the service account.
    , serviceAccountEmail :: Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsHmacKeysCreate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsHmacKeysCreate :: Core.Text -> Core.Text -> StorageProjectsHmacKeysCreate
pattern MkStorageProjectsHmacKeysCreate{projectId, serviceAccountEmail} =
        StorageProjectsHmacKeysCreate{projectId = projectId, serviceAccountEmail = serviceAccountEmail, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsHmacKeysCreate "Please use MkStorageProjectsHmacKeysCreate instead" #-}
#endif

-- | Create 'StorageProjectsHmacKeysCreate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsHmacKeysCreate :: Core.Text -> Core.Text -> StorageProjectsHmacKeysCreate
mkStorageProjectsHmacKeysCreate projectId serviceAccountEmail
  = StorageProjectsHmacKeysCreate{projectId = projectId, serviceAccountEmail = serviceAccountEmail, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsHmacKeysCreate where
        type Core.Scopes StorageProjectsHmacKeysCreate = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageProjectsHmacKeysCreate = StorageService
        type Core.Response StorageProjectsHmacKeysCreate = HmacKey
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsHmacKeysCreate{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/hmacKeys"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  ("serviceAccountEmail",) Core.. Core.toQueryParam Core.<$> serviceAccountEmail, Core.Just ("alt", "json")]}
