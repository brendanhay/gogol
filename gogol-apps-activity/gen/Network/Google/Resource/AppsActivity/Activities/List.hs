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
-- Module      : Network.Google.Resource.AppsActivity.Activities.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of activities visible to the current logged in user.
-- Visible activities are determined by the visibility settings of the
-- object that was acted on, e.g. Drive files a user can see. An activity
-- is a record of past events. Multiple events may be merged if they are
-- similar. A request is scoped to activities from a given Google service
-- using the source parameter.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Drive Activity API Reference> for @appsactivity.activities.list@.
module Network.Google.Resource.AppsActivity.Activities.List
    (
    -- * REST Resource
      ActivitiesListResource

    -- * Creating a Request
    , activitiesList
    , ActivitiesList

    -- * Request Lenses
    , alDriveFileId
    , alDriveAncestorId
    , alGroupingStrategy
    , alUserId
    , alSource
    , alPageToken
    , alPageSize
    ) where

import Network.Google.AppsActivity.Types
import Network.Google.Prelude

-- | A resource alias for @appsactivity.activities.list@ method which the
-- 'ActivitiesList' request conforms to.
type ActivitiesListResource =
     "appsactivity" :>
       "v1" :>
         "activities" :>
           QueryParam "drive.fileId" Text :>
             QueryParam "drive.ancestorId" Text :>
               QueryParam "groupingStrategy"
                 ActivitiesListGroupingStrategy
                 :>
                 QueryParam "userId" Text :>
                   QueryParam "source" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListActivitiesResponse

-- | Returns a list of activities visible to the current logged in user.
-- Visible activities are determined by the visibility settings of the
-- object that was acted on, e.g. Drive files a user can see. An activity
-- is a record of past events. Multiple events may be merged if they are
-- similar. A request is scoped to activities from a given Google service
-- using the source parameter.
--
-- /See:/ 'activitiesList' smart constructor.
data ActivitiesList =
  ActivitiesList'
    { _alDriveFileId :: !(Maybe Text)
    , _alDriveAncestorId :: !(Maybe Text)
    , _alGroupingStrategy :: !ActivitiesListGroupingStrategy
    , _alUserId :: !Text
    , _alSource :: !(Maybe Text)
    , _alPageToken :: !(Maybe Text)
    , _alPageSize :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActivitiesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alDriveFileId'
--
-- * 'alDriveAncestorId'
--
-- * 'alGroupingStrategy'
--
-- * 'alUserId'
--
-- * 'alSource'
--
-- * 'alPageToken'
--
-- * 'alPageSize'
activitiesList
    :: ActivitiesList
activitiesList =
  ActivitiesList'
    { _alDriveFileId = Nothing
    , _alDriveAncestorId = Nothing
    , _alGroupingStrategy = DriveUi
    , _alUserId = "me"
    , _alSource = Nothing
    , _alPageToken = Nothing
    , _alPageSize = 50
    }


-- | Identifies the Drive item to return activities for.
alDriveFileId :: Lens' ActivitiesList (Maybe Text)
alDriveFileId
  = lens _alDriveFileId
      (\ s a -> s{_alDriveFileId = a})

-- | Identifies the Drive folder containing the items for which to return
-- activities.
alDriveAncestorId :: Lens' ActivitiesList (Maybe Text)
alDriveAncestorId
  = lens _alDriveAncestorId
      (\ s a -> s{_alDriveAncestorId = a})

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
alGroupingStrategy :: Lens' ActivitiesList ActivitiesListGroupingStrategy
alGroupingStrategy
  = lens _alGroupingStrategy
      (\ s a -> s{_alGroupingStrategy = a})

-- | The ID used for ACL checks (does not filter the resulting event list by
-- the assigned value). Use the special value me to indicate the currently
-- authenticated user.
alUserId :: Lens' ActivitiesList Text
alUserId = lens _alUserId (\ s a -> s{_alUserId = a})

-- | The Google service from which to return activities. Possible values of
-- source are: - drive.google.com
alSource :: Lens' ActivitiesList (Maybe Text)
alSource = lens _alSource (\ s a -> s{_alSource = a})

-- | A token to retrieve a specific page of results.
alPageToken :: Lens' ActivitiesList (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | The maximum number of events to return on a page. The response includes
-- a continuation token if there are more events.
alPageSize :: Lens' ActivitiesList Int32
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a}) .
      _Coerce

instance GoogleRequest ActivitiesList where
        type Rs ActivitiesList = ListActivitiesResponse
        type Scopes ActivitiesList =
             '["https://www.googleapis.com/auth/activity"]
        requestClient ActivitiesList'{..}
          = go _alDriveFileId _alDriveAncestorId
              (Just _alGroupingStrategy)
              (Just _alUserId)
              _alSource
              _alPageToken
              (Just _alPageSize)
              (Just AltJSON)
              appsActivityService
          where go
                  = buildClient (Proxy :: Proxy ActivitiesListResource)
                      mempty
