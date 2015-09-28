{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasklists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.update@.
module Network.Google.API.Tasks.Tasklists.Update
    (
    -- * REST Resource
      TasklistsUpdateAPI

    -- * Creating a Request
    , tasklistsUpdate'
    , TasklistsUpdate'

    -- * Request Lenses
    , tasQuotaUser
    , tasPrettyPrint
    , tasUserIp
    , tasKey
    , tasTasklist
    , tasOauthToken
    , tasFields
    , tasAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasklists.update which the
-- 'TasklistsUpdate'' request conforms to.
type TasklistsUpdateAPI =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Put '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'tasklistsUpdate'' smart constructor.
data TasklistsUpdate' = TasklistsUpdate'
    { _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasUserIp      :: !(Maybe Text)
    , _tasKey         :: !(Maybe Text)
    , _tasTasklist    :: !Text
    , _tasOauthToken  :: !(Maybe Text)
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasUserIp'
--
-- * 'tasKey'
--
-- * 'tasTasklist'
--
-- * 'tasOauthToken'
--
-- * 'tasFields'
--
-- * 'tasAlt'
tasklistsUpdate'
    :: Text -- ^ 'tasklist'
    -> TasklistsUpdate'
tasklistsUpdate' pTasTasklist_ =
    TasklistsUpdate'
    { _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasUserIp = Nothing
    , _tasKey = Nothing
    , _tasTasklist = pTasTasklist_
    , _tasOauthToken = Nothing
    , _tasFields = Nothing
    , _tasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TasklistsUpdate' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TasklistsUpdate' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TasklistsUpdate' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TasklistsUpdate' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | Task list identifier.
tasTasklist :: Lens' TasklistsUpdate' Text
tasTasklist
  = lens _tasTasklist (\ s a -> s{_tasTasklist = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TasklistsUpdate' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TasklistsUpdate' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TasklistsUpdate' Alt
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TasklistsUpdate' where
        type Rs TasklistsUpdate' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsUpdate'{..}
          = go _tasQuotaUser (Just _tasPrettyPrint) _tasUserIp
              _tasKey
              _tasTasklist
              _tasOauthToken
              _tasFields
              (Just _tasAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsUpdateAPI)
                      r
                      u
