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
-- Module      : Network.Google.Resource.Tasks.TaskLists.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTaskListsDelete@.
module Network.Google.Resource.Tasks.TaskLists.Delete
    (
    -- * REST Resource
      TaskListsDeleteResource

    -- * Creating a Request
    , taskListsDelete'
    , TaskListsDelete'

    -- * Request Lenses
    , tldQuotaUser
    , tldPrettyPrint
    , tldUserIP
    , tldKey
    , tldTaskList
    , tldOAuthToken
    , tldFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTaskListsDelete@ method which the
-- 'TaskListsDelete'' request conforms to.
type TaskListsDeleteResource =
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
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'taskListsDelete'' smart constructor.
data TaskListsDelete' = TaskListsDelete'
    { _tldQuotaUser   :: !(Maybe Text)
    , _tldPrettyPrint :: !Bool
    , _tldUserIP      :: !(Maybe Text)
    , _tldKey         :: !(Maybe AuthKey)
    , _tldTaskList    :: !Text
    , _tldOAuthToken  :: !(Maybe OAuthToken)
    , _tldFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskListsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tldQuotaUser'
--
-- * 'tldPrettyPrint'
--
-- * 'tldUserIP'
--
-- * 'tldKey'
--
-- * 'tldTaskList'
--
-- * 'tldOAuthToken'
--
-- * 'tldFields'
taskListsDelete'
    :: Text -- ^ 'tasklist'
    -> TaskListsDelete'
taskListsDelete' pTldTaskList_ =
    TaskListsDelete'
    { _tldQuotaUser = Nothing
    , _tldPrettyPrint = True
    , _tldUserIP = Nothing
    , _tldKey = Nothing
    , _tldTaskList = pTldTaskList_
    , _tldOAuthToken = Nothing
    , _tldFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tldQuotaUser :: Lens' TaskListsDelete' (Maybe Text)
tldQuotaUser
  = lens _tldQuotaUser (\ s a -> s{_tldQuotaUser = a})

-- | Returns response with indentations and line breaks.
tldPrettyPrint :: Lens' TaskListsDelete' Bool
tldPrettyPrint
  = lens _tldPrettyPrint
      (\ s a -> s{_tldPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tldUserIP :: Lens' TaskListsDelete' (Maybe Text)
tldUserIP
  = lens _tldUserIP (\ s a -> s{_tldUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tldKey :: Lens' TaskListsDelete' (Maybe AuthKey)
tldKey = lens _tldKey (\ s a -> s{_tldKey = a})

-- | Task list identifier.
tldTaskList :: Lens' TaskListsDelete' Text
tldTaskList
  = lens _tldTaskList (\ s a -> s{_tldTaskList = a})

-- | OAuth 2.0 token for the current user.
tldOAuthToken :: Lens' TaskListsDelete' (Maybe OAuthToken)
tldOAuthToken
  = lens _tldOAuthToken
      (\ s a -> s{_tldOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tldFields :: Lens' TaskListsDelete' (Maybe Text)
tldFields
  = lens _tldFields (\ s a -> s{_tldFields = a})

instance GoogleAuth TaskListsDelete' where
        _AuthKey = tldKey . _Just
        _AuthToken = tldOAuthToken . _Just

instance GoogleRequest TaskListsDelete' where
        type Rs TaskListsDelete' = ()
        request = requestWith appsTasksRequest
        requestWith rq TaskListsDelete'{..}
          = go _tldTaskList _tldQuotaUser
              (Just _tldPrettyPrint)
              _tldUserIP
              _tldFields
              _tldKey
              _tldOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy TaskListsDeleteResource)
                      rq
