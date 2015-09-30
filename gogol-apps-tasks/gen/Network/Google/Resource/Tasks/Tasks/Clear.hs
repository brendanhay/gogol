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
-- Module      : Network.Google.Resource.Tasks.Tasks.Clear
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ <https://developers.google.com/google-apps/tasks/firstapp Tasks API Reference> for @TasksTasksClear@.
module Network.Google.Resource.Tasks.Tasks.Clear
    (
    -- * REST Resource
      TasksClearResource

    -- * Creating a Request
    , tasksClear'
    , TasksClear'

    -- * Request Lenses
    , tcQuotaUser
    , tcPrettyPrint
    , tcUserIp
    , tcKey
    , tcTasklist
    , tcOauthToken
    , tcFields
    , tcAlt
    ) where

import           Network.Google.AppsTasks.Types
import           Network.Google.Prelude

-- | A resource alias for @TasksTasksClear@ which the
-- 'TasksClear'' request conforms to.
type TasksClearResource =
     "lists" :>
       Capture "tasklist" Text :>
         "clear" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ 'tasksClear'' smart constructor.
data TasksClear' = TasksClear'
    { _tcQuotaUser   :: !(Maybe Text)
    , _tcPrettyPrint :: !Bool
    , _tcUserIp      :: !(Maybe Text)
    , _tcKey         :: !(Maybe Text)
    , _tcTasklist    :: !Text
    , _tcOauthToken  :: !(Maybe Text)
    , _tcFields      :: !(Maybe Text)
    , _tcAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIp'
--
-- * 'tcKey'
--
-- * 'tcTasklist'
--
-- * 'tcOauthToken'
--
-- * 'tcFields'
--
-- * 'tcAlt'
tasksClear'
    :: Text -- ^ 'tasklist'
    -> TasksClear'
tasksClear' pTcTasklist_ =
    TasksClear'
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIp = Nothing
    , _tcKey = Nothing
    , _tcTasklist = pTcTasklist_
    , _tcOauthToken = Nothing
    , _tcFields = Nothing
    , _tcAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tcQuotaUser :: Lens' TasksClear' (Maybe Text)
tcQuotaUser
  = lens _tcQuotaUser (\ s a -> s{_tcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tcPrettyPrint :: Lens' TasksClear' Bool
tcPrettyPrint
  = lens _tcPrettyPrint
      (\ s a -> s{_tcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tcUserIp :: Lens' TasksClear' (Maybe Text)
tcUserIp = lens _tcUserIp (\ s a -> s{_tcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TasksClear' (Maybe Text)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | Task list identifier.
tcTasklist :: Lens' TasksClear' Text
tcTasklist
  = lens _tcTasklist (\ s a -> s{_tcTasklist = a})

-- | OAuth 2.0 token for the current user.
tcOauthToken :: Lens' TasksClear' (Maybe Text)
tcOauthToken
  = lens _tcOauthToken (\ s a -> s{_tcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tcFields :: Lens' TasksClear' (Maybe Text)
tcFields = lens _tcFields (\ s a -> s{_tcFields = a})

-- | Data format for the response.
tcAlt :: Lens' TasksClear' Alt
tcAlt = lens _tcAlt (\ s a -> s{_tcAlt = a})

instance GoogleRequest TasksClear' where
        type Rs TasksClear' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksClear'{..}
          = go _tcQuotaUser (Just _tcPrettyPrint) _tcUserIp
              _tcKey
              _tcTasklist
              _tcOauthToken
              _tcFields
              (Just _tcAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksClearResource)
                      r
                      u
