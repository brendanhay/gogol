{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a task from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksDelete@.
module Taskqueue.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteAPI

    -- * Creating a Request
    , tasksDelete
    , TasksDelete

    -- * Request Lenses
    , tdTaskqueue
    , tdQuotaUser
    , tdPrettyPrint
    , tdProject
    , tdUserIp
    , tdKey
    , tdTask
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksDelete@ which the
-- 'TasksDelete' request conforms to.
type TasksDeleteAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :> Capture "task" Text :> Delete '[JSON] ()

-- | Delete a task from a TaskQueue.
--
-- /See:/ 'tasksDelete' smart constructor.
data TasksDelete = TasksDelete
    { _tdTaskqueue   :: !Text
    , _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdProject     :: !Text
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdTask        :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdTaskqueue'
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdProject'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdTask'
--
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tasksDelete
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Text -- ^ 'task'
    -> TasksDelete
tasksDelete pTdTaskqueue_ pTdProject_ pTdTask_ =
    TasksDelete
    { _tdTaskqueue = pTdTaskqueue_
    , _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdProject = pTdProject_
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdTask = pTdTask_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = "json"
    }

-- | The taskqueue to delete a task from.
tdTaskqueue :: Lens' TasksDelete' Text
tdTaskqueue
  = lens _tdTaskqueue (\ s a -> s{_tdTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TasksDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TasksDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | The project under which the queue lies.
tdProject :: Lens' TasksDelete' Text
tdProject
  = lens _tdProject (\ s a -> s{_tdProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TasksDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TasksDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The id of the task to delete.
tdTask :: Lens' TasksDelete' Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TasksDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TasksDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TasksDelete' Text
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TasksDelete' where
        type Rs TasksDelete' = ()
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksDelete{..}
          = go _tdTaskqueue _tdQuotaUser _tdPrettyPrint
              _tdProject
              _tdUserIp
              _tdKey
              _tdTask
              _tdOauthToken
              _tdFields
              _tdAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksDeleteAPI) r u
