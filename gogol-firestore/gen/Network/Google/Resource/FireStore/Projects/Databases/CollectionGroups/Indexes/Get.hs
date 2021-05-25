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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a composite index.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.get@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Get
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsIndexesGetResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsIndexesGet
    , ProjectsDatabasesCollectionGroupsIndexesGet

    -- * Request Lenses
    , pdcgigXgafv
    , pdcgigUploadProtocol
    , pdcgigAccessToken
    , pdcgigUploadType
    , pdcgigName
    , pdcgigCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.get@ method which the
-- 'ProjectsDatabasesCollectionGroupsIndexesGet' request conforms to.
type ProjectsDatabasesCollectionGroupsIndexesGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleFirestoreAdminV1Index

-- | Gets a composite index.
--
-- /See:/ 'projectsDatabasesCollectionGroupsIndexesGet' smart constructor.
data ProjectsDatabasesCollectionGroupsIndexesGet =
  ProjectsDatabasesCollectionGroupsIndexesGet'
    { _pdcgigXgafv :: !(Maybe Xgafv)
    , _pdcgigUploadProtocol :: !(Maybe Text)
    , _pdcgigAccessToken :: !(Maybe Text)
    , _pdcgigUploadType :: !(Maybe Text)
    , _pdcgigName :: !Text
    , _pdcgigCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsIndexesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgigXgafv'
--
-- * 'pdcgigUploadProtocol'
--
-- * 'pdcgigAccessToken'
--
-- * 'pdcgigUploadType'
--
-- * 'pdcgigName'
--
-- * 'pdcgigCallback'
projectsDatabasesCollectionGroupsIndexesGet
    :: Text -- ^ 'pdcgigName'
    -> ProjectsDatabasesCollectionGroupsIndexesGet
projectsDatabasesCollectionGroupsIndexesGet pPdcgigName_ =
  ProjectsDatabasesCollectionGroupsIndexesGet'
    { _pdcgigXgafv = Nothing
    , _pdcgigUploadProtocol = Nothing
    , _pdcgigAccessToken = Nothing
    , _pdcgigUploadType = Nothing
    , _pdcgigName = pPdcgigName_
    , _pdcgigCallback = Nothing
    }


-- | V1 error format.
pdcgigXgafv :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet (Maybe Xgafv)
pdcgigXgafv
  = lens _pdcgigXgafv (\ s a -> s{_pdcgigXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgigUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet (Maybe Text)
pdcgigUploadProtocol
  = lens _pdcgigUploadProtocol
      (\ s a -> s{_pdcgigUploadProtocol = a})

-- | OAuth access token.
pdcgigAccessToken :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet (Maybe Text)
pdcgigAccessToken
  = lens _pdcgigAccessToken
      (\ s a -> s{_pdcgigAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgigUploadType :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet (Maybe Text)
pdcgigUploadType
  = lens _pdcgigUploadType
      (\ s a -> s{_pdcgigUploadType = a})

-- | Required. A name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{index_id}\`
pdcgigName :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet Text
pdcgigName
  = lens _pdcgigName (\ s a -> s{_pdcgigName = a})

-- | JSONP
pdcgigCallback :: Lens' ProjectsDatabasesCollectionGroupsIndexesGet (Maybe Text)
pdcgigCallback
  = lens _pdcgigCallback
      (\ s a -> s{_pdcgigCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsIndexesGet
         where
        type Rs ProjectsDatabasesCollectionGroupsIndexesGet =
             GoogleFirestoreAdminV1Index
        type Scopes
               ProjectsDatabasesCollectionGroupsIndexesGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsIndexesGet'{..}
          = go _pdcgigName _pdcgigXgafv _pdcgigUploadProtocol
              _pdcgigAccessToken
              _pdcgigUploadType
              _pdcgigCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsIndexesGetResource)
                      mempty
