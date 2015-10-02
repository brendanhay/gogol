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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsGet@.
module Network.Google.Resource.Tasks.TaskLists.Get
    (
    -- * REST Resource
      TaskListsGetResource

    -- * Creating a Request
    , taskListsGet'
    , TaskListsGet'

    -- * Request Lenses
    , tlgQuotaUser
    , tlgPrettyPrint
    , tlgUserIP
    , tlgKey
    , tlgTaskList
    , tlgOAuthToken
    , tlgFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsGet@ which the
-- 'TaskListsGet'' request conforms to.
type TaskListsGetResource =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] TaskList

-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsGet'' smart constructor.
data TaskListsGet' = TaskListsGet'
    { _tlgQuotaUser   :: !(Maybe Text)
    , _tlgPrettyPrint :: !Bool
    , _tlgUserIP      :: !(Maybe Text)
    , _tlgKey         :: !(Maybe Key)
    , _tlgTaskList    :: !Text
    , _tlgOAuthToken  :: !(Maybe OAuthToken)
    , _tlgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlgQuotaUser'
--
-- * 'tlgPrettyPrint'
--
-- * 'tlgUserIP'
--
-- * 'tlgKey'
--
-- * 'tlgTaskList'
--
-- * 'tlgOAuthToken'
--
-- * 'tlgFields'
taskListsGet'
    :: Text -- ^ 'tasklist'
    -> TaskListsGet'
taskListsGet' pTlgTaskList_ =
    TaskListsGet'
    { _tlgQuotaUser = Nothing
    , _tlgPrettyPrint = True
    , _tlgUserIP = Nothing
    , _tlgKey = Nothing
    , _tlgTaskList = pTlgTaskList_
    , _tlgOAuthToken = Nothing
    , _tlgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlgQuotaUser :: Lens' TaskListsGet' (Maybe Text)
tlgQuotaUser
  = lens _tlgQuotaUser (\ s a -> s{_tlgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlgPrettyPrint :: Lens' TaskListsGet' Bool
tlgPrettyPrint
  = lens _tlgPrettyPrint
      (\ s a -> s{_tlgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlgUserIP :: Lens' TaskListsGet' (Maybe Text)
tlgUserIP
  = lens _tlgUserIP (\ s a -> s{_tlgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlgKey :: Lens' TaskListsGet' (Maybe Key)
tlgKey = lens _tlgKey (\ s a -> s{_tlgKey = a})

-- | Task list identifier.
tlgTaskList :: Lens' TaskListsGet' Text
tlgTaskList
  = lens _tlgTaskList (\ s a -> s{_tlgTaskList = a})

-- | OAuth 2.0 token for the current user.
tlgOAuthToken :: Lens' TaskListsGet' (Maybe OAuthToken)
tlgOAuthToken
  = lens _tlgOAuthToken
      (\ s a -> s{_tlgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlgFields :: Lens' TaskListsGet' (Maybe Text)
tlgFields
  = lens _tlgFields (\ s a -> s{_tlgFields = a})

instance GoogleAuth TaskListsGet' where
        authKey = tlgKey . _Just
        authToken = tlgOAuthToken . _Just

instance GoogleRequest TaskListsGet' where
        type Rs TaskListsGet' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TaskListsGet'{..}
          = go _tlgTaskList _tlgQuotaUser
              (Just _tlgPrettyPrint)
              _tlgUserIP
              _tlgFields
              _tlgKey
              _tlgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TaskListsGetResource)
                      r
                      u
