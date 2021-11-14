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
-- Module      : Network.Google.Resource.ServiceManagement.Services.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists managed services. Returns all public services. For authenticated
-- users, also returns all services the calling user has
-- \"servicemanagement.services.get\" permission for.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.list@.
module Network.Google.Resource.ServiceManagement.Services.List
    (
    -- * REST Resource
      ServicesListResource

    -- * Creating a Request
    , servicesList
    , ServicesList

    -- * Request Lenses
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slPageToken
    , slProducerProjectId
    , slConsumerId
    , slPageSize
    , slCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.list@ method which the
-- 'ServicesList' request conforms to.
type ServicesListResource =
     "v1" :>
       "services" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "producerProjectId" Text :>
                     QueryParam "consumerId" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListServicesResponse

-- | Lists managed services. Returns all public services. For authenticated
-- users, also returns all services the calling user has
-- \"servicemanagement.services.get\" permission for.
--
-- /See:/ 'servicesList' smart constructor.
data ServicesList =
  ServicesList'
    { _slXgafv :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken :: !(Maybe Text)
    , _slUploadType :: !(Maybe Text)
    , _slPageToken :: !(Maybe Text)
    , _slProducerProjectId :: !(Maybe Text)
    , _slConsumerId :: !(Maybe Text)
    , _slPageSize :: !(Maybe (Textual Int32))
    , _slCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slPageToken'
--
-- * 'slProducerProjectId'
--
-- * 'slConsumerId'
--
-- * 'slPageSize'
--
-- * 'slCallback'
servicesList
    :: ServicesList
servicesList =
  ServicesList'
    { _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slPageToken = Nothing
    , _slProducerProjectId = Nothing
    , _slConsumerId = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }


-- | V1 error format.
slXgafv :: Lens' ServicesList (Maybe Xgafv)
slXgafv = lens _slXgafv (\ s a -> s{_slXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
slUploadProtocol :: Lens' ServicesList (Maybe Text)
slUploadProtocol
  = lens _slUploadProtocol
      (\ s a -> s{_slUploadProtocol = a})

-- | OAuth access token.
slAccessToken :: Lens' ServicesList (Maybe Text)
slAccessToken
  = lens _slAccessToken
      (\ s a -> s{_slAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
slUploadType :: Lens' ServicesList (Maybe Text)
slUploadType
  = lens _slUploadType (\ s a -> s{_slUploadType = a})

-- | Token identifying which result to start with; returned by a previous
-- list call.
slPageToken :: Lens' ServicesList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Include services produced by the specified project.
slProducerProjectId :: Lens' ServicesList (Maybe Text)
slProducerProjectId
  = lens _slProducerProjectId
      (\ s a -> s{_slProducerProjectId = a})

-- | Include services consumed by the specified consumer. The Google Service
-- Management implementation accepts the following forms: - project:
slConsumerId :: Lens' ServicesList (Maybe Text)
slConsumerId
  = lens _slConsumerId (\ s a -> s{_slConsumerId = a})

-- | The max number of items to include in the response list. Page size is 50
-- if not specified. Maximum value is 100.
slPageSize :: Lens' ServicesList (Maybe Int32)
slPageSize
  = lens _slPageSize (\ s a -> s{_slPageSize = a}) .
      mapping _Coerce

-- | JSONP
slCallback :: Lens' ServicesList (Maybe Text)
slCallback
  = lens _slCallback (\ s a -> s{_slCallback = a})

instance GoogleRequest ServicesList where
        type Rs ServicesList = ListServicesResponse
        type Scopes ServicesList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesList'{..}
          = go _slXgafv _slUploadProtocol _slAccessToken
              _slUploadType
              _slPageToken
              _slProducerProjectId
              _slConsumerId
              _slPageSize
              _slCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient (Proxy :: Proxy ServicesListResource)
                      mempty
