{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Tasks.Tasklists.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsDelete@.
module Tasks.Tasklists.Delete
    (
    -- * REST Resource
      TasklistsDeleteAPI

    -- * Creating a Request
    , tasklistsDelete
    , TasklistsDelete

    -- * Request Lenses
    , tddQuotaUser
    , tddPrettyPrint
    , tddUserIp
    , tddKey
    , tddTasklist
    , tddOauthToken
    , tddFields
    , tddAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsDelete@ which the
-- 'TasklistsDelete' request conforms to.
type TasklistsDeleteAPI =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :> Delete '[JSON] ()

-- | Deletes the authenticated user\'s specified task list.
--
-- /See:/ 'tasklistsDelete' smart constructor.
data TasklistsDelete = TasklistsDelete
    { _tddQuotaUser   :: !(Maybe Text)
    , _tddPrettyPrint :: !Bool
    , _tddUserIp      :: !(Maybe Text)
    , _tddKey         :: !(Maybe Text)
    , _tddTasklist    :: !Text
    , _tddOauthToken  :: !(Maybe Text)
    , _tddFields      :: !(Maybe Text)
    , _tddAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsDelete'' with the minimum fields required to make a request.
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
-- * 'tddOauthToken'
--
-- * 'tddFields'
--
-- * 'tddAlt'
tasklistsDelete
    :: Text -- ^ 'tasklist'
    -> TasklistsDelete
tasklistsDelete pTddTasklist_ =
    TasklistsDelete
    { _tddQuotaUser = Nothing
    , _tddPrettyPrint = True
    , _tddUserIp = Nothing
    , _tddKey = Nothing
    , _tddTasklist = pTddTasklist_
    , _tddOauthToken = Nothing
    , _tddFields = Nothing
    , _tddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tddQuotaUser :: Lens' TasklistsDelete' (Maybe Text)
tddQuotaUser
  = lens _tddQuotaUser (\ s a -> s{_tddQuotaUser = a})

-- | Returns response with indentations and line breaks.
tddPrettyPrint :: Lens' TasklistsDelete' Bool
tddPrettyPrint
  = lens _tddPrettyPrint
      (\ s a -> s{_tddPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tddUserIp :: Lens' TasklistsDelete' (Maybe Text)
tddUserIp
  = lens _tddUserIp (\ s a -> s{_tddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tddKey :: Lens' TasklistsDelete' (Maybe Text)
tddKey = lens _tddKey (\ s a -> s{_tddKey = a})

-- | Task list identifier.
tddTasklist :: Lens' TasklistsDelete' Text
tddTasklist
  = lens _tddTasklist (\ s a -> s{_tddTasklist = a})

-- | OAuth 2.0 token for the current user.
tddOauthToken :: Lens' TasklistsDelete' (Maybe Text)
tddOauthToken
  = lens _tddOauthToken
      (\ s a -> s{_tddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tddFields :: Lens' TasklistsDelete' (Maybe Text)
tddFields
  = lens _tddFields (\ s a -> s{_tddFields = a})

-- | Data format for the response.
tddAlt :: Lens' TasklistsDelete' Text
tddAlt = lens _tddAlt (\ s a -> s{_tddAlt = a})

instance GoogleRequest TasklistsDelete' where
        type Rs TasklistsDelete' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsDelete{..}
          = go _tddQuotaUser _tddPrettyPrint _tddUserIp _tddKey
              _tddTasklist
              _tddOauthToken
              _tddFields
              _tddAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsDeleteAPI)
                      r
                      u
