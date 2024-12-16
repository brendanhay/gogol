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
-- Module      : Gogol.Storage.Objects.Restore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Restores a soft-deleted object.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.restore@.
module Gogol.Storage.Objects.Restore
    (
    -- * Resource
      StorageObjectsRestoreResource

    -- ** Constructing a Request
    , StorageObjectsRestore (..)
    , newStorageObjectsRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.restore@ method which the
-- 'StorageObjectsRestore' request conforms to.
type StorageObjectsRestoreResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "o" Core.:>
               Core.Capture "object" Core.Text Core.:>
                 "restore" Core.:>
                   Core.QueryParam "generation" Core.Int64 Core.:>
                     Core.QueryParam "copySourceAcl" Core.Bool Core.:>
                       Core.QueryParam "ifGenerationMatch" Core.Int64
                         Core.:>
                         Core.QueryParam "ifGenerationNotMatch" Core.Int64
                           Core.:>
                           Core.QueryParam "ifMetagenerationMatch" Core.Int64
                             Core.:>
                             Core.QueryParam "ifMetagenerationNotMatch"
                               Core.Int64
                               Core.:>
                               Core.QueryParam "projection"
                                 ObjectsRestoreProjection
                                 Core.:>
                                 Core.QueryParam "restoreToken" Core.Text
                                   Core.:>
                                   Core.QueryParam "uploadType" Core.Text
                                     Core.:>
                                     Core.QueryParam "userProject" Core.Text
                                       Core.:>
                                       Core.QueryParam "alt" Core.AltJSON
                                         Core.:> Core.Post '[Core.JSON] Object

-- | Restores a soft-deleted object.
--
-- /See:/ 'newStorageObjectsRestore' smart constructor.
data StorageObjectsRestore = StorageObjectsRestore
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | If true, copies the source object\'s ACL; otherwise, uses the bucket\'s default object ACL. The default is false.
    , copySourceAcl :: (Core.Maybe Core.Bool)
      -- | Selects a specific revision of this object.
    , generation :: Core.Int64
      -- | Makes the operation conditional on whether the object\'s one live generation matches the given value. Setting to 0 makes the operation succeed only if there are no live versions of the object.
    , ifGenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether none of the object\'s live generations match the given value. If no live object exists, the precondition fails. Setting to 0 makes the operation succeed only if there is a live version of the object.
    , ifGenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether the object\'s one live metageneration matches the given value.
    , ifMetagenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the operation conditional on whether none of the object\'s live metagenerations match the given value.
    , ifMetagenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>.
    , object :: Core.Text
      -- | Set of properties to return. Defaults to full.
    , projection :: (Core.Maybe ObjectsRestoreProjection)
      -- | Restore token used to differentiate sof-deleted objects with the same name and generation. Only applicable for hierarchical namespace buckets. This parameter is optional, and is only required in the rare case when there are multiple soft-deleted objects with the same name and generation.
    , restoreToken :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsRestore' with the minimum fields required to make a request.
newStorageObjectsRestore 
    ::  Core.Text
       -- ^  Name of the bucket in which the object resides. See 'bucket'.
    -> Core.Int64
       -- ^  Selects a specific revision of this object. See 'generation'.
    -> Core.Text
       -- ^  Name of the object. For information about how to URL encode object names to be path safe, see <https://cloud.google.com/storage/docs/request-endpoints#encoding Encoding URI Path Parts>. See 'object'.
    -> StorageObjectsRestore
newStorageObjectsRestore bucket generation object =
  StorageObjectsRestore
    { bucket = bucket
    , copySourceAcl = Core.Nothing
    , generation = generation
    , ifGenerationMatch = Core.Nothing
    , ifGenerationNotMatch = Core.Nothing
    , ifMetagenerationMatch = Core.Nothing
    , ifMetagenerationNotMatch = Core.Nothing
    , object = object
    , projection = Core.Nothing
    , restoreToken = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageObjectsRestore
         where
        type Rs StorageObjectsRestore = Object
        type Scopes StorageObjectsRestore =
             '[CloudPlatform'FullControl, Devstorage'FullControl]
        requestClient StorageObjectsRestore{..}
          = go bucket object (Core.Just generation)
              copySourceAcl
              ifGenerationMatch
              ifGenerationNotMatch
              ifMetagenerationMatch
              ifMetagenerationNotMatch
              projection
              restoreToken
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageObjectsRestoreResource)
                      Core.mempty

