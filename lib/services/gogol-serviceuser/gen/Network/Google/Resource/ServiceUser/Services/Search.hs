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
-- Module      : Network.Google.Resource.ServiceUser.Services.Search
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Search available services. When no filter is specified, returns all
-- accessible services. For authenticated users, also returns all services
-- the calling user has \"servicemanagement.services.bind\" permission for.
--
-- /See:/ <https://cloud.google.com/service-management/ Service User API Reference> for @serviceuser.services.search@.
module Network.Google.Resource.ServiceUser.Services.Search
    (
    -- * REST Resource
      ServicesSearchResource

    -- * Creating a Request
    , servicesSearch
    , ServicesSearch

    -- * Request Lenses
    , ssXgafv
    , ssUploadProtocol
    , ssAccessToken
    , ssUploadType
    , ssPageToken
    , ssPageSize
    , ssCallback
    ) where

import Network.Google.Prelude
import Network.Google.ServiceUser.Types

-- | A resource alias for @serviceuser.services.search@ method which the
-- 'ServicesSearch' request conforms to.
type ServicesSearchResource =
     "v1" :>
       "services:search" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SearchServicesResponse

-- | Search available services. When no filter is specified, returns all
-- accessible services. For authenticated users, also returns all services
-- the calling user has \"servicemanagement.services.bind\" permission for.
--
-- /See:/ 'servicesSearch' smart constructor.
data ServicesSearch =
  ServicesSearch'
    { _ssXgafv :: !(Maybe Xgafv)
    , _ssUploadProtocol :: !(Maybe Text)
    , _ssAccessToken :: !(Maybe Text)
    , _ssUploadType :: !(Maybe Text)
    , _ssPageToken :: !(Maybe Text)
    , _ssPageSize :: !(Maybe (Textual Int32))
    , _ssCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ServicesSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssXgafv'
--
-- * 'ssUploadProtocol'
--
-- * 'ssAccessToken'
--
-- * 'ssUploadType'
--
-- * 'ssPageToken'
--
-- * 'ssPageSize'
--
-- * 'ssCallback'
servicesSearch
    :: ServicesSearch
servicesSearch =
  ServicesSearch'
    { _ssXgafv = Nothing
    , _ssUploadProtocol = Nothing
    , _ssAccessToken = Nothing
    , _ssUploadType = Nothing
    , _ssPageToken = Nothing
    , _ssPageSize = Nothing
    , _ssCallback = Nothing
    }


-- | V1 error format.
ssXgafv :: Lens' ServicesSearch (Maybe Xgafv)
ssXgafv = lens _ssXgafv (\ s a -> s{_ssXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ssUploadProtocol :: Lens' ServicesSearch (Maybe Text)
ssUploadProtocol
  = lens _ssUploadProtocol
      (\ s a -> s{_ssUploadProtocol = a})

-- | OAuth access token.
ssAccessToken :: Lens' ServicesSearch (Maybe Text)
ssAccessToken
  = lens _ssAccessToken
      (\ s a -> s{_ssAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ssUploadType :: Lens' ServicesSearch (Maybe Text)
ssUploadType
  = lens _ssUploadType (\ s a -> s{_ssUploadType = a})

-- | Token identifying which result to start with; returned by a previous
-- list call.
ssPageToken :: Lens' ServicesSearch (Maybe Text)
ssPageToken
  = lens _ssPageToken (\ s a -> s{_ssPageToken = a})

-- | Requested size of the next page of data.
ssPageSize :: Lens' ServicesSearch (Maybe Int32)
ssPageSize
  = lens _ssPageSize (\ s a -> s{_ssPageSize = a}) .
      mapping _Coerce

-- | JSONP
ssCallback :: Lens' ServicesSearch (Maybe Text)
ssCallback
  = lens _ssCallback (\ s a -> s{_ssCallback = a})

instance GoogleRequest ServicesSearch where
        type Rs ServicesSearch = SearchServicesResponse
        type Scopes ServicesSearch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ServicesSearch'{..}
          = go _ssXgafv _ssUploadProtocol _ssAccessToken
              _ssUploadType
              _ssPageToken
              _ssPageSize
              _ssCallback
              (Just AltJSON)
              serviceUserService
          where go
                  = buildClient (Proxy :: Proxy ServicesSearchResource)
                      mempty
