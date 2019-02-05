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
-- Module      : Network.Google.Resource.Monitoring.Projects.Groups.Members.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the monitored resources that are members of a group.
--
-- /See:/ <https://cloud.google.com/monitoring/api/ Stackdriver Monitoring API Reference> for @monitoring.projects.groups.members.list@.
module Network.Google.Resource.Monitoring.Projects.Groups.Members.List
    (
    -- * REST Resource
      ProjectsGroupsMembersListResource

    -- * Creating a Request
    , projectsGroupsMembersList
    , ProjectsGroupsMembersList

    -- * Request Lenses
    , pgmlIntervalStartTime
    , pgmlXgafv
    , pgmlUploadProtocol
    , pgmlAccessToken
    , pgmlUploadType
    , pgmlName
    , pgmlFilter
    , pgmlPageToken
    , pgmlIntervalEndTime
    , pgmlPageSize
    , pgmlCallback
    ) where

import           Network.Google.Monitoring.Types
import           Network.Google.Prelude

-- | A resource alias for @monitoring.projects.groups.members.list@ method which the
-- 'ProjectsGroupsMembersList' request conforms to.
type ProjectsGroupsMembersListResource =
     "v3" :>
       Capture "name" Text :>
         "members" :>
           QueryParam "interval.startTime" DateTime' :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "filter" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "interval.endTime" DateTime' :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] ListGroupMembersResponse

-- | Lists the monitored resources that are members of a group.
--
-- /See:/ 'projectsGroupsMembersList' smart constructor.
data ProjectsGroupsMembersList = ProjectsGroupsMembersList'
    { _pgmlIntervalStartTime :: !(Maybe DateTime')
    , _pgmlXgafv             :: !(Maybe Xgafv)
    , _pgmlUploadProtocol    :: !(Maybe Text)
    , _pgmlAccessToken       :: !(Maybe Text)
    , _pgmlUploadType        :: !(Maybe Text)
    , _pgmlName              :: !Text
    , _pgmlFilter            :: !(Maybe Text)
    , _pgmlPageToken         :: !(Maybe Text)
    , _pgmlIntervalEndTime   :: !(Maybe DateTime')
    , _pgmlPageSize          :: !(Maybe (Textual Int32))
    , _pgmlCallback          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGroupsMembersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgmlIntervalStartTime'
--
-- * 'pgmlXgafv'
--
-- * 'pgmlUploadProtocol'
--
-- * 'pgmlAccessToken'
--
-- * 'pgmlUploadType'
--
-- * 'pgmlName'
--
-- * 'pgmlFilter'
--
-- * 'pgmlPageToken'
--
-- * 'pgmlIntervalEndTime'
--
-- * 'pgmlPageSize'
--
-- * 'pgmlCallback'
projectsGroupsMembersList
    :: Text -- ^ 'pgmlName'
    -> ProjectsGroupsMembersList
projectsGroupsMembersList pPgmlName_ =
    ProjectsGroupsMembersList'
    { _pgmlIntervalStartTime = Nothing
    , _pgmlXgafv = Nothing
    , _pgmlUploadProtocol = Nothing
    , _pgmlAccessToken = Nothing
    , _pgmlUploadType = Nothing
    , _pgmlName = pPgmlName_
    , _pgmlFilter = Nothing
    , _pgmlPageToken = Nothing
    , _pgmlIntervalEndTime = Nothing
    , _pgmlPageSize = Nothing
    , _pgmlCallback = Nothing
    }

-- | Optional. The beginning of the time interval. The default value for the
-- start time is the end time. The start time must not be later than the
-- end time.
pgmlIntervalStartTime :: Lens' ProjectsGroupsMembersList (Maybe UTCTime)
pgmlIntervalStartTime
  = lens _pgmlIntervalStartTime
      (\ s a -> s{_pgmlIntervalStartTime = a})
      . mapping _DateTime

-- | V1 error format.
pgmlXgafv :: Lens' ProjectsGroupsMembersList (Maybe Xgafv)
pgmlXgafv
  = lens _pgmlXgafv (\ s a -> s{_pgmlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pgmlUploadProtocol :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlUploadProtocol
  = lens _pgmlUploadProtocol
      (\ s a -> s{_pgmlUploadProtocol = a})

-- | OAuth access token.
pgmlAccessToken :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlAccessToken
  = lens _pgmlAccessToken
      (\ s a -> s{_pgmlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pgmlUploadType :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlUploadType
  = lens _pgmlUploadType
      (\ s a -> s{_pgmlUploadType = a})

-- | The group whose members are listed. The format is
-- \"projects\/{project_id_or_number}\/groups\/{group_id}\".
pgmlName :: Lens' ProjectsGroupsMembersList Text
pgmlName = lens _pgmlName (\ s a -> s{_pgmlName = a})

-- | An optional list filter describing the members to be returned. The
-- filter may reference the type, labels, and metadata of monitored
-- resources that comprise the group. For example, to return only resources
-- representing Compute Engine VM instances, use this filter: resource.type
-- = \"gce_instance\"
pgmlFilter :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlFilter
  = lens _pgmlFilter (\ s a -> s{_pgmlFilter = a})

-- | If this field is not empty then it must contain the nextPageToken value
-- returned by a previous call to this method. Using this field causes the
-- method to return additional results from the previous method call.
pgmlPageToken :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlPageToken
  = lens _pgmlPageToken
      (\ s a -> s{_pgmlPageToken = a})

-- | Required. The end of the time interval.
pgmlIntervalEndTime :: Lens' ProjectsGroupsMembersList (Maybe UTCTime)
pgmlIntervalEndTime
  = lens _pgmlIntervalEndTime
      (\ s a -> s{_pgmlIntervalEndTime = a})
      . mapping _DateTime

-- | A positive number that is the maximum number of results to return.
pgmlPageSize :: Lens' ProjectsGroupsMembersList (Maybe Int32)
pgmlPageSize
  = lens _pgmlPageSize (\ s a -> s{_pgmlPageSize = a})
      . mapping _Coerce

-- | JSONP
pgmlCallback :: Lens' ProjectsGroupsMembersList (Maybe Text)
pgmlCallback
  = lens _pgmlCallback (\ s a -> s{_pgmlCallback = a})

instance GoogleRequest ProjectsGroupsMembersList
         where
        type Rs ProjectsGroupsMembersList =
             ListGroupMembersResponse
        type Scopes ProjectsGroupsMembersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/monitoring",
               "https://www.googleapis.com/auth/monitoring.read"]
        requestClient ProjectsGroupsMembersList'{..}
          = go _pgmlName _pgmlIntervalStartTime _pgmlXgafv
              _pgmlUploadProtocol
              _pgmlAccessToken
              _pgmlUploadType
              _pgmlFilter
              _pgmlPageToken
              _pgmlIntervalEndTime
              _pgmlPageSize
              _pgmlCallback
              (Just AltJSON)
              monitoringService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsGroupsMembersListResource)
                      mempty
