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
-- Module      : Network.Google.Resource.Taskqueue.Tasks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksPatch@.
module Network.Google.Resource.Taskqueue.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchResource

    -- * Creating a Request
    , tasksPatch'
    , TasksPatch'

    -- * Request Lenses
    , tpTaskqueue
    , tpQuotaUser
    , tpPrettyPrint
    , tpProject
    , tpUserIp
    , tpKey
    , tpTask
    , tpOauthToken
    , tpNewLeaseSeconds
    , tpFields
    , tpAlt
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksPatch@ which the
-- 'TasksPatch'' request conforms to.
type TasksPatchResource =
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
                             QueryParam "alt" Alt :> Patch '[JSON] Task

-- | Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
--
-- /See:/ 'tasksPatch'' smart constructor.
data TasksPatch' = TasksPatch'
    { _tpTaskqueue       :: !Text
    , _tpQuotaUser       :: !(Maybe Text)
    , _tpPrettyPrint     :: !Bool
    , _tpProject         :: !Text
    , _tpUserIp          :: !(Maybe Text)
    , _tpKey             :: !(Maybe Text)
    , _tpTask            :: !Text
    , _tpOauthToken      :: !(Maybe Text)
    , _tpNewLeaseSeconds :: !Int32
    , _tpFields          :: !(Maybe Text)
    , _tpAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpTaskqueue'
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpProject'
--
-- * 'tpUserIp'
--
-- * 'tpKey'
--
-- * 'tpTask'
--
-- * 'tpOauthToken'
--
-- * 'tpNewLeaseSeconds'
--
-- * 'tpFields'
--
-- * 'tpAlt'
tasksPatch'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Text -- ^ 'task'
    -> Int32 -- ^ 'newLeaseSeconds'
    -> TasksPatch'
tasksPatch' pTpTaskqueue_ pTpProject_ pTpTask_ pTpNewLeaseSeconds_ =
    TasksPatch'
    { _tpTaskqueue = pTpTaskqueue_
    , _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpProject = pTpProject_
    , _tpUserIp = Nothing
    , _tpKey = Nothing
    , _tpTask = pTpTask_
    , _tpOauthToken = Nothing
    , _tpNewLeaseSeconds = pTpNewLeaseSeconds_
    , _tpFields = Nothing
    , _tpAlt = JSON
    }

tpTaskqueue :: Lens' TasksPatch' Text
tpTaskqueue
  = lens _tpTaskqueue (\ s a -> s{_tpTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TasksPatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TasksPatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | The project under which the queue lies.
tpProject :: Lens' TasksPatch' Text
tpProject
  = lens _tpProject (\ s a -> s{_tpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIp :: Lens' TasksPatch' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TasksPatch' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

tpTask :: Lens' TasksPatch' Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TasksPatch' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | The new lease in seconds.
tpNewLeaseSeconds :: Lens' TasksPatch' Int32
tpNewLeaseSeconds
  = lens _tpNewLeaseSeconds
      (\ s a -> s{_tpNewLeaseSeconds = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TasksPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TasksPatch' Alt
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TasksPatch' where
        type Rs TasksPatch' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksPatch'{..}
          = go _tpTaskqueue _tpQuotaUser (Just _tpPrettyPrint)
              _tpProject
              _tpUserIp
              _tpKey
              _tpTask
              _tpOauthToken
              (Just _tpNewLeaseSeconds)
              _tpFields
              (Just _tpAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksPatchResource)
                      r
                      u
