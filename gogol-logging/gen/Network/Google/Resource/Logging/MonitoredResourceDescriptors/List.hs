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
-- Lists monitored resource descriptors that are used by Cloud Logging.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Google Cloud Logging API Reference> for @logging.monitoredResourceDescriptors.list@.
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
    , mrdlPp
    , mrdlAccessToken
    , mrdlUploadType
    , mrdlBearerToken
    , mrdlPageToken
    , mrdlPageSize
    , mrdlCallback
    ) where

import           Network.Google.Logging.Types
import           Network.Google.Prelude

-- | A resource alias for @logging.monitoredResourceDescriptors.list@ method which the
-- 'MonitoredResourceDescriptorsList' request conforms to.
type MonitoredResourceDescriptorsListResource =
     "v2beta1" :>
       "monitoredResourceDescriptors" :>
         QueryParam "$.xgafv" Text :>
           QueryParam "upload_protocol" Text :>
             QueryParam "pp" Bool :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "bearer_token" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON]
                               ListMonitoredResourceDescriptorsResponse

-- | Lists monitored resource descriptors that are used by Cloud Logging.
--
-- /See:/ 'monitoredResourceDescriptorsList' smart constructor.
data MonitoredResourceDescriptorsList = MonitoredResourceDescriptorsList
    { _mrdlXgafv          :: !(Maybe Text)
    , _mrdlUploadProtocol :: !(Maybe Text)
    , _mrdlPp             :: !Bool
    , _mrdlAccessToken    :: !(Maybe Text)
    , _mrdlUploadType     :: !(Maybe Text)
    , _mrdlBearerToken    :: !(Maybe Text)
    , _mrdlPageToken      :: !(Maybe Text)
    , _mrdlPageSize       :: !(Maybe (Textual Int32))
    , _mrdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MonitoredResourceDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdlXgafv'
--
-- * 'mrdlUploadProtocol'
--
-- * 'mrdlPp'
--
-- * 'mrdlAccessToken'
--
-- * 'mrdlUploadType'
--
-- * 'mrdlBearerToken'
--
-- * 'mrdlPageToken'
--
-- * 'mrdlPageSize'
--
-- * 'mrdlCallback'
monitoredResourceDescriptorsList
    :: MonitoredResourceDescriptorsList
monitoredResourceDescriptorsList =
    MonitoredResourceDescriptorsList
    { _mrdlXgafv = Nothing
    , _mrdlUploadProtocol = Nothing
    , _mrdlPp = True
    , _mrdlAccessToken = Nothing
    , _mrdlUploadType = Nothing
    , _mrdlBearerToken = Nothing
    , _mrdlPageToken = Nothing
    , _mrdlPageSize = Nothing
    , _mrdlCallback = Nothing
    }

-- | V1 error format.
mrdlXgafv :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlXgafv
  = lens _mrdlXgafv (\ s a -> s{_mrdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mrdlUploadProtocol :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlUploadProtocol
  = lens _mrdlUploadProtocol
      (\ s a -> s{_mrdlUploadProtocol = a})

-- | Pretty-print response.
mrdlPp :: Lens' MonitoredResourceDescriptorsList Bool
mrdlPp = lens _mrdlPp (\ s a -> s{_mrdlPp = a})

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

-- | OAuth bearer token.
mrdlBearerToken :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlBearerToken
  = lens _mrdlBearerToken
      (\ s a -> s{_mrdlBearerToken = a})

-- | Optional. If the \`pageToken\` request parameter is supplied, then the
-- next page of results in the set are retrieved. The \`pageToken\`
-- parameter must be set with the value of the \`nextPageToken\` result
-- parameter from the previous request.
mrdlPageToken :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlPageToken
  = lens _mrdlPageToken
      (\ s a -> s{_mrdlPageToken = a})

-- | Optional. The maximum number of results to return from this request.
-- Fewer results might be returned. You must check for the
-- \`nextPageToken\` result to determine if additional results are
-- available, which you can retrieve by passing the \`nextPageToken\` value
-- in the \`pageToken\` parameter to the next request.
mrdlPageSize :: Lens' MonitoredResourceDescriptorsList (Maybe Int32)
mrdlPageSize
  = lens _mrdlPageSize (\ s a -> s{_mrdlPageSize = a})
      . mapping _Coerce

-- | JSONP
mrdlCallback :: Lens' MonitoredResourceDescriptorsList (Maybe Text)
mrdlCallback
  = lens _mrdlCallback (\ s a -> s{_mrdlCallback = a})

instance GoogleRequest
         MonitoredResourceDescriptorsList where
        type Rs MonitoredResourceDescriptorsList =
             ListMonitoredResourceDescriptorsResponse
        requestClient MonitoredResourceDescriptorsList{..}
          = go _mrdlXgafv _mrdlUploadProtocol (Just _mrdlPp)
              _mrdlAccessToken
              _mrdlUploadType
              _mrdlBearerToken
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
