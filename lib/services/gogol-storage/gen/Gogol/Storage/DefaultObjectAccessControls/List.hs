-- |
-- Module      : Gogol.Storage.DefaultObjectAccessControls.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.list@.
module Gogol.Storage.DefaultObjectAccessControls.List
    (
    -- * Constructing a Request
    StorageDefaultObjectAccessControlsList (..),
#ifdef NOFIELDSELECTORS
    MkStorageDefaultObjectAccessControlsList (..),
#endif
    mkStorageDefaultObjectAccessControlsList,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Retrieves default object ACL entries on the specified bucket.
--
-- Construct a default value using the 'MkStorageDefaultObjectAccessControlsList' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageDefaultObjectAccessControlsList = StorageDefaultObjectAccessControlsList
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | If present, only return default ACL listing if the bucket\'s current metageneration matches this value.
    , ifMetagenerationMatch :: Core.Maybe Core.Int64
      -- | If present, only return default ACL listing if the bucket\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: Core.Maybe Core.Int64
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageDefaultObjectAccessControlsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageDefaultObjectAccessControlsList :: Core.Text -> StorageDefaultObjectAccessControlsList
pattern MkStorageDefaultObjectAccessControlsList{bucket} =
        StorageDefaultObjectAccessControlsList{bucket = bucket, ifMetagenerationMatch = Core.Nothing,
                                               ifMetagenerationNotMatch = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageDefaultObjectAccessControlsList "Please use MkStorageDefaultObjectAccessControlsList instead" #-}
#endif

-- | Create 'StorageDefaultObjectAccessControlsList' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageDefaultObjectAccessControlsList :: Core.Text -> StorageDefaultObjectAccessControlsList
mkStorageDefaultObjectAccessControlsList bucket
  = StorageDefaultObjectAccessControlsList{bucket = bucket, ifMetagenerationMatch = Core.Nothing,
                                           ifMetagenerationNotMatch = Core.Nothing, provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageDefaultObjectAccessControlsList where
        type Core.Scopes StorageDefaultObjectAccessControlsList = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageDefaultObjectAccessControlsList = StorageService
        type Core.Response StorageDefaultObjectAccessControlsList = ObjectAccessControls
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageDefaultObjectAccessControlsList{..}
          = serviceRequest{Core.method = "GET",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/defaultObjectAcl"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields,
                                  ("ifMetagenerationMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationMatch,
                                  ("ifMetagenerationNotMatch",) Core.. Core.toQueryParam Core.<$> ifMetagenerationNotMatch,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")]}
