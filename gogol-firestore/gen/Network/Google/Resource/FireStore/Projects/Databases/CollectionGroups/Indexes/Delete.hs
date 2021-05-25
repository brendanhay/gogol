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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a composite index.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.indexes.delete@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Indexes.Delete
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsIndexesDeleteResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsIndexesDelete
    , ProjectsDatabasesCollectionGroupsIndexesDelete

    -- * Request Lenses
    , pdcgidXgafv
    , pdcgidUploadProtocol
    , pdcgidAccessToken
    , pdcgidUploadType
    , pdcgidName
    , pdcgidCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.indexes.delete@ method which the
-- 'ProjectsDatabasesCollectionGroupsIndexesDelete' request conforms to.
type ProjectsDatabasesCollectionGroupsIndexesDeleteResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a composite index.
--
-- /See:/ 'projectsDatabasesCollectionGroupsIndexesDelete' smart constructor.
data ProjectsDatabasesCollectionGroupsIndexesDelete =
  ProjectsDatabasesCollectionGroupsIndexesDelete'
    { _pdcgidXgafv :: !(Maybe Xgafv)
    , _pdcgidUploadProtocol :: !(Maybe Text)
    , _pdcgidAccessToken :: !(Maybe Text)
    , _pdcgidUploadType :: !(Maybe Text)
    , _pdcgidName :: !Text
    , _pdcgidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsIndexesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgidXgafv'
--
-- * 'pdcgidUploadProtocol'
--
-- * 'pdcgidAccessToken'
--
-- * 'pdcgidUploadType'
--
-- * 'pdcgidName'
--
-- * 'pdcgidCallback'
projectsDatabasesCollectionGroupsIndexesDelete
    :: Text -- ^ 'pdcgidName'
    -> ProjectsDatabasesCollectionGroupsIndexesDelete
projectsDatabasesCollectionGroupsIndexesDelete pPdcgidName_ =
  ProjectsDatabasesCollectionGroupsIndexesDelete'
    { _pdcgidXgafv = Nothing
    , _pdcgidUploadProtocol = Nothing
    , _pdcgidAccessToken = Nothing
    , _pdcgidUploadType = Nothing
    , _pdcgidName = pPdcgidName_
    , _pdcgidCallback = Nothing
    }


-- | V1 error format.
pdcgidXgafv :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete (Maybe Xgafv)
pdcgidXgafv
  = lens _pdcgidXgafv (\ s a -> s{_pdcgidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgidUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete (Maybe Text)
pdcgidUploadProtocol
  = lens _pdcgidUploadProtocol
      (\ s a -> s{_pdcgidUploadProtocol = a})

-- | OAuth access token.
pdcgidAccessToken :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete (Maybe Text)
pdcgidAccessToken
  = lens _pdcgidAccessToken
      (\ s a -> s{_pdcgidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgidUploadType :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete (Maybe Text)
pdcgidUploadType
  = lens _pdcgidUploadType
      (\ s a -> s{_pdcgidUploadType = a})

-- | Required. A name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/indexes\/{index_id}\`
pdcgidName :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete Text
pdcgidName
  = lens _pdcgidName (\ s a -> s{_pdcgidName = a})

-- | JSONP
pdcgidCallback :: Lens' ProjectsDatabasesCollectionGroupsIndexesDelete (Maybe Text)
pdcgidCallback
  = lens _pdcgidCallback
      (\ s a -> s{_pdcgidCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsIndexesDelete
         where
        type Rs
               ProjectsDatabasesCollectionGroupsIndexesDelete
             = Empty
        type Scopes
               ProjectsDatabasesCollectionGroupsIndexesDelete
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsIndexesDelete'{..}
          = go _pdcgidName _pdcgidXgafv _pdcgidUploadProtocol
              _pdcgidAccessToken
              _pdcgidUploadType
              _pdcgidCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsIndexesDeleteResource)
                      mempty
