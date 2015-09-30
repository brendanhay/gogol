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
-- Module      : Network.Google.Resource.Tasks.Tasklists.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsGet@.
module Network.Google.Resource.Tasks.Tasklists.Get
    (
    -- * REST Resource
      TasklistsGetResource

    -- * Creating a Request
    , tasklistsGet'
    , TasklistsGet'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tTasklist
    , tOauthToken
    , tFields
    , tAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsGet@ which the
-- 'TasklistsGet'' request conforms to.
type TasklistsGetResource =
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
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tTasklist    :: !Text
    , _tOauthToken  :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tTasklist'
--
-- * 'tOauthToken'
--
-- * 'tFields'
--
-- * 'tAlt'
tasklistsGet'
    :: Text -- ^ 'tasklist'
    -> TasklistsGet'
tasklistsGet' pTTasklist_ =
    TasklistsGet'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tTasklist = pTTasklist_
    , _tOauthToken = Nothing
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TasklistsGet' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TasklistsGet' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TasklistsGet' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TasklistsGet' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Task list identifier.
tTasklist :: Lens' TasklistsGet' Text
tTasklist
  = lens _tTasklist (\ s a -> s{_tTasklist = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TasklistsGet' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TasklistsGet' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TasklistsGet' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TasklistsGet' where
        type Rs TasklistsGet' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsGet'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tTasklist
              _tOauthToken
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasklistsGetResource)
                      r
                      u
