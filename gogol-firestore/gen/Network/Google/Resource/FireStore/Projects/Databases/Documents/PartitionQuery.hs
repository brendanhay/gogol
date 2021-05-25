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
-- Module      : Network.Google.Resource.FireStore.Projects.Databases.Documents.PartitionQuery
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Partitions a query by returning partition cursors that can be used to
-- run the query in parallel. The returned partition cursors are split
-- points that can be used by RunQuery as starting\/end points for the
-- query results.
--
-- /See:/ <https://cloud.google.com/firestore Cloud Firestore API Reference> for @firestore.projects.databases.documents.partitionQuery@.
module Network.Google.Resource.FireStore.Projects.Databases.Documents.PartitionQuery
    (
    -- * REST Resource
      ProjectsDatabasesDocumentsPartitionQueryResource

    -- * Creating a Request
    , projectsDatabasesDocumentsPartitionQuery
    , ProjectsDatabasesDocumentsPartitionQuery

    -- * Request Lenses
    , pddpqParent
    , pddpqXgafv
    , pddpqUploadProtocol
    , pddpqAccessToken
    , pddpqUploadType
    , pddpqPayload
    , pddpqCallback
    ) where

import Network.Google.FireStore.Types
import Network.Google.Prelude

-- | A resource alias for @firestore.projects.databases.documents.partitionQuery@ method which the
-- 'ProjectsDatabasesDocumentsPartitionQuery' request conforms to.
type ProjectsDatabasesDocumentsPartitionQueryResource
     =
     "v1" :>
       CaptureMode "parent" "partitionQuery" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PartitionQueryRequest :>
                       Post '[JSON] PartitionQueryResponse

-- | Partitions a query by returning partition cursors that can be used to
-- run the query in parallel. The returned partition cursors are split
-- points that can be used by RunQuery as starting\/end points for the
-- query results.
--
-- /See:/ 'projectsDatabasesDocumentsPartitionQuery' smart constructor.
data ProjectsDatabasesDocumentsPartitionQuery =
  ProjectsDatabasesDocumentsPartitionQuery'
    { _pddpqParent :: !Text
    , _pddpqXgafv :: !(Maybe Xgafv)
    , _pddpqUploadProtocol :: !(Maybe Text)
    , _pddpqAccessToken :: !(Maybe Text)
    , _pddpqUploadType :: !(Maybe Text)
    , _pddpqPayload :: !PartitionQueryRequest
    , _pddpqCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsDatabasesDocumentsPartitionQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pddpqParent'
--
-- * 'pddpqXgafv'
--
-- * 'pddpqUploadProtocol'
--
-- * 'pddpqAccessToken'
--
-- * 'pddpqUploadType'
--
-- * 'pddpqPayload'
--
-- * 'pddpqCallback'
projectsDatabasesDocumentsPartitionQuery
    :: Text -- ^ 'pddpqParent'
    -> PartitionQueryRequest -- ^ 'pddpqPayload'
    -> ProjectsDatabasesDocumentsPartitionQuery
projectsDatabasesDocumentsPartitionQuery pPddpqParent_ pPddpqPayload_ =
  ProjectsDatabasesDocumentsPartitionQuery'
    { _pddpqParent = pPddpqParent_
    , _pddpqXgafv = Nothing
    , _pddpqUploadProtocol = Nothing
    , _pddpqAccessToken = Nothing
    , _pddpqUploadType = Nothing
    , _pddpqPayload = pPddpqPayload_
    , _pddpqCallback = Nothing
    }


-- | Required. The parent resource name. In the format:
-- \`projects\/{project_id}\/databases\/{database_id}\/documents\`.
-- Document resource names are not supported; only database resource names
-- can be specified.
pddpqParent :: Lens' ProjectsDatabasesDocumentsPartitionQuery Text
pddpqParent
  = lens _pddpqParent (\ s a -> s{_pddpqParent = a})

-- | V1 error format.
pddpqXgafv :: Lens' ProjectsDatabasesDocumentsPartitionQuery (Maybe Xgafv)
pddpqXgafv
  = lens _pddpqXgafv (\ s a -> s{_pddpqXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pddpqUploadProtocol :: Lens' ProjectsDatabasesDocumentsPartitionQuery (Maybe Text)
pddpqUploadProtocol
  = lens _pddpqUploadProtocol
      (\ s a -> s{_pddpqUploadProtocol = a})

-- | OAuth access token.
pddpqAccessToken :: Lens' ProjectsDatabasesDocumentsPartitionQuery (Maybe Text)
pddpqAccessToken
  = lens _pddpqAccessToken
      (\ s a -> s{_pddpqAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pddpqUploadType :: Lens' ProjectsDatabasesDocumentsPartitionQuery (Maybe Text)
pddpqUploadType
  = lens _pddpqUploadType
      (\ s a -> s{_pddpqUploadType = a})

-- | Multipart request metadata.
pddpqPayload :: Lens' ProjectsDatabasesDocumentsPartitionQuery PartitionQueryRequest
pddpqPayload
  = lens _pddpqPayload (\ s a -> s{_pddpqPayload = a})

-- | JSONP
pddpqCallback :: Lens' ProjectsDatabasesDocumentsPartitionQuery (Maybe Text)
pddpqCallback
  = lens _pddpqCallback
      (\ s a -> s{_pddpqCallback = a})

instance GoogleRequest
           ProjectsDatabasesDocumentsPartitionQuery
         where
        type Rs ProjectsDatabasesDocumentsPartitionQuery =
             PartitionQueryResponse
        type Scopes ProjectsDatabasesDocumentsPartitionQuery
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient
          ProjectsDatabasesDocumentsPartitionQuery'{..}
          = go _pddpqParent _pddpqXgafv _pddpqUploadProtocol
              _pddpqAccessToken
              _pddpqUploadType
              _pddpqCallback
              (Just AltJSON)
              _pddpqPayload
              fireStoreService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsDatabasesDocumentsPartitionQueryResource)
                      mempty
