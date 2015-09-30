{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get a particular task from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksGet@.
module Taskqueue.Tasks.Get
    (
    -- * REST Resource
      TasksGetAPI

    -- * Creating a Request
    , tasksGet
    , TasksGet

    -- * Request Lenses
    , tgTaskqueue
    , tgQuotaUser
    , tgPrettyPrint
    , tgProject
    , tgUserIp
    , tgKey
    , tgTask
    , tgOauthToken
    , tgFields
    , tgAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksGet@ which the
-- 'TasksGet' request conforms to.
type TasksGetAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :> Capture "task" Text :> Get '[JSON] Task

-- | Get a particular task from a TaskQueue.
--
-- /See:/ 'tasksGet' smart constructor.
data TasksGet = TasksGet
    { _tgTaskqueue   :: !Text
    , _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgProject     :: !Text
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgTask        :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgTaskqueue'
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgProject'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgTask'
--
-- * 'tgOauthToken'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tasksGet
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Text -- ^ 'task'
    -> TasksGet
tasksGet pTgTaskqueue_ pTgProject_ pTgTask_ =
    TasksGet
    { _tgTaskqueue = pTgTaskqueue_
    , _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgProject = pTgProject_
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgTask = pTgTask_
    , _tgOauthToken = Nothing
    , _tgFields = Nothing
    , _tgAlt = "json"
    }

-- | The taskqueue in which the task belongs.
tgTaskqueue :: Lens' TasksGet' Text
tgTaskqueue
  = lens _tgTaskqueue (\ s a -> s{_tgTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TasksGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TasksGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | The project under which the queue lies.
tgProject :: Lens' TasksGet' Text
tgProject
  = lens _tgProject (\ s a -> s{_tgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TasksGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TasksGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | The task to get properties of.
tgTask :: Lens' TasksGet' Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TasksGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TasksGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TasksGet' Text
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TasksGet' where
        type Rs TasksGet' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksGet{..}
          = go _tgTaskqueue _tgQuotaUser _tgPrettyPrint
              _tgProject
              _tgUserIp
              _tgKey
              _tgTask
              _tgOauthToken
              _tgFields
              _tgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksGetAPI) r u
