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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists composite indexes.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.list@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.List
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsIndexesListResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsIndexesList
    , ProjectsDatabasesCollectionGroupsIndexesList

    -- * Request Lenses
    , pdcgilParent
    , pdcgilXgafv
    , pdcgilUploadProtocol
    , pdcgilAccessToken
    , pdcgilUploadType
    , pdcgilFilter
    , pdcgilPageToken
    , pdcgilPageSize
    , pdcgilCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.list@ method which the
-- 'ProjectsDatabasesCollectionGroupsIndexesList' request conforms to.
type ProjectsDatabasesCollectionGroupsIndexesListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "indexes" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               GoogleFirestoreAdminV1ListIndexesResponse

-- | Lists composite indexes.
--
-- /See:/ 'projectsDatabasesCollectionGroupsIndexesList' smart constructor.
data ProjectsDatabasesCollectionGroupsIndexesList =
  ProjectsDatabasesCollectionGroupsIndexesList'
    { _pdcgilParent :: !Text
    , _pdcgilXgafv :: !(Maybe Xgafv)
    , _pdcgilUploadProtocol :: !(Maybe Text)
    , _pdcgilAccessToken :: !(Maybe Text)
    , _pdcgilUploadType :: !(Maybe Text)
    , _pdcgilFilter :: !(Maybe Text)
    , _pdcgilPageToken :: !(Maybe Text)
    , _pdcgilPageSize :: !(Maybe (Textual Int32))
    , _pdcgilCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsIndexesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgilParent'
--
-- * 'pdcgilXgafv'
--
-- * 'pdcgilUploadProtocol'
--
-- * 'pdcgilAccessToken'
--
-- * 'pdcgilUploadType'
--
-- * 'pdcgilFilter'
--
-- * 'pdcgilPageToken'
--
-- * 'pdcgilPageSize'
--
-- * 'pdcgilCallback'
projectsDatabasesCollectionGroupsIndexesList
    :: Text -- ^ 'pdcgilParent'
    -> ProjectsDatabasesCollectionGroupsIndexesList
projectsDatabasesCollectionGroupsIndexesList pPdcgilParent_ =
  ProjectsDatabasesCollectionGroupsIndexesList'
    { _pdcgilParent = pPdcgilParent_
    , _pdcgilXgafv = Nothing
    , _pdcgilUploadProtocol = Nothing
    , _pdcgilAccessToken = Nothing
    , _pdcgilUploadType = Nothing
    , _pdcgilFilter = Nothing
    , _pdcgilPageToken = Nothing
    , _pdcgilPageSize = Nothing
    , _pdcgilCallback = Nothing
    }


-- | Required. A parent name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\`
pdcgilParent :: Lens' ProjectsDatabasesCollectionGroupsIndexesList Text
pdcgilParent
  = lens _pdcgilParent (\ s a -> s{_pdcgilParent = a})

-- | V1 error format.
pdcgilXgafv :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Xgafv)
pdcgilXgafv
  = lens _pdcgilXgafv (\ s a -> s{_pdcgilXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgilUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilUploadProtocol
  = lens _pdcgilUploadProtocol
      (\ s a -> s{_pdcgilUploadProtocol = a})

-- | OAuth access token.
pdcgilAccessToken :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilAccessToken
  = lens _pdcgilAccessToken
      (\ s a -> s{_pdcgilAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgilUploadType :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilUploadType
  = lens _pdcgilUploadType
      (\ s a -> s{_pdcgilUploadType = a})

-- | The filter to apply to list results.
pdcgilFilter :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilFilter
  = lens _pdcgilFilter (\ s a -> s{_pdcgilFilter = a})

-- | A page token, returned from a previous call to
-- FirestoreAdmin.ListIndexes, that may be used to get the next page of
-- results.
pdcgilPageToken :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilPageToken
  = lens _pdcgilPageToken
      (\ s a -> s{_pdcgilPageToken = a})

-- | The number of results to return.
pdcgilPageSize :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Int32)
pdcgilPageSize
  = lens _pdcgilPageSize
      (\ s a -> s{_pdcgilPageSize = a})
      . mapping _Coerce

-- | JSONP
pdcgilCallback :: Lens' ProjectsDatabasesCollectionGroupsIndexesList (Maybe Text)
pdcgilCallback
  = lens _pdcgilCallback
      (\ s a -> s{_pdcgilCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsIndexesList
         where
        type Rs ProjectsDatabasesCollectionGroupsIndexesList
             = GoogleFirestoreAdminV1ListIndexesResponse
        type Scopes
               ProjectsDatabasesCollectionGroupsIndexesList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsIndexesList'{..}
          = go _pdcgilParent _pdcgilXgafv _pdcgilUploadProtocol
              _pdcgilAccessToken
              _pdcgilUploadType
              _pdcgilFilter
              _pdcgilPageToken
              _pdcgilPageSize
              _pdcgilCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsIndexesListResource)
                      mempty
