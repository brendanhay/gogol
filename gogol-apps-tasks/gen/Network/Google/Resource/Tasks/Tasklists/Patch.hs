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
-- Module      : Network.Google.Resource.Tasks.Tasklists.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the authenticated user\'s specified task list. This method
-- supports patch semantics.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasklistsPatch@.
module Network.Google.Resource.Tasks.Tasklists.Patch
    (
    -- * REST Resource
      TasklistsPatchResource

    -- * Creating a Request
    , tasklistsPatch'
    , TasklistsPatch'

    -- * Request Lenses
    , tasQuotaUser
    , tasPrettyPrint
    , tasUserIp
    , tasKey
    , tasTasklist
    , tasOauthToken
    , tasFields
    , tasAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasklistsPatch@ which the
-- 'TasklistsPatch'' request conforms to.
type TasklistsPatchResource =
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
    { _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasUserIp      :: !(Maybe Text)
    , _tasKey         :: !(Maybe Text)
    , _tasTasklist    :: !Text
    , _tasOauthToken  :: !(Maybe Text)
    , _tasFields      :: !(Maybe Text)
    , _tasAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasklistsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasUserIp'
--
-- * 'tasKey'
--
-- * 'tasTasklist'
--
-- * 'tasOauthToken'
--
-- * 'tasFields'
--
-- * 'tasAlt'
tasklistsPatch'
    :: Text -- ^ 'tasklist'
    -> TasklistsPatch'
tasklistsPatch' pTasTasklist_ =
    TasklistsPatch'
    { _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasUserIp = Nothing
    , _tasKey = Nothing
    , _tasTasklist = pTasTasklist_
    , _tasOauthToken = Nothing
    , _tasFields = Nothing
    , _tasAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TasklistsPatch' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TasklistsPatch' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIp :: Lens' TasklistsPatch' (Maybe Text)
tasUserIp
  = lens _tasUserIp (\ s a -> s{_tasUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TasklistsPatch' (Maybe Text)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | Task list identifier.
tasTasklist :: Lens' TasklistsPatch' Text
tasTasklist
  = lens _tasTasklist (\ s a -> s{_tasTasklist = a})

-- | OAuth 2.0 token for the current user.
tasOauthToken :: Lens' TasklistsPatch' (Maybe Text)
tasOauthToken
  = lens _tasOauthToken
      (\ s a -> s{_tasOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TasklistsPatch' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

-- | Data format for the response.
tasAlt :: Lens' TasklistsPatch' Alt
tasAlt = lens _tasAlt (\ s a -> s{_tasAlt = a})

instance GoogleRequest TasklistsPatch' where
        type Rs TasklistsPatch' = TaskList
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasklistsPatch'{..}
          = go _tasQuotaUser (Just _tasPrettyPrint) _tasUserIp
              _tasKey
              _tasTasklist
              _tasOauthToken
              _tasFields
              (Just _tasAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TasklistsPatchResource)
                      r
                      u
