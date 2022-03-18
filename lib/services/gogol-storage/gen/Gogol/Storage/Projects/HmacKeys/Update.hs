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
-- Module      : Gogol.Storage.Projects.HmacKeys.Update
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the state of an HMAC key. See the HMAC Key resource descriptor for valid states.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.projects.hmacKeys.update@.
module Gogol.Storage.Projects.HmacKeys.Update
    (
    -- * Resource
      StorageProjectsHmacKeysUpdateResource

    -- ** Constructing a Request
    , newStorageProjectsHmacKeysUpdate
    , StorageProjectsHmacKeysUpdate
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Storage.Types

-- | A resource alias for @storage.projects.hmacKeys.update@ method which the
-- 'StorageProjectsHmacKeysUpdate' request conforms to.
type StorageProjectsHmacKeysUpdateResource =
     "storage" Core.:>
       "v1" Core.:>
         "projects" Core.:>
           Core.Capture "projectId" Core.Text Core.:>
             "hmacKeys" Core.:>
               Core.Capture "accessId" Core.Text Core.:>
                 Core.QueryParam "uploadType" Core.Text Core.:>
                   Core.QueryParam "userProject" Core.Text Core.:>
                     Core.QueryParam "alt" Core.AltJSON Core.:>
                       Core.ReqBody '[Core.JSON] HmacKeyMetadata Core.:>
                         Core.Put '[Core.JSON] HmacKeyMetadata

-- | Updates the state of an HMAC key. See the HMAC Key resource descriptor for valid states.
--
-- /See:/ 'newStorageProjectsHmacKeysUpdate' smart constructor.
data StorageProjectsHmacKeysUpdate = StorageProjectsHmacKeysUpdate
    {
      -- | Name of the HMAC key being updated.
      accessId :: Core.Text
      -- | Multipart request metadata.
    , payload :: HmacKeyMetadata
      -- | Project ID owning the service account of the updated key.
    , projectId :: Core.Text
      -- | Upload protocol for media (e.g. \"media\", \"multipart\", \"resumable\").
    , uploadType :: (Core.Maybe Core.Text)
      -- | The project to be billed for this request.
    , userProject :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'StorageProjectsHmacKeysUpdate' with the minimum fields required to make a request.
newStorageProjectsHmacKeysUpdate 
    ::  Core.Text
       -- ^  Name of the HMAC key being updated. See 'accessId'.
    -> HmacKeyMetadata
       -- ^  Multipart request metadata. See 'payload'.
    -> Core.Text
       -- ^  Project ID owning the service account of the updated key. See 'projectId'.
    -> StorageProjectsHmacKeysUpdate
newStorageProjectsHmacKeysUpdate accessId payload projectId =
  StorageProjectsHmacKeysUpdate
    { accessId = accessId
    , payload = payload
    , projectId = projectId
    , uploadType = Core.Nothing
    , userProject = Core.Nothing
    }

instance Core.GoogleRequest
           StorageProjectsHmacKeysUpdate
         where
        type Rs StorageProjectsHmacKeysUpdate =
             HmacKeyMetadata
        type Scopes StorageProjectsHmacKeysUpdate =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/devstorage.full_control"]
        requestClient StorageProjectsHmacKeysUpdate{..}
          = go projectId accessId uploadType userProject
              (Core.Just Core.AltJSON)
              payload
              storageService
          where go
                  = Core.buildClient
                      (Core.Proxy ::
                         Core.Proxy StorageProjectsHmacKeysUpdateResource)
                      Core.mempty

