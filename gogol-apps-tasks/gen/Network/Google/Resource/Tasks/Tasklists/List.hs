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
-- Module      : Network.Google.Resource.Tasks.Tasklists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsList@.
module Network.Google.Resource.Tasks.Tasklists.List
    (
    -- * REST Resource
      TasklistsListResource

    -- * Creating a Request
    , tasklistsList'
    , TasklistsList'

    -- * Request Lenses
    , tllQuotaUser
    , tllPrettyPrint
    , tllUserIp
    , tllKey
    , tllPageToken
    , tllOauthToken
    , tllMaxResults
    , tllFields
    , tllAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsList@ which the
-- 'TasklistsList'' request conforms to.
type TasklistsListResource =
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
    { _tllQuotaUser   :: !(Maybe Text)
    , _tllPrettyPrint :: !Bool
    , _tllUserIp      :: !(Maybe Text)
    , _tllKey         :: !(Maybe Text)
    , _tllPageToken   :: !(Maybe Text)
    , _tllOauthToken  :: !(Maybe Text)
    , _tllMaxResults  :: !(Maybe Int64)
    , _tllFields      :: !(Maybe Text)
    , _tllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllQuotaUser'
--
-- * 'tllPrettyPrint'
--
-- * 'tllUserIp'
--
-- * 'tllKey'
--
-- * 'tllPageToken'
--
-- * 'tllOauthToken'
--
-- * 'tllMaxResults'
--
-- * 'tllFields'
--
-- * 'tllAlt'
tasklistsList'
    :: TasklistsList'
tasklistsList' =
    TasklistsList'
    { _tllQuotaUser = Nothing
    , _tllPrettyPrint = True
    , _tllUserIp = Nothing
    , _tllKey = Nothing
    , _tllPageToken = Nothing
    , _tllOauthToken = Nothing
    , _tllMaxResults = Nothing
    , _tllFields = Nothing
    , _tllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tllQuotaUser :: Lens' TasklistsList' (Maybe Text)
tllQuotaUser
  = lens _tllQuotaUser (\ s a -> s{_tllQuotaUser = a})

-- | Returns response with indentations and line breaks.
tllPrettyPrint :: Lens' TasklistsList' Bool
tllPrettyPrint
  = lens _tllPrettyPrint
      (\ s a -> s{_tllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tllUserIp :: Lens' TasklistsList' (Maybe Text)
tllUserIp
  = lens _tllUserIp (\ s a -> s{_tllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tllKey :: Lens' TasklistsList' (Maybe Text)
tllKey = lens _tllKey (\ s a -> s{_tllKey = a})

-- | Token specifying the result page to return. Optional.
tllPageToken :: Lens' TasklistsList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | OAuth 2.0 token for the current user.
tllOauthToken :: Lens' TasklistsList' (Maybe Text)
tllOauthToken
  = lens _tllOauthToken
      (\ s a -> s{_tllOauthToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tllMaxResults :: Lens' TasklistsList' (Maybe Int64)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tllFields :: Lens' TasklistsList' (Maybe Text)
tllFields
  = lens _tllFields (\ s a -> s{_tllFields = a})

-- | Data format for the response.
tllAlt :: Lens' TasklistsList' Alt
tllAlt = lens _tllAlt (\ s a -> s{_tllAlt = a})

instance GoogleRequest TasklistsList' where
        type Rs TasklistsList' = TaskLists
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsList'{..}
          = go _tllQuotaUser (Just _tllPrettyPrint) _tllUserIp
              _tllKey
              _tllPageToken
              _tllOauthToken
              _tllMaxResults
              _tllFields
              (Just _tllAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasklistsListResource)
                      r
                      u
