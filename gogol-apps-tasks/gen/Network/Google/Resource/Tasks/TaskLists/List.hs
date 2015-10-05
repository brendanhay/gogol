{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Tasks.TaskLists.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsList@.
module Network.Google.Resource.Tasks.TaskLists.List
    (
    -- * REST Resource
      TaskListsListResource

    -- * Creating a Request
    , taskListsList'
    , TaskListsList'

    -- * Request Lenses
    , tllQuotaUser
    , tllPrettyPrint
    , tllUserIP
    , tllKey
    , tllPageToken
    , tllOAuthToken
    , tllMaxResults
    , tllFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsList@ which the
-- 'TaskListsList'' request conforms to.
type TaskListsListResource =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int64 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] TaskLists

-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ 'taskListsList'' smart constructor.
data TaskListsList' = TaskListsList'
    { _tllQuotaUser   :: !(Maybe Text)
    , _tllPrettyPrint :: !Bool
    , _tllUserIP      :: !(Maybe Text)
    , _tllKey         :: !(Maybe AuthKey)
    , _tllPageToken   :: !(Maybe Text)
    , _tllOAuthToken  :: !(Maybe OAuthToken)
    , _tllMaxResults  :: !(Maybe Int64)
    , _tllFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllQuotaUser'
--
-- * 'tllPrettyPrint'
--
-- * 'tllUserIP'
--
-- * 'tllKey'
--
-- * 'tllPageToken'
--
-- * 'tllOAuthToken'
--
-- * 'tllMaxResults'
--
-- * 'tllFields'
taskListsList'
    :: TaskListsList'
taskListsList' =
    TaskListsList'
    { _tllQuotaUser = Nothing
    , _tllPrettyPrint = True
    , _tllUserIP = Nothing
    , _tllKey = Nothing
    , _tllPageToken = Nothing
    , _tllOAuthToken = Nothing
    , _tllMaxResults = Nothing
    , _tllFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tllQuotaUser :: Lens' TaskListsList' (Maybe Text)
tllQuotaUser
  = lens _tllQuotaUser (\ s a -> s{_tllQuotaUser = a})

-- | Returns response with indentations and line breaks.
tllPrettyPrint :: Lens' TaskListsList' Bool
tllPrettyPrint
  = lens _tllPrettyPrint
      (\ s a -> s{_tllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tllUserIP :: Lens' TaskListsList' (Maybe Text)
tllUserIP
  = lens _tllUserIP (\ s a -> s{_tllUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tllKey :: Lens' TaskListsList' (Maybe AuthKey)
tllKey = lens _tllKey (\ s a -> s{_tllKey = a})

-- | Token specifying the result page to return. Optional.
tllPageToken :: Lens' TaskListsList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | OAuth 2.0 token for the current user.
tllOAuthToken :: Lens' TaskListsList' (Maybe OAuthToken)
tllOAuthToken
  = lens _tllOAuthToken
      (\ s a -> s{_tllOAuthToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tllMaxResults :: Lens' TaskListsList' (Maybe Int64)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tllFields :: Lens' TaskListsList' (Maybe Text)
tllFields
  = lens _tllFields (\ s a -> s{_tllFields = a})

instance GoogleAuth TaskListsList' where
        authKey = tllKey . _Just
        authToken = tllOAuthToken . _Just

instance GoogleRequest TaskListsList' where
        type Rs TaskListsList' = TaskLists
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TaskListsList'{..}
          = go _tllPageToken _tllMaxResults _tllQuotaUser
              (Just _tllPrettyPrint)
              _tllUserIP
              _tllFields
              _tllKey
              _tllOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TaskListsListResource)
                      r
                      u
