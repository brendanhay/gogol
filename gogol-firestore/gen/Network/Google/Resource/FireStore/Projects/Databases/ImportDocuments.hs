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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.ImportDocuments
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Imports documents into Google Cloud Firestore. Existing documents with
-- the same name are overwritten. The import occurs in the background and
-- its progress can be monitored and managed via the Operation resource
-- that is created. If an ImportDocuments operation is cancelled, it is
-- possible that a subset of the data has already been imported to Cloud
-- Firestore.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.importDocuments@.
module Network.Google.Resource.FireStore.Projects.Databases.ImportDocuments
    (
    -- * REST Resource
      ProjectsDatabasesImportDocumentsResource

    -- * Creating a Request
    , projectsDatabasesImportDocuments
    , ProjectsDatabasesImportDocuments

    -- * Request Lenses
    , pdidXgafv
    , pdidUploadProtocol
    , pdidAccessToken
    , pdidUploadType
    , pdidPayload
    , pdidName
    , pdidCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.importDocuments@ method which the
-- 'ProjectsDatabasesImportDocuments' request conforms to.
type ProjectsDatabasesImportDocumentsResource =
     "v1" :>
       CaptureMode "name" "importDocuments" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleFirestoreAdminV1ImportDocumentsRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Imports documents into Google Cloud Firestore. Existing documents with
-- the same name are overwritten. The import occurs in the background and
-- its progress can be monitored and managed via the Operation resource
-- that is created. If an ImportDocuments operation is cancelled, it is
-- possible that a subset of the data has already been imported to Cloud
-- Firestore.
--
-- /See:/ 'projectsDatabasesImportDocuments' smart constructor.
data ProjectsDatabasesImportDocuments =
  ProjectsDatabasesImportDocuments'
    { _pdidXgafv :: !(Maybe Xgafv)
    , _pdidUploadProtocol :: !(Maybe Text)
    , _pdidAccessToken :: !(Maybe Text)
    , _pdidUploadType :: !(Maybe Text)
    , _pdidPayload :: !GoogleFirestoreAdminV1ImportDocumentsRequest
    , _pdidName :: !Text
    , _pdidCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesImportDocuments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdidXgafv'
--
-- * 'pdidUploadProtocol'
--
-- * 'pdidAccessToken'
--
-- * 'pdidUploadType'
--
-- * 'pdidPayload'
--
-- * 'pdidName'
--
-- * 'pdidCallback'
projectsDatabasesImportDocuments
    :: GoogleFirestoreAdminV1ImportDocumentsRequest -- ^ 'pdidPayload'
    -> Text -- ^ 'pdidName'
    -> ProjectsDatabasesImportDocuments
projectsDatabasesImportDocuments pPdidPayload_ pPdidName_ =
  ProjectsDatabasesImportDocuments'
    { _pdidXgafv = Nothing
    , _pdidUploadProtocol = Nothing
    , _pdidAccessToken = Nothing
    , _pdidUploadType = Nothing
    , _pdidPayload = pPdidPayload_
    , _pdidName = pPdidName_
    , _pdidCallback = Nothing
    }


-- | V1 error format.
pdidXgafv :: Lens' ProjectsDatabasesImportDocuments (Maybe Xgafv)
pdidXgafv
  = lens _pdidXgafv (\ s a -> s{_pdidXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdidUploadProtocol :: Lens' ProjectsDatabasesImportDocuments (Maybe Text)
pdidUploadProtocol
  = lens _pdidUploadProtocol
      (\ s a -> s{_pdidUploadProtocol = a})

-- | OAuth access token.
pdidAccessToken :: Lens' ProjectsDatabasesImportDocuments (Maybe Text)
pdidAccessToken
  = lens _pdidAccessToken
      (\ s a -> s{_pdidAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdidUploadType :: Lens' ProjectsDatabasesImportDocuments (Maybe Text)
pdidUploadType
  = lens _pdidUploadType
      (\ s a -> s{_pdidUploadType = a})

-- | Multipart request metadata.
pdidPayload :: Lens' ProjectsDatabasesImportDocuments GoogleFirestoreAdminV1ImportDocumentsRequest
pdidPayload
  = lens _pdidPayload (\ s a -> s{_pdidPayload = a})

-- | Required. Database to import into. Should be of the form:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pdidName :: Lens' ProjectsDatabasesImportDocuments Text
pdidName = lens _pdidName (\ s a -> s{_pdidName = a})

-- | JSONP
pdidCallback :: Lens' ProjectsDatabasesImportDocuments (Maybe Text)
pdidCallback
  = lens _pdidCallback (\ s a -> s{_pdidCallback = a})

instance GoogleRequest
           ProjectsDatabasesImportDocuments
         where
        type Rs ProjectsDatabasesImportDocuments =
             GoogleLongrunningOperation
        type Scopes ProjectsDatabasesImportDocuments =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesImportDocuments'{..}
          = go _pdidName _pdidXgafv _pdidUploadProtocol
              _pdidAccessToken
              _pdidUploadType
              _pdidCallback
              (Just AltJSON)
              _pdidPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesImportDocumentsResource)
                      mempty
