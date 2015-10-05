{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.TaskQueue.Tasks.Lease
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksLease@.
module Network.Google.Resource.TaskQueue.Tasks.Lease
    (
    -- * REST Resource
      TasksLeaseResource

    -- * Creating a Request
    , tasksLease'
    , TasksLease'

    -- * Request Lenses
    , tlTaskqueue
    , tlQuotaUser
    , tlPrettyPrint
    , tlTag
    , tlProject
    , tlUserIP
    , tlNumTasks
    , tlKey
    , tlLeaseSecs
    , tlOAuthToken
    , tlGroupByTag
    , tlFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @TaskqueueTasksLease@ which the
-- 'TasksLease'' request conforms to.
type TasksLeaseResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             "lease" :>
               QueryParam "numTasks" Int32 :>
                 QueryParam "leaseSecs" Int32 :>
                   QueryParam "tag" Text :>
                     QueryParam "groupByTag" Bool :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" AuthKey :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON] Tasks

-- | Lease 1 or more tasks from a TaskQueue.
--
-- /See:/ 'tasksLease'' smart constructor.
data TasksLease' = TasksLease'
    { _tlTaskqueue   :: !Text
    , _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlTag         :: !(Maybe Text)
    , _tlProject     :: !Text
    , _tlUserIP      :: !(Maybe Text)
    , _tlNumTasks    :: !Int32
    , _tlKey         :: !(Maybe AuthKey)
    , _tlLeaseSecs   :: !Int32
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlGroupByTag  :: !(Maybe Bool)
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksLease'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlTaskqueue'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlTag'
--
-- * 'tlProject'
--
-- * 'tlUserIP'
--
-- * 'tlNumTasks'
--
-- * 'tlKey'
--
-- * 'tlLeaseSecs'
--
-- * 'tlOAuthToken'
--
-- * 'tlGroupByTag'
--
-- * 'tlFields'
tasksLease'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Int32 -- ^ 'numTasks'
    -> Int32 -- ^ 'leaseSecs'
    -> TasksLease'
tasksLease' pTlTaskqueue_ pTlProject_ pTlNumTasks_ pTlLeaseSecs_ =
    TasksLease'
    { _tlTaskqueue = pTlTaskqueue_
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlTag = Nothing
    , _tlProject = pTlProject_
    , _tlUserIP = Nothing
    , _tlNumTasks = pTlNumTasks_
    , _tlKey = Nothing
    , _tlLeaseSecs = pTlLeaseSecs_
    , _tlOAuthToken = Nothing
    , _tlGroupByTag = Nothing
    , _tlFields = Nothing
    }

-- | The taskqueue to lease a task from.
tlTaskqueue :: Lens' TasksLease' Text
tlTaskqueue
  = lens _tlTaskqueue (\ s a -> s{_tlTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TasksLease' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TasksLease' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | The tag allowed for tasks in the response. Must only be specified if
-- group_by_tag is true. If group_by_tag is true and tag is not specified
-- the tag will be that of the oldest task by eta, i.e. the first available
-- tag
tlTag :: Lens' TasksLease' (Maybe Text)
tlTag = lens _tlTag (\ s a -> s{_tlTag = a})

-- | The project under which the queue lies.
tlProject :: Lens' TasksLease' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TasksLease' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | The number of tasks to lease.
tlNumTasks :: Lens' TasksLease' Int32
tlNumTasks
  = lens _tlNumTasks (\ s a -> s{_tlNumTasks = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TasksLease' (Maybe AuthKey)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | The lease in seconds.
tlLeaseSecs :: Lens' TasksLease' Int32
tlLeaseSecs
  = lens _tlLeaseSecs (\ s a -> s{_tlLeaseSecs = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TasksLease' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | When true, all returned tasks will have the same tag
tlGroupByTag :: Lens' TasksLease' (Maybe Bool)
tlGroupByTag
  = lens _tlGroupByTag (\ s a -> s{_tlGroupByTag = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TasksLease' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TasksLease' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TasksLease' where
        type Rs TasksLease' = Tasks
        request = requestWithRoute defReq taskQueueURL
        requestWithRoute r u TasksLease'{..}
          = go _tlProject _tlTaskqueue (Just _tlNumTasks)
              (Just _tlLeaseSecs)
              _tlTag
              _tlGroupByTag
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksLeaseResource)
                      r
                      u
