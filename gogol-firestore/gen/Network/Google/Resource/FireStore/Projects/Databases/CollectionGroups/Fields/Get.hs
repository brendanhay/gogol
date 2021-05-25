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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the metadata and configuration for a Field.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.collectionGroups.fields.get@.
module Network.Google.Resource.FireStore.Projects.Databases.CollectionGroups.Fields.Get
    (
    -- * REST Resource
      ProjectsDatabasesCollectionGroupsFieldsGetResource

    -- * Creating a Request
    , projectsDatabasesCollectionGroupsFieldsGet
    , ProjectsDatabasesCollectionGroupsFieldsGet

    -- * Request Lenses
    , pdcgfgXgafv
    , pdcgfgUploadProtocol
    , pdcgfgAccessToken
    , pdcgfgUploadType
    , pdcgfgName
    , pdcgfgCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.collectionGroups.fields.get@ method which the
-- 'ProjectsDatabasesCollectionGroupsFieldsGet' request conforms to.
type ProjectsDatabasesCollectionGroupsFieldsGetResource
     =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GoogleFirestoreAdminV1Field

-- | Gets the metadata and configuration for a Field.
--
-- /See:/ 'projectsDatabasesCollectionGroupsFieldsGet' smart constructor.
data ProjectsDatabasesCollectionGroupsFieldsGet =
  ProjectsDatabasesCollectionGroupsFieldsGet'
    { _pdcgfgXgafv :: !(Maybe Xgafv)
    , _pdcgfgUploadProtocol :: !(Maybe Text)
    , _pdcgfgAccessToken :: !(Maybe Text)
    , _pdcgfgUploadType :: !(Maybe Text)
    , _pdcgfgName :: !Text
    , _pdcgfgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesCollectionGroupsFieldsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdcgfgXgafv'
--
-- * 'pdcgfgUploadProtocol'
--
-- * 'pdcgfgAccessToken'
--
-- * 'pdcgfgUploadType'
--
-- * 'pdcgfgName'
--
-- * 'pdcgfgCallback'
projectsDatabasesCollectionGroupsFieldsGet
    :: Text -- ^ 'pdcgfgName'
    -> ProjectsDatabasesCollectionGroupsFieldsGet
projectsDatabasesCollectionGroupsFieldsGet pPdcgfgName_ =
  ProjectsDatabasesCollectionGroupsFieldsGet'
    { _pdcgfgXgafv = Nothing
    , _pdcgfgUploadProtocol = Nothing
    , _pdcgfgAccessToken = Nothing
    , _pdcgfgUploadType = Nothing
    , _pdcgfgName = pPdcgfgName_
    , _pdcgfgCallback = Nothing
    }


-- | V1 error format.
pdcgfgXgafv :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet (Maybe Xgafv)
pdcgfgXgafv
  = lens _pdcgfgXgafv (\ s a -> s{_pdcgfgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdcgfgUploadProtocol :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet (Maybe Text)
pdcgfgUploadProtocol
  = lens _pdcgfgUploadProtocol
      (\ s a -> s{_pdcgfgUploadProtocol = a})

-- | OAuth access token.
pdcgfgAccessToken :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet (Maybe Text)
pdcgfgAccessToken
  = lens _pdcgfgAccessToken
      (\ s a -> s{_pdcgfgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdcgfgUploadType :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet (Maybe Text)
pdcgfgUploadType
  = lens _pdcgfgUploadType
      (\ s a -> s{_pdcgfgUploadType = a})

-- | Required. A name of the form
-- \`projects\/{project_id}\/databases\/{database_id}\/collectionGroups\/{collection_id}\/fields\/{field_id}\`
pdcgfgName :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet Text
pdcgfgName
  = lens _pdcgfgName (\ s a -> s{_pdcgfgName = a})

-- | JSONP
pdcgfgCallback :: Lens' ProjectsDatabasesCollectionGroupsFieldsGet (Maybe Text)
pdcgfgCallback
  = lens _pdcgfgCallback
      (\ s a -> s{_pdcgfgCallback = a})

instance GoogleRequest
           ProjectsDatabasesCollectionGroupsFieldsGet
         where
        type Rs ProjectsDatabasesCollectionGroupsFieldsGet =
             GoogleFirestoreAdminV1Field
        type Scopes
               ProjectsDatabasesCollectionGroupsFieldsGet
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesCollectionGroupsFieldsGet'{..}
          = go _pdcgfgName _pdcgfgXgafv _pdcgfgUploadProtocol
              _pdcgfgAccessToken
              _pdcgfgUploadType
              _pdcgfgCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesCollectionGroupsFieldsGetResource)
                      mempty
