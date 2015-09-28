{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.update@.
module Network.Google.API.Tasks.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateAPI

    -- * Creating a Request
    , tasksUpdate'
    , TasksUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIp
    , tuKey
    , tuTasklist
    , tuTask
    , tuOauthToken
    , tuFields
    , tuAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasks.update which the
-- 'TasksUpdate'' request conforms to.
type TasksUpdateAPI =
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
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIp      :: !(Maybe Text)
    , _tuKey         :: !(Maybe Text)
    , _tuTasklist    :: !Text
    , _tuTask        :: !Text
    , _tuOauthToken  :: !(Maybe Text)
    , _tuFields      :: !(Maybe Text)
    , _tuAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIp'
--
-- * 'tuKey'
--
-- * 'tuTasklist'
--
-- * 'tuTask'
--
-- * 'tuOauthToken'
--
-- * 'tuFields'
--
-- * 'tuAlt'
tasksUpdate'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksUpdate'
tasksUpdate' pTuTasklist_ pTuTask_ =
    TasksUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIp = Nothing
    , _tuKey = Nothing
    , _tuTasklist = pTuTasklist_
    , _tuTask = pTuTask_
    , _tuOauthToken = Nothing
    , _tuFields = Nothing
    , _tuAlt = JSON
    }

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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIp :: Lens' TasksUpdate' (Maybe Text)
tuUserIp = lens _tuUserIp (\ s a -> s{_tuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TasksUpdate' (Maybe Text)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | Task list identifier.
tuTasklist :: Lens' TasksUpdate' Text
tuTasklist
  = lens _tuTasklist (\ s a -> s{_tuTasklist = a})

-- | Task identifier.
tuTask :: Lens' TasksUpdate' Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

-- | OAuth 2.0 token for the current user.
tuOauthToken :: Lens' TasksUpdate' (Maybe Text)
tuOauthToken
  = lens _tuOauthToken (\ s a -> s{_tuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TasksUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

-- | Data format for the response.
tuAlt :: Lens' TasksUpdate' Alt
tuAlt = lens _tuAlt (\ s a -> s{_tuAlt = a})

instance GoogleRequest TasksUpdate' where
        type Rs TasksUpdate' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksUpdate'{..}
          = go _tuQuotaUser (Just _tuPrettyPrint) _tuUserIp
              _tuKey
              _tuTasklist
              _tuTask
              _tuOauthToken
              _tuFields
              (Just _tuAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksUpdateAPI) r u
