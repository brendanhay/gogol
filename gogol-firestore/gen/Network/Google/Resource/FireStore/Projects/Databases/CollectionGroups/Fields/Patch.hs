{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a field configuration. Currently, field updates apply only to
-- single field index configuration. However, calls to
-- FirestoreAdmin.UpdateField should provide a field mask to avoid changing
-- any configuration that the caller isn\'t aware of. The field mask should
-- be specified as: \`{ paths: \"index_config\" }\`. This call returns a
-- google.longrunning.Operation which may be used to track the status of
-- the field update. The metadata for the operation will be the type
-- FieldOperationMetadata. To configure the default field settings for the
-- database, use the special \`Field\` with resource name:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*\`.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.fields.patch@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Patch
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsFieldsPatchResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsFieldsPatch
    , ProjectsDatabasesCollectionGroupsFieldsPatch

    -- * Request Lenses
    , pdcgfpXgafv
    , pdcgfpUploadProtocol
    , pdcgfpUpdateMask
    , pdcgfpAccessToken
    , pdcgfpUploadType
    , pdcgfpPayload
    , pdcgfpName
    , pdcgfpCallback
    ) where

import           Network.Google.FireStore.Types
import           Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.fields.patch@ method which the
-- 'ProjectsDatabasesCollectionGroupsFieldsPatch' request conforms to.
type ProjectsDatabasesCollectionGroupsFieldsPatchResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "updateMask" GFieldMask :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleFirestoreAdminV1Field :>
                         Patch '[JSON] GoogleLongrunningOperation

-- | Updates a field configuration. Currently, field updates apply only to
-- single field index configuration. However, calls to
-- FirestoreAdmin.UpdateField should provide a field mask to avoid changing
-- any configuration that the caller isn\'t aware of. The field mask should
-- be specified as: \`{ paths: \"index_config\" }\`. This call returns a
-- google.longrunning.Operation which may be used to track the status of
-- the field update. The metadata for the operation will be the type
-- FieldOperationMetadata. To configure the default field settings for the
-- database, use the special \`Field\` with resource name:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*\`.
--
-- /See:/ 'projectsDatabasesCollectionGroupsFieldsPatch' smart constructor.
data ProjectsDatabasesCollectionGroupsFieldsPatch =
  ProjectsDatabasesCollectionGroupsFieldsPatch'
    { _pdcgfpXgafv          :: !(Maybe Xgafv)
    , _pdcgfpUploadProtocol :: !(Maybe Text)
    , _pdcgfpUpdateMask     :: !(Maybe GFieldMask)
    , _pdcgfpAccessToken    :: !(Maybe Text)
    , _pdcgfpUploadType     :: !(Maybe Text)
    , _pdcgfpPayload        :: !GoogleFirestoreAdminV1Field
    , _pdcgfpName           :: !Text
    , _pdcgfpCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsDatabasesCollectionGroupsFieldsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgfpXgafv'
--
-- * 'pdcgfpUploadProtocol'
--
-- * 'pdcgfpUpdateMask'
--
-- * 'pdcgfpAccessToken'
--
-- * 'pdcgfpUploadType'
--
-- * 'pdcgfpPayload'
--
-- * 'pdcgfpName'
--
-- * 'pdcgfpCallback'
projectsDatabasesCollectionGroupsFieldsPatch
    :: GoogleFirestoreAdminV1Field -- ^ 'pdcgfpPayload'
    -> Text -- ^ 'pdcgfpName'
    -> ProjectsDatabasesCollectionGroupsFieldsPatch
projectsDatabasesCollectionGroupsFieldsPatch pPdcgfpPayload_ pPdcgfpName_ =
  ProjectsDatabasesCollectionGroupsFieldsPatch'
    { _pdcgfpXgafv = Nothing
    , _pdcgfpUploadProtocol = Nothing
    , _pdcgfpUpdateMask = Nothing
    , _pdcgfpAccessToken = Nothing
    , _pdcgfpUploadType = Nothing
    , _pdcgfpPayload = pPdcgfpPayload_
    , _pdcgfpName = pPdcgfpName_
    , _pdcgfpCallback = Nothing
    }

-- | V1 error format.
pdcgfpXgafv :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe Xgafv)
pdcgfpXgafv
  = lens _pdcgfpXgafv (\ s a -> s{_pdcgfpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgfpUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe Text)
pdcgfpUploadProtocol
  = lens _pdcgfpUploadProtocol
      (\ s a -> s{_pdcgfpUploadProtocol = a})

-- | A mask, relative to the field. If specified, only configuration
-- specified by this field_mask will be updated in the field.
pdcgfpUpdateMask :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe GFieldMask)
pdcgfpUpdateMask
  = lens _pdcgfpUpdateMask
      (\ s a -> s{_pdcgfpUpdateMask = a})

-- | OAuth access token.
pdcgfpAccessToken :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe Text)
pdcgfpAccessToken
  = lens _pdcgfpAccessToken
      (\ s a -> s{_pdcgfpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgfpUploadType :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe Text)
pdcgfpUploadType
  = lens _pdcgfpUploadType
      (\ s a -> s{_pdcgfpUploadType = a})

-- | Multipart request metadata.
pdcgfpPayload :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch GoogleFirestoreAdminV1Field
pdcgfpPayload
  = lens _pdcgfpPayload
      (\ s a -> s{_pdcgfpPayload = a})

-- | A field name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_path}\`
-- A field path may be a simple field name, e.g. \`address\` or a path to
-- fields within map_value , e.g. \`address.city\`, or a special field
-- path. The only valid special field is \`*\`, which represents any field.
-- Field paths may be quoted using \` (backtick). The only character that
-- needs to be escaped within a quoted field path is the backtick character
-- itself, escaped using a backslash. Special characters in field paths
-- that must be quoted include: \`*\`, \`.\`, \`\`\` (backtick), \`[\`,
-- \`]\`, as well as any ascii symbolic characters. Examples: (Note:
-- Comments here are written in markdown syntax, so there is an additional
-- layer of backticks to represent a code block) \`\\\`address.city\\\`\`
-- represents a field named \`address.city\`, not the map key \`city\` in
-- the field \`address\`. \`\\\`*\\\`\` represents a field named \`*\`, not
-- any field. A special \`Field\` contains the default indexing settings
-- for all fields. This field\'s resource name is:
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/__default__\/fields\/*\`
-- Indexes defined on this \`Field\` will be applied to all fields which do
-- not have their own \`Field\` index configuration.
pdcgfpName :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch Text
pdcgfpName
  = lens _pdcgfpName (\ s a -> s{_pdcgfpName = a})

-- | JSONP
pdcgfpCallback :: Lens' ProjectsDatabasesCollectionGroupsFieldsPatch (Maybe Text)
pdcgfpCallback
  = lens _pdcgfpCallback
      (\ s a -> s{_pdcgfpCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsFieldsPatch
         where
        type Rs ProjectsDatabasesCollectionGroupsFieldsPatch
             = GoogleLongrunningOperation
        type Scopes
               ProjectsDatabasesCollectionGroupsFieldsPatch
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsFieldsPatch'{..}
          = go _pdcgfpName _pdcgfpXgafv _pdcgfpUploadProtocol
              _pdcgfpUpdateMask
              _pdcgfpAccessToken
              _pdcgfpUploadType
              _pdcgfpCallback
              (Just AltJSON)
              _pdcgfpPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsFieldsPatchResource)
                      mempty
