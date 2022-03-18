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
-- Module      : Network.Google.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a field configuration. Currently, field updates apply only to single field index configuration. However, calls to FirestoreAdmin.UpdateField should provide a field mask to avoid changing any configuration that the caller isn\'t aware of. The field mask should be specified as: @{ paths: \"index_config\" }@. This call returns a google.longrunning.Operation which may be used to track the status of the field update. The metadata for the operation will be the type FieldOperationMetadata. To configure the default field settings for the database, use the special @Field@ with resource name: @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*@.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.fields.patch@.
module Network.Google.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
  ( -- * Resource
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatchResource,

    -- ** Constructing a Request
    newFireStoreProjectsDatabasesCollectionGroupsFieldsPatch,
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatch,
  )
where

import Network.Google.FireStore.Types
import qualified Network.Google.Prelude as Core

-- | A resource alias for @firestore.projects.databases.collectionGroups.fields.patch@ method which the
-- 'FireStoreProjectsDatabasesCollectionGroupsFieldsPatch' request conforms to.
type FireStoreProjectsDatabasesCollectionGroupsFieldsPatchResource =
  "v1"
    Core.:> Core.Capture "name" Core.Text
    Core.:> Core.QueryParam "$.xgafv" Xgafv
    Core.:> Core.QueryParam "access_token" Core.Text
    Core.:> Core.QueryParam "callback" Core.Text
    Core.:> Core.QueryParam "updateMask" Core.GFieldMask
    Core.:> Core.QueryParam "uploadType" Core.Text
    Core.:> Core.QueryParam "upload_protocol" Core.Text
    Core.:> Core.QueryParam "alt" Core.AltJSON
    Core.:> Core.ReqBody '[Core.JSON] GoogleFirestoreAdminV1Field
    Core.:> Core.Patch '[Core.JSON] GoogleLongrunningOperation

-- | Updates a field configuration. Currently, field updates apply only to single field index configuration. However, calls to FirestoreAdmin.UpdateField should provide a field mask to avoid changing any configuration that the caller isn\'t aware of. The field mask should be specified as: @{ paths: \"index_config\" }@. This call returns a google.longrunning.Operation which may be used to track the status of the field update. The metadata for the operation will be the type FieldOperationMetadata. To configure the default field settings for the database, use the special @Field@ with resource name: @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*@.
--
-- /See:/ 'newFireStoreProjectsDatabasesCollectionGroupsFieldsPatch' smart constructor.
data FireStoreProjectsDatabasesCollectionGroupsFieldsPatch = FireStoreProjectsDatabasesCollectionGroupsFieldsPatch
  { -- | V1 error format.
    xgafv :: (Core.Maybe Xgafv),
    -- | OAuth access token.
    accessToken :: (Core.Maybe Core.Text),
    -- | JSONP
    callback :: (Core.Maybe Core.Text),
    -- | Required. A field name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}@ A field path may be a simple field name, e.g. @address@ or a path to fields within map_value , e.g. @address.city@, or a special field path. The only valid special field is @*@, which represents any field. Field paths may be quoted using
    -- @(backtick). The only character that needs to be escaped within a quoted field path is the backtick character itself, escaped using a backslash. Special characters in field paths that must be quoted include:@/@,@.@, \`\`\` (backtick),@[@,@]@, as well as any ascii symbolic characters. Examples: (Note: Comments here are written in markdown syntax, so there is an additional layer of backticks to represent a code block)@\`address.city\`@represents a field named@address.city@, not the map key@city@in the field@address@.@\`/\`@represents a field named@/@, not any field. A special@Field@contains the default indexing settings for all fields. This field\'s resource name is:@projects\/{project/id}\/databases\/{database/id}\/collectionGroups\/__default__\/fields\//@Indexes defined on this@Field@will be applied to all fields which do not have their own@Field\` index configuration.
    name :: Core.Text,
    -- | Multipart request metadata.
    payload :: GoogleFirestoreAdminV1Field,
    -- | A mask, relative to the field. If specified, only configuration specified by this field_mask will be updated in the field.
    updateMask :: (Core.Maybe Core.GFieldMask),
    -- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
    uploadType :: (Core.Maybe Core.Text),
    -- | Upload protocol for media (e.g. \"raw\", \"multipart\").
    uploadProtocol :: (Core.Maybe Core.Text)
  }
  deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'FireStoreProjectsDatabasesCollectionGroupsFieldsPatch' with the minimum fields required to make a request.
newFireStoreProjectsDatabasesCollectionGroupsFieldsPatch ::
  -- |  Required. A field name of the form @projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}@ A field path may be a simple field name, e.g. @address@ or a path to fields within map_value , e.g. @address.city@, or a special field path. The only valid special field is @*@, which represents any field. Field paths may be quoted using
  -- @(backtick). The only character that needs to be escaped within a quoted field path is the backtick character itself, escaped using a backslash. Special characters in field paths that must be quoted include:@/@,@.@, \`\`\` (backtick),@[@,@]@, as well as any ascii symbolic characters. Examples: (Note: Comments here are written in markdown syntax, so there is an additional layer of backticks to represent a code block)@\`address.city\`@represents a field named@address.city@, not the map key@city@in the field@address@.@\`/\`@represents a field named@/@, not any field. A special@Field@contains the default indexing settings for all fields. This field\'s resource name is:@projects\/{project/id}\/databases\/{database/id}\/collectionGroups\/__default__\/fields\//@Indexes defined on this@Field@will be applied to all fields which do not have their own@Field\` index configuration. See 'name'.
  Core.Text ->
  -- |  Multipart request metadata. See 'payload'.
  GoogleFirestoreAdminV1Field ->
  FireStoreProjectsDatabasesCollectionGroupsFieldsPatch
newFireStoreProjectsDatabasesCollectionGroupsFieldsPatch name payload =
  FireStoreProjectsDatabasesCollectionGroupsFieldsPatch
    { xgafv = Core.Nothing,
      accessToken = Core.Nothing,
      callback = Core.Nothing,
      name = name,
      payload = payload,
      updateMask = Core.Nothing,
      uploadType = Core.Nothing,
      uploadProtocol = Core.Nothing
    }

instance
  Core.GoogleRequest
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatch
  where
  type
    Rs
      FireStoreProjectsDatabasesCollectionGroupsFieldsPatch =
      GoogleLongrunningOperation
  type
    Scopes
      FireStoreProjectsDatabasesCollectionGroupsFieldsPatch =
      '[ "https://www.googleapis.com/auth/cloud-platform",
         "https://www.googleapis.com/auth/datastore"
       ]
  requestClient
    FireStoreProjectsDatabasesCollectionGroupsFieldsPatch {..} =
      go
        name
        xgafv
        accessToken
        callback
        updateMask
        uploadType
        uploadProtocol
        (Core.Just Core.AltJSON)
        payload
        fireStoreService
      where
        go =
          Core.buildClient
            ( Core.Proxy ::
                Core.Proxy
                  FireStoreProjectsDatabasesCollectionGroupsFieldsPatchResource
            )
            Core.mempty
