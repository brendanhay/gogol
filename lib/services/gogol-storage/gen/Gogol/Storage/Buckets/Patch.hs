{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Buckets.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.patch@.
module Gogol.Storage.Buckets.Patch
    (
    -- * Resource
      StorageBucketsPatchResource

    -- ** Constructing a Request
    , newStorageBucketsPatch
    , StorageBucketsPatch
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.patch@ method which the
-- 'StorageBucketsPatch' request conforms to.
type StorageBucketsPatchResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             Core.QueryParam "ifMetagenerationMatch" Core.Int64
               Core.:>
               Core.QueryParam "ifMetagenerationNotMatch" Core.Int64
                 Core.:>
                 Core.QueryParam "predefinedAcl"
                   BucketsPatchPredefinedAcl
                   Core.:>
                   Core.QueryParam "predefinedDefaultObjectAcl"
                     BucketsPatchPredefinedDefaultObjectAcl
                     Core.:>
                     Core.QueryParam "projection" BucketsPatchProjection
                       Core.:>
                       Core.QueryParam "provisionalUserProject" Core.Text
                         Core.:>
                         Core.QueryParam "uploadType" Core.Text Core.:>
                           Core.QueryParam "userProject" Core.Text Core.:>
                             Core.QueryParam "alt" Core.AltJSON Core.:>
                               Core.ReqBody '[Core.JSON] Bucket Core.:>
                                 Core.Patch '[Core.JSON] Bucket

-- | Patches a bucket. Changes to the bucket will be readable immediately after writing, but configuration changes may take time to propagate.
--
-- /See:/ 'newStorageBucketsPatch' smart constructor.
data StorageBucketsPatch = StorageBucketsPatch
    {
      -- | Name of a bucket.
      bucket :: Core.Text
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration matches the given value.
    , ifMetagenerationMatch :: (Core.Maybe Core.Int64)
      -- | Makes the return of the bucket metadata conditional on whether the bucket\'s current metageneration does not match the given value.
    , ifMetagenerationNotMatch :: (Core.Maybe Core.Int64)
      -- | Multipart request metadata.
    , payload :: Bucket
      -- | Apply a predefined set of access controls to this bucket.
    , predefinedAcl :: (Core.Maybe BucketsPatchPredefinedAcl)
      -- | Apply a predefined set of default object access controls to this bucket.
    , predefinedDefaultObjectAcl :: (Core.Maybe BucketsPatchPredefinedDefaultObjectAcl)
      -- | Set of properties to return. Defaults to full.
    , projection :: (Core.Maybe BucketsPatchProjection)
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsPatch' with the minimum fields required to make a request.
newStorageBucketsPatch 
    ::  Core.Text
       -- ^  Name of a bucket. See 'bucket'.
    -> Bucket
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageBucketsPatch
newStorageBucketsPatch bucket payload =
  StorageBucketsPatch
    { bucket = bucket
    , ifMetagenerationMatch = Core.Nothing
    , ifMetagenerationNotMatch = Core.Nothing
    , payload = payload
    , predefinedAcl = Core.Nothing
    , predefinedDefaultObjectAcl = Core.Nothing
    , projection = Core.Nothing
    , provisionalUserProject = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsPatch where
        type Rs StorageBucketsPatch = Bucket
        type Scopes StorageBucketsPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient StorageBucketsPatch{..}
          = go bucket ifMetagenerationMatch
              ifMetagenerationNotMatch
              predefinedAcl
              predefinedDefaultObjectAcl
              projection
              provisionalUserProject
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageBucketsPatchResource)
                      Core.mempty

