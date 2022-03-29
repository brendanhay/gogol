-- |
-- Module      : Gogol.Storage.Projects.HmacKeys.Delete
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.delete@.
module Gogol.Storage.Projects.HmacKeys.Delete
    (
    -- * Constructing a Request
    StorageProjectsHmacKeysDelete (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsHmacKeysDelete (..),
#endif
    mkStorageProjectsHmacKeysDelete,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Deletes an HMAC key.
--
-- Construct a default value using the 'MkStorageProjectsHmacKeysDelete' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsHmacKeysDelete = StorageProjectsHmacKeysDelete
    {
      -- | Name of the HMAC key to be deleted.
      accessId :: Core.Text
      -- | Project ID owning the requested key.
    , projectId :: Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsHmacKeysDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsHmacKeysDelete :: Core.Text -> Core.Text -> StorageProjectsHmacKeysDelete
pattern MkStorageProjectsHmacKeysDelete{accessId, projectId} =
        StorageProjectsHmacKeysDelete{accessId = accessId, projectId = projectId, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsHmacKeysDelete "Please use MkStorageProjectsHmacKeysDelete instead" #-}
#endif

-- | Create 'StorageProjectsHmacKeysDelete' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsHmacKeysDelete :: Core.Text -> Core.Text -> StorageProjectsHmacKeysDelete
mkStorageProjectsHmacKeysDelete accessId projectId
  = StorageProjectsHmacKeysDelete{accessId = accessId, projectId = projectId, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsHmacKeysDelete where
        type Core.Scopes StorageProjectsHmacKeysDelete = '[CloudPlatform'FullControl, Devstorage'FullControl, Devstorage'ReadWrite]
        type Core.Config StorageProjectsHmacKeysDelete = StorageService
        type Core.Response StorageProjectsHmacKeysDelete = ()
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsHmacKeysDelete{..}
          = serviceRequest{Core.method = "DELETE",
                           Core.path =
                             Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/hmacKeys/", Core.toPathBuilder accessId],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
