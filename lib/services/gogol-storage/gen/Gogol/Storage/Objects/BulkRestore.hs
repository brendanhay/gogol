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
-- Module      : Gogol.Storage.Objects.BulkRestore
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates a long-running bulk restore operation on the specified bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.bulkRestore@.
module Gogol.Storage.Objects.BulkRestore
    (
    -- * Resource
      StorageObjectsBulkRestoreResource

    -- ** Constructing a Request
    , StorageObjectsBulkRestore (..)
    , newStorageObjectsBulkRestore
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.objects.bulkRestore@ method which the
-- 'StorageObjectsBulkRestore' request conforms to.
type StorageObjectsBulkRestoreResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "o" Core.:>
               "bulkRestore" Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.ReqBody '[Core.JSON] BulkRestoreObjectsRequest
                       Core.:>
                       Core.Post '[Core.JSON] GoogleLongrunningOperation

-- | Initiates a long-running bulk restore operation on the specified bucket.
--
-- /See:/ 'newStorageObjectsBulkRestore' smart constructor.
data StorageObjectsBulkRestore = StorageObjectsBulkRestore
    {
      -- | Name of the bucket in which the object resides.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , payload :: BulkRestoreObjectsRequest
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageObjectsBulkRestore' with the minimum fields required to make a request.
newStorageObjectsBulkRestore 
    ::  Core.Text
       -- ^  Name of the bucket in which the object resides. See 'bucket'.
    -> BulkRestoreObjectsRequest
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageObjectsBulkRestore
newStorageObjectsBulkRestore bucket payload =
  StorageObjectsBulkRestore
    {bucket = bucket, payload = payload, uploadType = Core.Nothing}

instance Core.GoogleRequest StorageObjectsBulkRestore
         where
        type Rs StorageObjectsBulkRestore =
             GoogleLongrunningOperation
        type Scopes StorageObjectsBulkRestore =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageObjectsBulkRestore{..}
          = go bucket uploadType (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageObjectsBulkRestoreResource)
                      Core.mempty

