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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the descriptors for supported channel types. The use of
-- descriptors makes it possible for new channel types to be dynamically
-- added.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Cloud Monitoring API Reference> for @monitoring.projects.notificationChannelDescriptors.list@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannelDescriptors.List
    (
    -- * REST Resource
      ProjectsNotificationChannelDescriptorsListResource

    -- * Creating a Request
    , projectsNotificationChannelDescriptorsList
    , ProjectsNotificationChannelDescriptorsList

    -- * Request Lenses
    , pncdlXgafv
    , pncdlUploadProtocol
    , pncdlAccessToken
    , pncdlUploadType
    , pncdlName
    , pncdlPageToken
    , pncdlPageSize
    , pncdlCallback
    ) where

import Network.Google.Monitoring.Types
import Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannelDescriptors.list@ method which the
-- 'ProjectsNotificationChannelDescriptorsList' request conforms to.
type ProjectsNotificationChannelDescriptorsListResource
     =
     "v3" :>
       Capture "name" Text :>
         "notificationChannelDescriptors" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON]
                             ListNotificationChannelDescriptorsResponse

-- | Lists the descriptors for supported channel types. The use of
-- descriptors makes it possible for new channel types to be dynamically
-- added.
--
-- /See:/ 'projectsNotificationChannelDescriptorsList' smart constructor.
data ProjectsNotificationChannelDescriptorsList =
  ProjectsNotificationChannelDescriptorsList'
    { _pncdlXgafv :: !(Maybe Xgafv)
    , _pncdlUploadProtocol :: !(Maybe Text)
    , _pncdlAccessToken :: !(Maybe Text)
    , _pncdlUploadType :: !(Maybe Text)
    , _pncdlName :: !Text
    , _pncdlPageToken :: !(Maybe Text)
    , _pncdlPageSize :: !(Maybe (Textual Int32))
    , _pncdlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsNotificationChannelDescriptorsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pncdlXgafv'
--
-- * 'pncdlUploadProtocol'
--
-- * 'pncdlAccessToken'
--
-- * 'pncdlUploadType'
--
-- * 'pncdlName'
--
-- * 'pncdlPageToken'
--
-- * 'pncdlPageSize'
--
-- * 'pncdlCallback'
projectsNotificationChannelDescriptorsList
    :: Text -- ^ 'pncdlName'
    -> ProjectsNotificationChannelDescriptorsList
projectsNotificationChannelDescriptorsList pPncdlName_ =
  ProjectsNotificationChannelDescriptorsList'
    { _pncdlXgafv = Nothing
    , _pncdlUploadProtocol = Nothing
    , _pncdlAccessToken = Nothing
    , _pncdlUploadType = Nothing
    , _pncdlName = pPncdlName_
    , _pncdlPageToken = Nothing
    , _pncdlPageSize = Nothing
    , _pncdlCallback = Nothing
    }


-- | V1 error format.
pncdlXgafv :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Xgafv)
pncdlXgafv
  = lens _pncdlXgafv (\ s a -> s{_pncdlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pncdlUploadProtocol :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Text)
pncdlUploadProtocol
  = lens _pncdlUploadProtocol
      (\ s a -> s{_pncdlUploadProtocol = a})

-- | OAuth access token.
pncdlAccessToken :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Text)
pncdlAccessToken
  = lens _pncdlAccessToken
      (\ s a -> s{_pncdlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pncdlUploadType :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Text)
pncdlUploadType
  = lens _pncdlUploadType
      (\ s a -> s{_pncdlUploadType = a})

-- | Required. The REST resource name of the parent from which to retrieve
-- the notification channel descriptors. The expected syntax is:
-- projects\/[PROJECT_ID_OR_NUMBER] Note that this names
-- (https:\/\/cloud.google.com\/monitoring\/api\/v3#project_name) the
-- parent container in which to look for the descriptors; to retrieve a
-- single descriptor by name, use the GetNotificationChannelDescriptor
-- operation, instead.
pncdlName :: Lens' ProjectsNotificationChannelDescriptorsList Text
pncdlName
  = lens _pncdlName (\ s a -> s{_pncdlName = a})

-- | If non-empty, page_token must contain a value returned as the
-- next_page_token in a previous response to request the next set of
-- results.
pncdlPageToken :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Text)
pncdlPageToken
  = lens _pncdlPageToken
      (\ s a -> s{_pncdlPageToken = a})

-- | The maximum number of results to return in a single response. If not set
-- to a positive number, a reasonable value will be chosen by the service.
pncdlPageSize :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Int32)
pncdlPageSize
  = lens _pncdlPageSize
      (\ s a -> s{_pncdlPageSize = a})
      . mapping _Coerce

-- | JSONP
pncdlCallback :: Lens' ProjectsNotificationChannelDescriptorsList (Maybe Text)
pncdlCallback
  = lens _pncdlCallback
      (\ s a -> s{_pncdlCallback = a})

instance GoogleRequest
           ProjectsNotificationChannelDescriptorsList
         where
        type Rs ProjectsNotificationChannelDescriptorsList =
             ListNotificationChannelDescriptorsResponse
        type Scopes
               ProjectsNotificationChannelDescriptorsList
             =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient
          ProjectsNotificationChannelDescriptorsList'{..}
          = go _pncdlName _pncdlXgafv _pncdlUploadProtocol
              _pncdlAccessToken
              _pncdlUploadType
              _pncdlPageToken
              _pncdlPageSize
              _pncdlCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsNotificationChannelDescriptorsListResource)
                      mempty
