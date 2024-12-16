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
-- Module      : Gogol.Storage.ManagedFolders.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new managed folder.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.insert@.
module Gogol.Storage.ManagedFolders.Insert
    (
    -- * Resource
      StorageManagedFoldersInsertResource

    -- ** Constructing a Request
    , StorageManagedFoldersInsert (..)
    , newStorageManagedFoldersInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.insert@ method which the
-- 'StorageManagedFoldersInsert' request conforms to.
type StorageManagedFoldersInsertResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "managedFolders" Core.:>
               Core.QueryParam "uploadType" Core.Text Core.:>
                 Core.QueryParam "alt" Core.AltJSON Core.:>
                   Core.ReqBody '[Core.JSON] ManagedFolder Core.:>
                     Core.Post '[Core.JSON] ManagedFolder

-- | Creates a new managed folder.
--
-- /See:/ 'newStorageManagedFoldersInsert' smart constructor.
data StorageManagedFoldersInsert = StorageManagedFoldersInsert
    {
      -- | Name of the bucket containing the managed folder.
      bucket :: Core.Text
      -- | Multipart request metadata.
    , payload :: ManagedFolder
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersInsert' with the minimum fields required to make a request.
newStorageManagedFoldersInsert 
    ::  Core.Text
       -- ^  Name of the bucket containing the managed folder. See 'bucket'.
    -> ManagedFolder
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageManagedFoldersInsert
newStorageManagedFoldersInsert bucket payload =
  StorageManagedFoldersInsert
    {bucket = bucket, payload = payload, uploadType = Core.Nothing}

instance Core.GoogleRequest
           StorageManagedFoldersInsert
         where
        type Rs StorageManagedFoldersInsert = ManagedFolder
        type Scopes StorageManagedFoldersInsert =
             '[CloudPlatform'FullControl, Devstorage'FullControl,
               Devstorage'ReadWrite]
        requestClient StorageManagedFoldersInsert{..}
          = go bucket uploadType (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageManagedFoldersInsertResource)
                      Core.mempty

