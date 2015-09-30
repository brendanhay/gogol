{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksInsert@.
module Tasks.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertAPI

    -- * Creating a Request
    , tasksInsert
    , TasksInsert

    -- * Request Lenses
    , tiParent
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIp
    , tiKey
    , tiTasklist
    , tiOauthToken
    , tiFields
    , tiPrevious
    , tiAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksInsert@ which the
-- 'TasksInsert' request conforms to.
type TasksInsertAPI =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           QueryParam "parent" Text :>
             QueryParam "previous" Text :> Post '[JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'tasksInsert' smart constructor.
data TasksInsert = TasksInsert
    { _tiParent      :: !(Maybe Text)
    , _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiTasklist    :: !Text
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiPrevious    :: !(Maybe Text)
    , _tiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiParent'
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiTasklist'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiPrevious'
--
-- * 'tiAlt'
tasksInsert
    :: Text -- ^ 'tasklist'
    -> TasksInsert
tasksInsert pTiTasklist_ =
    TasksInsert
    { _tiParent = Nothing
    , _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiTasklist = pTiTasklist_
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiPrevious = Nothing
    , _tiAlt = "json"
    }

-- | Parent task identifier. If the task is created at the top level, this
-- parameter is omitted. Optional.
tiParent :: Lens' TasksInsert' (Maybe Text)
tiParent = lens _tiParent (\ s a -> s{_tiParent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TasksInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TasksInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIp :: Lens' TasksInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TasksInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | Task list identifier.
tiTasklist :: Lens' TasksInsert' Text
tiTasklist
  = lens _tiTasklist (\ s a -> s{_tiTasklist = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TasksInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TasksInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Previous sibling task identifier. If the task is created at the first
-- position among its siblings, this parameter is omitted. Optional.
tiPrevious :: Lens' TasksInsert' (Maybe Text)
tiPrevious
  = lens _tiPrevious (\ s a -> s{_tiPrevious = a})

-- | Data format for the response.
tiAlt :: Lens' TasksInsert' Text
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TasksInsert' where
        type Rs TasksInsert' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksInsert{..}
          = go _tiParent _tiQuotaUser _tiPrettyPrint _tiUserIp
              _tiKey
              _tiTasklist
              _tiOauthToken
              _tiFields
              _tiPrevious
              _tiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksInsertAPI) r u
