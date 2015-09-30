{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksGet@.
module Tasks.Tasks.Get
    (
    -- * REST Resource
      TasksGetAPI

    -- * Creating a Request
    , tasksGet
    , TasksGet

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgTasklist
    , tgTask
    , tgOauthToken
    , tgFields
    , tgAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksGet@ which the
-- 'TasksGet' request conforms to.
type TasksGetAPI =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :> Capture "task" Text :> Get '[JSON] Task

-- | Returns the specified task.
--
-- /See:/ 'tasksGet' smart constructor.
data TasksGet = TasksGet
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgTasklist    :: !Text
    , _tgTask        :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgTasklist'
--
-- * 'tgTask'
--
-- * 'tgOauthToken'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tasksGet
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksGet
tasksGet pTgTasklist_ pTgTask_ =
    TasksGet
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgTasklist = pTgTasklist_
    , _tgTask = pTgTask_
    , _tgOauthToken = Nothing
    , _tgFields = Nothing
    , _tgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TasksGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TasksGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TasksGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TasksGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | Task list identifier.
tgTasklist :: Lens' TasksGet' Text
tgTasklist
  = lens _tgTasklist (\ s a -> s{_tgTasklist = a})

-- | Task identifier.
tgTask :: Lens' TasksGet' Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TasksGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TasksGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TasksGet' Text
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TasksGet' where
        type Rs TasksGet' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksGet{..}
          = go _tgQuotaUser _tgPrettyPrint _tgUserIp _tgKey
              _tgTasklist
              _tgTask
              _tgOauthToken
              _tgFields
              _tgAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksGetAPI) r u
