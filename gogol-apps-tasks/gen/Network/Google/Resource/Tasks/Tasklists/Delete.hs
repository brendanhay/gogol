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
-- Module      : Network.Google.Resource.Tasks.Tasklists.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsDelete@.
module Network.Google.Resource.Tasks.Tasklists.Delete
    (
    -- * REST Resource
      TasklistsDeleteResource

    -- * Creating a Request
    , tasklistsDelete'
    , TasklistsDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdTasklist
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsDelete@ which the
-- 'TasklistsDelete'' request conforms to.
type TasklistsDeleteResource =
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
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'tasklistsDelete'' smart constructor.
data TasklistsDelete' = TasklistsDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdTasklist    :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsDelete'' with the minimum fields required to make a request.
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
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tasklistsDelete'
    :: Text -- ^ 'tasklist'
    -> TasklistsDelete'
tasklistsDelete' pTdTasklist_ =
    TasklistsDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdTasklist = pTdTasklist_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TasklistsDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TasklistsDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIp :: Lens' TasklistsDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TasklistsDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | Task list identifier.
tdTasklist :: Lens' TasklistsDelete' Text
tdTasklist
  = lens _tdTasklist (\ s a -> s{_tdTasklist = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TasklistsDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TasklistsDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TasklistsDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TasklistsDelete' where
        type Rs TasklistsDelete' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdUserIp
              _tdKey
              _tdTasklist
              _tdOauthToken
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasklistsDeleteResource)
                      r
                      u
