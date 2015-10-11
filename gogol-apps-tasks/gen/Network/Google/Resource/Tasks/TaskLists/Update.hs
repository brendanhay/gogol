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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsUpdate@.
module Network.Google.Resource.Tasks.TaskLists.Update
    (
    -- * REST Resource
      TaskListsUpdateResource

    -- * Creating a Request
    , taskListsUpdate'
    , TaskListsUpdate'

    -- * Request Lenses
    , tluQuotaUser
    , tluPrettyPrint
    , tluUserIP
    , tluPayload
    , tluKey
    , tluTaskList
    , tluOAuthToken
    , tluFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsUpdate@ method which the
-- 'TaskListsUpdate'' request conforms to.
type TaskListsUpdateResource =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TaskList :> Put '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsUpdate'' smart constructor.
data TaskListsUpdate' = TaskListsUpdate'
    { _tluQuotaUser   :: !(Maybe Text)
    , _tluPrettyPrint :: !Bool
    , _tluUserIP      :: !(Maybe Text)
    , _tluPayload     :: !TaskList
    , _tluKey         :: !(Maybe AuthKey)
    , _tluTaskList    :: !Text
    , _tluOAuthToken  :: !(Maybe OAuthToken)
    , _tluFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tluQuotaUser'
--
-- * 'tluPrettyPrint'
--
-- * 'tluUserIP'
--
-- * 'tluPayload'
--
-- * 'tluKey'
--
-- * 'tluTaskList'
--
-- * 'tluOAuthToken'
--
-- * 'tluFields'
taskListsUpdate'
    :: TaskList -- ^ 'payload'
    -> Text -- ^ 'tasklist'
    -> TaskListsUpdate'
taskListsUpdate' pTluPayload_ pTluTaskList_ =
    TaskListsUpdate'
    { _tluQuotaUser = Nothing
    , _tluPrettyPrint = True
    , _tluUserIP = Nothing
    , _tluPayload = pTluPayload_
    , _tluKey = Nothing
    , _tluTaskList = pTluTaskList_
    , _tluOAuthToken = Nothing
    , _tluFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tluQuotaUser :: Lens' TaskListsUpdate' (Maybe Text)
tluQuotaUser
  = lens _tluQuotaUser (\ s a -> s{_tluQuotaUser = a})

-- | Returns response with indentations and line breaks.
tluPrettyPrint :: Lens' TaskListsUpdate' Bool
tluPrettyPrint
  = lens _tluPrettyPrint
      (\ s a -> s{_tluPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tluUserIP :: Lens' TaskListsUpdate' (Maybe Text)
tluUserIP
  = lens _tluUserIP (\ s a -> s{_tluUserIP = a})

-- | Multipart request metadata.
tluPayload :: Lens' TaskListsUpdate' TaskList
tluPayload
  = lens _tluPayload (\ s a -> s{_tluPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tluKey :: Lens' TaskListsUpdate' (Maybe AuthKey)
tluKey = lens _tluKey (\ s a -> s{_tluKey = a})

-- | Task list identifier.
tluTaskList :: Lens' TaskListsUpdate' Text
tluTaskList
  = lens _tluTaskList (\ s a -> s{_tluTaskList = a})

-- | OAuth 2.0 token for the current user.
tluOAuthToken :: Lens' TaskListsUpdate' (Maybe OAuthToken)
tluOAuthToken
  = lens _tluOAuthToken
      (\ s a -> s{_tluOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tluFields :: Lens' TaskListsUpdate' (Maybe Text)
tluFields
  = lens _tluFields (\ s a -> s{_tluFields = a})

instance GoogleAuth TaskListsUpdate' where
        _AuthKey = tluKey . _Just
        _AuthToken = tluOAuthToken . _Just

instance GoogleRequest TaskListsUpdate' where
        type Rs TaskListsUpdate' = TaskList
        request = requestWith appsTasksRequest
        requestWith rq TaskListsUpdate'{..}
          = go _tluTaskList _tluQuotaUser
              (Just _tluPrettyPrint)
              _tluUserIP
              _tluFields
              _tluKey
              _tluOAuthToken
              (Just AltJSON)
              _tluPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TaskListsUpdateResource)
                      rq
