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
-- Module      : Network.Google.Resource.ServiceManagement.Services.Configs.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the history of the service configuration for a managed service,
-- from the newest to the oldest.
--
-- /See:/ <https://cloud.google.com/service-management/ Service Management API Reference> for @servicemanagement.services.configs.list@.
module Network.Google.Resource.ServiceManagement.Services.Configs.List
    (
    -- * REST Resource
      ServicesConfigsListResource

    -- * Creating a Request
    , servicesConfigsList
    , ServicesConfigsList

    -- * Request Lenses
    , sclXgafv
    , sclUploadProtocol
    , sclAccessToken
    , sclUploadType
    , sclServiceName
    , sclPageToken
    , sclPageSize
    , sclCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceManagement.Types

-- | A resource alias for @servicemanagement.services.configs.list@ method which the
-- 'ServicesConfigsList' request conforms to.
type ServicesConfigsListResource =
     "v1" :>
       "services" :>
         Capture "serviceName" Text :>
           "configs" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListServiceConfigsResponse

-- | Lists the history of the service configuration for a managed service,
-- from the newest to the oldest.
--
-- /See:/ 'servicesConfigsList' smart constructor.
data ServicesConfigsList =
  ServicesConfigsList'
    { _sclXgafv :: !(Maybe Xgafv)
    , _sclUploadProtocol :: !(Maybe Text)
    , _sclAccessToken :: !(Maybe Text)
    , _sclUploadType :: !(Maybe Text)
    , _sclServiceName :: !Text
    , _sclPageToken :: !(Maybe Text)
    , _sclPageSize :: !(Maybe (Textual Int32))
    , _sclCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesConfigsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sclXgafv'
--
-- * 'sclUploadProtocol'
--
-- * 'sclAccessToken'
--
-- * 'sclUploadType'
--
-- * 'sclServiceName'
--
-- * 'sclPageToken'
--
-- * 'sclPageSize'
--
-- * 'sclCallback'
servicesConfigsList
    :: Text -- ^ 'sclServiceName'
    -> ServicesConfigsList
servicesConfigsList pSclServiceName_ =
  ServicesConfigsList'
    { _sclXgafv = Nothing
    , _sclUploadProtocol = Nothing
    , _sclAccessToken = Nothing
    , _sclUploadType = Nothing
    , _sclServiceName = pSclServiceName_
    , _sclPageToken = Nothing
    , _sclPageSize = Nothing
    , _sclCallback = Nothing
    }


-- | V1 error format.
sclXgafv :: Lens' ServicesConfigsList (Maybe Xgafv)
sclXgafv = lens _sclXgafv (\ s a -> s{_sclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
sclUploadProtocol :: Lens' ServicesConfigsList (Maybe Text)
sclUploadProtocol
  = lens _sclUploadProtocol
      (\ s a -> s{_sclUploadProtocol = a})

-- | OAuth access token.
sclAccessToken :: Lens' ServicesConfigsList (Maybe Text)
sclAccessToken
  = lens _sclAccessToken
      (\ s a -> s{_sclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
sclUploadType :: Lens' ServicesConfigsList (Maybe Text)
sclUploadType
  = lens _sclUploadType
      (\ s a -> s{_sclUploadType = a})

-- | Required. The name of the service. See the
-- [overview](\/service-management\/overview) for naming requirements. For
-- example: \`example.googleapis.com\`.
sclServiceName :: Lens' ServicesConfigsList Text
sclServiceName
  = lens _sclServiceName
      (\ s a -> s{_sclServiceName = a})

-- | The token of the page to retrieve.
sclPageToken :: Lens' ServicesConfigsList (Maybe Text)
sclPageToken
  = lens _sclPageToken (\ s a -> s{_sclPageToken = a})

-- | The max number of items to include in the response list. Page size is 50
-- if not specified. Maximum value is 100.
sclPageSize :: Lens' ServicesConfigsList (Maybe Int32)
sclPageSize
  = lens _sclPageSize (\ s a -> s{_sclPageSize = a}) .
      mapping _Coerce

-- | JSONP
sclCallback :: Lens' ServicesConfigsList (Maybe Text)
sclCallback
  = lens _sclCallback (\ s a -> s{_sclCallback = a})

instance GoogleRequest ServicesConfigsList where
        type Rs ServicesConfigsList =
             ListServiceConfigsResponse
        type Scopes ServicesConfigsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/service.management",
               "https://www.googleapis.com/auth/service.management.readonly"]
        requestClient ServicesConfigsList'{..}
          = go _sclServiceName _sclXgafv _sclUploadProtocol
              _sclAccessToken
              _sclUploadType
              _sclPageToken
              _sclPageSize
              _sclCallback
              (Just AltJSON)
              serviceManagementService
          where go
                  = buildClient
                      (Proxy :: Proxy ServicesConfigsListResource)
                      mempty
