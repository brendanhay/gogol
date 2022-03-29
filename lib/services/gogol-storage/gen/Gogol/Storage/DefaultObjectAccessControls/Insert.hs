-- |
-- Module      : Gogol.Storage.DefaultObjectAccessControls.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.defaultObjectAccessControls.insert@.
module Gogol.Storage.DefaultObjectAccessControls.Insert
    (
    -- * Constructing a Request
    StorageDefaultObjectAccessControlsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageDefaultObjectAccessControlsInsert (..),
#endif
    mkStorageDefaultObjectAccessControlsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a new default object ACL entry on the specified bucket.
--
-- Construct a default value using the 'MkStorageDefaultObjectAccessControlsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageDefaultObjectAccessControlsInsert = StorageDefaultObjectAccessControlsInsert
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , meta :: ObjectAccessControl
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageDefaultObjectAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageDefaultObjectAccessControlsInsert ::
        Core.Text -> ObjectAccessControl -> StorageDefaultObjectAccessControlsInsert
pattern MkStorageDefaultObjectAccessControlsInsert{bucket, meta} =
        StorageDefaultObjectAccessControlsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing,
                                                 userProject = Core.Nothing}

{-# DEPRECATED mkStorageDefaultObjectAccessControlsInsert "Please use MkStorageDefaultObjectAccessControlsInsert instead" #-}
#endif

-- | Create 'StorageDefaultObjectAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageDefaultObjectAccessControlsInsert :: Core.Text -> ObjectAccessControl -> StorageDefaultObjectAccessControlsInsert
mkStorageDefaultObjectAccessControlsInsert bucket meta
  = StorageDefaultObjectAccessControlsInsert{bucket = bucket, meta = meta, provisionalUserProject = Core.Nothing,
                                             userProject = Core.Nothing}
instance Core.GoogleRequest StorageDefaultObjectAccessControlsInsert where
        type Core.Scopes StorageDefaultObjectAccessControlsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageDefaultObjectAccessControlsInsert = StorageService
        type Core.Response StorageDefaultObjectAccessControlsInsert = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageDefaultObjectAccessControlsInsert{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/defaultObjectAcl"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("key",) Core.. Core.toQueryParam Core.<$> key,
                                  ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken, Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
