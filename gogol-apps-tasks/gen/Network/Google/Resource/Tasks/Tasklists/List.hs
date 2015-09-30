{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Tasks.Tasklists.List
    (
    -- * REST Resource
      TasklistsListAPI

    -- * Creating a Request
    , tasklistsList
    , TasklistsList

    -- * Request Lenses
    , tasQuotaUser
    , tasPrettyPrint
    , tasUserIp
    , tasKey
    , tasPageToken
    , tasOauthToken
    , tasMaxResults
    , tasFields
    , tasAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsList@ which the
-- 'TasklistsList' request conforms to.
type TasklistsListAPI =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Int64 :>
               Get '[JSON] TaskLists

-- | Returns all the authenticated user\'s task lists.
--
-- /See:/ 'tasklistsList' smart constructor.
data TasklistsList = TasklistsList
    { _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasUserIp      :: !(Maybe Text)
    , _tasKey         :: !(Maybe Text)
    , _tasPageToken   :: !(Maybe Text)
    , _tasOauthToken  :: !(Maybe Text)
    , _tasMaxResults  :: !(Maybe Int64)
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsList'' with the minimum fields required to make a request.
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
-- * 'tasPageToken'
--
-- * 'tasOauthToken'
--
-- * 'tasMaxResults'
--
-- * 'tasFields'
--
-- * 'tasAlt'
tasklistsList
    :: TasklistsList
tasklistsList =
    TasklistsList
    { _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasUserIp = Nothing
    , _tasKey = Nothing
    , _tasPageToken = Nothing
    , _tasOauthToken = Nothing
    , _tasMaxResults = Nothing
    , _tasFields = Nothing
    , _tasAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TasklistsList' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TasklistsList' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TasklistsList' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TasklistsList' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | Token specifying the result page to return. Optional.
tasPageToken :: Lens' TasklistsList' (Maybe Text)
tasPageToken
  = lens _tasPageToken (\ s a -> s{_tasPageToken = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TasklistsList' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | Maximum number of task lists returned on one page. Optional. The default
-- is 100.
tasMaxResults :: Lens' TasklistsList' (Maybe Int64)
tasMaxResults
  = lens _tasMaxResults
      (\ s a -> s{_tasMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TasklistsList' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TasklistsList' Text
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TasklistsList' where
        type Rs TasklistsList' = TaskLists
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsList{..}
          = go _tasQuotaUser _tasPrettyPrint _tasUserIp _tasKey
              _tasPageToken
              _tasOauthToken
              _tasMaxResults
              _tasFields
              _tasAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsListAPI) r
                      u
