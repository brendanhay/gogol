{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Lease
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksLease@.
module Taskqueue.Tasks.Lease
    (
    -- * REST Resource
      TasksLeaseAPI

    -- * Creating a Request
    , tasksLease
    , TasksLease

    -- * Request Lenses
    , tTaskqueue
    , tQuotaUser
    , tPrettyPrint
    , tTag
    , tProject
    , tUserIp
    , tNumTasks
    , tKey
    , tLeaseSecs
    , tOauthToken
    , tGroupByTag
    , tFields
    , tAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksLease@ which the
-- 'TasksLease' request conforms to.
type TasksLeaseAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             "lease" :>
               QueryParam "tag" Text :>
                 QueryParam "numTasks" Int32 :>
                   QueryParam "leaseSecs" Int32 :>
                     QueryParam "groupByTag" Bool :> Post '[JSON] Tasks

-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ 'tasksLease' smart constructor.
data TasksLease = TasksLease
    { _tTaskqueue   :: !Text
    , _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tTag         :: !(Maybe Text)
    , _tProject     :: !Text
    , _tUserIp      :: !(Maybe Text)
    , _tNumTasks    :: !Int32
    , _tKey         :: !(Maybe Text)
    , _tLeaseSecs   :: !Int32
    , _tOauthToken  :: !(Maybe Text)
    , _tGroupByTag  :: !(Maybe Bool)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksLease'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTaskqueue'
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tTag'
--
-- * 'tProject'
--
-- * 'tUserIp'
--
-- * 'tNumTasks'
--
-- * 'tKey'
--
-- * 'tLeaseSecs'
--
-- * 'tOauthToken'
--
-- * 'tGroupByTag'
--
-- * 'tFields'
--
-- * 'tAlt'
tasksLease
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Int32 -- ^ 'numTasks'
    -> Int32 -- ^ 'leaseSecs'
    -> TasksLease
tasksLease pTTaskqueue_ pTProject_ pTNumTasks_ pTLeaseSecs_ =
    TasksLease
    { _tTaskqueue = pTTaskqueue_
    , _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tTag = Nothing
    , _tProject = pTProject_
    , _tUserIp = Nothing
    , _tNumTasks = pTNumTasks_
    , _tKey = Nothing
    , _tLeaseSecs = pTLeaseSecs_
    , _tOauthToken = Nothing
    , _tGroupByTag = Nothing
    , _tFields = Nothing
    , _tAlt = "json"
    }

-- | The taskqueue to lease a task from.
tTaskqueue :: Lens' TasksLease' Text
tTaskqueue
  = lens _tTaskqueue (\ s a -> s{_tTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TasksLease' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TasksLease' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | The tag allowed for tasks in the response. Must only be specified if
-- group_by_tag is true. If group_by_tag is true and tag is not specified
-- the tag will be that of the oldest task by eta, i.e. the first available
-- tag
tTag :: Lens' TasksLease' (Maybe Text)
tTag = lens _tTag (\ s a -> s{_tTag = a})

-- | The project under which the queue lies.
tProject :: Lens' TasksLease' Text
tProject = lens _tProject (\ s a -> s{_tProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TasksLease' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | The number of tasks to lease.
tNumTasks :: Lens' TasksLease' Int32
tNumTasks
  = lens _tNumTasks (\ s a -> s{_tNumTasks = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TasksLease' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The lease in seconds.
tLeaseSecs :: Lens' TasksLease' Int32
tLeaseSecs
  = lens _tLeaseSecs (\ s a -> s{_tLeaseSecs = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TasksLease' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | When true, all returned tasks will have the same tag
tGroupByTag :: Lens' TasksLease' (Maybe Bool)
tGroupByTag
  = lens _tGroupByTag (\ s a -> s{_tGroupByTag = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TasksLease' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TasksLease' Text
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TasksLease' where
        type Rs TasksLease' = Tasks
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksLease{..}
          = go _tTaskqueue _tQuotaUser _tPrettyPrint _tTag
              _tProject
              _tUserIp
              (Just _tNumTasks)
              _tKey
              (Just _tLeaseSecs)
              _tOauthToken
              _tGroupByTag
              _tFields
              _tAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksLeaseAPI) r u
