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
-- Module      : Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the descriptors for monitored resource types used by Logging.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.monitoredResourceDescriptors.list@.
module Network.Google.Resource.Logging.MonitoredResourceDescriptors.List
    (
    -- * REST Resource
      MonitoredResourceDescriptorsListResource

    -- * Creating a Request
    , monitoredResourceDescriptorsList
    , MonitoredResourceDescriptorsList

    -- * Request Lenses
    , mrdlXgafv
    , mrdlUploadProtocol
    , mrdlAccessToken
    , mrdlUploadType
    , mrdlPageToken
    , mrdlPageSize
    , mrdlCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.monitoredResourceDescriptors.list@ method which the
-- 'MonitoredResourceDescriptorsList' request conforms to.
type MonitoredResourceDescriptorsListResource =
     "v2" :>
       "monitoredResourceDescriptors" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] ListMonitoredResourceDescriptorsResponse

-- | Lists the descriptors for monitored resource types used by Logging.
--
-- /See:/ 'monitoredResourceDescriptorsList' smart constructor.
data MonitoredResourceDescriptorsList =
  MonitoredResourceDescriptorsList'
    { _mrdlXgafv :: !(Maybe Xgafv)
    , _mrdlUploadProtocol :: !(Maybe Text)
    , _mrdlAccessToken :: !(Maybe Text)
    , _mrdlUploadType :: !(Maybe Text)
    , _mrdlPageToken :: !(Maybe Text)
    , _mrdlPageSize :: !(Maybe (Textual Int32))
    , _mrdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MonitoredResourceDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdlXgafv'
--
-- * 'mrdlUploadProtocol'
--
-- * 'mrdlAccessToken'
--
-- * 'mrdlUploadType'
--
-- * 'mrdlPageToken'
--
-- * 'mrdlPageSize'
--
-- * 'mrdlCallback'
monitoredResourceDescriptorsList
    :: MonitoredResourceDescriptorsList
monitoredResourceDescriptorsList =
  MonitoredResourceDescriptorsList'
    { _mrdlXgafv = Nothing
    , _mrdlUploadProtocol = Nothing
    , _mrdlAccessToken = Nothing
    , _mrdlUploadType = Nothing
    , _mrdlPageToken = Nothing
    , _mrdlPageSize = Nothing
    , _mrdlCallback = Nothing
    }


-- | V1 error format.
mrdlXgafv :: Lens' MonitoredResourceDescriptorsList (Maybe Xgafv)
mrdlXgafv
  = lens _mrdlXgafv (\ s a -> s{_mrdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mrdlUploadProtocol :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlUploadProtocol
  = lens _mrdlUploadProtocol
      (\ s a -> s{_mrdlUploadProtocol = a})

-- | OAuth access token.
mrdlAccessToken :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlAccessToken
  = lens _mrdlAccessToken
      (\ s a -> s{_mrdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mrdlUploadType :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlUploadType
  = lens _mrdlUploadType
      (\ s a -> s{_mrdlUploadType = a})

-- | Optional. If present, then retrieve the next batch of results from the
-- preceding call to this method. pageToken must be the value of
-- nextPageToken from the previous response. The values of other method
-- parameters should be identical to those in the previous call.
mrdlPageToken :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlPageToken
  = lens _mrdlPageToken
      (\ s a -> s{_mrdlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Non-positive values are ignored. The presence of nextPageToken in the
-- response indicates that more results might be available.
mrdlPageSize :: Lens' MonitoredResourceDescriptorsList (Maybe Int32)
mrdlPageSize
  = lens _mrdlPageSize (\ s a -> s{_mrdlPageSize = a})
      . mapping _Coerce

-- | JSONP
mrdlCallback :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlCallback
  = lens _mrdlCallback (\ s a -> s{_mrdlCallback = a})

instance GoogleRequest
           MonitoredResourceDescriptorsList
         where
        type Rs MonitoredResourceDescriptorsList =
             ListMonitoredResourceDescriptorsResponse
        type Scopes MonitoredResourceDescriptorsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient MonitoredResourceDescriptorsList'{..}
          = go _mrdlXgafv _mrdlUploadProtocol _mrdlAccessToken
              _mrdlUploadType
              _mrdlPageToken
              _mrdlPageSize
              _mrdlCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy MonitoredResourceDescriptorsListResource)
                      mempty
