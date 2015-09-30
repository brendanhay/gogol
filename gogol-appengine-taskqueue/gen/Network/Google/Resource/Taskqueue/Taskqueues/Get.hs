{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Taskqueues.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get detailed information about a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTaskqueuesGet@.
module Taskqueue.Taskqueues.Get
    (
    -- * REST Resource
      TaskqueuesGetAPI

    -- * Creating a Request
    , taskqueuesGet
    , TaskqueuesGet

    -- * Request Lenses
    , tasTaskqueue
    , tasQuotaUser
    , tasPrettyPrint
    , tasProject
    , tasUserIp
    , tasKey
    , tasGetStats
    , tasOauthToken
    , tasFields
    , tasAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTaskqueuesGet@ which the
-- 'TaskqueuesGet' request conforms to.
type TaskqueuesGetAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           QueryParam "getStats" Bool :> Get '[JSON] TaskQueue

-- | Get detailed information about a TaskQueue.
--
-- /See:/ 'taskqueuesGet' smart constructor.
data TaskqueuesGet = TaskqueuesGet
    { _tasTaskqueue   :: !Text
    , _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasProject     :: !Text
    , _tasUserIp      :: !(Maybe Text)
    , _tasKey         :: !(Maybe Text)
    , _tasGetStats    :: !(Maybe Bool)
    , _tasOauthToken  :: !(Maybe Text)
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskqueuesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasTaskqueue'
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasProject'
--
-- * 'tasUserIp'
--
-- * 'tasKey'
--
-- * 'tasGetStats'
--
-- * 'tasOauthToken'
--
-- * 'tasFields'
--
-- * 'tasAlt'
taskqueuesGet
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TaskqueuesGet
taskqueuesGet pTasTaskqueue_ pTasProject_ =
    TaskqueuesGet
    { _tasTaskqueue = pTasTaskqueue_
    , _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasProject = pTasProject_
    , _tasUserIp = Nothing
    , _tasKey = Nothing
    , _tasGetStats = Nothing
    , _tasOauthToken = Nothing
    , _tasFields = Nothing
    , _tasAlt = "json"
    }

-- | The id of the taskqueue to get the properties of.
tasTaskqueue :: Lens' TaskqueuesGet' Text
tasTaskqueue
  = lens _tasTaskqueue (\ s a -> s{_tasTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TaskqueuesGet' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TaskqueuesGet' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | The project under which the queue lies.
tasProject :: Lens' TaskqueuesGet' Text
tasProject
  = lens _tasProject (\ s a -> s{_tasProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TaskqueuesGet' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TaskqueuesGet' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | Whether to get stats. Optional.
tasGetStats :: Lens' TaskqueuesGet' (Maybe Bool)
tasGetStats
  = lens _tasGetStats (\ s a -> s{_tasGetStats = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TaskqueuesGet' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TaskqueuesGet' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TaskqueuesGet' Text
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TaskqueuesGet' where
        type Rs TaskqueuesGet' = TaskQueue
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TaskqueuesGet{..}
          = go _tasTaskqueue _tasQuotaUser _tasPrettyPrint
              _tasProject
              _tasUserIp
              _tasKey
              _tasGetStats
              _tasOauthToken
              _tasFields
              _tasAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TaskqueuesGetAPI) r
                      u
