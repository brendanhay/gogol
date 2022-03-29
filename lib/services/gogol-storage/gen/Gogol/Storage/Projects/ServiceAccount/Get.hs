-- |
-- Module      : Gogol.Storage.Projects.ServiceAccount.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.serviceAccount.get@.
module Gogol.Storage.Projects.ServiceAccount.Get
    (
    -- * Constructing a Request
    StorageProjectsServiceAccountGet (..),
#ifdef NOFIELDSELECTORS
    MkStorageProjectsServiceAccountGet (..),
#endif
    mkStorageProjectsServiceAccountGet,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Get the email address of this project\'s Google Cloud Storage service account.
--
-- Construct a default value using the 'MkStorageProjectsServiceAccountGet' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageProjectsServiceAccountGet = StorageProjectsServiceAccountGet
    {
      -- | Project ID.
      projectId :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageProjectsServiceAccountGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageProjectsServiceAccountGet :: Core.Text -> StorageProjectsServiceAccountGet
pattern MkStorageProjectsServiceAccountGet{projectId} =
        StorageProjectsServiceAccountGet{projectId = projectId, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageProjectsServiceAccountGet "Please use MkStorageProjectsServiceAccountGet instead" #-}
#endif

-- | Create 'StorageProjectsServiceAccountGet' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageProjectsServiceAccountGet :: Core.Text -> StorageProjectsServiceAccountGet
mkStorageProjectsServiceAccountGet projectId
  = StorageProjectsServiceAccountGet{projectId = projectId, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageProjectsServiceAccountGet where
        type Core.Scopes StorageProjectsServiceAccountGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly, Devstorage'FullControl, Devstorage'ReadOnly, Devstorage'ReadWrite]
        type Core.Config StorageProjectsServiceAccountGet = StorageService
        type Core.Response StorageProjectsServiceAccountGet = ServiceAccount
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageProjectsServiceAccountGet{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/projects/", Core.toPathBuilder projectId, "/serviceAccount"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
