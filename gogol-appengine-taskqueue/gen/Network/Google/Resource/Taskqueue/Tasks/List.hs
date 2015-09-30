{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Tasks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List Tasks in a TaskQueue
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksList@.
module Taskqueue.Tasks.List
    (
    -- * REST Resource
      TasksListAPI

    -- * Creating a Request
    , tasksList
    , TasksList

    -- * Request Lenses
    , tlTaskqueue
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIp
    , tlKey
    , tlOauthToken
    , tlFields
    , tlAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksList@ which the
-- 'TasksList' request conforms to.
type TasksListAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :> Get '[JSON] Tasks2

-- | List Tasks in a TaskQueue
--
-- /See:/ 'tasksList' smart constructor.
data TasksList = TasksList
    { _tlTaskqueue   :: !Text
    , _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlProject     :: !Text
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlTaskqueue'
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlProject'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlOauthToken'
--
-- * 'tlFields'
--
-- * 'tlAlt'
tasksList
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TasksList
tasksList pTlTaskqueue_ pTlProject_ =
    TasksList
    { _tlTaskqueue = pTlTaskqueue_
    , _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlOauthToken = Nothing
    , _tlFields = Nothing
    , _tlAlt = "json"
    }

-- | The id of the taskqueue to list tasks from.
tlTaskqueue :: Lens' TasksList' Text
tlTaskqueue
  = lens _tlTaskqueue (\ s a -> s{_tlTaskqueue = a})

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

-- | The project under which the queue lies.
tlProject :: Lens' TasksList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TasksList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TasksList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TasksList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TasksList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TasksList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TasksList' where
        type Rs TasksList' = Tasks2
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksList{..}
          = go _tlTaskqueue _tlQuotaUser _tlPrettyPrint
              _tlProject
              _tlUserIp
              _tlKey
              _tlOauthToken
              _tlFields
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksListAPI) r u
