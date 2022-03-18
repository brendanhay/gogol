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
-- Module      : Network.Google.FireStore.Projects.Databases.CollectionGroups.Fields.Get
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata and configuration for a Field.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.fields.get@.
module Network.Google.FireStore.Projects.Databases.CollectionGroups.Fields.Get
  ( -- * Resource
    FireStoreProjectsDatabasesCollectionGroupsFieldsGetResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesCollectionGroupsFieldsGet,
    FireStoreProjectsDatabasesCollectionGroupsFieldsGet,
  )
where

import Network.Google.FireStore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @firestore.projects.databases.collectionGroups.fields.get@ method which the
-- 'FireStoreProjectsDatabasesCollectionGroupsFieldsGet' request conforms to.
type FireStoreProjectsDatabasesCollectionGroupsFieldsGetResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.Get '[Core.JSON] GoogleFirestoreAdminV1Field

-- | Gets the metadata and configuration for a Field.
--
-- /See:/ 'newFireStoreProjectsDatabasesCollectionGroupsFieldsGet' smart constructor.
data FireStoreProjectsDatabasesCollectionGroupsFieldsGet = FireStoreProjectsDatabasesCollectionGroupsFieldsGet
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_id}@
    name :: Core.Text,
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesCollectionGroupsFieldsGet' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesCollectionGroupsFieldsGet ::
  -- |  Required. A name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_id}@ See 'name'.
  Core.Text ->
  FireStoreProjectsDatabasesCollectionGroupsFieldsGet
newFireStoreProjectsDatabasesCollectionGroupsFieldsGet name =
  FireStoreProjectsDatabasesCollectionGroupsFieldsGet
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesCollectionGroupsFieldsGet
  where
  type
    Rs
      FireStoreProjectsDatabasesCollectionGroupsFieldsGet =
      GoogleFirestoreAdminV1Field
  type
    Scopes
      FireStoreProjectsDatabasesCollectionGroupsFieldsGet =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesCollectionGroupsFieldsGet {..} =
      go
        name
        xgafv
        accessToken
        callback
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesCollectionGroupsFieldsGetResource
            )
            Core.mempty
