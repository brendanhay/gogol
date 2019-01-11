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
-- Module      : Network.Google.Resource.Monitoring.Projects.NotificationChannels.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the notification channels that have been created for the project.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.notificationChannels.list@.
module Network.Google.Resource.Monitoring.Projects.NotificationChannels.List
    (
    -- * REST Resource
      ProjectsNotificationChannelsListResource

    -- * Creating a Request
    , projectsNotificationChannelsList
    , ProjectsNotificationChannelsList

    -- * Request Lenses
    , pnclXgafv
    , pnclUploadProtocol
    , pnclOrderBy
    , pnclAccessToken
    , pnclUploadType
    , pnclName
    , pnclFilter
    , pnclPageToken
    , pnclPageSize
    , pnclCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.notificationChannels.list@ method which the
-- 'ProjectsNotificationChannelsList' request conforms to.
type ProjectsNotificationChannelsListResource =
     "v3" :>
       Capture "name" Text :>
         "notificationChannels" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "orderBy" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListNotificationChannelsResponse

-- | Lists the notification channels that have been created for the project.
--
-- /See:/ 'projectsNotificationChannelsList' smart constructor.
data ProjectsNotificationChannelsList = ProjectsNotificationChannelsList'
    { _pnclXgafv          :: !(Maybe Xgafv)
    , _pnclUploadProtocol :: !(Maybe Text)
    , _pnclOrderBy        :: !(Maybe Text)
    , _pnclAccessToken    :: !(Maybe Text)
    , _pnclUploadType     :: !(Maybe Text)
    , _pnclName           :: !Text
    , _pnclFilter         :: !(Maybe Text)
    , _pnclPageToken      :: !(Maybe Text)
    , _pnclPageSize       :: !(Maybe (Textual Int32))
    , _pnclCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsNotificationChannelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnclXgafv'
--
-- * 'pnclUploadProtocol'
--
-- * 'pnclOrderBy'
--
-- * 'pnclAccessToken'
--
-- * 'pnclUploadType'
--
-- * 'pnclName'
--
-- * 'pnclFilter'
--
-- * 'pnclPageToken'
--
-- * 'pnclPageSize'
--
-- * 'pnclCallback'
projectsNotificationChannelsList
    :: Text -- ^ 'pnclName'
    -> ProjectsNotificationChannelsList
projectsNotificationChannelsList pPnclName_ =
    ProjectsNotificationChannelsList'
    { _pnclXgafv = Nothing
    , _pnclUploadProtocol = Nothing
    , _pnclOrderBy = Nothing
    , _pnclAccessToken = Nothing
    , _pnclUploadType = Nothing
    , _pnclName = pPnclName_
    , _pnclFilter = Nothing
    , _pnclPageToken = Nothing
    , _pnclPageSize = Nothing
    , _pnclCallback = Nothing
    }

-- | V1 error format.
pnclXgafv :: Lens' ProjectsNotificationChannelsList (Maybe Xgafv)
pnclXgafv
  = lens _pnclXgafv (\ s a -> s{_pnclXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pnclUploadProtocol :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclUploadProtocol
  = lens _pnclUploadProtocol
      (\ s a -> s{_pnclUploadProtocol = a})

-- | A comma-separated list of fields by which to sort the result. Supports
-- the same set of fields as in filter. Entries can be prefixed with a
-- minus sign to sort in descending rather than ascending order.For more
-- details, see sorting and filtering.
pnclOrderBy :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclOrderBy
  = lens _pnclOrderBy (\ s a -> s{_pnclOrderBy = a})

-- | OAuth access token.
pnclAccessToken :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclAccessToken
  = lens _pnclAccessToken
      (\ s a -> s{_pnclAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pnclUploadType :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclUploadType
  = lens _pnclUploadType
      (\ s a -> s{_pnclUploadType = a})

-- | The project on which to execute the request. The format is
-- projects\/[PROJECT_ID]. That is, this names the container in which to
-- look for the notification channels; it does not name a specific channel.
-- To query a specific channel by REST resource name, use the
-- GetNotificationChannel operation.
pnclName :: Lens' ProjectsNotificationChannelsList Text
pnclName = lens _pnclName (\ s a -> s{_pnclName = a})

-- | If provided, this field specifies the criteria that must be met by
-- notification channels to be included in the response.For more details,
-- see sorting and filtering.
pnclFilter :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclFilter
  = lens _pnclFilter (\ s a -> s{_pnclFilter = a})

-- | If non-empty, page_token must contain a value returned as the
-- next_page_token in a previous response to request the next set of
-- results.
pnclPageToken :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclPageToken
  = lens _pnclPageToken
      (\ s a -> s{_pnclPageToken = a})

-- | The maximum number of results to return in a single response. If not set
-- to a positive number, a reasonable value will be chosen by the service.
pnclPageSize :: Lens' ProjectsNotificationChannelsList (Maybe Int32)
pnclPageSize
  = lens _pnclPageSize (\ s a -> s{_pnclPageSize = a})
      . mapping _Coerce

-- | JSONP
pnclCallback :: Lens' ProjectsNotificationChannelsList (Maybe Text)
pnclCallback
  = lens _pnclCallback (\ s a -> s{_pnclCallback = a})

instance GoogleRequest
         ProjectsNotificationChannelsList where
        type Rs ProjectsNotificationChannelsList =
             ListNotificationChannelsResponse
        type Scopes ProjectsNotificationChannelsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsNotificationChannelsList'{..}
          = go _pnclName _pnclXgafv _pnclUploadProtocol
              _pnclOrderBy
              _pnclAccessToken
              _pnclUploadType
              _pnclFilter
              _pnclPageToken
              _pnclPageSize
              _pnclCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ProjectsNotificationChannelsListResource)
                      mempty
