{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Tasks.Tasklists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @tasks.tasklists.patch@.
module Network.Google.API.Tasks.Tasklists.Patch
    (
    -- * REST Resource
      TasklistsPatchAPI

    -- * Creating a Request
    , tasklistsPatch'
    , TasklistsPatch'

    -- * Request Lenses
    , tppQuotaUser
    , tppPrettyPrint
    , tppUserIp
    , tppKey
    , tppTasklist
    , tppOauthToken
    , tppFields
    , tppAlt
    ) where

import           Network.Google.Apps.Tasks.Types
import           Network.Google.Prelude

-- | A resource alias for tasks.tasklists.patch which the
-- 'TasklistsPatch'' request conforms to.
type TasklistsPatchAPI =
     "users" :>
       "@me" :>
         "lists" :>
           Capture "tasklist" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] TaskList

-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ 'tasklistsPatch'' smart constructor.
data TasklistsPatch' = TasklistsPatch'
    { _tppQuotaUser   :: !(Maybe Text)
    , _tppPrettyPrint :: !Bool
    , _tppUserIp      :: !(Maybe Text)
    , _tppKey         :: !(Maybe Text)
    , _tppTasklist    :: !Text
    , _tppOauthToken  :: !(Maybe Text)
    , _tppFields      :: !(Maybe Text)
    , _tppAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tppQuotaUser'
--
-- * 'tppPrettyPrint'
--
-- * 'tppUserIp'
--
-- * 'tppKey'
--
-- * 'tppTasklist'
--
-- * 'tppOauthToken'
--
-- * 'tppFields'
--
-- * 'tppAlt'
tasklistsPatch'
    :: Text -- ^ 'tasklist'
    -> TasklistsPatch'
tasklistsPatch' pTppTasklist_ =
    TasklistsPatch'
    { _tppQuotaUser = Nothing
    , _tppPrettyPrint = True
    , _tppUserIp = Nothing
    , _tppKey = Nothing
    , _tppTasklist = pTppTasklist_
    , _tppOauthToken = Nothing
    , _tppFields = Nothing
    , _tppAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tppQuotaUser :: Lens' TasklistsPatch' (Maybe Text)
tppQuotaUser
  = lens _tppQuotaUser (\ s a -> s{_tppQuotaUser = a})

-- | Returns response with indentations and line breaks.
tppPrettyPrint :: Lens' TasklistsPatch' Bool
tppPrettyPrint
  = lens _tppPrettyPrint
      (\ s a -> s{_tppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tppUserIp :: Lens' TasklistsPatch' (Maybe Text)
tppUserIp
  = lens _tppUserIp (\ s a -> s{_tppUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tppKey :: Lens' TasklistsPatch' (Maybe Text)
tppKey = lens _tppKey (\ s a -> s{_tppKey = a})

-- | Task list identifier.
tppTasklist :: Lens' TasklistsPatch' Text
tppTasklist
  = lens _tppTasklist (\ s a -> s{_tppTasklist = a})

-- | OAuth 2.0 token for the current user.
tppOauthToken :: Lens' TasklistsPatch' (Maybe Text)
tppOauthToken
  = lens _tppOauthToken
      (\ s a -> s{_tppOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tppFields :: Lens' TasklistsPatch' (Maybe Text)
tppFields
  = lens _tppFields (\ s a -> s{_tppFields = a})

-- | Data format for the response.
tppAlt :: Lens' TasklistsPatch' Alt
tppAlt = lens _tppAlt (\ s a -> s{_tppAlt = a})

instance GoogleRequest TasklistsPatch' where
        type Rs TasklistsPatch' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsPatch'{..}
          = go _tppQuotaUser (Just _tppPrettyPrint) _tppUserIp
              _tppKey
              _tppTasklist
              _tppOauthToken
              _tppFields
              (Just _tppAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasklistsPatchAPI)
                      r
                      u
