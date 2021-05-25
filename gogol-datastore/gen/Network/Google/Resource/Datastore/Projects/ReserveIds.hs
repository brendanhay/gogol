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
-- Module      : Network.Google.Resource.Datastore.Projects.ReserveIds
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Prevents the supplied keys\' IDs from being auto-allocated by Cloud
-- Datastore.
--
-- /See:/ <https://cloud.google.com/datastore/ Cloud Datastore API Reference> for @datastore.projects.reserveIds@.
module Network.Google.Resource.Datastore.Projects.ReserveIds
    (
    -- * REST Resource
      ProjectsReserveIdsResource

    -- * Creating a Request
    , projectsReserveIds
    , ProjectsReserveIds

    -- * Request Lenses
    , priXgafv
    , priUploadProtocol
    , priAccessToken
    , priUploadType
    , priPayload
    , priProjectId
    , priCallback
    ) where

import Network.Google.Datastore.Types
import Network.Google.Prelude

-- | A resource alias for @datastore.projects.reserveIds@ method which the
-- 'ProjectsReserveIds' request conforms to.
type ProjectsReserveIdsResource =
     "v1" :>
       "projects" :>
         CaptureMode "projectId" "reserveIds" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ReserveIdsRequest :>
                         Post '[JSON] ReserveIdsResponse

-- | Prevents the supplied keys\' IDs from being auto-allocated by Cloud
-- Datastore.
--
-- /See:/ 'projectsReserveIds' smart constructor.
data ProjectsReserveIds =
  ProjectsReserveIds'
    { _priXgafv :: !(Maybe Xgafv)
    , _priUploadProtocol :: !(Maybe Text)
    , _priAccessToken :: !(Maybe Text)
    , _priUploadType :: !(Maybe Text)
    , _priPayload :: !ReserveIdsRequest
    , _priProjectId :: !Text
    , _priCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsReserveIds' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'priXgafv'
--
-- * 'priUploadProtocol'
--
-- * 'priAccessToken'
--
-- * 'priUploadType'
--
-- * 'priPayload'
--
-- * 'priProjectId'
--
-- * 'priCallback'
projectsReserveIds
    :: ReserveIdsRequest -- ^ 'priPayload'
    -> Text -- ^ 'priProjectId'
    -> ProjectsReserveIds
projectsReserveIds pPriPayload_ pPriProjectId_ =
  ProjectsReserveIds'
    { _priXgafv = Nothing
    , _priUploadProtocol = Nothing
    , _priAccessToken = Nothing
    , _priUploadType = Nothing
    , _priPayload = pPriPayload_
    , _priProjectId = pPriProjectId_
    , _priCallback = Nothing
    }


-- | V1 error format.
priXgafv :: Lens' ProjectsReserveIds (Maybe Xgafv)
priXgafv = lens _priXgafv (\ s a -> s{_priXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
priUploadProtocol :: Lens' ProjectsReserveIds (Maybe Text)
priUploadProtocol
  = lens _priUploadProtocol
      (\ s a -> s{_priUploadProtocol = a})

-- | OAuth access token.
priAccessToken :: Lens' ProjectsReserveIds (Maybe Text)
priAccessToken
  = lens _priAccessToken
      (\ s a -> s{_priAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
priUploadType :: Lens' ProjectsReserveIds (Maybe Text)
priUploadType
  = lens _priUploadType
      (\ s a -> s{_priUploadType = a})

-- | Multipart request metadata.
priPayload :: Lens' ProjectsReserveIds ReserveIdsRequest
priPayload
  = lens _priPayload (\ s a -> s{_priPayload = a})

-- | Required. The ID of the project against which to make the request.
priProjectId :: Lens' ProjectsReserveIds Text
priProjectId
  = lens _priProjectId (\ s a -> s{_priProjectId = a})

-- | JSONP
priCallback :: Lens' ProjectsReserveIds (Maybe Text)
priCallback
  = lens _priCallback (\ s a -> s{_priCallback = a})

instance GoogleRequest ProjectsReserveIds where
        type Rs ProjectsReserveIds = ReserveIdsResponse
        type Scopes ProjectsReserveIds =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/datastore"]
        requestClient ProjectsReserveIds'{..}
          = go _priProjectId _priXgafv _priUploadProtocol
              _priAccessToken
              _priUploadType
              _priCallback
              (Just AltJSON)
              _priPayload
              datastoreService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsReserveIdsResource)
                      mempty
