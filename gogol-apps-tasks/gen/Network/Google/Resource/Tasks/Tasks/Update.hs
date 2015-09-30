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
-- Module      : Network.Google.Resource.Tasks.Tasks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksUpdate@.
module Network.Google.Resource.Tasks.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateResource

    -- * Creating a Request
    , tasksUpdate'
    , TasksUpdate'

    -- * Request Lenses
    , tuuQuotaUser
    , tuuPrettyPrint
    , tuuUserIp
    , tuuKey
    , tuuTasklist
    , tuuTask
    , tuuOauthToken
    , tuuFields
    , tuuAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksUpdate@ which the
-- 'TasksUpdate'' request conforms to.
type TasksUpdateResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] Task

-- | Updates the specified task.
--
-- /See:/ 'tasksUpdate'' smart constructor.
data TasksUpdate' = TasksUpdate'
    { _tuuQuotaUser   :: !(Maybe Text)
    , _tuuPrettyPrint :: !Bool
    , _tuuUserIp      :: !(Maybe Text)
    , _tuuKey         :: !(Maybe Text)
    , _tuuTasklist    :: !Text
    , _tuuTask        :: !Text
    , _tuuOauthToken  :: !(Maybe Text)
    , _tuuFields      :: !(Maybe Text)
    , _tuuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuuQuotaUser'
--
-- * 'tuuPrettyPrint'
--
-- * 'tuuUserIp'
--
-- * 'tuuKey'
--
-- * 'tuuTasklist'
--
-- * 'tuuTask'
--
-- * 'tuuOauthToken'
--
-- * 'tuuFields'
--
-- * 'tuuAlt'
tasksUpdate'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksUpdate'
tasksUpdate' pTuuTasklist_ pTuuTask_ =
    TasksUpdate'
    { _tuuQuotaUser = Nothing
    , _tuuPrettyPrint = True
    , _tuuUserIp = Nothing
    , _tuuKey = Nothing
    , _tuuTasklist = pTuuTasklist_
    , _tuuTask = pTuuTask_
    , _tuuOauthToken = Nothing
    , _tuuFields = Nothing
    , _tuuAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuuQuotaUser :: Lens' TasksUpdate' (Maybe Text)
tuuQuotaUser
  = lens _tuuQuotaUser (\ s a -> s{_tuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuuPrettyPrint :: Lens' TasksUpdate' Bool
tuuPrettyPrint
  = lens _tuuPrettyPrint
      (\ s a -> s{_tuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuuUserIp :: Lens' TasksUpdate' (Maybe Text)
tuuUserIp
  = lens _tuuUserIp (\ s a -> s{_tuuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuuKey :: Lens' TasksUpdate' (Maybe Text)
tuuKey = lens _tuuKey (\ s a -> s{_tuuKey = a})

-- | Task list identifier.
tuuTasklist :: Lens' TasksUpdate' Text
tuuTasklist
  = lens _tuuTasklist (\ s a -> s{_tuuTasklist = a})

-- | Task identifier.
tuuTask :: Lens' TasksUpdate' Text
tuuTask = lens _tuuTask (\ s a -> s{_tuuTask = a})

-- | OAuth 2.0 token for the current user.
tuuOauthToken :: Lens' TasksUpdate' (Maybe Text)
tuuOauthToken
  = lens _tuuOauthToken
      (\ s a -> s{_tuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuuFields :: Lens' TasksUpdate' (Maybe Text)
tuuFields
  = lens _tuuFields (\ s a -> s{_tuuFields = a})

-- | Data format for the response.
tuuAlt :: Lens' TasksUpdate' Alt
tuuAlt = lens _tuuAlt (\ s a -> s{_tuuAlt = a})

instance GoogleRequest TasksUpdate' where
        type Rs TasksUpdate' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksUpdate'{..}
          = go _tuuQuotaUser (Just _tuuPrettyPrint) _tuuUserIp
              _tuuKey
              _tuuTasklist
              _tuuTask
              _tuuOauthToken
              _tuuFields
              (Just _tuuAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksUpdateResource)
                      r
                      u
