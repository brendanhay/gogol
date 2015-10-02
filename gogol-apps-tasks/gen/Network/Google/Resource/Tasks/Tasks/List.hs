{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all tasks in the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksList@.
module Network.Google.Resource.Tasks.Tasks.List
    (
    -- * REST Resource
      TasksListResource

    -- * Creating a Request
    , tasksList'
    , TasksList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIP
    , tlDueMax
    , tlShowDeleted
    , tlShowCompleted
    , tlDueMin
    , tlShowHidden
    , tlCompletedMax
    , tlKey
    , tlUpdatedMin
    , tlTaskList
    , tlCompletedMin
    , tlPageToken
    , tlOAuthToken
    , tlMaxResults
    , tlFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksList@ which the
-- 'TasksList'' request conforms to.
type TasksListResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "dueMax" Text :>
                   QueryParam "showDeleted" Bool :>
                     QueryParam "showCompleted" Bool :>
                       QueryParam "dueMin" Text :>
                         QueryParam "showHidden" Bool :>
                           QueryParam "completedMax" Text :>
                             QueryParam "key" Key :>
                               QueryParam "updatedMin" Text :>
                                 QueryParam "completedMin" Text :>
                                   QueryParam "pageToken" Text :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "maxResults" Int64 :>
                                         QueryParam "fields" Text :>
                                           QueryParam "alt" AltJSON :>
                                             Get '[JSON] Tasks

-- | Returns all tasks in the specified task list.
--
-- /See:/ 'tasksList'' smart constructor.
data TasksList' = TasksList'
    { _tlQuotaUser     :: !(Maybe Text)
    , _tlPrettyPrint   :: !Bool
    , _tlUserIP        :: !(Maybe Text)
    , _tlDueMax        :: !(Maybe Text)
    , _tlShowDeleted   :: !(Maybe Bool)
    , _tlShowCompleted :: !(Maybe Bool)
    , _tlDueMin        :: !(Maybe Text)
    , _tlShowHidden    :: !(Maybe Bool)
    , _tlCompletedMax  :: !(Maybe Text)
    , _tlKey           :: !(Maybe Key)
    , _tlUpdatedMin    :: !(Maybe Text)
    , _tlTaskList      :: !Text
    , _tlCompletedMin  :: !(Maybe Text)
    , _tlPageToken     :: !(Maybe Text)
    , _tlOAuthToken    :: !(Maybe OAuthToken)
    , _tlMaxResults    :: !(Maybe Int64)
    , _tlFields        :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIP'
--
-- * 'tlDueMax'
--
-- * 'tlShowDeleted'
--
-- * 'tlShowCompleted'
--
-- * 'tlDueMin'
--
-- * 'tlShowHidden'
--
-- * 'tlCompletedMax'
--
-- * 'tlKey'
--
-- * 'tlUpdatedMin'
--
-- * 'tlTaskList'
--
-- * 'tlCompletedMin'
--
-- * 'tlPageToken'
--
-- * 'tlOAuthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
tasksList'
    :: Text -- ^ 'tasklist'
    -> TasksList'
tasksList' pTlTaskList_ =
    TasksList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIP = Nothing
    , _tlDueMax = Nothing
    , _tlShowDeleted = Nothing
    , _tlShowCompleted = Nothing
    , _tlDueMin = Nothing
    , _tlShowHidden = Nothing
    , _tlCompletedMax = Nothing
    , _tlKey = Nothing
    , _tlUpdatedMin = Nothing
    , _tlTaskList = pTlTaskList_
    , _tlCompletedMin = Nothing
    , _tlPageToken = Nothing
    , _tlOAuthToken = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TasksList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TasksList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TasksList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | Upper bound for a task\'s due date (as a RFC 3339 timestamp) to filter
-- by. Optional. The default is not to filter by due date.
tlDueMax :: Lens' TasksList' (Maybe Text)
tlDueMax = lens _tlDueMax (\ s a -> s{_tlDueMax = a})

-- | Flag indicating whether deleted tasks are returned in the result.
-- Optional. The default is False.
tlShowDeleted :: Lens' TasksList' (Maybe Bool)
tlShowDeleted
  = lens _tlShowDeleted
      (\ s a -> s{_tlShowDeleted = a})

-- | Flag indicating whether completed tasks are returned in the result.
-- Optional. The default is True.
tlShowCompleted :: Lens' TasksList' (Maybe Bool)
tlShowCompleted
  = lens _tlShowCompleted
      (\ s a -> s{_tlShowCompleted = a})

-- | Lower bound for a task\'s due date (as a RFC 3339 timestamp) to filter
-- by. Optional. The default is not to filter by due date.
tlDueMin :: Lens' TasksList' (Maybe Text)
tlDueMin = lens _tlDueMin (\ s a -> s{_tlDueMin = a})

-- | Flag indicating whether hidden tasks are returned in the result.
-- Optional. The default is False.
tlShowHidden :: Lens' TasksList' (Maybe Bool)
tlShowHidden
  = lens _tlShowHidden (\ s a -> s{_tlShowHidden = a})

-- | Upper bound for a task\'s completion date (as a RFC 3339 timestamp) to
-- filter by. Optional. The default is not to filter by completion date.
tlCompletedMax :: Lens' TasksList' (Maybe Text)
tlCompletedMax
  = lens _tlCompletedMax
      (\ s a -> s{_tlCompletedMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TasksList' (Maybe Key)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Lower bound for a task\'s last modification time (as a RFC 3339
-- timestamp) to filter by. Optional. The default is not to filter by last
-- modification time.
tlUpdatedMin :: Lens' TasksList' (Maybe Text)
tlUpdatedMin
  = lens _tlUpdatedMin (\ s a -> s{_tlUpdatedMin = a})

-- | Task list identifier.
tlTaskList :: Lens' TasksList' Text
tlTaskList
  = lens _tlTaskList (\ s a -> s{_tlTaskList = a})

-- | Lower bound for a task\'s completion date (as a RFC 3339 timestamp) to
-- filter by. Optional. The default is not to filter by completion date.
tlCompletedMin :: Lens' TasksList' (Maybe Text)
tlCompletedMin
  = lens _tlCompletedMin
      (\ s a -> s{_tlCompletedMin = a})

-- | Token specifying the result page to return. Optional.
tlPageToken :: Lens' TasksList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TasksList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tlMaxResults :: Lens' TasksList' (Maybe Int64)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TasksList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TasksList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TasksList' where
        type Rs TasksList' = Tasks
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksList'{..}
          = go _tlQuotaUser (Just _tlPrettyPrint) _tlUserIP
              _tlDueMax
              _tlShowDeleted
              _tlShowCompleted
              _tlDueMin
              _tlShowHidden
              _tlCompletedMax
              _tlKey
              _tlUpdatedMin
              _tlTaskList
              _tlCompletedMin
              _tlPageToken
              _tlOAuthToken
              _tlMaxResults
              _tlFields
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksListResource)
                      r
                      u
