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
-- Module      : Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists monitored resource descriptors that match a filter.
--
-- /See:/ <https://cloud.google.com/monitoring/alpha/ Google Monitoring API Reference> for @monitoring.projects.monitoredResourceDescriptors.list@.
module Network.Google.Resource.Monitoring.Projects.MonitoredResourceDescriptors.List
    (
    -- * REST Resource
      ProjectsMonitoredResourceDescriptorsListResource

    -- * Creating a Request
    , projectsMonitoredResourceDescriptorsList
    , ProjectsMonitoredResourceDescriptorsList

    -- * Request Lenses
    , pmrdlXgafv
    , pmrdlUploadProtocol
    , pmrdlPp
    , pmrdlAccessToken
    , pmrdlUploadType
    , pmrdlBearerToken
    , pmrdlName
    , pmrdlFilter
    , pmrdlPageToken
    , pmrdlPageSize
    , pmrdlCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.monitoredResourceDescriptors.list@ method which the
-- 'ProjectsMonitoredResourceDescriptorsList' request conforms to.
type ProjectsMonitoredResourceDescriptorsListResource
     =
     "v3" :>
       Capture "name" Text :>
         "monitoredResourceDescriptors" :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "filter" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON]
                                   ListMonitoredResourceDescriptorsResponse

-- | Lists monitored resource descriptors that match a filter.
--
-- /See:/ 'projectsMonitoredResourceDescriptorsList' smart constructor.
data ProjectsMonitoredResourceDescriptorsList = ProjectsMonitoredResourceDescriptorsList'
    { _pmrdlXgafv          :: !(Maybe Text)
    , _pmrdlUploadProtocol :: !(Maybe Text)
    , _pmrdlPp             :: !Bool
    , _pmrdlAccessToken    :: !(Maybe Text)
    , _pmrdlUploadType     :: !(Maybe Text)
    , _pmrdlBearerToken    :: !(Maybe Text)
    , _pmrdlName           :: !Text
    , _pmrdlFilter         :: !(Maybe Text)
    , _pmrdlPageToken      :: !(Maybe Text)
    , _pmrdlPageSize       :: !(Maybe (Textual Int32))
    , _pmrdlCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMonitoredResourceDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmrdlXgafv'
--
-- * 'pmrdlUploadProtocol'
--
-- * 'pmrdlPp'
--
-- * 'pmrdlAccessToken'
--
-- * 'pmrdlUploadType'
--
-- * 'pmrdlBearerToken'
--
-- * 'pmrdlName'
--
-- * 'pmrdlFilter'
--
-- * 'pmrdlPageToken'
--
-- * 'pmrdlPageSize'
--
-- * 'pmrdlCallback'
projectsMonitoredResourceDescriptorsList
    :: Text -- ^ 'pmrdlName'
    -> ProjectsMonitoredResourceDescriptorsList
projectsMonitoredResourceDescriptorsList pPmrdlName_ =
    ProjectsMonitoredResourceDescriptorsList'
    { _pmrdlXgafv = Nothing
    , _pmrdlUploadProtocol = Nothing
    , _pmrdlPp = True
    , _pmrdlAccessToken = Nothing
    , _pmrdlUploadType = Nothing
    , _pmrdlBearerToken = Nothing
    , _pmrdlName = pPmrdlName_
    , _pmrdlFilter = Nothing
    , _pmrdlPageToken = Nothing
    , _pmrdlPageSize = Nothing
    , _pmrdlCallback = Nothing
    }

-- | V1 error format.
pmrdlXgafv :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlXgafv
  = lens _pmrdlXgafv (\ s a -> s{_pmrdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pmrdlUploadProtocol :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlUploadProtocol
  = lens _pmrdlUploadProtocol
      (\ s a -> s{_pmrdlUploadProtocol = a})

-- | Pretty-print response.
pmrdlPp :: Lens' ProjectsMonitoredResourceDescriptorsList Bool
pmrdlPp = lens _pmrdlPp (\ s a -> s{_pmrdlPp = a})

-- | OAuth access token.
pmrdlAccessToken :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlAccessToken
  = lens _pmrdlAccessToken
      (\ s a -> s{_pmrdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pmrdlUploadType :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlUploadType
  = lens _pmrdlUploadType
      (\ s a -> s{_pmrdlUploadType = a})

-- | OAuth bearer token.
pmrdlBearerToken :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlBearerToken
  = lens _pmrdlBearerToken
      (\ s a -> s{_pmrdlBearerToken = a})

-- | The project on which to execute the request. The format is
-- \`\"projects\/ \"\`.
pmrdlName :: Lens' ProjectsMonitoredResourceDescriptorsList Text
pmrdlName
  = lens _pmrdlName (\ s a -> s{_pmrdlName = a})

-- | An optional [filter](\/monitoring\/api\/v3\/filters) describing the
-- descriptors to be returned. The filter can reference the descriptor\'s
-- type and labels. For example, the following filter returns only Google
-- Compute Engine descriptors that have an \`id\` label: resource.type =
-- starts_with(\"gce_\") AND resource.label:id
pmrdlFilter :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlFilter
  = lens _pmrdlFilter (\ s a -> s{_pmrdlFilter = a})

-- | If this field is not empty then it must contain the \`nextPageToken\`
-- value returned by a previous call to this method. Using this field
-- causes the method to return additional results from the previous method
-- call.
pmrdlPageToken :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlPageToken
  = lens _pmrdlPageToken
      (\ s a -> s{_pmrdlPageToken = a})

-- | A positive number that is the maximum number of results to return.
pmrdlPageSize :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Int32)
pmrdlPageSize
  = lens _pmrdlPageSize
      (\ s a -> s{_pmrdlPageSize = a})
      . mapping _Coerce

-- | JSONP
pmrdlCallback :: Lens' ProjectsMonitoredResourceDescriptorsList (Maybe Text)
pmrdlCallback
  = lens _pmrdlCallback
      (\ s a -> s{_pmrdlCallback = a})

instance GoogleRequest
         ProjectsMonitoredResourceDescriptorsList where
        type Rs ProjectsMonitoredResourceDescriptorsList =
             ListMonitoredResourceDescriptorsResponse
        type Scopes ProjectsMonitoredResourceDescriptorsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read",
               "https://www.googleapis.com/auth/monitoring.write"]
        requestClient
          ProjectsMonitoredResourceDescriptorsList'{..}
          = go _pmrdlName _pmrdlXgafv _pmrdlUploadProtocol
              (Just _pmrdlPp)
              _pmrdlAccessToken
              _pmrdlUploadType
              _pmrdlBearerToken
              _pmrdlFilter
              _pmrdlPageToken
              _pmrdlPageSize
              _pmrdlCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsMonitoredResourceDescriptorsListResource)
                      mempty
