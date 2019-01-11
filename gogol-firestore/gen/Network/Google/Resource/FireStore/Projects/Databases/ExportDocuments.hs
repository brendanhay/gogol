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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.ExportDocuments
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Exports a copy of all or a subset of documents from Google Cloud
-- Firestore to another storage system, such as Google Cloud Storage.
-- Recent updates to documents may not be reflected in the export. The
-- export occurs in the background and its progress can be monitored and
-- managed via the Operation resource that is created. The output of an
-- export may only be used once the associated operation is done. If an
-- export operation is cancelled before completion it may leave partial
-- data behind in Google Cloud Storage.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.exportDocuments@.
module Network.Google.Resource.FireStore.Projects.Databases.ExportDocuments
    (
    -- * REST Resource
      ProjectsDatabasesExportDocumentsResource

    -- * Creating a Request
    , projectsDatabasesExportDocuments
    , ProjectsDatabasesExportDocuments

    -- * Request Lenses
    , pdedXgafv
    , pdedUploadProtocol
    , pdedAccessToken
    , pdedUploadType
    , pdedPayload
    , pdedName
    , pdedCallback
    ) where

import           Network.Google.FireStore.Types
import           Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.exportDocuments@ method which the
-- 'ProjectsDatabasesExportDocuments' request conforms to.
type ProjectsDatabasesExportDocumentsResource =
     "v1" :>
       CaptureMode "name" "exportDocuments" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON]
                       GoogleFirestoreAdminV1ExportDocumentsRequest
                       :> Post '[JSON] GoogleLongrunningOperation

-- | Exports a copy of all or a subset of documents from Google Cloud
-- Firestore to another storage system, such as Google Cloud Storage.
-- Recent updates to documents may not be reflected in the export. The
-- export occurs in the background and its progress can be monitored and
-- managed via the Operation resource that is created. The output of an
-- export may only be used once the associated operation is done. If an
-- export operation is cancelled before completion it may leave partial
-- data behind in Google Cloud Storage.
--
-- /See:/ 'projectsDatabasesExportDocuments' smart constructor.
data ProjectsDatabasesExportDocuments = ProjectsDatabasesExportDocuments'
    { _pdedXgafv          :: !(Maybe Xgafv)
    , _pdedUploadProtocol :: !(Maybe Text)
    , _pdedAccessToken    :: !(Maybe Text)
    , _pdedUploadType     :: !(Maybe Text)
    , _pdedPayload        :: !GoogleFirestoreAdminV1ExportDocumentsRequest
    , _pdedName           :: !Text
    , _pdedCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsDatabasesExportDocuments' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pdedXgafv'
--
-- * 'pdedUploadProtocol'
--
-- * 'pdedAccessToken'
--
-- * 'pdedUploadType'
--
-- * 'pdedPayload'
--
-- * 'pdedName'
--
-- * 'pdedCallback'
projectsDatabasesExportDocuments
    :: GoogleFirestoreAdminV1ExportDocumentsRequest -- ^ 'pdedPayload'
    -> Text -- ^ 'pdedName'
    -> ProjectsDatabasesExportDocuments
projectsDatabasesExportDocuments pPdedPayload_ pPdedName_ =
    ProjectsDatabasesExportDocuments'
    { _pdedXgafv = Nothing
    , _pdedUploadProtocol = Nothing
    , _pdedAccessToken = Nothing
    , _pdedUploadType = Nothing
    , _pdedPayload = pPdedPayload_
    , _pdedName = pPdedName_
    , _pdedCallback = Nothing
    }

-- | V1 error format.
pdedXgafv :: Lens' ProjectsDatabasesExportDocuments (Maybe Xgafv)
pdedXgafv
  = lens _pdedXgafv (\ s a -> s{_pdedXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pdedUploadProtocol :: Lens' ProjectsDatabasesExportDocuments (Maybe Text)
pdedUploadProtocol
  = lens _pdedUploadProtocol
      (\ s a -> s{_pdedUploadProtocol = a})

-- | OAuth access token.
pdedAccessToken :: Lens' ProjectsDatabasesExportDocuments (Maybe Text)
pdedAccessToken
  = lens _pdedAccessToken
      (\ s a -> s{_pdedAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pdedUploadType :: Lens' ProjectsDatabasesExportDocuments (Maybe Text)
pdedUploadType
  = lens _pdedUploadType
      (\ s a -> s{_pdedUploadType = a})

-- | Multipart request metadata.
pdedPayload :: Lens' ProjectsDatabasesExportDocuments GoogleFirestoreAdminV1ExportDocumentsRequest
pdedPayload
  = lens _pdedPayload (\ s a -> s{_pdedPayload = a})

-- | Database to export. Should be of the form:
-- \`projects\/{project_id}\/databases\/{database_id}\`.
pdedName :: Lens' ProjectsDatabasesExportDocuments Text
pdedName = lens _pdedName (\ s a -> s{_pdedName = a})

-- | JSONP
pdedCallback :: Lens' ProjectsDatabasesExportDocuments (Maybe Text)
pdedCallback
  = lens _pdedCallback (\ s a -> s{_pdedCallback = a})

instance GoogleRequest
         ProjectsDatabasesExportDocuments where
        type Rs ProjectsDatabasesExportDocuments =
             GoogleLongrunningOperation
        type Scopes ProjectsDatabasesExportDocuments =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsDatabasesExportDocuments'{..}
          = go _pdedName _pdedXgafv _pdedUploadProtocol
              _pdedAccessToken
              _pdedUploadType
              _pdedCallback
              (Just AltJSON)
              _pdedPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsDatabasesExportDocumentsResource)
                      mempty
