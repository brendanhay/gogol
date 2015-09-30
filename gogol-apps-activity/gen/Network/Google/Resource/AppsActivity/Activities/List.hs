{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AppsActivity.Activities.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of activities visible to the current logged in user.
-- Visible activities are determined by the visiblity settings of the
-- object that was acted on, e.g. Drive files a user can see. An activity
-- is a record of past events. Multiple events may be merged if they are
-- similar. A request is scoped to activities from a given Google service
-- using the source parameter.
--
-- /See:/ <https://developers.google.com/google-apps/activity/ Google Apps Activity API Reference> for @AppsactivityActivitiesList@.
module AppsActivity.Activities.List
    (
    -- * REST Resource
      ActivitiesListAPI

    -- * Creating a Request
    , activitiesList
    , ActivitiesList

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alDriveFileId
    , alDriveAncestorId
    , alGroupingStrategy
    , alUserId
    , alKey
    , alSource
    , alPageToken
    , alOauthToken
    , alPageSize
    , alFields
    , alAlt
    ) where

import           Network.Google.AppsActivity.Types
import           Network.Google.Prelude

-- | A resource alias for @AppsactivityActivitiesList@ which the
-- 'ActivitiesList' request conforms to.
type ActivitiesListAPI =
     "activities" :>
       QueryParam "drive.fileId" Text :>
         QueryParam "drive.ancestorId" Text :>
           QueryParam "groupingStrategy" Text :>
             QueryParam "userId" Text :>
               QueryParam "source" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "pageSize" Int32 :>
                     Get '[JSON] ListActivitiesResponse

-- | Returns a list of activities visible to the current logged in user.
-- Visible activities are determined by the visiblity settings of the
-- object that was acted on, e.g. Drive files a user can see. An activity
-- is a record of past events. Multiple events may be merged if they are
-- similar. A request is scoped to activities from a given Google service
-- using the source parameter.
--
-- /See:/ 'activitiesList' smart constructor.
data ActivitiesList = ActivitiesList
    { _alQuotaUser        :: !(Maybe Text)
    , _alPrettyPrint      :: !Bool
    , _alUserIp           :: !(Maybe Text)
    , _alDriveFileId      :: !(Maybe Text)
    , _alDriveAncestorId  :: !(Maybe Text)
    , _alGroupingStrategy :: !Text
    , _alUserId           :: !Text
    , _alKey              :: !(Maybe Text)
    , _alSource           :: !(Maybe Text)
    , _alPageToken        :: !(Maybe Text)
    , _alOauthToken       :: !(Maybe Text)
    , _alPageSize         :: !Int32
    , _alFields           :: !(Maybe Text)
    , _alAlt              :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActivitiesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alDriveFileId'
--
-- * 'alDriveAncestorId'
--
-- * 'alGroupingStrategy'
--
-- * 'alUserId'
--
-- * 'alKey'
--
-- * 'alSource'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alPageSize'
--
-- * 'alFields'
--
-- * 'alAlt'
activitiesList
    :: ActivitiesList
activitiesList =
    ActivitiesList
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alDriveFileId = Nothing
    , _alDriveAncestorId = Nothing
    , _alGroupingStrategy = "driveUi"
    , _alUserId = "me"
    , _alKey = Nothing
    , _alSource = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alPageSize = 50
    , _alFields = Nothing
    , _alAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' ActivitiesList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' ActivitiesList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' ActivitiesList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | Identifies the Drive item to return activities for.
alDriveFileId :: Lens' ActivitiesList' (Maybe Text)
alDriveFileId
  = lens _alDriveFileId
      (\ s a -> s{_alDriveFileId = a})

-- | Identifies the Drive folder containing the items for which to return
-- activities.
alDriveAncestorId :: Lens' ActivitiesList' (Maybe Text)
alDriveAncestorId
  = lens _alDriveAncestorId
      (\ s a -> s{_alDriveAncestorId = a})

-- | Indicates the strategy to use when grouping singleEvents items in the
-- associated combinedEvent object.
alGroupingStrategy :: Lens' ActivitiesList' Text
alGroupingStrategy
  = lens _alGroupingStrategy
      (\ s a -> s{_alGroupingStrategy = a})

-- | Indicates the user to return activity for. Use the special value me to
-- indicate the currently authenticated user.
alUserId :: Lens' ActivitiesList' Text
alUserId = lens _alUserId (\ s a -> s{_alUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' ActivitiesList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | The Google service from which to return activities. Possible values of
-- source are: - drive.google.com
alSource :: Lens' ActivitiesList' (Maybe Text)
alSource = lens _alSource (\ s a -> s{_alSource = a})

-- | A token to retrieve a specific page of results.
alPageToken :: Lens' ActivitiesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' ActivitiesList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | The maximum number of events to return on a page. The response includes
-- a continuation token if there are more events.
alPageSize :: Lens' ActivitiesList' Int32
alPageSize
  = lens _alPageSize (\ s a -> s{_alPageSize = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' ActivitiesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' ActivitiesList' Text
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest ActivitiesList' where
        type Rs ActivitiesList' = ListActivitiesResponse
        request = requestWithRoute defReq appsActivityURL
        requestWithRoute r u ActivitiesList{..}
          = go _alQuotaUser _alPrettyPrint _alUserIp
              _alDriveFileId
              _alDriveAncestorId
              (Just _alGroupingStrategy)
              (Just _alUserId)
              _alKey
              _alSource
              _alPageToken
              _alOauthToken
              (Just _alPageSize)
              _alFields
              _alAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ActivitiesListAPI)
                      r
                      u
