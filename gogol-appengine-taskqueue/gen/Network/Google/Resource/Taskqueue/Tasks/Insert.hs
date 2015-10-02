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
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Insert a new task in a TaskQueue
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksInsert@.
module Network.Google.Resource.Taskqueue.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertResource

    -- * Creating a Request
    , tasksInsert'
    , TasksInsert'

    -- * Request Lenses
    , tiTaskqueue
    , tiQuotaUser
    , tiPrettyPrint
    , tiProject
    , tiUserIP
    , tiKey
    , tiTask
    , tiOAuthToken
    , tiFields
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksInsert@ which the
-- 'TasksInsert'' request conforms to.
type TasksInsertResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Task :> Post '[JSON] Task

-- | Insert a new task in a TaskQueue
--
-- /See:/ 'tasksInsert'' smart constructor.
data TasksInsert' = TasksInsert'
    { _tiTaskqueue   :: !Text
    , _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiProject     :: !Text
    , _tiUserIP      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Key)
    , _tiTask        :: !Task
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiTaskqueue'
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiProject'
--
-- * 'tiUserIP'
--
-- * 'tiKey'
--
-- * 'tiTask'
--
-- * 'tiOAuthToken'
--
-- * 'tiFields'
tasksInsert'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Task -- ^ 'Task'
    -> TasksInsert'
tasksInsert' pTiTaskqueue_ pTiProject_ pTiTask_ =
    TasksInsert'
    { _tiTaskqueue = pTiTaskqueue_
    , _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiProject = pTiProject_
    , _tiUserIP = Nothing
    , _tiKey = Nothing
    , _tiTask = pTiTask_
    , _tiOAuthToken = Nothing
    , _tiFields = Nothing
    }

-- | The taskqueue to insert the task into
tiTaskqueue :: Lens' TasksInsert' Text
tiTaskqueue
  = lens _tiTaskqueue (\ s a -> s{_tiTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TasksInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TasksInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | The project under which the queue lies
tiProject :: Lens' TasksInsert' Text
tiProject
  = lens _tiProject (\ s a -> s{_tiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIP :: Lens' TasksInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TasksInsert' (Maybe Key)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | Multipart request metadata.
tiTask :: Lens' TasksInsert' Task
tiTask = lens _tiTask (\ s a -> s{_tiTask = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TasksInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TasksInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TasksInsert' where
        authKey = tiKey . _Just
        authToken = tiOAuthToken . _Just

instance GoogleRequest TasksInsert' where
        type Rs TasksInsert' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksInsert'{..}
          = go _tiTaskqueue _tiQuotaUser (Just _tiPrettyPrint)
              _tiProject
              _tiUserIP
              _tiKey
              _tiOAuthToken
              _tiFields
              (Just AltJSON)
              _tiTask
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksInsertResource)
                      r
                      u
