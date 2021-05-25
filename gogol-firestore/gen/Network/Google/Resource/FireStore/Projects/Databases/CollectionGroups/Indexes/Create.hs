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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a composite index. This returns a google.longrunning.Operation
-- which may be used to track the status of the creation. The metadata for
-- the operation will be the type IndexOperationMetadata.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.create@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Create
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsIndexesCreateResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsIndexesCreate
    , ProjectsDatabasesCollectionGroupsIndexesCreate

    -- * Request Lenses
    , pdcgicParent
    , pdcgicXgafv
    , pdcgicUploadProtocol
    , pdcgicAccessToken
    , pdcgicUploadType
    , pdcgicPayload
    , pdcgicCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.create@ method which the
-- 'ProjectsDatabasesCollectionGroupsIndexesCreate' request conforms to.
type ProjectsDatabasesCollectionGroupsIndexesCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "indexes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GoogleFirestoreAdminV1Index :>
                         Post '[JSON] GoogleLongrunningOperation

-- | Creates a composite index. This returns a google.longrunning.Operation
-- which may be used to track the status of the creation. The metadata for
-- the operation will be the type IndexOperationMetadata.
--
-- /See:/ 'projectsDatabasesCollectionGroupsIndexesCreate' smart constructor.
data ProjectsDatabasesCollectionGroupsIndexesCreate =
  ProjectsDatabasesCollectionGroupsIndexesCreate'
    { _pdcgicParent :: !Text
    , _pdcgicXgafv :: !(Maybe Xgafv)
    , _pdcgicUploadProtocol :: !(Maybe Text)
    , _pdcgicAccessToken :: !(Maybe Text)
    , _pdcgicUploadType :: !(Maybe Text)
    , _pdcgicPayload :: !GoogleFirestoreAdminV1Index
    , _pdcgicCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsIndexesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgicParent'
--
-- * 'pdcgicXgafv'
--
-- * 'pdcgicUploadProtocol'
--
-- * 'pdcgicAccessToken'
--
-- * 'pdcgicUploadType'
--
-- * 'pdcgicPayload'
--
-- * 'pdcgicCallback'
projectsDatabasesCollectionGroupsIndexesCreate
    :: Text -- ^ 'pdcgicParent'
    -> GoogleFirestoreAdminV1Index -- ^ 'pdcgicPayload'
    -> ProjectsDatabasesCollectionGroupsIndexesCreate
projectsDatabasesCollectionGroupsIndexesCreate pPdcgicParent_ pPdcgicPayload_ =
  ProjectsDatabasesCollectionGroupsIndexesCreate'
    { _pdcgicParent = pPdcgicParent_
    , _pdcgicXgafv = Nothing
    , _pdcgicUploadProtocol = Nothing
    , _pdcgicAccessToken = Nothing
    , _pdcgicUploadType = Nothing
    , _pdcgicPayload = pPdcgicPayload_
    , _pdcgicCallback = Nothing
    }


-- | Required. A parent name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\`
pdcgicParent :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate Text
pdcgicParent
  = lens _pdcgicParent (\ s a -> s{_pdcgicParent = a})

-- | V1 error format.
pdcgicXgafv :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate (Maybe Xgafv)
pdcgicXgafv
  = lens _pdcgicXgafv (\ s a -> s{_pdcgicXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgicUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate (Maybe Text)
pdcgicUploadProtocol
  = lens _pdcgicUploadProtocol
      (\ s a -> s{_pdcgicUploadProtocol = a})

-- | OAuth access token.
pdcgicAccessToken :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate (Maybe Text)
pdcgicAccessToken
  = lens _pdcgicAccessToken
      (\ s a -> s{_pdcgicAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgicUploadType :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate (Maybe Text)
pdcgicUploadType
  = lens _pdcgicUploadType
      (\ s a -> s{_pdcgicUploadType = a})

-- | Multipart request metadata.
pdcgicPayload :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate GoogleFirestoreAdminV1Index
pdcgicPayload
  = lens _pdcgicPayload
      (\ s a -> s{_pdcgicPayload = a})

-- | JSONP
pdcgicCallback :: Lens' ProjectsDatabasesCollectionGroupsIndexesCreate (Maybe Text)
pdcgicCallback
  = lens _pdcgicCallback
      (\ s a -> s{_pdcgicCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsIndexesCreate
         where
        type Rs
               ProjectsDatabasesCollectionGroupsIndexesCreate
             = GoogleLongrunningOperation
        type Scopes
               ProjectsDatabasesCollectionGroupsIndexesCreate
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsIndexesCreate'{..}
          = go _pdcgicParent _pdcgicXgafv _pdcgicUploadProtocol
              _pdcgicAccessToken
              _pdcgicUploadType
              _pdcgicCallback
              (Just AltJSON)
              _pdcgicPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsIndexesCreateResource)
                      mempty
