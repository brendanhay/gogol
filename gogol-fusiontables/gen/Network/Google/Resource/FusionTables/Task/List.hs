{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Task.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of tasks.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTaskList@.
module FusionTables.Task.List
    (
    -- * REST Resource
      TaskListAPI

    -- * Creating a Request
    , taskList
    , TaskList

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIp
    , tlKey
    , tlPageToken
    , tlOauthToken
    , tlTableId
    , tlStartIndex
    , tlMaxResults
    , tlFields
    , tlAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskList@ which the
-- 'TaskList' request conforms to.
type TaskListAPI =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           QueryParam "pageToken" Text :>
             QueryParam "startIndex" Word32 :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] TaskList

-- | Retrieves a list of tasks.
--
-- /See:/ 'taskList' smart constructor.
data TaskList = TaskList
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIp      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Text)
    , _tlPageToken   :: !(Maybe Text)
    , _tlOauthToken  :: !(Maybe Text)
    , _tlTableId     :: !Text
    , _tlStartIndex  :: !(Maybe Word32)
    , _tlMaxResults  :: !(Maybe Word32)
    , _tlFields      :: !(Maybe Text)
    , _tlAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIp'
--
-- * 'tlKey'
--
-- * 'tlPageToken'
--
-- * 'tlOauthToken'
--
-- * 'tlTableId'
--
-- * 'tlStartIndex'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
--
-- * 'tlAlt'
taskList
    :: Text -- ^ 'tableId'
    -> TaskList
taskList pTlTableId_ =
    TaskList
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIp = Nothing
    , _tlKey = Nothing
    , _tlPageToken = Nothing
    , _tlOauthToken = Nothing
    , _tlTableId = pTlTableId_
    , _tlStartIndex = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
    , _tlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TaskList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TaskList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIp :: Lens' TaskList' (Maybe Text)
tlUserIp = lens _tlUserIp (\ s a -> s{_tlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TaskList' (Maybe Text)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Continuation token specifying which result page to return.
tlPageToken :: Lens' TaskList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOauthToken :: Lens' TaskList' (Maybe Text)
tlOauthToken
  = lens _tlOauthToken (\ s a -> s{_tlOauthToken = a})

-- | Table whose tasks are being listed.
tlTableId :: Lens' TaskList' Text
tlTableId
  = lens _tlTableId (\ s a -> s{_tlTableId = a})

-- | Index of the first result returned in the current page.
tlStartIndex :: Lens' TaskList' (Maybe Word32)
tlStartIndex
  = lens _tlStartIndex (\ s a -> s{_tlStartIndex = a})

-- | Maximum number of tasks to return. Default is 5.
tlMaxResults :: Lens' TaskList' (Maybe Word32)
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TaskList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

-- | Data format for the response.
tlAlt :: Lens' TaskList' Text
tlAlt = lens _tlAlt (\ s a -> s{_tlAlt = a})

instance GoogleRequest TaskList' where
        type Rs TaskList' = TaskList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TaskList{..}
          = go _tlQuotaUser _tlPrettyPrint _tlUserIp _tlKey
              _tlPageToken
              _tlOauthToken
              _tlTableId
              _tlStartIndex
              _tlMaxResults
              _tlFields
              _tlAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TaskListAPI) r u
