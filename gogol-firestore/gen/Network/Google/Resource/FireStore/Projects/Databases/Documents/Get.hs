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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single document.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.get@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.Get
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsGetResource

    -- * Creating a Request
    , projectsDatabasesDocumentsGet
    , ProjectsDatabasesDocumentsGet

    -- * Request Lenses
    , pddgXgafv
    , pddgReadTime
    , pddgUploadProtocol
    , pddgAccessToken
    , pddgUploadType
    , pddgTransaction
    , pddgName
    , pddgMaskFieldPaths
    , pddgCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.get@ method which the
-- 'ProjectsDatabasesDocumentsGet' request conforms to.
type ProjectsDatabasesDocumentsGetResource =
     "v1" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "readTime" DateTime' :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "transaction" Bytes :>
                     QueryParams "mask.fieldPaths" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Document

-- | Gets a single document.
--
-- /See:/ 'projectsDatabasesDocumentsGet' smart constructor.
data ProjectsDatabasesDocumentsGet =
  ProjectsDatabasesDocumentsGet'
    { _pddgXgafv :: !(Maybe Xgafv)
    , _pddgReadTime :: !(Maybe DateTime')
    , _pddgUploadProtocol :: !(Maybe Text)
    , _pddgAccessToken :: !(Maybe Text)
    , _pddgUploadType :: !(Maybe Text)
    , _pddgTransaction :: !(Maybe Bytes)
    , _pddgName :: !Text
    , _pddgMaskFieldPaths :: !(Maybe [Text])
    , _pddgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddgXgafv'
--
-- * 'pddgReadTime'
--
-- * 'pddgUploadProtocol'
--
-- * 'pddgAccessToken'
--
-- * 'pddgUploadType'
--
-- * 'pddgTransaction'
--
-- * 'pddgName'
--
-- * 'pddgMaskFieldPaths'
--
-- * 'pddgCallback'
projectsDatabasesDocumentsGet
    :: Text -- ^ 'pddgName'
    -> ProjectsDatabasesDocumentsGet
projectsDatabasesDocumentsGet pPddgName_ =
  ProjectsDatabasesDocumentsGet'
    { _pddgXgafv = Nothing
    , _pddgReadTime = Nothing
    , _pddgUploadProtocol = Nothing
    , _pddgAccessToken = Nothing
    , _pddgUploadType = Nothing
    , _pddgTransaction = Nothing
    , _pddgName = pPddgName_
    , _pddgMaskFieldPaths = Nothing
    , _pddgCallback = Nothing
    }


-- | V1 error format.
pddgXgafv :: Lens' ProjectsDatabasesDocumentsGet (Maybe Xgafv)
pddgXgafv
  = lens _pddgXgafv (\ s a -> s{_pddgXgafv = a})

-- | Reads the version of the document at the given time. This may not be
-- older than 270 seconds.
pddgReadTime :: Lens' ProjectsDatabasesDocumentsGet (Maybe UTCTime)
pddgReadTime
  = lens _pddgReadTime (\ s a -> s{_pddgReadTime = a})
      . mapping _DateTime

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddgUploadProtocol :: Lens' ProjectsDatabasesDocumentsGet (Maybe Text)
pddgUploadProtocol
  = lens _pddgUploadProtocol
      (\ s a -> s{_pddgUploadProtocol = a})

-- | OAuth access token.
pddgAccessToken :: Lens' ProjectsDatabasesDocumentsGet (Maybe Text)
pddgAccessToken
  = lens _pddgAccessToken
      (\ s a -> s{_pddgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddgUploadType :: Lens' ProjectsDatabasesDocumentsGet (Maybe Text)
pddgUploadType
  = lens _pddgUploadType
      (\ s a -> s{_pddgUploadType = a})

-- | Reads the document in a transaction.
pddgTransaction :: Lens' ProjectsDatabasesDocumentsGet (Maybe ByteString)
pddgTransaction
  = lens _pddgTransaction
      (\ s a -> s{_pddgTransaction = a})
      . mapping _Bytes

-- | Required. The resource name of the Document to get. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\/{document_path}\`.
pddgName :: Lens' ProjectsDatabasesDocumentsGet Text
pddgName = lens _pddgName (\ s a -> s{_pddgName = a})

-- | The list of field paths in the mask. See Document.fields for a field
-- path syntax reference.
pddgMaskFieldPaths :: Lens' ProjectsDatabasesDocumentsGet [Text]
pddgMaskFieldPaths
  = lens _pddgMaskFieldPaths
      (\ s a -> s{_pddgMaskFieldPaths = a})
      . _Default
      . _Coerce

-- | JSONP
pddgCallback :: Lens' ProjectsDatabasesDocumentsGet (Maybe Text)
pddgCallback
  = lens _pddgCallback (\ s a -> s{_pddgCallback = a})

instance GoogleRequest ProjectsDatabasesDocumentsGet
         where
        type Rs ProjectsDatabasesDocumentsGet = Document
        type Scopes ProjectsDatabasesDocumentsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesDocumentsGet'{..}
          = go _pddgName _pddgXgafv _pddgReadTime
              _pddgUploadProtocol
              _pddgAccessToken
              _pddgUploadType
              _pddgTransaction
              (_pddgMaskFieldPaths ^. _Default)
              _pddgCallback
              (Just AltJSON)
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesDocumentsGetResource)
                      mempty
