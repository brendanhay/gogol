-- |
-- Module      : Gogol.Storage.Projects.HmacKeys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.list@.
module Gogol.Storage.Projects.HmacKeys.List
    (
    -- * Constructing a Request
    StorageProjectsHmacKeysList (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsHmacKeysList (..),
#endif
    mkStorageProjectsHmacKeysList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves a list of HMAC keys matching the criteria.
--
-- Construct a default value using the 'MkStorageProjectsHmacKeysList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsHmacKeysList = StorageProjectsHmacKeysList
    {
      -- | Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.
      maxResults :: Core.Word32
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: Core.Maybe Core.Text
      -- | Name of the project in which to look for HMAC keys.
    , projectId :: Core.Text
      -- | If present, only keys for the given service account are returned.
    , serviceAccountEmail :: Core.Maybe Core.Text
      -- | Whether or not to show keys in the DELETED state.
    , showDeletedKeys :: Core.Maybe Core.Bool
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsHmacKeysList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsHmacKeysList :: Core.Text -> StorageProjectsHmacKeysList
pattern MkStorageProjectsHmacKeysList{projectId} =
        StorageProjectsHmacKeysList{maxResults = 250, pageToken = Core.Nothing, projectId = projectId,
                                    serviceAccountEmail = Core.Nothing, showDeletedKeys = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsHmacKeysList "Please use MkStorageProjectsHmacKeysList instead" #-}
#endif

-- | Create 'StorageProjectsHmacKeysList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsHmacKeysList :: Core.Text -> StorageProjectsHmacKeysList
mkStorageProjectsHmacKeysList projectId
  = StorageProjectsHmacKeysList{maxResults = 250, pageToken = Core.Nothing, projectId = projectId,
                                serviceAccountEmail = Core.Nothing, showDeletedKeys = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsHmacKeysList where
        type Core.Scopes StorageProjectsHmacKeysList =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly]
        type Core.Config StorageProjectsHmacKeysList = StorageService
        type Core.Response StorageProjectsHmacKeysList = HmacKeysMetadata
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsHmacKeysList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/hmacKeys"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  Core.Just ("maxResults", Core.toQueryParam maxResults), ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  ("pageToken",) Core.. Core.toQueryParam Core.<$> pageToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser,
                                  ("serviceAccountEmail",) Core.. Core.toQueryParam Core.<$> serviceAccountEmail,
                                  ("showDeletedKeys",) Core.. Core.toQueryParam Core.<$> showDeletedKeys,
                                  ("userProject",) Core.. Core.toQueryParam Core.<$> userProject, Core.Just ("alt", "json")]}
