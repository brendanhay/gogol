-- |
-- Module      : Gogol.Storage.Projects.HmacKeys.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.update@.
module Gogol.Storage.Projects.HmacKeys.Update
    (
    -- * Constructing a Request
    StorageProjectsHmacKeysUpdate (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsHmacKeysUpdate (..),
#endif
    mkStorageProjectsHmacKeysUpdate,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Updates the state of an HMAC key. See the HMAC Key resource descriptor for valid states.
--
-- Construct a default value using the 'MkStorageProjectsHmacKeysUpdate' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsHmacKeysUpdate = StorageProjectsHmacKeysUpdate
    {
      -- | Name of the HMAC key being updated.
      accessId :: Core.Text
      -- | Multipart request metadata.
    , meta :: HmacKeyMetadata
      -- | Project ID owning the service account of the updated key.
    , projectId :: Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsHmacKeysUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsHmacKeysUpdate :: Core.Text -> HmacKeyMetadata -> Core.Text -> StorageProjectsHmacKeysUpdate
pattern MkStorageProjectsHmacKeysUpdate{accessId, meta, projectId} =
        StorageProjectsHmacKeysUpdate{accessId = accessId, meta = meta, projectId = projectId, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsHmacKeysUpdate "Please use MkStorageProjectsHmacKeysUpdate instead" #-}
#endif

-- | Create 'StorageProjectsHmacKeysUpdate' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsHmacKeysUpdate :: Core.Text -> HmacKeyMetadata -> Core.Text -> StorageProjectsHmacKeysUpdate
mkStorageProjectsHmacKeysUpdate accessId meta projectId
  = StorageProjectsHmacKeysUpdate{accessId = accessId, meta = meta, projectId = projectId, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsHmacKeysUpdate where
        type Core.Scopes StorageProjectsHmacKeysUpdate = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageProjectsHmacKeysUpdate = StorageService
        type Core.Response StorageProjectsHmacKeysUpdate = HmacKeyMetadata
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsHmacKeysUpdate{..}
          = serviceRequest{Core.method = "PUT",
                           Core.path =
                             Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/hmacKeys/", Core.toPathBuilder accessId],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
