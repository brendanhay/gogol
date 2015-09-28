{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Taskqueue.Tasks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update tasks that are leased out of a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.update@.
module Network.Google.API.Taskqueue.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateAPI

    -- * Creating a Request
    , tasksUpdate'
    , TasksUpdate'

    -- * Request Lenses
    , tuTaskqueue
    , tuQuotaUser
    , tuPrettyPrint
    , tuProject
    , tuUserIp
    , tuKey
    , tuTask
    , tuOauthToken
    , tuNewLeaseSeconds
    , tuFields
    , tuAlt
    ) where

import           Network.Google.AppEngine.TaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for taskqueue.tasks.update which the
-- 'TasksUpdate'' request conforms to.
type TasksUpdateAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             Capture "task" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "newLeaseSeconds" Int32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Post '[JSON] Task

-- | Update tasks that are leased out of a TaskQueue.
--
-- /See:/ 'tasksUpdate'' smart constructor.
data TasksUpdate' = TasksUpdate'
    { _tuTaskqueue       :: !Text
    , _tuQuotaUser       :: !(Maybe Text)
    , _tuPrettyPrint     :: !Bool
    , _tuProject         :: !Text
    , _tuUserIp          :: !(Maybe Text)
    , _tuKey             :: !(Maybe Text)
    , _tuTask            :: !Text
    , _tuOauthToken      :: !(Maybe Text)
    , _tuNewLeaseSeconds :: !Int32
    , _tuFields          :: !(Maybe Text)
    , _tuAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuTaskqueue'
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuProject'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuTask'
--
-- * 'tuOauthToken'
--
-- * 'tuNewLeaseSeconds'
--
-- * 'tuFields'
--
-- * 'tuAlt'
tasksUpdate'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Text -- ^ 'task'
    -> Int32 -- ^ 'newLeaseSeconds'
    -> TasksUpdate'
tasksUpdate' pTuTaskqueue_ pTuProject_ pTuTask_ pTuNewLeaseSeconds_ =
    TasksUpdate'
    { _tuTaskqueue = pTuTaskqueue_
    , _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuProject = pTuProject_
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuTask = pTuTask_
    , _tuOauthToken = Nothing
    , _tuNewLeaseSeconds = pTuNewLeaseSeconds_
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

tuTaskqueue :: Lens' TasksUpdate' Text
tuTaskqueue
  = lens _tuTaskqueue (\ s a -> s{_tuTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TasksUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TasksUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | The project under which the queue lies.
tuProject :: Lens' TasksUpdate' Text
tuProject
  = lens _tuProject (\ s a -> s{_tuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TasksUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TasksUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

tuTask :: Lens' TasksUpdate' Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TasksUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | The new lease in seconds.
tuNewLeaseSeconds :: Lens' TasksUpdate' Int32
tuNewLeaseSeconds
  = lens _tuNewLeaseSeconds
      (\ s a -> s{_tuNewLeaseSeconds = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TasksUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TasksUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TasksUpdate' where
        type Rs TasksUpdate' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksUpdate'{..}
          = go _tuTaskqueue _tuQuotaUser (Just _tuPrettyPrint)
              _tuProject
              _tuUserIp
              _tuKey
              _tuTask
              _tuOauthToken
              (Just _tuNewLeaseSeconds)
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksUpdateAPI) r u
