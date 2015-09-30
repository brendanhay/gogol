{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Tasks.Tasks.Patch
    (
    -- * REST Resource
      TasksPatchAPI

    -- * Creating a Request
    , tasksPatch
    , TasksPatch

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIp
    , tpKey
    , tpTasklist
    , tpTask
    , tpOauthToken
    , tpFields
    , tpAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksPatch@ which the
-- 'TasksPatch' request conforms to.
type TasksPatchAPI =
     "lists" :>
       Capture "tasklist" Text :>
         "tasks" :> Capture "task" Text :> Patch '[JSON] Task

-- | Updates the specified task. This method supports patch semantics.
--
-- /See:/ 'tasksPatch' smart constructor.
data TasksPatch = TasksPatch
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpUserIp      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Text)
    , _tpTasklist    :: !Text
    , _tpTask        :: !Text
    , _tpOauthToken  :: !(Maybe Text)
    , _tpFields      :: !(Maybe Text)
    , _tpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIp'
--
-- * 'tpKey'
--
-- * 'tpTasklist'
--
-- * 'tpTask'
--
-- * 'tpOauthToken'
--
-- * 'tpFields'
--
-- * 'tpAlt'
tasksPatch
    :: Text -- ^ 'tasklist'
    -> Text -- ^ 'task'
    -> TasksPatch
tasksPatch pTpTasklist_ pTpTask_ =
    TasksPatch
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIp = Nothing
    , _tpKey = Nothing
    , _tpTasklist = pTpTasklist_
    , _tpTask = pTpTask_
    , _tpOauthToken = Nothing
    , _tpFields = Nothing
    , _tpAlt = "json"
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
tpUserIp :: Lens' TasksPatch' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TasksPatch' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | Task list identifier.
tpTasklist :: Lens' TasksPatch' Text
tpTasklist
  = lens _tpTasklist (\ s a -> s{_tpTasklist = a})

-- | Task identifier.
tpTask :: Lens' TasksPatch' Text
tpTask = lens _tpTask (\ s a -> s{_tpTask = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TasksPatch' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TasksPatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TasksPatch' Text
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TasksPatch' where
        type Rs TasksPatch' = Task
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksPatch{..}
          = go _tpQuotaUser _tpPrettyPrint _tpUserIp _tpKey
              _tpTasklist
              _tpTask
              _tpOauthToken
              _tpFields
              _tpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasksPatchAPI) r u
