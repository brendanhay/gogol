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
-- Module      : Gogol.Storage.AnywhereCaches.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metadata of an Anywhere Cache instance.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.anywhereCaches.get@.
module Gogol.Storage.AnywhereCaches.Get
    (
    -- * Resource
      StorageAnywhereCachesGetResource

    -- ** Constructing a Request
    , StorageAnywhereCachesGet (..)
    , newStorageAnywhereCachesGet
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.anywhereCaches.get@ method which the
-- 'StorageAnywhereCachesGet' request conforms to.
type StorageAnywhereCachesGetResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "anywhereCaches" Core.:>
               Core.Capture "anywhereCacheId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "alt" Core.AltJSON Core.:>
                     Core.Get '[Core.JSON] AnywhereCache

-- | Returns the metadata of an Anywhere Cache instance.
--
-- /See:/ 'newStorageAnywhereCachesGet' smart constructor.
data StorageAnywhereCachesGet = StorageAnywhereCachesGet
    {
      -- | The ID of requested Anywhere Cache instance.
      anywhereCacheId :: Core.Text
      -- | Name of the parent bucket.
    , bucket :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageAnywhereCachesGet' with the minimum fields required to make a request.
newStorageAnywhereCachesGet 
    ::  Core.Text
       -- ^  The ID of requested Anywhere Cache instance. See 'anywhereCacheId'.
    -> Core.Text
       -- ^  Name of the parent bucket. See 'bucket'.
    -> StorageAnywhereCachesGet
newStorageAnywhereCachesGet anywhereCacheId bucket =
  StorageAnywhereCachesGet
    { anywhereCacheId = anywhereCacheId
    , bucket = bucket
    , uploadType = Core.Nothing
    }

instance Core.GoogleRequest StorageAnywhereCachesGet
         where
        type Rs StorageAnywhereCachesGet = AnywhereCache
        type Scopes StorageAnywhereCachesGet =
             '[CloudPlatform'FullControl, CloudPlatform'ReadOnly,
               Devstorage'FullControl, Devstorage'ReadOnly,
               Devstorage'ReadWrite]
        requestClient StorageAnywhereCachesGet{..}
          = go bucket anywhereCacheId uploadType
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageAnywhereCachesGetResource)
                      Core.mempty

