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
-- Module      : Network.Google.Resource.ServiceUsage.Services.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all services available to the specified project, and the current
-- state of those services with respect to the project. The list includes
-- all public services, all services for which the calling user has the
-- \`servicemanagement.services.bind\` permission, and all services that
-- have already been enabled on the project. The list can be filtered to
-- only include services in a specific state, for example to only include
-- services enabled on the project.
--
-- /See:/ <https://cloud.google.com/service-usage/ Service Usage API Reference> for @serviceusage.services.list@.
module Network.Google.Resource.ServiceUsage.Services.List
    (
    -- * REST Resource
      ServicesListResource

    -- * Creating a Request
    , servicesList
    , ServicesList

    -- * Request Lenses
    , slParent
    , slXgafv
    , slUploadProtocol
    , slAccessToken
    , slUploadType
    , slFilter
    , slPageToken
    , slPageSize
    , slCallback
    ) where

import           Network.Google.Prelude
import           Network.Google.ServiceUsage.Types

-- | A resource alias for @serviceusage.services.list@ method which the
-- 'ServicesList' request conforms to.
type ServicesListResource =
     "v1" :>
       Capture "parent" Text :>
         "services" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListServicesResponse

-- | List all services available to the specified project, and the current
-- state of those services with respect to the project. The list includes
-- all public services, all services for which the calling user has the
-- \`servicemanagement.services.bind\` permission, and all services that
-- have already been enabled on the project. The list can be filtered to
-- only include services in a specific state, for example to only include
-- services enabled on the project.
--
-- /See:/ 'servicesList' smart constructor.
data ServicesList =
  ServicesList'
    { _slParent         :: !Text
    , _slXgafv          :: !(Maybe Xgafv)
    , _slUploadProtocol :: !(Maybe Text)
    , _slAccessToken    :: !(Maybe Text)
    , _slUploadType     :: !(Maybe Text)
    , _slFilter         :: !(Maybe Text)
    , _slPageToken      :: !(Maybe Text)
    , _slPageSize       :: !(Maybe (Textual Int32))
    , _slCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ServicesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'slParent'
--
-- * 'slXgafv'
--
-- * 'slUploadProtocol'
--
-- * 'slAccessToken'
--
-- * 'slUploadType'
--
-- * 'slFilter'
--
-- * 'slPageToken'
--
-- * 'slPageSize'
--
-- * 'slCallback'
servicesList
    :: Text -- ^ 'slParent'
    -> ServicesList
servicesList pSlParent_ =
  ServicesList'
    { _slParent = pSlParent_
    , _slXgafv = Nothing
    , _slUploadProtocol = Nothing
    , _slAccessToken = Nothing
    , _slUploadType = Nothing
    , _slFilter = Nothing
    , _slPageToken = Nothing
    , _slPageSize = Nothing
    , _slCallback = Nothing
    }

-- | Parent to search for services on. An example name would be:
-- \`projects\/123\` where \`123\` is the project number (not project ID).
slParent :: Lens' ServicesList Text
slParent = lens _slParent (\ s a -> s{_slParent = a})

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

-- | Only list services that conform to the given filter. The allowed filter
-- strings are \`state:ENABLED\` and \`state:DISABLED\`.
slFilter :: Lens' ServicesList (Maybe Text)
slFilter = lens _slFilter (\ s a -> s{_slFilter = a})

-- | Token identifying which result to start with, which is returned by a
-- previous list call.
slPageToken :: Lens' ServicesList (Maybe Text)
slPageToken
  = lens _slPageToken (\ s a -> s{_slPageToken = a})

-- | Requested size of the next page of data. Requested page size cannot
-- exceed 200. If not set, the default page size is 50.
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
               "https://www.googleapis.com/auth/cloud-platform.read-only"]
        requestClient ServicesList'{..}
          = go _slParent _slXgafv _slUploadProtocol
              _slAccessToken
              _slUploadType
              _slFilter
              _slPageToken
              _slPageSize
              _slCallback
              (Just AltJSON)
              serviceUsageService
          where go
                  = buildClient (Proxy :: Proxy ServicesListResource)
                      mempty
