{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Task.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of tasks.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.task.list@.
module Network.Google.API.FusionTables.Task.List
    (
    -- * REST Resource
      TaskListAPI

    -- * Creating a Request
    , taskList'
    , TaskList'

    -- * Request Lenses
    , tllQuotaUser
    , tllPrettyPrint
    , tllUserIp
    , tllKey
    , tllPageToken
    , tllOauthToken
    , tllTableId
    , tllStartIndex
    , tllMaxResults
    , tllFields
    , tllAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.task.list which the
-- 'TaskList'' request conforms to.
type TaskListAPI =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "startIndex" Word32 :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] TaskList

-- | Retrieves a list of tasks.
--
-- /See:/ 'taskList'' smart constructor.
data TaskList' = TaskList'
    { _tllQuotaUser   :: !(Maybe Text)
    , _tllPrettyPrint :: !Bool
    , _tllUserIp      :: !(Maybe Text)
    , _tllKey         :: !(Maybe Text)
    , _tllPageToken   :: !(Maybe Text)
    , _tllOauthToken  :: !(Maybe Text)
    , _tllTableId     :: !Text
    , _tllStartIndex  :: !(Maybe Word32)
    , _tllMaxResults  :: !(Maybe Word32)
    , _tllFields      :: !(Maybe Text)
    , _tllAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tllQuotaUser'
--
-- * 'tllPrettyPrint'
--
-- * 'tllUserIp'
--
-- * 'tllKey'
--
-- * 'tllPageToken'
--
-- * 'tllOauthToken'
--
-- * 'tllTableId'
--
-- * 'tllStartIndex'
--
-- * 'tllMaxResults'
--
-- * 'tllFields'
--
-- * 'tllAlt'
taskList'
    :: Text -- ^ 'tableId'
    -> TaskList'
taskList' pTllTableId_ =
    TaskList'
    { _tllQuotaUser = Nothing
    , _tllPrettyPrint = True
    , _tllUserIp = Nothing
    , _tllKey = Nothing
    , _tllPageToken = Nothing
    , _tllOauthToken = Nothing
    , _tllTableId = pTllTableId_
    , _tllStartIndex = Nothing
    , _tllMaxResults = Nothing
    , _tllFields = Nothing
    , _tllAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tllQuotaUser :: Lens' TaskList' (Maybe Text)
tllQuotaUser
  = lens _tllQuotaUser (\ s a -> s{_tllQuotaUser = a})

-- | Returns response with indentations and line breaks.
tllPrettyPrint :: Lens' TaskList' Bool
tllPrettyPrint
  = lens _tllPrettyPrint
      (\ s a -> s{_tllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tllUserIp :: Lens' TaskList' (Maybe Text)
tllUserIp
  = lens _tllUserIp (\ s a -> s{_tllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tllKey :: Lens' TaskList' (Maybe Text)
tllKey = lens _tllKey (\ s a -> s{_tllKey = a})

-- | Continuation token specifying which result page to return.
tllPageToken :: Lens' TaskList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | OAuth 2.0 token for the current user.
tllOauthToken :: Lens' TaskList' (Maybe Text)
tllOauthToken
  = lens _tllOauthToken
      (\ s a -> s{_tllOauthToken = a})

-- | Table whose tasks are being listed.
tllTableId :: Lens' TaskList' Text
tllTableId
  = lens _tllTableId (\ s a -> s{_tllTableId = a})

-- | Index of the first result returned in the current page.
tllStartIndex :: Lens' TaskList' (Maybe Word32)
tllStartIndex
  = lens _tllStartIndex
      (\ s a -> s{_tllStartIndex = a})

-- | Maximum number of tasks to return. Default is 5.
tllMaxResults :: Lens' TaskList' (Maybe Word32)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tllFields :: Lens' TaskList' (Maybe Text)
tllFields
  = lens _tllFields (\ s a -> s{_tllFields = a})

-- | Data format for the response.
tllAlt :: Lens' TaskList' Alt
tllAlt = lens _tllAlt (\ s a -> s{_tllAlt = a})

instance GoogleRequest TaskList' where
        type Rs TaskList' = TaskList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskList'{..}
          = go _tllQuotaUser (Just _tllPrettyPrint) _tllUserIp
              _tllKey
              _tllPageToken
              _tllOauthToken
              _tllTableId
              _tllStartIndex
              _tllMaxResults
              _tllFields
              (Just _tllAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TaskListAPI) r u
