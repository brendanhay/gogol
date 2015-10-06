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
-- Module      : Network.Google.Resource.Tasks.Tasks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified task.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksUpdate@.
module Network.Google.Resource.Tasks.Tasks.Update
    (
    -- * REST Resource
      TasksUpdateResource

    -- * Creating a Request
    , tasksUpdate'
    , TasksUpdate'

    -- * Request Lenses
    , tuQuotaUser
    , tuPrettyPrint
    , tuUserIP
    , tuPayload
    , tuKey
    , tuTaskList
    , tuTask
    , tuOAuthToken
    , tuFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksUpdate@ which the
-- 'TasksUpdate'' request conforms to.
type TasksUpdateResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Task :> Put '[JSON] Task

-- | Updates the specified task.
--
-- /See:/ 'tasksUpdate'' smart constructor.
data TasksUpdate' = TasksUpdate'
    { _tuQuotaUser   :: !(Maybe Text)
    , _tuPrettyPrint :: !Bool
    , _tuUserIP      :: !(Maybe Text)
    , _tuPayload     :: !Task
    , _tuKey         :: !(Maybe AuthKey)
    , _tuTaskList    :: !Text
    , _tuTask        :: !Text
    , _tuOAuthToken  :: !(Maybe OAuthToken)
    , _tuFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tuQuotaUser'
--
-- * 'tuPrettyPrint'
--
-- * 'tuUserIP'
--
-- * 'tuPayload'
--
-- * 'tuKey'
--
-- * 'tuTaskList'
--
-- * 'tuTask'
--
-- * 'tuOAuthToken'
--
-- * 'tuFields'
tasksUpdate'
    :: Task -- ^ 'payload'
    -> Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksUpdate'
tasksUpdate' pTuPayload_ pTuTaskList_ pTuTask_ =
    TasksUpdate'
    { _tuQuotaUser = Nothing
    , _tuPrettyPrint = True
    , _tuUserIP = Nothing
    , _tuPayload = pTuPayload_
    , _tuKey = Nothing
    , _tuTaskList = pTuTaskList_
    , _tuTask = pTuTask_
    , _tuOAuthToken = Nothing
    , _tuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tuQuotaUser :: Lens' TasksUpdate' (Maybe Text)
tuQuotaUser
  = lens _tuQuotaUser (\ s a -> s{_tuQuotaUser = a})

-- | Returns response with indentations and line breaks.
tuPrettyPrint :: Lens' TasksUpdate' Bool
tuPrettyPrint
  = lens _tuPrettyPrint
      (\ s a -> s{_tuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tuUserIP :: Lens' TasksUpdate' (Maybe Text)
tuUserIP = lens _tuUserIP (\ s a -> s{_tuUserIP = a})

-- | Multipart request metadata.
tuPayload :: Lens' TasksUpdate' Task
tuPayload
  = lens _tuPayload (\ s a -> s{_tuPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tuKey :: Lens' TasksUpdate' (Maybe AuthKey)
tuKey = lens _tuKey (\ s a -> s{_tuKey = a})

-- | Task list identifier.
tuTaskList :: Lens' TasksUpdate' Text
tuTaskList
  = lens _tuTaskList (\ s a -> s{_tuTaskList = a})

-- | Task identifier.
tuTask :: Lens' TasksUpdate' Text
tuTask = lens _tuTask (\ s a -> s{_tuTask = a})

-- | OAuth 2.0 token for the current user.
tuOAuthToken :: Lens' TasksUpdate' (Maybe OAuthToken)
tuOAuthToken
  = lens _tuOAuthToken (\ s a -> s{_tuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tuFields :: Lens' TasksUpdate' (Maybe Text)
tuFields = lens _tuFields (\ s a -> s{_tuFields = a})

instance GoogleAuth TasksUpdate' where
        authKey = tuKey . _Just
        authToken = tuOAuthToken . _Just

instance GoogleRequest TasksUpdate' where
        type Rs TasksUpdate' = Task
        request = requestWith appsTasksRequest
        requestWith rq TasksUpdate'{..}
          = go _tuTaskList _tuTask _tuQuotaUser
              (Just _tuPrettyPrint)
              _tuUserIP
              _tuFields
              _tuKey
              _tuOAuthToken
              (Just AltJSON)
              _tuPayload
          where go
                  = clientBuild (Proxy :: Proxy TasksUpdateResource) rq
