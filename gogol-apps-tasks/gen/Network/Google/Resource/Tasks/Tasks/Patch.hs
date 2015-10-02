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
-- Module      : Network.Google.Resource.Tasks.Tasks.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksPatch@.
module Network.Google.Resource.Tasks.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchResource

    -- * Creating a Request
    , tasksPatch'
    , TasksPatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIP
    , tpKey
    , tpTaskList
    , tpTask
    , tpTask
    , tpOAuthToken
    , tpFields
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksPatch@ which the
-- 'TasksPatch'' request conforms to.
type TasksPatchResource =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :>
           Capture "task" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Task :> Patch '[JSON] Task

-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ 'tasksPatch'' smart constructor.
data TasksPatch' = TasksPatch'
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpUserIP      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Key)
    , _tpTaskList    :: !Text
    , _tpTask        :: !Task
    , _tpTask        :: !Text
    , _tpOAuthToken  :: !(Maybe OAuthToken)
    , _tpFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIP'
--
-- * 'tpKey'
--
-- * 'tpTaskList'
--
-- * 'tpTask'
--
-- * 'tpTask'
--
-- * 'tpOAuthToken'
--
-- * 'tpFields'
tasksPatch'
    :: Text -- ^ 'tasklist'
    -> Task -- ^ 'Task'
    -> Text -- ^ 'task'
    -> TasksPatch'
tasksPatch' pTpTaskList_ pTpTask_ pTpTask_ =
    TasksPatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIP = Nothing
    , _tpKey = Nothing
    , _tpTaskList = pTpTaskList_
    , _tpTask = pTpTask_
    , _tpTask = pTpTask_
    , _tpOAuthToken = Nothing
    , _tpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TasksPatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TasksPatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIP :: Lens' TasksPatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TasksPatch' (Maybe Key)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | Task list identifier.
tpTaskList :: Lens' TasksPatch' Text
tpTaskList
  = lens _tpTaskList (\ s a -> s{_tpTaskList = a})

-- | Multipart request metadata.
tpTask :: Lens' TasksPatch' Task
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | Task identifier.
tpTask :: Lens' TasksPatch' Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TasksPatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TasksPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TasksPatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TasksPatch' where
        type Rs TasksPatch' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksPatch'{..}
          = go _tpQuotaUser (Just _tpPrettyPrint) _tpUserIP
              _tpKey
              _tpTaskList
              _tpTask
              _tpOAuthToken
              _tpFields
              (Just AltJSON)
              _tpTask
          where go
                  = clientWithRoute (Proxy :: Proxy TasksPatchResource)
                      r
                      u
