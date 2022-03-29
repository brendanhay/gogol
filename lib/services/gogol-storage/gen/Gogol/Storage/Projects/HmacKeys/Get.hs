-- |
-- Module      : Gogol.Storage.Projects.HmacKeys.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.get@.
module Gogol.Storage.Projects.HmacKeys.Get
    (
    -- * Constructing a Request
    StorageProjectsHmacKeysGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsHmacKeysGet (..),
#endif
    mkStorageProjectsHmacKeysGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves an HMAC key\'s metadata.
--
-- Construct a default value using the 'MkStorageProjectsHmacKeysGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsHmacKeysGet = StorageProjectsHmacKeysGet
    {
      -- | Name of the HMAC key.
      accessId :: Core.Text
      -- | Project ID owning the service account of the requested key.
    , projectId :: Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsHmacKeysGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsHmacKeysGet :: Core.Text -> Core.Text -> StorageProjectsHmacKeysGet
pattern MkStorageProjectsHmacKeysGet{accessId, projectId} =
        StorageProjectsHmacKeysGet{accessId = accessId, projectId = projectId, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsHmacKeysGet "Please use MkStorageProjectsHmacKeysGet instead" #-}
#endif

-- | Create 'StorageProjectsHmacKeysGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsHmacKeysGet :: Core.Text -> Core.Text -> StorageProjectsHmacKeysGet
mkStorageProjectsHmacKeysGet accessId projectId
  = StorageProjectsHmacKeysGet{accessId = accessId, projectId = projectId, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsHmacKeysGet where
        type Core.Scopes StorageProjectsHmacKeysGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly]
        type Core.Config StorageProjectsHmacKeysGet = StorageService
        type Core.Response StorageProjectsHmacKeysGet = HmacKeyMetadata
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsHmacKeysGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path =
                             Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/hmacKeys/", Core.toPathBuilder accessId],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
