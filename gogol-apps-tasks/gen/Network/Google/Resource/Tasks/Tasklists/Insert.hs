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
-- Module      : Network.Google.Resource.Tasks.Tasklists.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsInsert@.
module Network.Google.Resource.Tasks.Tasklists.Insert
    (
    -- * REST Resource
      TasklistsInsertResource

    -- * Creating a Request
    , tasklistsInsert'
    , TasklistsInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIp
    , tiKey
    , tiOauthToken
    , tiFields
    , tiAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsInsert@ which the
-- 'TasklistsInsert'' request conforms to.
type TasklistsInsertResource =
     "users" :>
       "@me" :>
         "lists" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] TaskList

-- | Creates a new task list and adds it to the authenticated user\'s task
-- lists.
--
-- /See:/ 'tasklistsInsert'' smart constructor.
data TasklistsInsert' = TasklistsInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiOauthToken  :: !(Maybe Text)
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiOauthToken'
--
-- * 'tiFields'
--
-- * 'tiAlt'
tasklistsInsert'
    :: TasklistsInsert'
tasklistsInsert' =
    TasklistsInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiOauthToken = Nothing
    , _tiFields = Nothing
    , _tiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TasklistsInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TasklistsInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIp :: Lens' TasklistsInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TasklistsInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TasklistsInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TasklistsInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TasklistsInsert' Alt
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TasklistsInsert' where
        type Rs TasklistsInsert' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIp
              _tiKey
              _tiOauthToken
              _tiFields
              (Just _tiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasklistsInsertResource)
                      r
                      u
