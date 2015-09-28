{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasklists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.list@.
module Network.Google.API.Tasks.Tasklists.List
    (
    -- * REST Resource
      TasklistsListAPI

    -- * Creating a Request
    , tasklistsList'
    , TasklistsList'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tPageToken
    , tOauthToken
    , tMaxResults
    , tFields
    , tAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasklists.list which the
-- 'TasklistsList'' request conforms to.
type TasklistsListAPI =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Int64 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] TaskLists

-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ 'tasklistsList'' smart constructor.
data TasklistsList' = TasklistsList'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tPageToken   :: !(Maybe Text)
    , _tOauthToken  :: !(Maybe Text)
    , _tMaxResults  :: !(Maybe Int64)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsList'' with the minimum fields required to make a request.
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
-- * 'tPageToken'
--
-- * 'tOauthToken'
--
-- * 'tMaxResults'
--
-- * 'tFields'
--
-- * 'tAlt'
tasklistsList'
    :: TasklistsList'
tasklistsList' =
    TasklistsList'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tPageToken = Nothing
    , _tOauthToken = Nothing
    , _tMaxResults = Nothing
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TasklistsList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TasklistsList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TasklistsList' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TasklistsList' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Token specifying the result page to return. Optional.
tPageToken :: Lens' TasklistsList' (Maybe Text)
tPageToken
  = lens _tPageToken (\ s a -> s{_tPageToken = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TasklistsList' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tMaxResults :: Lens' TasklistsList' (Maybe Int64)
tMaxResults
  = lens _tMaxResults (\ s a -> s{_tMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TasklistsList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TasklistsList' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TasklistsList' where
        type Rs TasklistsList' = TaskLists
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsList'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tPageToken
              _tOauthToken
              _tMaxResults
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsListAPI) r
                      u
