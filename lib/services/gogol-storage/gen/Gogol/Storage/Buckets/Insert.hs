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
-- Module      : Gogol.Storage.Buckets.Insert
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.insert@.
module Gogol.Storage.Buckets.Insert
    (
    -- * Resource
      StorageBucketsInsertResource

    -- ** Constructing a Request
    , newStorageBucketsInsert
    , StorageBucketsInsert
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.insert@ method which the
-- 'StorageBucketsInsert' request conforms to.
type StorageBucketsInsertResource =
     "storage" Core.:>
       "v1" Core.:>
         "b" Core.:>
           Core.QueryParam "project" Core.Text Core.:>
             Core.QueryParam "predefinedAcl"
               BucketsInsertPredefinedAcl
               Core.:>
               Core.QueryParam "predefinedDefaultObjectAcl"
                 BucketsInsertPredefinedDefaultObjectAcl
                 Core.:>
                 Core.QueryParam "projection" BucketsInsertProjection
                   Core.:>
                   Core.QueryParam "provisionalUserProject" Core.Text
                     Core.:>
                     Core.QueryParam "uploadType" Core.Text Core.:>
                       Core.QueryParam "userProject" Core.Text Core.:>
                         Core.QueryParam "alt" Core.AltJSON Core.:>
                           Core.ReqBody '[Core.JSON] Bucket Core.:>
                             Core.Post '[Core.JSON] Bucket

-- | Creates a new bucket.
--
-- /See:/ 'newStorageBucketsInsert' smart constructor.
data StorageBucketsInsert = StorageBucketsInsert
    {
      -- | Multipart request metadata.
      payload :: Bucket
      -- | Apply a predefined set of access controls to this bucket.
    , predefinedAcl :: (Core.Maybe BucketsInsertPredefinedAcl)
      -- | Apply a predefined set of default object access controls to this bucket.
    , predefinedDefaultObjectAcl :: (Core.Maybe BucketsInsertPredefinedDefaultObjectAcl)
      -- | A valid API project identifier.
    , project :: Core.Text
      -- | Set of properties to return. Defaults to noAcl, unless the bucket resource specifies acl or defaultObjectAcl properties, when it defaults to full.
    , projection :: (Core.Maybe BucketsInsertProjection)
      -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    , provisionalUserProject :: (Core.Maybe Core.Text)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsInsert' with the minimum fields required to make a request.
newStorageBucketsInsert 
    ::  Bucket
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  A valid API project identifier. See 'project'.
    -> StorageBucketsInsert
newStorageBucketsInsert payload project =
  StorageBucketsInsert
    { payload = payload
    , predefinedAcl = Core.Nothing
    , predefinedDefaultObjectAcl = Core.Nothing
    , project = project
    , projection = Core.Nothing
    , provisionalUserProject = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsInsert
         where
        type Rs StorageBucketsInsert = Bucket
        type Scopes StorageBucketsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient StorageBucketsInsert{..}
          = go (Core.Just project) predefinedAcl
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
                         Core.Proxy StorageBucketsInsertResource)
                      Core.mempty

