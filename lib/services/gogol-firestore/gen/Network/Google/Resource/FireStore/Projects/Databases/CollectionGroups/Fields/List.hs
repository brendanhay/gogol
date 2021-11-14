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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the field configuration and metadata for this database. Currently,
-- FirestoreAdmin.ListFields only supports listing fields that have been
-- explicitly overridden. To issue this query, call
-- FirestoreAdmin.ListFields with the filter set to
-- \`indexConfig.usesAncestorConfig:false\` .
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.fields.list@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.List
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsFieldsListResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsFieldsList
    , ProjectsDatabasesCollectionGroupsFieldsList

    -- * Request Lenses
    , pdcgflParent
    , pdcgflXgafv
    , pdcgflUploadProtocol
    , pdcgflAccessToken
    , pdcgflUploadType
    , pdcgflFilter
    , pdcgflPageToken
    , pdcgflPageSize
    , pdcgflCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.fields.list@ method which the
-- 'ProjectsDatabasesCollectionGroupsFieldsList' request conforms to.
type ProjectsDatabasesCollectionGroupsFieldsListResource
     =
     "v1" :>
       Capture "parent" Text :>
         "fields" :>
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
                               GoogleFirestoreAdminV1ListFieldsResponse

-- | Lists the field configuration and metadata for this database. Currently,
-- FirestoreAdmin.ListFields only supports listing fields that have been
-- explicitly overridden. To issue this query, call
-- FirestoreAdmin.ListFields with the filter set to
-- \`indexConfig.usesAncestorConfig:false\` .
--
-- /See:/ 'projectsDatabasesCollectionGroupsFieldsList' smart constructor.
data ProjectsDatabasesCollectionGroupsFieldsList =
  ProjectsDatabasesCollectionGroupsFieldsList'
    { _pdcgflParent :: !Text
    , _pdcgflXgafv :: !(Maybe Xgafv)
    , _pdcgflUploadProtocol :: !(Maybe Text)
    , _pdcgflAccessToken :: !(Maybe Text)
    , _pdcgflUploadType :: !(Maybe Text)
    , _pdcgflFilter :: !(Maybe Text)
    , _pdcgflPageToken :: !(Maybe Text)
    , _pdcgflPageSize :: !(Maybe (Textual Int32))
    , _pdcgflCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsFieldsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgflParent'
--
-- * 'pdcgflXgafv'
--
-- * 'pdcgflUploadProtocol'
--
-- * 'pdcgflAccessToken'
--
-- * 'pdcgflUploadType'
--
-- * 'pdcgflFilter'
--
-- * 'pdcgflPageToken'
--
-- * 'pdcgflPageSize'
--
-- * 'pdcgflCallback'
projectsDatabasesCollectionGroupsFieldsList
    :: Text -- ^ 'pdcgflParent'
    -> ProjectsDatabasesCollectionGroupsFieldsList
projectsDatabasesCollectionGroupsFieldsList pPdcgflParent_ =
  ProjectsDatabasesCollectionGroupsFieldsList'
    { _pdcgflParent = pPdcgflParent_
    , _pdcgflXgafv = Nothing
    , _pdcgflUploadProtocol = Nothing
    , _pdcgflAccessToken = Nothing
    , _pdcgflUploadType = Nothing
    , _pdcgflFilter = Nothing
    , _pdcgflPageToken = Nothing
    , _pdcgflPageSize = Nothing
    , _pdcgflCallback = Nothing
    }


-- | Required. A parent name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\`
pdcgflParent :: Lens' ProjectsDatabasesCollectionGroupsFieldsList Text
pdcgflParent
  = lens _pdcgflParent (\ s a -> s{_pdcgflParent = a})

-- | V1 error format.
pdcgflXgafv :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Xgafv)
pdcgflXgafv
  = lens _pdcgflXgafv (\ s a -> s{_pdcgflXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgflUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflUploadProtocol
  = lens _pdcgflUploadProtocol
      (\ s a -> s{_pdcgflUploadProtocol = a})

-- | OAuth access token.
pdcgflAccessToken :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflAccessToken
  = lens _pdcgflAccessToken
      (\ s a -> s{_pdcgflAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgflUploadType :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflUploadType
  = lens _pdcgflUploadType
      (\ s a -> s{_pdcgflUploadType = a})

-- | The filter to apply to list results. Currently,
-- FirestoreAdmin.ListFields only supports listing fields that have been
-- explicitly overridden. To issue this query, call
-- FirestoreAdmin.ListFields with a filter that includes
-- \`indexConfig.usesAncestorConfig:false\` .
pdcgflFilter :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflFilter
  = lens _pdcgflFilter (\ s a -> s{_pdcgflFilter = a})

-- | A page token, returned from a previous call to
-- FirestoreAdmin.ListFields, that may be used to get the next page of
-- results.
pdcgflPageToken :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflPageToken
  = lens _pdcgflPageToken
      (\ s a -> s{_pdcgflPageToken = a})

-- | The number of results to return.
pdcgflPageSize :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Int32)
pdcgflPageSize
  = lens _pdcgflPageSize
      (\ s a -> s{_pdcgflPageSize = a})
      . mapping _Coerce

-- | JSONP
pdcgflCallback :: Lens' ProjectsDatabasesCollectionGroupsFieldsList (Maybe Text)
pdcgflCallback
  = lens _pdcgflCallback
      (\ s a -> s{_pdcgflCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsFieldsList
         where
        type Rs ProjectsDatabasesCollectionGroupsFieldsList =
             GoogleFirestoreAdminV1ListFieldsResponse
        type Scopes
               ProjectsDatabasesCollectionGroupsFieldsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsFieldsList'{..}
          = go _pdcgflParent _pdcgflXgafv _pdcgflUploadProtocol
              _pdcgflAccessToken
              _pdcgflUploadType
              _pdcgflFilter
              _pdcgflPageToken
              _pdcgflPageSize
              _pdcgflCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsFieldsListResource)
                      mempty
