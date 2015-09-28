{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasklists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.get@.
module Network.Google.API.Tasks.Tasklists.Get
    (
    -- * REST Resource
      TasklistsGetAPI

    -- * Creating a Request
    , tasklistsGet'
    , TasklistsGet'

    -- * Request Lenses
    , tggQuotaUser
    , tggPrettyPrint
    , tggUserIp
    , tggKey
    , tggTasklist
    , tggOauthToken
    , tggFields
    , tggAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasklists.get which the
-- 'TasklistsGet'' request conforms to.
type TasklistsGetAPI =
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
                         QueryParam "alt" Alt :> Get '[JSON] TaskList

-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ 'tasklistsGet'' smart constructor.
data TasklistsGet' = TasklistsGet'
    { _tggQuotaUser   :: !(Maybe Text)
    , _tggPrettyPrint :: !Bool
    , _tggUserIp      :: !(Maybe Text)
    , _tggKey         :: !(Maybe Text)
    , _tggTasklist    :: !Text
    , _tggOauthToken  :: !(Maybe Text)
    , _tggFields      :: !(Maybe Text)
    , _tggAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tggQuotaUser'
--
-- * 'tggPrettyPrint'
--
-- * 'tggUserIp'
--
-- * 'tggKey'
--
-- * 'tggTasklist'
--
-- * 'tggOauthToken'
--
-- * 'tggFields'
--
-- * 'tggAlt'
tasklistsGet'
    :: Text -- ^ 'tasklist'
    -> TasklistsGet'
tasklistsGet' pTggTasklist_ =
    TasklistsGet'
    { _tggQuotaUser = Nothing
    , _tggPrettyPrint = True
    , _tggUserIp = Nothing
    , _tggKey = Nothing
    , _tggTasklist = pTggTasklist_
    , _tggOauthToken = Nothing
    , _tggFields = Nothing
    , _tggAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tggQuotaUser :: Lens' TasklistsGet' (Maybe Text)
tggQuotaUser
  = lens _tggQuotaUser (\ s a -> s{_tggQuotaUser = a})

-- | Returns response with indentations and line breaks.
tggPrettyPrint :: Lens' TasklistsGet' Bool
tggPrettyPrint
  = lens _tggPrettyPrint
      (\ s a -> s{_tggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tggUserIp :: Lens' TasklistsGet' (Maybe Text)
tggUserIp
  = lens _tggUserIp (\ s a -> s{_tggUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tggKey :: Lens' TasklistsGet' (Maybe Text)
tggKey = lens _tggKey (\ s a -> s{_tggKey = a})

-- | Task list identifier.
tggTasklist :: Lens' TasklistsGet' Text
tggTasklist
  = lens _tggTasklist (\ s a -> s{_tggTasklist = a})

-- | OAuth 2.0 token for the current user.
tggOauthToken :: Lens' TasklistsGet' (Maybe Text)
tggOauthToken
  = lens _tggOauthToken
      (\ s a -> s{_tggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tggFields :: Lens' TasklistsGet' (Maybe Text)
tggFields
  = lens _tggFields (\ s a -> s{_tggFields = a})

-- | Data format for the response.
tggAlt :: Lens' TasklistsGet' Alt
tggAlt = lens _tggAlt (\ s a -> s{_tggAlt = a})

instance GoogleRequest TasklistsGet' where
        type Rs TasklistsGet' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsGet'{..}
          = go _tggQuotaUser (Just _tggPrettyPrint) _tggUserIp
              _tggKey
              _tggTasklist
              _tggOauthToken
              _tggFields
              (Just _tggAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsGetAPI) r
                      u
