-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.insert@.
module Gogol.Storage.ObjectAccessControls.Insert
    (
    -- * Constructing a Request
    StorageObjectAccessControlsInsert (..),
#ifdef NOFIELDSELECTORS
    MkStorageObjectAccessControlsInsert (..),
#endif
    mkStorageObjectAccessControlsInsert,
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types


-- | Creates a new ACL entry on the specified object.
--
-- Construct a default value using the 'MkStorageObjectAccessControlsInsert' pattern synonym,
-- if @NoFieldSelectors@ is enabled.
data StorageObjectAccessControlsInsert = StorageObjectAccessControlsInsert
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: Core.Maybe Core.Int64
      -- | Multipart request metadata.
    , meta :: ObjectAccessControl
      -- | Name of the object. For information about how to URL encode object names to be path safe, see Encoding URI Path Parts.
    , object :: Core.Text
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: Core.Maybe Core.Text
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: Core.Maybe Core.Text
    }
    deriving stock (Core.Eq, Core.Show, Core.Generic)

#ifdef NOFIELDSELECTORS
-- | Create 'StorageObjectAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
pattern MkStorageObjectAccessControlsInsert ::
        Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsInsert
pattern MkStorageObjectAccessControlsInsert{bucket, meta, object} =
        StorageObjectAccessControlsInsert{bucket = bucket, generation = Core.Nothing, meta = meta, object = object,
                                          provisionalUserProject = Core.Nothing, userProject = Core.Nothing}

{-# DEPRECATED mkStorageObjectAccessControlsInsert "Please use MkStorageObjectAccessControlsInsert instead" #-}
#endif

-- | Create 'StorageObjectAccessControlsInsert' using the required fields. All other fields are set to 'Nothing' or a default value, as appropriate.
mkStorageObjectAccessControlsInsert :: Core.Text -> ObjectAccessControl -> Core.Text -> StorageObjectAccessControlsInsert
mkStorageObjectAccessControlsInsert bucket meta object
  = StorageObjectAccessControlsInsert{bucket = bucket, generation = Core.Nothing, meta = meta, object = object,
                                      provisionalUserProject = Core.Nothing, userProject = Core.Nothing}
instance Core.GoogleRequest StorageObjectAccessControlsInsert where
        type Core.Scopes StorageObjectAccessControlsInsert = '[CloudPlatform'FullControl, Devstorage'FullControl]
        type Core.Config StorageObjectAccessControlsInsert = StorageService
        type Core.Response StorageObjectAccessControlsInsert = ObjectAccessControl
        toRequest Core.Service{serviceRequest, serviceParams = StorageParams{..}} StorageObjectAccessControlsInsert{..}
          = serviceRequest{Core.method = "POST",
                           Core.path = Core.toRequestPath ["/storage/v1/b/", Core.toPathBuilder bucket, "/o/", Core.toPathBuilder object, "/acl"],
                           Core.queryString =
                             Core.toRequestQuery $
                               Core.catMaybes
                                 [("fields",) Core.. Core.toQueryParam Core.<$> fields, ("generation",) Core.. Core.toQueryParam Core.<$> generation,
                                  ("key",) Core.. Core.toQueryParam Core.<$> key, ("oauth_token",) Core.. Core.toQueryParam Core.<$> oauthToken,
                                  Core.Just ("prettyPrint", Core.toQueryParam prettyPrint),
                                  ("provisionalUserProject",) Core.. Core.toQueryParam Core.<$> provisionalUserProject,
                                  ("quotaUser",) Core.. Core.toQueryParam Core.<$> quotaUser, ("userProject",) Core.. Core.toQueryParam Core.<$> userProject,
                                  Core.Just ("alt", "json")],
                           Core.requestBody = Core.toRequestBodyJSON payload}
