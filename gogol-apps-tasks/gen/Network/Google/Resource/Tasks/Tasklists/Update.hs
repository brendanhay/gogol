{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasklists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsUpdate@.
module Tasks.Tasklists.Update
    (
    -- * REST Resource
      TasklistsUpdateAPI

    -- * Creating a Request
    , tasklistsUpdate
    , TasklistsUpdate

    -- * Request Lenses
    , tuuQuotaUser
    , tuuPrettyPrint
    , tuuUserIp
    , tuuKey
    , tuuTasklist
    , tuuOauthToken
    , tuuFields
    , tuuAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsUpdate@ which the
-- 'TasklistsUpdate' request conforms to.
type TasklistsUpdateAPI =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :> Put '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'tasklistsUpdate' smart constructor.
data TasklistsUpdate = TasklistsUpdate
    { _tuuQuotaUser   :: !(Maybe Text)
    , _tuuPrettyPrint :: !Bool
    , _tuuUserIp      :: !(Maybe Text)
    , _tuuKey         :: !(Maybe Text)
    , _tuuTasklist    :: !Text
    , _tuuOauthToken  :: !(Maybe Text)
    , _tuuFields      :: !(Maybe Text)
    , _tuuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsUpdate'' with the minimum fields required to make a request.
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
-- * 'tuuOauthToken'
--
-- * 'tuuFields'
--
-- * 'tuuAlt'
tasklistsUpdate
    :: Text -- ^ 'tasklist'
    -> TasklistsUpdate
tasklistsUpdate pTuuTasklist_ =
    TasklistsUpdate
    { _tuuQuotaUser = Nothing
    , _tuuPrettyPrint = True
    , _tuuUserIp = Nothing
    , _tuuKey = Nothing
    , _tuuTasklist = pTuuTasklist_
    , _tuuOauthToken = Nothing
    , _tuuFields = Nothing
    , _tuuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuuQuotaUser :: Lens' TasklistsUpdate' (Maybe Text)
tuuQuotaUser
  = lens _tuuQuotaUser (\ s a -> s{_tuuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuuPrettyPrint :: Lens' TasklistsUpdate' Bool
tuuPrettyPrint
  = lens _tuuPrettyPrint
      (\ s a -> s{_tuuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuuUserIp :: Lens' TasklistsUpdate' (Maybe Text)
tuuUserIp
  = lens _tuuUserIp (\ s a -> s{_tuuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuuKey :: Lens' TasklistsUpdate' (Maybe Text)
tuuKey = lens _tuuKey (\ s a -> s{_tuuKey = a})

-- | Task list identifier.
tuuTasklist :: Lens' TasklistsUpdate' Text
tuuTasklist
  = lens _tuuTasklist (\ s a -> s{_tuuTasklist = a})

-- | OAuth 2.0 token for the current user.
tuuOauthToken :: Lens' TasklistsUpdate' (Maybe Text)
tuuOauthToken
  = lens _tuuOauthToken
      (\ s a -> s{_tuuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuuFields :: Lens' TasklistsUpdate' (Maybe Text)
tuuFields
  = lens _tuuFields (\ s a -> s{_tuuFields = a})

-- | Data format for the response.
tuuAlt :: Lens' TasklistsUpdate' Text
tuuAlt = lens _tuuAlt (\ s a -> s{_tuuAlt = a})

instance GoogleRequest TasklistsUpdate' where
        type Rs TasklistsUpdate' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsUpdate{..}
          = go _tuuQuotaUser _tuuPrettyPrint _tuuUserIp _tuuKey
              _tuuTasklist
              _tuuOauthToken
              _tuuFields
              _tuuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsUpdateAPI)
                      r
                      u
