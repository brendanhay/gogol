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
    , tiUserIp
    , tiKey
    , tiOauthToken
    , tiFields
    , tiAlt
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
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] Task

-- | Insert a new task in a TaskQueue
--
-- /See:/ 'tasksInsert'' smart constructor.
data TasksInsert' = TasksInsert'
    { _tiTaskqueue   :: !Text
    , _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiProject     :: !Text
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Alt
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
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiAlt'
tasksInsert'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TasksInsert'
tasksInsert' pTiTaskqueue_ pTiProject_ =
    TasksInsert'
    { _tiTaskqueue = pTiTaskqueue_
    , _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiProject = pTiProject_
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiAlt = JSON
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
tiUserIp :: Lens' TasksInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TasksInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TasksInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TasksInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TasksInsert' Alt
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TasksInsert' where
        type Rs TasksInsert' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksInsert'{..}
          = go _tiTaskqueue _tiQuotaUser (Just _tiPrettyPrint)
              _tiProject
              _tiUserIp
              _tiKey
              _tiOauthToken
              _tiFields
              (Just _tiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksInsertResource)
                      r
                      u
