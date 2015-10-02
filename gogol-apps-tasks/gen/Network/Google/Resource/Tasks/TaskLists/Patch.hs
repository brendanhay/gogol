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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsPatch@.
module Network.Google.Resource.Tasks.TaskLists.Patch
    (
    -- * REST Resource
      TaskListsPatchResource

    -- * Creating a Request
    , taskListsPatch'
    , TaskListsPatch'

    -- * Request Lenses
    , tlpQuotaUser
    , tlpPrettyPrint
    , tlpUserIP
    , tlpKey
    , tlpTaskList
    , tlpTaskList
    , tlpOAuthToken
    , tlpFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsPatch@ which the
-- 'TaskListsPatch'' request conforms to.
type TaskListsPatchResource =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TaskList :> Patch '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ 'taskListsPatch'' smart constructor.
data TaskListsPatch' = TaskListsPatch'
    { _tlpQuotaUser   :: !(Maybe Text)
    , _tlpPrettyPrint :: !Bool
    , _tlpUserIP      :: !(Maybe Text)
    , _tlpKey         :: !(Maybe Key)
    , _tlpTaskList    :: !Text
    , _tlpTaskList    :: !TaskList
    , _tlpOAuthToken  :: !(Maybe OAuthToken)
    , _tlpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlpQuotaUser'
--
-- * 'tlpPrettyPrint'
--
-- * 'tlpUserIP'
--
-- * 'tlpKey'
--
-- * 'tlpTaskList'
--
-- * 'tlpTaskList'
--
-- * 'tlpOAuthToken'
--
-- * 'tlpFields'
taskListsPatch'
    :: Text -- ^ 'tasklist'
    -> TaskList -- ^ 'TaskList'
    -> TaskListsPatch'
taskListsPatch' pTlpTaskList_ pTlpTaskList_ =
    TaskListsPatch'
    { _tlpQuotaUser = Nothing
    , _tlpPrettyPrint = True
    , _tlpUserIP = Nothing
    , _tlpKey = Nothing
    , _tlpTaskList = pTlpTaskList_
    , _tlpTaskList = pTlpTaskList_
    , _tlpOAuthToken = Nothing
    , _tlpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlpQuotaUser :: Lens' TaskListsPatch' (Maybe Text)
tlpQuotaUser
  = lens _tlpQuotaUser (\ s a -> s{_tlpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlpPrettyPrint :: Lens' TaskListsPatch' Bool
tlpPrettyPrint
  = lens _tlpPrettyPrint
      (\ s a -> s{_tlpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlpUserIP :: Lens' TaskListsPatch' (Maybe Text)
tlpUserIP
  = lens _tlpUserIP (\ s a -> s{_tlpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlpKey :: Lens' TaskListsPatch' (Maybe Key)
tlpKey = lens _tlpKey (\ s a -> s{_tlpKey = a})

-- | Task list identifier.
tlpTaskList :: Lens' TaskListsPatch' Text
tlpTaskList
  = lens _tlpTaskList (\ s a -> s{_tlpTaskList = a})

-- | Multipart request metadata.
tlpTaskList :: Lens' TaskListsPatch' TaskList
tlpTaskList
  = lens _tlpTaskList (\ s a -> s{_tlpTaskList = a})

-- | OAuth 2.0 token for the current user.
tlpOAuthToken :: Lens' TaskListsPatch' (Maybe OAuthToken)
tlpOAuthToken
  = lens _tlpOAuthToken
      (\ s a -> s{_tlpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tlpFields :: Lens' TaskListsPatch' (Maybe Text)
tlpFields
  = lens _tlpFields (\ s a -> s{_tlpFields = a})

instance GoogleAuth TaskListsPatch' where
        authKey = tlpKey . _Just
        authToken = tlpOAuthToken . _Just

instance GoogleRequest TaskListsPatch' where
        type Rs TaskListsPatch' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TaskListsPatch'{..}
          = go _tlpQuotaUser (Just _tlpPrettyPrint) _tlpUserIP
              _tlpKey
              _tlpTaskList
              _tlpOAuthToken
              _tlpFields
              (Just AltJSON)
              _tlpTaskList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TaskListsPatchResource)
                      r
                      u
