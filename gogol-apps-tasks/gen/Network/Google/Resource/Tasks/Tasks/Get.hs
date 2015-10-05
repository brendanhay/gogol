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
-- Module      : Network.Google.Resource.Tasks.Tasks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksGet@.
module Network.Google.Resource.Tasks.Tasks.Get
    (
    -- * REST Resource
      TasksGetResource

    -- * Creating a Request
    , tasksGet'
    , TasksGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIP
    , tgKey
    , tgTaskList
    , tgTask
    , tgOAuthToken
    , tgFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksGet@ which the
-- 'TasksGet'' request conforms to.
type TasksGetResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Task

-- | Returns the specified task.
--
-- /See:/ 'tasksGet'' smart constructor.
data TasksGet' = TasksGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIP      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Key)
    , _tgTaskList    :: !Text
    , _tgTask        :: !Text
    , _tgOAuthToken  :: !(Maybe OAuthToken)
    , _tgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIP'
--
-- * 'tgKey'
--
-- * 'tgTaskList'
--
-- * 'tgTask'
--
-- * 'tgOAuthToken'
--
-- * 'tgFields'
tasksGet'
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksGet'
tasksGet' pTgTaskList_ pTgTask_ =
    TasksGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIP = Nothing
    , _tgKey = Nothing
    , _tgTaskList = pTgTaskList_
    , _tgTask = pTgTask_
    , _tgOAuthToken = Nothing
    , _tgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TasksGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TasksGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIP :: Lens' TasksGet' (Maybe Text)
tgUserIP = lens _tgUserIP (\ s a -> s{_tgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TasksGet' (Maybe Key)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | Task list identifier.
tgTaskList :: Lens' TasksGet' Text
tgTaskList
  = lens _tgTaskList (\ s a -> s{_tgTaskList = a})

-- | Task identifier.
tgTask :: Lens' TasksGet' Text
tgTask = lens _tgTask (\ s a -> s{_tgTask = a})

-- | OAuth 2.0 token for the current user.
tgOAuthToken :: Lens' TasksGet' (Maybe OAuthToken)
tgOAuthToken
  = lens _tgOAuthToken (\ s a -> s{_tgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TasksGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

instance GoogleAuth TasksGet' where
        authKey = tgKey . _Just
        authToken = tgOAuthToken . _Just

instance GoogleRequest TasksGet' where
        type Rs TasksGet' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksGet'{..}
          = go _tgTaskList _tgTask _tgQuotaUser
              (Just _tgPrettyPrint)
              _tgUserIP
              _tgFields
              _tgKey
              _tgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksGetResource) r
                      u
