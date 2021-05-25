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
-- Module      : Network.Google.Resource.SQL.Operations.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.operations.list@.
module Network.Google.Resource.SQL.Operations.List
    (
    -- * REST Resource
      OperationsListResource

    -- * Creating a Request
    , operationsList
    , OperationsList

    -- * Request Lenses
    , olXgafv
    , olUploadProtocol
    , olProject
    , olAccessToken
    , olUploadType
    , olPageToken
    , olMaxResults
    , olCallback
    , olInstance
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.operations.list@ method which the
-- 'OperationsList' request conforms to.
type OperationsListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "operations" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "maxResults" (Textual Word32) :>
                         QueryParam "callback" Text :>
                           QueryParam "instance" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] OperationsListResponse

-- | Lists all instance operations that have been performed on the given
-- Cloud SQL instance in the reverse chronological order of the start time.
--
-- /See:/ 'operationsList' smart constructor.
data OperationsList =
  OperationsList'
    { _olXgafv :: !(Maybe Xgafv)
    , _olUploadProtocol :: !(Maybe Text)
    , _olProject :: !Text
    , _olAccessToken :: !(Maybe Text)
    , _olUploadType :: !(Maybe Text)
    , _olPageToken :: !(Maybe Text)
    , _olMaxResults :: !(Maybe (Textual Word32))
    , _olCallback :: !(Maybe Text)
    , _olInstance :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OperationsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olXgafv'
--
-- * 'olUploadProtocol'
--
-- * 'olProject'
--
-- * 'olAccessToken'
--
-- * 'olUploadType'
--
-- * 'olPageToken'
--
-- * 'olMaxResults'
--
-- * 'olCallback'
--
-- * 'olInstance'
operationsList
    :: Text -- ^ 'olProject'
    -> OperationsList
operationsList pOlProject_ =
  OperationsList'
    { _olXgafv = Nothing
    , _olUploadProtocol = Nothing
    , _olProject = pOlProject_
    , _olAccessToken = Nothing
    , _olUploadType = Nothing
    , _olPageToken = Nothing
    , _olMaxResults = Nothing
    , _olCallback = Nothing
    , _olInstance = Nothing
    }


-- | V1 error format.
olXgafv :: Lens' OperationsList (Maybe Xgafv)
olXgafv = lens _olXgafv (\ s a -> s{_olXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olUploadProtocol :: Lens' OperationsList (Maybe Text)
olUploadProtocol
  = lens _olUploadProtocol
      (\ s a -> s{_olUploadProtocol = a})

-- | Project ID of the project that contains the instance.
olProject :: Lens' OperationsList Text
olProject
  = lens _olProject (\ s a -> s{_olProject = a})

-- | OAuth access token.
olAccessToken :: Lens' OperationsList (Maybe Text)
olAccessToken
  = lens _olAccessToken
      (\ s a -> s{_olAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olUploadType :: Lens' OperationsList (Maybe Text)
olUploadType
  = lens _olUploadType (\ s a -> s{_olUploadType = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' OperationsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Maximum number of operations per response.
olMaxResults :: Lens' OperationsList (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})
      . mapping _Coerce

-- | JSONP
olCallback :: Lens' OperationsList (Maybe Text)
olCallback
  = lens _olCallback (\ s a -> s{_olCallback = a})

-- | Cloud SQL instance ID. This does not include the project ID.
olInstance :: Lens' OperationsList (Maybe Text)
olInstance
  = lens _olInstance (\ s a -> s{_olInstance = a})

instance GoogleRequest OperationsList where
        type Rs OperationsList = OperationsListResponse
        type Scopes OperationsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient OperationsList'{..}
          = go _olProject _olXgafv _olUploadProtocol
              _olAccessToken
              _olUploadType
              _olPageToken
              _olMaxResults
              _olCallback
              _olInstance
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy OperationsListResource)
                      mempty
