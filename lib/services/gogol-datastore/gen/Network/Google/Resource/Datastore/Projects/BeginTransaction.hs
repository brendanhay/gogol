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
-- Module      : Network.Google.Resource.Datastore.Projects.BeginTransaction
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Begins a new transaction.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.beginTransaction@.
module Network.Google.Resource.Datastore.Projects.BeginTransaction
    (
    -- * REST Resource
      ProjectsBeginTransactionResource

    -- * Creating a Request
    , projectsBeginTransaction
    , ProjectsBeginTransaction

    -- * Request Lenses
    , pbtXgafv
    , pbtUploadProtocol
    , pbtAccessToken
    , pbtUploadType
    , pbtPayload
    , pbtProjectId
    , pbtCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.beginTransaction@ method which the
-- 'ProjectsBeginTransaction' request conforms to.
type ProjectsBeginTransactionResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "beginTransaction" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BeginTransactionRequest :>
                         Post '[JSON] BeginTransactionResponse

-- | Begins a new transaction.
--
-- /See:/ 'projectsBeginTransaction' smart constructor.
data ProjectsBeginTransaction =
  ProjectsBeginTransaction'
    { _pbtXgafv :: !(Maybe Xgafv)
    , _pbtUploadProtocol :: !(Maybe Text)
    , _pbtAccessToken :: !(Maybe Text)
    , _pbtUploadType :: !(Maybe Text)
    , _pbtPayload :: !BeginTransactionRequest
    , _pbtProjectId :: !Text
    , _pbtCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBeginTransaction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbtXgafv'
--
-- * 'pbtUploadProtocol'
--
-- * 'pbtAccessToken'
--
-- * 'pbtUploadType'
--
-- * 'pbtPayload'
--
-- * 'pbtProjectId'
--
-- * 'pbtCallback'
projectsBeginTransaction
    :: BeginTransactionRequest -- ^ 'pbtPayload'
    -> Text -- ^ 'pbtProjectId'
    -> ProjectsBeginTransaction
projectsBeginTransaction pPbtPayload_ pPbtProjectId_ =
  ProjectsBeginTransaction'
    { _pbtXgafv = Nothing
    , _pbtUploadProtocol = Nothing
    , _pbtAccessToken = Nothing
    , _pbtUploadType = Nothing
    , _pbtPayload = pPbtPayload_
    , _pbtProjectId = pPbtProjectId_
    , _pbtCallback = Nothing
    }


-- | V1 error format.
pbtXgafv :: Lens' ProjectsBeginTransaction (Maybe Xgafv)
pbtXgafv = lens _pbtXgafv (\ s a -> s{_pbtXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbtUploadProtocol :: Lens' ProjectsBeginTransaction (Maybe Text)
pbtUploadProtocol
  = lens _pbtUploadProtocol
      (\ s a -> s{_pbtUploadProtocol = a})

-- | OAuth access token.
pbtAccessToken :: Lens' ProjectsBeginTransaction (Maybe Text)
pbtAccessToken
  = lens _pbtAccessToken
      (\ s a -> s{_pbtAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbtUploadType :: Lens' ProjectsBeginTransaction (Maybe Text)
pbtUploadType
  = lens _pbtUploadType
      (\ s a -> s{_pbtUploadType = a})

-- | Multipart request metadata.
pbtPayload :: Lens' ProjectsBeginTransaction BeginTransactionRequest
pbtPayload
  = lens _pbtPayload (\ s a -> s{_pbtPayload = a})

-- | Required. The ID of the project against which to make the request.
pbtProjectId :: Lens' ProjectsBeginTransaction Text
pbtProjectId
  = lens _pbtProjectId (\ s a -> s{_pbtProjectId = a})

-- | JSONP
pbtCallback :: Lens' ProjectsBeginTransaction (Maybe Text)
pbtCallback
  = lens _pbtCallback (\ s a -> s{_pbtCallback = a})

instance GoogleRequest ProjectsBeginTransaction where
        type Rs ProjectsBeginTransaction =
             BeginTransactionResponse
        type Scopes ProjectsBeginTransaction =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsBeginTransaction'{..}
          = go _pbtProjectId _pbtXgafv _pbtUploadProtocol
              _pbtAccessToken
              _pbtUploadType
              _pbtCallback
              (Just AltJSON)
              _pbtPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBeginTransactionResource)
                      mempty
