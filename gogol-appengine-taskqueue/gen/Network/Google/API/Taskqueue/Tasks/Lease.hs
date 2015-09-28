{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Taskqueue.Tasks.Lease
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.tasks.lease@.
module Network.Google.API.Taskqueue.Tasks.Lease
    (
    -- * REST Resource
      TasksLeaseAPI

    -- * Creating a Request
    , tasksLease'
    , TasksLease'

    -- * Request Lenses
    , tasTaskqueue
    , tasQuotaUser
    , tasPrettyPrint
    , tasTag
    , tasProject
    , tasUserIp
    , tasNumTasks
    , tasKey
    , tasLeaseSecs
    , tasOauthToken
    , tasGroupByTag
    , tasFields
    , tasAlt
    ) where

import           Network.Google.AppEngine.TaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for taskqueue.tasks.lease which the
-- 'TasksLease'' request conforms to.
type TasksLeaseAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             "lease" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "tag" Text :>
                     QueryParam "userIp" Text :>
                       QueryParam "numTasks" Int32 :>
                         QueryParam "key" Text :>
                           QueryParam "leaseSecs" Int32 :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "groupByTag" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Post '[JSON] Tasks

-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ 'tasksLease'' smart constructor.
data TasksLease' = TasksLease'
    { _tasTaskqueue   :: !Text
    , _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasTag         :: !(Maybe Text)
    , _tasProject     :: !Text
    , _tasUserIp      :: !(Maybe Text)
    , _tasNumTasks    :: !Int32
    , _tasKey         :: !(Maybe Text)
    , _tasLeaseSecs   :: !Int32
    , _tasOauthToken  :: !(Maybe Text)
    , _tasGroupByTag  :: !(Maybe Bool)
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksLease'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasTaskqueue'
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasTag'
--
-- * 'tasProject'
--
-- * 'tasUserIp'
--
-- * 'tasNumTasks'
--
-- * 'tasKey'
--
-- * 'tasLeaseSecs'
--
-- * 'tasOauthToken'
--
-- * 'tasGroupByTag'
--
-- * 'tasFields'
--
-- * 'tasAlt'
tasksLease'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Int32 -- ^ 'numTasks'
    -> Int32 -- ^ 'leaseSecs'
    -> TasksLease'
tasksLease' pTasTaskqueue_ pTasProject_ pTasNumTasks_ pTasLeaseSecs_ =
    TasksLease'
    { _tasTaskqueue = pTasTaskqueue_
    , _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasTag = Nothing
    , _tasProject = pTasProject_
    , _tasUserIp = Nothing
    , _tasNumTasks = pTasNumTasks_
    , _tasKey = Nothing
    , _tasLeaseSecs = pTasLeaseSecs_
    , _tasOauthToken = Nothing
    , _tasGroupByTag = Nothing
    , _tasFields = Nothing
    , _tasAlt = JSON
    }

-- | The taskqueue to lease a task from.
tasTaskqueue :: Lens' TasksLease' Text
tasTaskqueue
  = lens _tasTaskqueue (\ s a -> s{_tasTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TasksLease' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TasksLease' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | The tag allowed for tasks in the response. Must only be specified if
-- group_by_tag is true. If group_by_tag is true and tag is not specified
-- the tag will be that of the oldest task by eta, i.e. the first available
-- tag
tasTag :: Lens' TasksLease' (Maybe Text)
tasTag = lens _tasTag (\ s a -> s{_tasTag = a})

-- | The project under which the queue lies.
tasProject :: Lens' TasksLease' Text
tasProject
  = lens _tasProject (\ s a -> s{_tasProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TasksLease' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | The number of tasks to lease.
tasNumTasks :: Lens' TasksLease' Int32
tasNumTasks
  = lens _tasNumTasks (\ s a -> s{_tasNumTasks = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TasksLease' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | The lease in seconds.
tasLeaseSecs :: Lens' TasksLease' Int32
tasLeaseSecs
  = lens _tasLeaseSecs (\ s a -> s{_tasLeaseSecs = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TasksLease' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | When true, all returned tasks will have the same tag
tasGroupByTag :: Lens' TasksLease' (Maybe Bool)
tasGroupByTag
  = lens _tasGroupByTag
      (\ s a -> s{_tasGroupByTag = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TasksLease' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TasksLease' Alt
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TasksLease' where
        type Rs TasksLease' = Tasks
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksLease'{..}
          = go _tasTaskqueue _tasQuotaUser
              (Just _tasPrettyPrint)
              _tasTag
              _tasProject
              _tasUserIp
              (Just _tasNumTasks)
              _tasKey
              (Just _tasLeaseSecs)
              _tasOauthToken
              _tasGroupByTag
              _tasFields
              (Just _tasAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksLeaseAPI) r u
