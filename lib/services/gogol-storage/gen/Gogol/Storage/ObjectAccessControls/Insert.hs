{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.ObjectAccessControls.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new ACL entry on the specified object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objectAccessControls.insert@.
module Gogol.Storage.ObjectAccessControls.Insert
    (
    -- * Resource
      StorageObjectAccessControlsInsertResource

    -- ** Constructing a Request
    , StorageObjectAccessControlsInsert (..)
    , newStorageObjectAccessControlsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objectAccessControls.insert@ method which the
-- 'StorageObjectAccessControlsInsert' request conforms to.
type StorageObjectAccessControlsInsertResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "o" Core.:>
               Core.Capture "object" Core.Text Core.:>
                 "acl" Core.:>
                   Core.QueryParam "generation" Core.Int64 Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "userProject" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] ObjectAccessControl Core.:>
                             Core.Post '[Core.JSON] ObjectAccessControl

-- | Creates a new ACL entry on the specified object.
--
-- /See:/ 'newStorageObjectAccessControlsInsert' smart constructor.
data StorageObjectAccessControlsInsert = StorageObjectAccessControlsInsert
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | If present, selects a specific revision of this object (as opposed to the latest version, the default).
    , generation :: (Core.Maybe Core.Int64)
      -- | Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    , object :: Core.Text
      -- | Multipart request metadata.
    , payload :: ObjectAccessControl
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectAccessControlsInsert' with the minimum fields required to make a request.
newStorageObjectAccessControlsInsert 
    ::  Core.Text
       -- ^  Name of a bucket. See 'bucket'.
    -> Core.Text
       -- ^  Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'object'.
    -> ObjectAccessControl
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageObjectAccessControlsInsert
newStorageObjectAccessControlsInsert bucket object payload =
  StorageObjectAccessControlsInsert
    { bucket = bucket
    , generation = Core.Nothing
    , object = object
    , payload = payload
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageObjectAccessControlsInsert
         where
        type Rs StorageObjectAccessControlsInsert =
             ObjectAccessControl
        type Scopes StorageObjectAccessControlsInsert =
             '[CloudPlatform'FullControl, Devstorage'FullControl]
        requestClient StorageObjectAccessControlsInsert{..}
          = go bucket object generation uploadType userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageObjectAccessControlsInsertResource)
                      Core.mempty

