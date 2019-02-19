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
-- Module      : Network.Google.Resource.Datastore.Projects.Rollback
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rolls back a transaction.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.rollback@.
module Network.Google.Resource.Datastore.Projects.Rollback
    (
    -- * REST Resource
      ProjectsRollbackResource

    -- * Creating a Request
    , projectsRollback
    , ProjectsRollback

    -- * Request Lenses
    , prXgafv
    , prUploadProtocol
    , prAccessToken
    , prUploadType
    , prPayload
    , prProjectId
    , prCallback
    ) where

import           Network.Google.Datastore.Types
import           Network.Google.Prelude

-- | A resource alias for @datastore.projects.rollback@ method which the
-- 'ProjectsRollback' request conforms to.
type ProjectsRollbackResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "rollback" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] RollbackRequest :>
                         Post '[JSON] RollbackResponse

-- | Rolls back a transaction.
--
-- /See:/ 'projectsRollback' smart constructor.
data ProjectsRollback =
  ProjectsRollback'
    { _prXgafv          :: !(Maybe Xgafv)
    , _prUploadProtocol :: !(Maybe Text)
    , _prAccessToken    :: !(Maybe Text)
    , _prUploadType     :: !(Maybe Text)
    , _prPayload        :: !RollbackRequest
    , _prProjectId      :: !Text
    , _prCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsRollback' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prXgafv'
--
-- * 'prUploadProtocol'
--
-- * 'prAccessToken'
--
-- * 'prUploadType'
--
-- * 'prPayload'
--
-- * 'prProjectId'
--
-- * 'prCallback'
projectsRollback
    :: RollbackRequest -- ^ 'prPayload'
    -> Text -- ^ 'prProjectId'
    -> ProjectsRollback
projectsRollback pPrPayload_ pPrProjectId_ =
  ProjectsRollback'
    { _prXgafv = Nothing
    , _prUploadProtocol = Nothing
    , _prAccessToken = Nothing
    , _prUploadType = Nothing
    , _prPayload = pPrPayload_
    , _prProjectId = pPrProjectId_
    , _prCallback = Nothing
    }

-- | V1 error format.
prXgafv :: Lens' ProjectsRollback (Maybe Xgafv)
prXgafv = lens _prXgafv (\ s a -> s{_prXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
prUploadProtocol :: Lens' ProjectsRollback (Maybe Text)
prUploadProtocol
  = lens _prUploadProtocol
      (\ s a -> s{_prUploadProtocol = a})

-- | OAuth access token.
prAccessToken :: Lens' ProjectsRollback (Maybe Text)
prAccessToken
  = lens _prAccessToken
      (\ s a -> s{_prAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
prUploadType :: Lens' ProjectsRollback (Maybe Text)
prUploadType
  = lens _prUploadType (\ s a -> s{_prUploadType = a})

-- | Multipart request metadata.
prPayload :: Lens' ProjectsRollback RollbackRequest
prPayload
  = lens _prPayload (\ s a -> s{_prPayload = a})

-- | The ID of the project against which to make the request.
prProjectId :: Lens' ProjectsRollback Text
prProjectId
  = lens _prProjectId (\ s a -> s{_prProjectId = a})

-- | JSONP
prCallback :: Lens' ProjectsRollback (Maybe Text)
prCallback
  = lens _prCallback (\ s a -> s{_prCallback = a})

instance GoogleRequest ProjectsRollback where
        type Rs ProjectsRollback = RollbackResponse
        type Scopes ProjectsRollback =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsRollback'{..}
          = go _prProjectId _prXgafv _prUploadProtocol
              _prAccessToken
              _prUploadType
              _prCallback
              (Just AltJSON)
              _prPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsRollbackResource)
                      mempty
