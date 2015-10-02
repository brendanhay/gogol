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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsInsert@.
module Network.Google.Resource.Tasks.TaskLists.Insert
    (
    -- * REST Resource
      TaskListsInsertResource

    -- * Creating a Request
    , taskListsInsert'
    , TaskListsInsert'

    -- * Request Lenses
    , tliQuotaUser
    , tliPrettyPrint
    , tliUserIP
    , tliKey
    , tliTaskList
    , tliOAuthToken
    , tliFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsInsert@ which the
-- 'TaskListsInsert'' request conforms to.
type TaskListsInsertResource =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TaskList :> Post '[JSON] TaskList

-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ 'taskListsInsert'' smart constructor.
data TaskListsInsert' = TaskListsInsert'
    { _tliQuotaUser   :: !(Maybe Text)
    , _tliPrettyPrint :: !Bool
    , _tliUserIP      :: !(Maybe Text)
    , _tliKey         :: !(Maybe Key)
    , _tliTaskList    :: !TaskList
    , _tliOAuthToken  :: !(Maybe OAuthToken)
    , _tliFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tliQuotaUser'
--
-- * 'tliPrettyPrint'
--
-- * 'tliUserIP'
--
-- * 'tliKey'
--
-- * 'tliTaskList'
--
-- * 'tliOAuthToken'
--
-- * 'tliFields'
taskListsInsert'
    :: TaskList -- ^ 'TaskList'
    -> TaskListsInsert'
taskListsInsert' pTliTaskList_ =
    TaskListsInsert'
    { _tliQuotaUser = Nothing
    , _tliPrettyPrint = True
    , _tliUserIP = Nothing
    , _tliKey = Nothing
    , _tliTaskList = pTliTaskList_
    , _tliOAuthToken = Nothing
    , _tliFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tliQuotaUser :: Lens' TaskListsInsert' (Maybe Text)
tliQuotaUser
  = lens _tliQuotaUser (\ s a -> s{_tliQuotaUser = a})

-- | Returns response with indentations and line breaks.
tliPrettyPrint :: Lens' TaskListsInsert' Bool
tliPrettyPrint
  = lens _tliPrettyPrint
      (\ s a -> s{_tliPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tliUserIP :: Lens' TaskListsInsert' (Maybe Text)
tliUserIP
  = lens _tliUserIP (\ s a -> s{_tliUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tliKey :: Lens' TaskListsInsert' (Maybe Key)
tliKey = lens _tliKey (\ s a -> s{_tliKey = a})

-- | Multipart request metadata.
tliTaskList :: Lens' TaskListsInsert' TaskList
tliTaskList
  = lens _tliTaskList (\ s a -> s{_tliTaskList = a})

-- | OAuth 2.0 token for the current user.
tliOAuthToken :: Lens' TaskListsInsert' (Maybe OAuthToken)
tliOAuthToken
  = lens _tliOAuthToken
      (\ s a -> s{_tliOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tliFields :: Lens' TaskListsInsert' (Maybe Text)
tliFields
  = lens _tliFields (\ s a -> s{_tliFields = a})

instance GoogleAuth TaskListsInsert' where
        authKey = tliKey . _Just
        authToken = tliOAuthToken . _Just

instance GoogleRequest TaskListsInsert' where
        type Rs TaskListsInsert' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TaskListsInsert'{..}
          = go _tliQuotaUser (Just _tliPrettyPrint) _tliUserIP
              _tliFields
              _tliKey
              _tliOAuthToken
              (Just AltJSON)
              _tliTaskList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TaskListsInsertResource)
                      r
                      u
