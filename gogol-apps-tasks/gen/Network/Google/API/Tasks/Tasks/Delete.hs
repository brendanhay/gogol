{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasks.delete@.
module Network.Google.API.Tasks.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteAPI

    -- * Creating a Request
    , tasksDelete'
    , TasksDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdTasklist
    , tdTask
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasks.delete which the
-- 'TasksDelete'' request conforms to.
type TasksDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'tasksDelete'' smart constructor.
data TasksDelete' = TasksDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdTasklist    :: !Text
    , _tdTask        :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdTasklist'
--
-- * 'tdTask'
--
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tasksDelete'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksDelete'
tasksDelete' pTdTasklist_ pTdTask_ =
    TasksDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdTasklist = pTdTasklist_
    , _tdTask = pTdTask_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TasksDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TasksDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TasksDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TasksDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | Task list identifier.
tdTasklist :: Lens' TasksDelete' Text
tdTasklist
  = lens _tdTasklist (\ s a -> s{_tdTasklist = a})

-- | Task identifier.
tdTask :: Lens' TasksDelete' Text
tdTask = lens _tdTask (\ s a -> s{_tdTask = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TasksDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TasksDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TasksDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TasksDelete' where
        type Rs TasksDelete' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdUserIp
              _tdKey
              _tdTasklist
              _tdTask
              _tdOauthToken
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksDeleteAPI) r u
