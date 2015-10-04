{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
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
    , tpUserIP
    , tpPayload
    , tpKey
    , tpTask
    , tpOAuthToken
    , tpNewLeaseSeconds
    , tpFields
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
               QueryParam "newLeaseSeconds" Int32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Task :> Patch '[JSON] Task

-- | Update tasks that are leased out of a TaskQueue. This method supports
-- patch semantics.
--
-- /See:/ 'tasksPatch'' smart constructor.
data TasksPatch' = TasksPatch'
    { _tpTaskqueue       :: !Text
    , _tpQuotaUser       :: !(Maybe Text)
    , _tpPrettyPrint     :: !Bool
    , _tpProject         :: !Text
    , _tpUserIP          :: !(Maybe Text)
    , _tpPayload         :: !Task
    , _tpKey             :: !(Maybe Key)
    , _tpTask            :: !Text
    , _tpOAuthToken      :: !(Maybe OAuthToken)
    , _tpNewLeaseSeconds :: !Int32
    , _tpFields          :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tpUserIP'
--
-- * 'tpPayload'
--
-- * 'tpKey'
--
-- * 'tpTask'
--
-- * 'tpOAuthToken'
--
-- * 'tpNewLeaseSeconds'
--
-- * 'tpFields'
tasksPatch'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> Task -- ^ 'payload'
    -> Text -- ^ 'task'
    -> Int32 -- ^ 'newLeaseSeconds'
    -> TasksPatch'
tasksPatch' pTpTaskqueue_ pTpProject_ pTpPayload_ pTpTask_ pTpNewLeaseSeconds_ =
    TasksPatch'
    { _tpTaskqueue = pTpTaskqueue_
    , _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpProject = pTpProject_
    , _tpUserIP = Nothing
    , _tpPayload = pTpPayload_
    , _tpKey = Nothing
    , _tpTask = pTpTask_
    , _tpOAuthToken = Nothing
    , _tpNewLeaseSeconds = pTpNewLeaseSeconds_
    , _tpFields = Nothing
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
tpUserIP :: Lens' TasksPatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | Multipart request metadata.
tpPayload :: Lens' TasksPatch' Task
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TasksPatch' (Maybe Key)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

tpTask :: Lens' TasksPatch' Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TasksPatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | The new lease in seconds.
tpNewLeaseSeconds :: Lens' TasksPatch' Int32
tpNewLeaseSeconds
  = lens _tpNewLeaseSeconds
      (\ s a -> s{_tpNewLeaseSeconds = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TasksPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TasksPatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TasksPatch' where
        type Rs TasksPatch' = Task
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksPatch'{..}
          = go _tpProject _tpTaskqueue _tpTask
              (Just _tpNewLeaseSeconds)
              _tpQuotaUser
              (Just _tpPrettyPrint)
              _tpUserIP
              _tpFields
              _tpKey
              _tpOAuthToken
              (Just AltJSON)
              _tpPayload
          where go
                  = clientWithRoute (Proxy :: Proxy TasksPatchResource)
                      r
                      u
