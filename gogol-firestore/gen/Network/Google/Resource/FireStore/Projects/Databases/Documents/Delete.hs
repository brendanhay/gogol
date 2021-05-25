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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.delete@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Delete
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsDeleteResource

    -- * Creating a Request
    , projectsDatabasesDocumentsDelete
    , ProjectsDatabasesDocumentsDelete

    -- * Request Lenses
    , pdddXgafv
    , pdddUploadProtocol
    , pdddCurrentDocumentExists
    , pdddAccessToken
    , pdddUploadType
    , pdddCurrentDocumentUpdateTime
    , pdddName
    , pdddCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.delete@ method which the
-- 'ProjectsDatabasesDocumentsDelete' request conforms to.
type ProjectsDatabasesDocumentsDeleteResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "currentDocument.exists" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "currentDocument.updateTime" DateTime' :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a document.
--
-- /See:/ 'projectsDatabasesDocumentsDelete' smart constructor.
data ProjectsDatabasesDocumentsDelete =
  ProjectsDatabasesDocumentsDelete'
    { _pdddXgafv :: !(Maybe Xgafv)
    , _pdddUploadProtocol :: !(Maybe Text)
    , _pdddCurrentDocumentExists :: !(Maybe Bool)
    , _pdddAccessToken :: !(Maybe Text)
    , _pdddUploadType :: !(Maybe Text)
    , _pdddCurrentDocumentUpdateTime :: !(Maybe DateTime')
    , _pdddName :: !Text
    , _pdddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdddXgafv'
--
-- * 'pdddUploadProtocol'
--
-- * 'pdddCurrentDocumentExists'
--
-- * 'pdddAccessToken'
--
-- * 'pdddUploadType'
--
-- * 'pdddCurrentDocumentUpdateTime'
--
-- * 'pdddName'
--
-- * 'pdddCallback'
projectsDatabasesDocumentsDelete
    :: Text -- ^ 'pdddName'
    -> ProjectsDatabasesDocumentsDelete
projectsDatabasesDocumentsDelete pPdddName_ =
  ProjectsDatabasesDocumentsDelete'
    { _pdddXgafv = Nothing
    , _pdddUploadProtocol = Nothing
    , _pdddCurrentDocumentExists = Nothing
    , _pdddAccessToken = Nothing
    , _pdddUploadType = Nothing
    , _pdddCurrentDocumentUpdateTime = Nothing
    , _pdddName = pPdddName_
    , _pdddCallback = Nothing
    }


-- | V1 error format.
pdddXgafv :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Xgafv)
pdddXgafv
  = lens _pdddXgafv (\ s a -> s{_pdddXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdddUploadProtocol :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Text)
pdddUploadProtocol
  = lens _pdddUploadProtocol
      (\ s a -> s{_pdddUploadProtocol = a})

-- | When set to \`true\`, the target document must exist. When set to
-- \`false\`, the target document must not exist.
pdddCurrentDocumentExists :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Bool)
pdddCurrentDocumentExists
  = lens _pdddCurrentDocumentExists
      (\ s a -> s{_pdddCurrentDocumentExists = a})

-- | OAuth access token.
pdddAccessToken :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Text)
pdddAccessToken
  = lens _pdddAccessToken
      (\ s a -> s{_pdddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdddUploadType :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Text)
pdddUploadType
  = lens _pdddUploadType
      (\ s a -> s{_pdddUploadType = a})

-- | When set, the target document must exist and have been last updated at
-- that time.
pdddCurrentDocumentUpdateTime :: Lens' ProjectsDatabasesDocumentsDelete (Maybe UTCTime)
pdddCurrentDocumentUpdateTime
  = lens _pdddCurrentDocumentUpdateTime
      (\ s a -> s{_pdddCurrentDocumentUpdateTime = a})
      . mapping _DateTime

-- | Required. The resource name of the Document to delete. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
pdddName :: Lens' ProjectsDatabasesDocumentsDelete Text
pdddName = lens _pdddName (\ s a -> s{_pdddName = a})

-- | JSONP
pdddCallback :: Lens' ProjectsDatabasesDocumentsDelete (Maybe Text)
pdddCallback
  = lens _pdddCallback (\ s a -> s{_pdddCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsDelete
         where
        type Rs ProjectsDatabasesDocumentsDelete = Empty
        type Scopes ProjectsDatabasesDocumentsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsDelete'{..}
          = go _pdddName _pdddXgafv _pdddUploadProtocol
              _pdddCurrentDocumentExists
              _pdddAccessToken
              _pdddUploadType
              _pdddCurrentDocumentUpdateTime
              _pdddCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsDeleteResource)
                      mempty
