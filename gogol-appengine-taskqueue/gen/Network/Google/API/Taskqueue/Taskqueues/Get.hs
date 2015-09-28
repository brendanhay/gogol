{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Taskqueue.Taskqueues.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Get detailed information about a TaskQueue.
--
-- /See:/ <https://developers.google.com/appengine/docs/python/taskqueue/rest TaskQueue API Reference> for @taskqueue.taskqueues.get@.
module Network.Google.API.Taskqueue.Taskqueues.Get
    (
    -- * REST Resource
      TaskqueuesGetAPI

    -- * Creating a Request
    , taskqueuesGet'
    , TaskqueuesGet'

    -- * Request Lenses
    , tTaskqueue
    , tQuotaUser
    , tPrettyPrint
    , tProject
    , tUserIp
    , tKey
    , tGetStats
    , tOauthToken
    , tFields
    , tAlt
    ) where

import           Network.Google.AppEngine.TaskQueue.Types
import           Network.Google.Prelude

-- | A resource alias for taskqueue.taskqueues.get which the
-- 'TaskqueuesGet'' request conforms to.
type TaskqueuesGetAPI =
     Capture "project" Text :>
       "taskqueues" :>
         Capture "taskqueue" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "getStats" Bool :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] TaskQueue

-- | Get detailed information about a TaskQueue.
--
-- /See:/ 'taskqueuesGet'' smart constructor.
data TaskqueuesGet' = TaskqueuesGet'
    { _tTaskqueue   :: !Text
    , _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tProject     :: !Text
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tGetStats    :: !(Maybe Bool)
    , _tOauthToken  :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskqueuesGet'' with the minimum fields required to make a request.
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
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tGetStats'
--
-- * 'tOauthToken'
--
-- * 'tFields'
--
-- * 'tAlt'
taskqueuesGet'
    :: Text -- ^ 'taskqueue'
    -> Text -- ^ 'project'
    -> TaskqueuesGet'
taskqueuesGet' pTTaskqueue_ pTProject_ =
    TaskqueuesGet'
    { _tTaskqueue = pTTaskqueue_
    , _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tProject = pTProject_
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tGetStats = Nothing
    , _tOauthToken = Nothing
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | The id of the taskqueue to get the properties of.
tTaskqueue :: Lens' TaskqueuesGet' Text
tTaskqueue
  = lens _tTaskqueue (\ s a -> s{_tTaskqueue = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TaskqueuesGet' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TaskqueuesGet' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | The project under which the queue lies.
tProject :: Lens' TaskqueuesGet' Text
tProject = lens _tProject (\ s a -> s{_tProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TaskqueuesGet' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TaskqueuesGet' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | Whether to get stats. Optional.
tGetStats :: Lens' TaskqueuesGet' (Maybe Bool)
tGetStats
  = lens _tGetStats (\ s a -> s{_tGetStats = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TaskqueuesGet' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TaskqueuesGet' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TaskqueuesGet' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TaskqueuesGet' where
        type Rs TaskqueuesGet' = TaskQueue
        request
          = requestWithRoute defReq appEngineTaskQueueURL
        requestWithRoute r u TaskqueuesGet'{..}
          = go _tTaskqueue _tQuotaUser (Just _tPrettyPrint)
              _tProject
              _tUserIp
              _tKey
              _tGetStats
              _tOauthToken
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskqueuesGetAPI) r
                      u
