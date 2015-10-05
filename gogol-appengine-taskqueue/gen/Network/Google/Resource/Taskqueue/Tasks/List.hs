{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Taskqueue.Tasks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List Tasks in a TaskQueue
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTasksList@.
module Network.Google.Resource.Taskqueue.Tasks.List
    (
    -- * REST Resource
      TasksListResource

    -- * Creating a Request
    , tasksList'
    , TasksList'

    -- * Request Lenses
    , tTaskqueue
    , tQuotaUser
    , tPrettyPrint
    , tProject
    , tUserIP
    , tKey
    , tOAuthToken
    , tFields
    ) where

import           Network.Google.AppEngineTaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for @TaskqueueTasksList@ which the
-- 'TasksList'' request conforms to.
type TasksListResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           "tasks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Tasks2

-- | List Tasks in a TaskQueue
--
-- /See:/ 'tasksList'' smart constructor.
data TasksList' = TasksList'
    { _tTaskqueue   :: !Text
    , _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tProject     :: !Text
    , _tUserIP      :: !(Maybe Text)
    , _tKey         :: !(Maybe Key)
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tTaskqueue'
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tProject'
--
-- * 'tUserIP'
--
-- * 'tKey'
--
-- * 'tOAuthToken'
--
-- * 'tFields'
tasksList'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TasksList'
tasksList' pTTaskqueue_ pTProject_ =
    TasksList'
    { _tTaskqueue = pTTaskqueue_
    , _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tProject = pTProject_
    , _tUserIP = Nothing
    , _tKey = Nothing
    , _tOAuthToken = Nothing
    , _tFields = Nothing
    }

-- | The id of the taskqueue to list tasks from.
tTaskqueue :: Lens' TasksList' Text
tTaskqueue
  = lens _tTaskqueue (\ s a -> s{_tTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TasksList' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TasksList' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | The project under which the queue lies.
tProject :: Lens' TasksList' Text
tProject = lens _tProject (\ s a -> s{_tProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIP :: Lens' TasksList' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TasksList' (Maybe Key)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TasksList' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TasksList' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

instance GoogleAuth TasksList' where
        authKey = tKey . _Just
        authToken = tOAuthToken . _Just

instance GoogleRequest TasksList' where
        type Rs TasksList' = Tasks2
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TasksList'{..}
          = go _tProject _tTaskqueue _tQuotaUser
              (Just _tPrettyPrint)
              _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksListResource)
                      r
                      u
