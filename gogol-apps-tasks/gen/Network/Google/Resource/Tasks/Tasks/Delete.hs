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
-- Module      : Network.Google.Resource.Tasks.Tasks.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified task from the task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksDelete@.
module Network.Google.Resource.Tasks.Tasks.Delete
    (
    -- * REST Resource
      TasksDeleteResource

    -- * Creating a Request
    , tasksDelete'
    , TasksDelete'

    -- * Request Lenses
    , tddQuotaUser
    , tddPrettyPrint
    , tddUserIp
    , tddKey
    , tddTasklist
    , tddTask
    , tddOauthToken
    , tddFields
    , tddAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksDelete@ which the
-- 'TasksDelete'' request conforms to.
type TasksDeleteResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes the specified task from the task list.
--
-- /See:/ 'tasksDelete'' smart constructor.
data TasksDelete' = TasksDelete'
    { _tddQuotaUser   :: !(Maybe Text)
    , _tddPrettyPrint :: !Bool
    , _tddUserIp      :: !(Maybe Text)
    , _tddKey         :: !(Maybe Text)
    , _tddTasklist    :: !Text
    , _tddTask        :: !Text
    , _tddOauthToken  :: !(Maybe Text)
    , _tddFields      :: !(Maybe Text)
    , _tddAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tddQuotaUser'
--
-- * 'tddPrettyPrint'
--
-- * 'tddUserIp'
--
-- * 'tddKey'
--
-- * 'tddTasklist'
--
-- * 'tddTask'
--
-- * 'tddOauthToken'
--
-- * 'tddFields'
--
-- * 'tddAlt'
tasksDelete'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksDelete'
tasksDelete' pTddTasklist_ pTddTask_ =
    TasksDelete'
    { _tddQuotaUser = Nothing
    , _tddPrettyPrint = True
    , _tddUserIp = Nothing
    , _tddKey = Nothing
    , _tddTasklist = pTddTasklist_
    , _tddTask = pTddTask_
    , _tddOauthToken = Nothing
    , _tddFields = Nothing
    , _tddAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tddQuotaUser :: Lens' TasksDelete' (Maybe Text)
tddQuotaUser
  = lens _tddQuotaUser (\ s a -> s{_tddQuotaUser = a})

-- | Returns response with indentations and line breaks.
tddPrettyPrint :: Lens' TasksDelete' Bool
tddPrettyPrint
  = lens _tddPrettyPrint
      (\ s a -> s{_tddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tddUserIp :: Lens' TasksDelete' (Maybe Text)
tddUserIp
  = lens _tddUserIp (\ s a -> s{_tddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tddKey :: Lens' TasksDelete' (Maybe Text)
tddKey = lens _tddKey (\ s a -> s{_tddKey = a})

-- | Task list identifier.
tddTasklist :: Lens' TasksDelete' Text
tddTasklist
  = lens _tddTasklist (\ s a -> s{_tddTasklist = a})

-- | Task identifier.
tddTask :: Lens' TasksDelete' Text
tddTask = lens _tddTask (\ s a -> s{_tddTask = a})

-- | OAuth 2.0 token for the current user.
tddOauthToken :: Lens' TasksDelete' (Maybe Text)
tddOauthToken
  = lens _tddOauthToken
      (\ s a -> s{_tddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tddFields :: Lens' TasksDelete' (Maybe Text)
tddFields
  = lens _tddFields (\ s a -> s{_tddFields = a})

-- | Data format for the response.
tddAlt :: Lens' TasksDelete' Alt
tddAlt = lens _tddAlt (\ s a -> s{_tddAlt = a})

instance GoogleRequest TasksDelete' where
        type Rs TasksDelete' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksDelete'{..}
          = go _tddQuotaUser (Just _tddPrettyPrint) _tddUserIp
              _tddKey
              _tddTasklist
              _tddTask
              _tddOauthToken
              _tddFields
              (Just _tddAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasksDeleteResource)
                      r
                      u
