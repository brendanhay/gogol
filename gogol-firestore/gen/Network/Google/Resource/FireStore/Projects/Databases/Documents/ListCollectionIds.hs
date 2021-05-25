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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.ListCollectionIds
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the collection IDs underneath a document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.listCollectionIds@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.ListCollectionIds
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsListCollectionIdsResource

    -- * Creating a Request
    , projectsDatabasesDocumentsListCollectionIds
    , ProjectsDatabasesDocumentsListCollectionIds

    -- * Request Lenses
    , pddlciParent
    , pddlciXgafv
    , pddlciUploadProtocol
    , pddlciAccessToken
    , pddlciUploadType
    , pddlciPayload
    , pddlciCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.listCollectionIds@ method which the
-- 'ProjectsDatabasesDocumentsListCollectionIds' request conforms to.
type ProjectsDatabasesDocumentsListCollectionIdsResource
     =
     "v1" :>
       CaptureMode "parent" "listCollectionIds" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ListCollectionIdsRequest :>
                       Post '[JSON] ListCollectionIdsResponse

-- | Lists all the collection IDs underneath a document.
--
-- /See:/ 'projectsDatabasesDocumentsListCollectionIds' smart constructor.
data ProjectsDatabasesDocumentsListCollectionIds =
  ProjectsDatabasesDocumentsListCollectionIds'
    { _pddlciParent :: !Text
    , _pddlciXgafv :: !(Maybe Xgafv)
    , _pddlciUploadProtocol :: !(Maybe Text)
    , _pddlciAccessToken :: !(Maybe Text)
    , _pddlciUploadType :: !(Maybe Text)
    , _pddlciPayload :: !ListCollectionIdsRequest
    , _pddlciCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsListCollectionIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddlciParent'
--
-- * 'pddlciXgafv'
--
-- * 'pddlciUploadProtocol'
--
-- * 'pddlciAccessToken'
--
-- * 'pddlciUploadType'
--
-- * 'pddlciPayload'
--
-- * 'pddlciCallback'
projectsDatabasesDocumentsListCollectionIds
    :: Text -- ^ 'pddlciParent'
    -> ListCollectionIdsRequest -- ^ 'pddlciPayload'
    -> ProjectsDatabasesDocumentsListCollectionIds
projectsDatabasesDocumentsListCollectionIds pPddlciParent_ pPddlciPayload_ =
  ProjectsDatabasesDocumentsListCollectionIds'
    { _pddlciParent = pPddlciParent_
    , _pddlciXgafv = Nothing
    , _pddlciUploadProtocol = Nothing
    , _pddlciAccessToken = Nothing
    , _pddlciUploadType = Nothing
    , _pddlciPayload = pPddlciPayload_
    , _pddlciCallback = Nothing
    }


-- | Required. The parent document. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
-- For example:
-- \`projects\/my-project\/databases\/my-database\/documents\/chatrooms\/my-chatroom\`
pddlciParent :: Lens' ProjectsDatabasesDocumentsListCollectionIds Text
pddlciParent
  = lens _pddlciParent (\ s a -> s{_pddlciParent = a})

-- | V1 error format.
pddlciXgafv :: Lens' ProjectsDatabasesDocumentsListCollectionIds (Maybe Xgafv)
pddlciXgafv
  = lens _pddlciXgafv (\ s a -> s{_pddlciXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddlciUploadProtocol :: Lens' ProjectsDatabasesDocumentsListCollectionIds (Maybe Text)
pddlciUploadProtocol
  = lens _pddlciUploadProtocol
      (\ s a -> s{_pddlciUploadProtocol = a})

-- | OAuth access token.
pddlciAccessToken :: Lens' ProjectsDatabasesDocumentsListCollectionIds (Maybe Text)
pddlciAccessToken
  = lens _pddlciAccessToken
      (\ s a -> s{_pddlciAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddlciUploadType :: Lens' ProjectsDatabasesDocumentsListCollectionIds (Maybe Text)
pddlciUploadType
  = lens _pddlciUploadType
      (\ s a -> s{_pddlciUploadType = a})

-- | Multipart request metadata.
pddlciPayload :: Lens' ProjectsDatabasesDocumentsListCollectionIds ListCollectionIdsRequest
pddlciPayload
  = lens _pddlciPayload
      (\ s a -> s{_pddlciPayload = a})

-- | JSONP
pddlciCallback :: Lens' ProjectsDatabasesDocumentsListCollectionIds (Maybe Text)
pddlciCallback
  = lens _pddlciCallback
      (\ s a -> s{_pddlciCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsListCollectionIds
         where
        type Rs ProjectsDatabasesDocumentsListCollectionIds =
             ListCollectionIdsResponse
        type Scopes
               ProjectsDatabasesDocumentsListCollectionIds
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesDocumentsListCollectionIds'{..}
          = go _pddlciParent _pddlciXgafv _pddlciUploadProtocol
              _pddlciAccessToken
              _pddlciUploadType
              _pddlciCallback
              (Just AltJSON)
              _pddlciPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesDocumentsListCollectionIdsResource)
                      mempty
