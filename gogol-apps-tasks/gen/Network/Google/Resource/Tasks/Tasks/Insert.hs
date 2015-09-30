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
-- Module      : Network.Google.Resource.Tasks.Tasks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new task on the specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksInsert@.
module Network.Google.Resource.Tasks.Tasks.Insert
    (
    -- * REST Resource
      TasksInsertResource

    -- * Creating a Request
    , tasksInsert'
    , TasksInsert'

    -- * Request Lenses
    , tiiParent
    , tiiQuotaUser
    , tiiPrettyPrint
    , tiiUserIp
    , tiiKey
    , tiiTasklist
    , tiiOauthToken
    , tiiFields
    , tiiPrevious
    , tiiAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksInsert@ which the
-- 'TasksInsert'' request conforms to.
type TasksInsertResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           QueryParam "parent" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "previous" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Task

-- | Creates a new task on the specified task list.
--
-- /See:/ 'tasksInsert'' smart constructor.
data TasksInsert' = TasksInsert'
    { _tiiParent      :: !(Maybe Text)
    , _tiiQuotaUser   :: !(Maybe Text)
    , _tiiPrettyPrint :: !Bool
    , _tiiUserIp      :: !(Maybe Text)
    , _tiiKey         :: !(Maybe Text)
    , _tiiTasklist    :: !Text
    , _tiiOauthToken  :: !(Maybe Text)
    , _tiiFields      :: !(Maybe Text)
    , _tiiPrevious    :: !(Maybe Text)
    , _tiiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiParent'
--
-- * 'tiiQuotaUser'
--
-- * 'tiiPrettyPrint'
--
-- * 'tiiUserIp'
--
-- * 'tiiKey'
--
-- * 'tiiTasklist'
--
-- * 'tiiOauthToken'
--
-- * 'tiiFields'
--
-- * 'tiiPrevious'
--
-- * 'tiiAlt'
tasksInsert'
    :: Text -- ^ 'tasklist'
    -> TasksInsert'
tasksInsert' pTiiTasklist_ =
    TasksInsert'
    { _tiiParent = Nothing
    , _tiiQuotaUser = Nothing
    , _tiiPrettyPrint = True
    , _tiiUserIp = Nothing
    , _tiiKey = Nothing
    , _tiiTasklist = pTiiTasklist_
    , _tiiOauthToken = Nothing
    , _tiiFields = Nothing
    , _tiiPrevious = Nothing
    , _tiiAlt = JSON
    }

-- | Parent task identifier. If the task is created at the top level, this
-- parameter is omitted. Optional.
tiiParent :: Lens' TasksInsert' (Maybe Text)
tiiParent
  = lens _tiiParent (\ s a -> s{_tiiParent = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiiQuotaUser :: Lens' TasksInsert' (Maybe Text)
tiiQuotaUser
  = lens _tiiQuotaUser (\ s a -> s{_tiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiiPrettyPrint :: Lens' TasksInsert' Bool
tiiPrettyPrint
  = lens _tiiPrettyPrint
      (\ s a -> s{_tiiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiiUserIp :: Lens' TasksInsert' (Maybe Text)
tiiUserIp
  = lens _tiiUserIp (\ s a -> s{_tiiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiiKey :: Lens' TasksInsert' (Maybe Text)
tiiKey = lens _tiiKey (\ s a -> s{_tiiKey = a})

-- | Task list identifier.
tiiTasklist :: Lens' TasksInsert' Text
tiiTasklist
  = lens _tiiTasklist (\ s a -> s{_tiiTasklist = a})

-- | OAuth 2.0 token for the current user.
tiiOauthToken :: Lens' TasksInsert' (Maybe Text)
tiiOauthToken
  = lens _tiiOauthToken
      (\ s a -> s{_tiiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiiFields :: Lens' TasksInsert' (Maybe Text)
tiiFields
  = lens _tiiFields (\ s a -> s{_tiiFields = a})

-- | Previous sibling task identifier. If the task is created at the first
-- position among its siblings, this parameter is omitted. Optional.
tiiPrevious :: Lens' TasksInsert' (Maybe Text)
tiiPrevious
  = lens _tiiPrevious (\ s a -> s{_tiiPrevious = a})

-- | Data format for the response.
tiiAlt :: Lens' TasksInsert' Alt
tiiAlt = lens _tiiAlt (\ s a -> s{_tiiAlt = a})

instance GoogleRequest TasksInsert' where
        type Rs TasksInsert' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksInsert'{..}
          = go _tiiParent _tiiQuotaUser (Just _tiiPrettyPrint)
              _tiiUserIp
              _tiiKey
              _tiiTasklist
              _tiiOauthToken
              _tiiFields
              _tiiPrevious
              (Just _tiiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksInsertResource)
                      r
                      u
