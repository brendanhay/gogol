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
-- Module      : Gogol.Storage.Projects.HmacKeys.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of HMAC keys matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.list@.
module Gogol.Storage.Projects.HmacKeys.List
    (
    -- * Resource
      StorageProjectsHmacKeysListResource

    -- ** Constructing a Request
    , newStorageProjectsHmacKeysList
    , StorageProjectsHmacKeysList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.list@ method which the
-- 'StorageProjectsHmacKeysList' request conforms to.
type StorageProjectsHmacKeysListResource =
     "storage" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "hmacKeys" Core.:>
               Core.QueryParam "maxResults" Core.Word32 Core.:>
                 Core.QueryParam "pageToken" Core.Text Core.:>
                   Core.QueryParam "serviceAccountEmail" Core.Text
                     Core.:>
                     Core.QueryParam "showDeletedKeys" Core.Bool Core.:>
                       Core.QueryParam "uploadType" Core.Text Core.:>
                         Core.QueryParam "userProject" Core.Text Core.:>
                           Core.QueryParam "alt" Core.AltJSON Core.:>
                             Core.Get '[Core.JSON] HmacKeysMetadata

-- | Retrieves a list of HMAC keys matching the criteria.
--
-- /See:/ 'newStorageProjectsHmacKeysList' smart constructor.
data StorageProjectsHmacKeysList = StorageProjectsHmacKeysList
    {
      -- | Maximum number of items to return in a single page of responses. The service uses this parameter or 250 items, whichever is smaller. The max number of items per page will also be limited by the number of distinct service accounts in the response. If the number of service accounts in a single response is too high, the page will truncated and a next page token will be returned.
      maxResults :: Core.Word32
      -- | A previously-returned page token representing part of the larger set of results to view.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Name of the project in which to look for HMAC keys.
    , projectId :: Core.Text
      -- | If present, only keys for the given service account are returned.
    , serviceAccountEmail :: (Core.Maybe Core.Text)
      -- | Whether or not to show keys in the DELETED state.
    , showDeletedKeys :: (Core.Maybe Core.Bool)
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsHmacKeysList' with the minimum fields required to make a request.
newStorageProjectsHmacKeysList 
    ::  Core.Text
       -- ^  Name of the project in which to look for HMAC keys. See 'projectId'.
    -> StorageProjectsHmacKeysList
newStorageProjectsHmacKeysList projectId =
  StorageProjectsHmacKeysList
    { maxResults = 250
    , pageToken = Core.Nothing
    , projectId = projectId
    , serviceAccountEmail = Core.Nothing
    , showDeletedKeys = Core.Nothing
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageProjectsHmacKeysList
         where
        type Rs StorageProjectsHmacKeysList =
             HmacKeysMetadata
        type Scopes StorageProjectsHmacKeysList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only"]
        requestClient StorageProjectsHmacKeysList{..}
          = go projectId (Core.Just maxResults) pageToken
              serviceAccountEmail
              showDeletedKeys
              uploadType
              userProject
              (Core.Just Core.AltJSON)
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageProjectsHmacKeysListResource)
                      Core.mempty

