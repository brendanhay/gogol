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
    , tcUserIP
    , tcKey
    , tcTaskList
    , tcOAuthToken
    , tcFields
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
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Clears all completed tasks from the specified task list. The affected
-- tasks will be marked as \'hidden\' and no longer be returned by default
-- when retrieving all tasks for a task list.
--
-- /See:/ 'tasksClear'' smart constructor.
data TasksClear' = TasksClear'
    { _tcQuotaUser   :: !(Maybe Text)
    , _tcPrettyPrint :: !Bool
    , _tcUserIP      :: !(Maybe Text)
    , _tcKey         :: !(Maybe Key)
    , _tcTaskList    :: !Text
    , _tcOAuthToken  :: !(Maybe OAuthToken)
    , _tcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TasksClear'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIP'
--
-- * 'tcKey'
--
-- * 'tcTaskList'
--
-- * 'tcOAuthToken'
--
-- * 'tcFields'
tasksClear'
    :: Text -- ^ 'tasklist'
    -> TasksClear'
tasksClear' pTcTaskList_ =
    TasksClear'
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIP = Nothing
    , _tcKey = Nothing
    , _tcTaskList = pTcTaskList_
    , _tcOAuthToken = Nothing
    , _tcFields = Nothing
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
tcUserIP :: Lens' TasksClear' (Maybe Text)
tcUserIP = lens _tcUserIP (\ s a -> s{_tcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TasksClear' (Maybe Key)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | Task list identifier.
tcTaskList :: Lens' TasksClear' Text
tcTaskList
  = lens _tcTaskList (\ s a -> s{_tcTaskList = a})

-- | OAuth 2.0 token for the current user.
tcOAuthToken :: Lens' TasksClear' (Maybe OAuthToken)
tcOAuthToken
  = lens _tcOAuthToken (\ s a -> s{_tcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tcFields :: Lens' TasksClear' (Maybe Text)
tcFields = lens _tcFields (\ s a -> s{_tcFields = a})

instance GoogleAuth TasksClear' where
        authKey = tcKey . _Just
        authToken = tcOAuthToken . _Just

instance GoogleRequest TasksClear' where
        type Rs TasksClear' = ()
        request = requestWithRoute defReq appsTasksURL
        requestWithRoute r u TasksClear'{..}
          = go _tcTaskList _tcQuotaUser (Just _tcPrettyPrint)
              _tcUserIP
              _tcFields
              _tcKey
              _tcOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TasksClearResource)
                      r
                      u
