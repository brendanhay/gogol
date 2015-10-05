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
-- Module      : Network.Google.Resource.TaskQueue.Taskqueues.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get detailed information about a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @TaskqueueTaskqueuesGet@.
module Network.Google.Resource.TaskQueue.Taskqueues.Get
    (
    -- * REST Resource
      TaskqueuesGetResource

    -- * Creating a Request
    , taskqueuesGet'
    , TaskqueuesGet'

    -- * Request Lenses
    , tasTaskqueue
    , tasQuotaUser
    , tasPrettyPrint
    , tasProject
    , tasUserIP
    , tasKey
    , tasGetStats
    , tasOAuthToken
    , tasFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TaskQueue.Types

-- | A resource alias for @TaskqueueTaskqueuesGet@ which the
-- 'TaskqueuesGet'' request conforms to.
type TaskqueuesGetResource =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           QueryParam "getStats" Bool :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] TaskQueue

-- | Get detailed information about a TaskQueue.
--
-- /See:/ 'taskqueuesGet'' smart constructor.
data TaskqueuesGet' = TaskqueuesGet'
    { _tasTaskqueue   :: !Text
    , _tasQuotaUser   :: !(Maybe Text)
    , _tasPrettyPrint :: !Bool
    , _tasProject     :: !Text
    , _tasUserIP      :: !(Maybe Text)
    , _tasKey         :: !(Maybe AuthKey)
    , _tasGetStats    :: !(Maybe Bool)
    , _tasOAuthToken  :: !(Maybe OAuthToken)
    , _tasFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskqueuesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tasTaskqueue'
--
-- * 'tasQuotaUser'
--
-- * 'tasPrettyPrint'
--
-- * 'tasProject'
--
-- * 'tasUserIP'
--
-- * 'tasKey'
--
-- * 'tasGetStats'
--
-- * 'tasOAuthToken'
--
-- * 'tasFields'
taskqueuesGet'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TaskqueuesGet'
taskqueuesGet' pTasTaskqueue_ pTasProject_ =
    TaskqueuesGet'
    { _tasTaskqueue = pTasTaskqueue_
    , _tasQuotaUser = Nothing
    , _tasPrettyPrint = True
    , _tasProject = pTasProject_
    , _tasUserIP = Nothing
    , _tasKey = Nothing
    , _tasGetStats = Nothing
    , _tasOAuthToken = Nothing
    , _tasFields = Nothing
    }

-- | The id of the taskqueue to get the properties of.
tasTaskqueue :: Lens' TaskqueuesGet' Text
tasTaskqueue
  = lens _tasTaskqueue (\ s a -> s{_tasTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tasQuotaUser :: Lens' TaskqueuesGet' (Maybe Text)
tasQuotaUser
  = lens _tasQuotaUser (\ s a -> s{_tasQuotaUser = a})

-- | Returns response with indentations and line breaks.
tasPrettyPrint :: Lens' TaskqueuesGet' Bool
tasPrettyPrint
  = lens _tasPrettyPrint
      (\ s a -> s{_tasPrettyPrint = a})

-- | The project under which the queue lies.
tasProject :: Lens' TaskqueuesGet' Text
tasProject
  = lens _tasProject (\ s a -> s{_tasProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tasUserIP :: Lens' TaskqueuesGet' (Maybe Text)
tasUserIP
  = lens _tasUserIP (\ s a -> s{_tasUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tasKey :: Lens' TaskqueuesGet' (Maybe AuthKey)
tasKey = lens _tasKey (\ s a -> s{_tasKey = a})

-- | Whether to get stats. Optional.
tasGetStats :: Lens' TaskqueuesGet' (Maybe Bool)
tasGetStats
  = lens _tasGetStats (\ s a -> s{_tasGetStats = a})

-- | OAuth 2.0 token for the current user.
tasOAuthToken :: Lens' TaskqueuesGet' (Maybe OAuthToken)
tasOAuthToken
  = lens _tasOAuthToken
      (\ s a -> s{_tasOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tasFields :: Lens' TaskqueuesGet' (Maybe Text)
tasFields
  = lens _tasFields (\ s a -> s{_tasFields = a})

instance GoogleAuth TaskqueuesGet' where
        authKey = tasKey . _Just
        authToken = tasOAuthToken . _Just

instance GoogleRequest TaskqueuesGet' where
        type Rs TaskqueuesGet' = TaskQueue
        request = requestWithRoute defReq taskQueueURL
        requestWithRoute r u TaskqueuesGet'{..}
          = go _tasProject _tasTaskqueue _tasGetStats
              _tasQuotaUser
              (Just _tasPrettyPrint)
              _tasUserIP
              _tasFields
              _tasKey
              _tasOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TaskqueuesGetResource)
                      r
                      u
