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
-- Module      : Gogol.Storage.ManagedFolders.SetIamPolicy
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an IAM policy for the specified managed folder.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.managedFolders.setIamPolicy@.
module Gogol.Storage.ManagedFolders.SetIamPolicy
    (
    -- * Resource
      StorageManagedFoldersSetIamPolicyResource

    -- ** Constructing a Request
    , StorageManagedFoldersSetIamPolicy (..)
    , newStorageManagedFoldersSetIamPolicy
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.managedFolders.setIamPolicy@ method which the
-- 'StorageManagedFoldersSetIamPolicy' request conforms to.
type StorageManagedFoldersSetIamPolicyResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.Capture "bucket" Core.Text Core.:>
             "managedFolders" Core.:>
               Core.Capture "managedFolder" Core.Text Core.:>
                 "iam" Core.:>
                   Core.QueryParam "uploadType" Core.Text Core.:>
                     Core.QueryParam "userProject" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.ReqBody '[Core.JSON] Policy Core.:>
                           Core.Put '[Core.JSON] Policy

-- | Updates an IAM policy for the specified managed folder.
--
-- /See:/ 'newStorageManagedFoldersSetIamPolicy' smart constructor.
data StorageManagedFoldersSetIamPolicy = StorageManagedFoldersSetIamPolicy
    {
      -- | Name of the bucket containing the managed folder.
      bucket :: Core.Text
      -- | The managed folder name\/path.
    , managedFolder :: Core.Text
      -- | Multipart request metadata.
    , payload :: Policy
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request. Required for Requester Pays buckets.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageManagedFoldersSetIamPolicy' with the minimum fields required to make a request.
newStorageManagedFoldersSetIamPolicy 
    ::  Core.Text
       -- ^  Name of the bucket containing the managed folder. See 'bucket'.
    -> Core.Text
       -- ^  The managed folder name\/path. See 'managedFolder'.
    -> Policy
       -- ^  Multipart request metadata. See 'payload'.
    -> StorageManagedFoldersSetIamPolicy
newStorageManagedFoldersSetIamPolicy bucket managedFolder payload =
  StorageManagedFoldersSetIamPolicy
    { bucket = bucket
    , managedFolder = managedFolder
    , payload = payload
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageManagedFoldersSetIamPolicy
         where
        type Rs StorageManagedFoldersSetIamPolicy = Policy
        type Scopes StorageManagedFoldersSetIamPolicy =
             '[CloudPlatform'FullControl, Devstorage'FullControl]
        requestClient StorageManagedFoldersSetIamPolicy{..}
          = go bucket managedFolder uploadType userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageManagedFoldersSetIamPolicyResource)
                      Core.mempty

