{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Storage.Buckets.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of buckets for a given project.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.buckets.list@.
module Gogol.Storage.Buckets.List
  ( -- * Resource
    StorageBucketsListResource,

    -- ** Constructing a Request
    newStorageBucketsList,
    StorageBucketsList,
  )
where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.buckets.list@ method which the
-- 'StorageBucketsList' request conforms to.
type StorageBucketsListResource =
  "storage"
    Core.:> "v1"
    Core.:> "b"
    Core.:> Core.QueryParam "project" Core.Text
    Core.:> Core.QueryParam "maxResults" Core.Word32
    Core.:> Core.QueryParam "pageToken" Core.Text
    Core.:> Core.QueryParam "prefix" Core.Text
    Core.:> Core.QueryParam "projection" BucketsListProjection
    Core.:> Core.QueryParam "provisionalUserProject" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "userProject" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] Buckets

-- | Retrieves a list of buckets for a given project.
--
-- /See:/ 'newStorageBucketsList' smart constructor.
data StorageBucketsList = StorageBucketsList
  { -- | Maximum number of buckets to return in a single response. The service will use this parameter or 1,000 items, whichever is smaller.
    maxResults :: Core.Word32,
    -- | A previously-returned page token representing part of the larger set of results to view.
    pageToken :: (Core.Maybe Core.Text),
    -- | Filter results to buckets whose names begin with this prefix.
    prefix :: (Core.Maybe Core.Text),
    -- | A valid API project identifier.
    project :: Core.Text,
    -- | Set of properties to return. Defaults to noAcl.
    projection :: (Core.Maybe BucketsListProjection),
    -- | The project to be billed for this request if the target bucket is requester-pays bucket.
    provisionalUserProject :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    uploadType :: (Core.Maybe Core.Text),
    -- | The project to be billed for this request.
    userProject :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageBucketsList' with the minimum fields required to make a request.
newStorageBucketsList ::
  -- |  A valid API project identifier. See 'project'.
  Core.Text ->
  StorageBucketsList
newStorageBucketsList project =
  StorageBucketsList
    { maxResults = 1000,
      pageToken = Core.Nothing,
      prefix = Core.Nothing,
      project = project,
      projection = Core.Nothing,
      provisionalUserProject = Core.Nothing,
      uploadType = Core.Nothing,
      userProject = Core.Nothing
    }

instance Core.GoogleRequest StorageBucketsList where
  type Rs StorageBucketsList = Buckets
  type
    Scopes StorageBucketsList =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/cloud-platform.read-only",
         "https://www.googleapis.com/auth/devstorage.full_control",
         "https://www.googleapis.com/auth/devstorage.read_only",
         "https://www.googleapis.com/auth/devstorage.read_write"
       ]
  requestClient StorageBucketsList {..} =
    go
      (Core.Just project)
      (Core.Just maxResults)
      pageToken
      prefix
      projection
      provisionalUserProject
      uploadType
      userProject
      (Core.Just Core.AltJSON)
      storageService
    where
      go =
        Core.buildClient
          (Core.Proxy :: Core.Proxy StorageBucketsListResource)
          Core.mempty
