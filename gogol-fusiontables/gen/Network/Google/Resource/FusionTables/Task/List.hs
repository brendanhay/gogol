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
module Network.Google.Resource.FusionTables.Task.List
    (
    -- * REST Resource
      TaskListResource

    -- * Creating a Request
    , taskList'
    , TaskList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlUserIP
    , tlKey
    , tlPageToken
    , tlOAuthToken
    , tlTableId
    , tlStartIndex
    , tlMaxResults
    , tlFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTaskList@ which the
-- 'TaskList'' request conforms to.
type TaskListResource =
     "tables" :>
       Capture "tableId" Text :>
         "tasks" :>
           QueryParam "pageToken" Text :>
             QueryParam "startIndex" Word32 :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :> Get '[JSON] TaskList

-- | Retrieves a list of tasks.
--
-- /See:/ 'taskList'' smart constructor.
data TaskList' = TaskList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe AuthKey)
    , _tlPageToken   :: !(Maybe Text)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlTableId     :: !Text
    , _tlStartIndex  :: !(Maybe Word32)
    , _tlMaxResults  :: !(Maybe Word32)
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TaskList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlPageToken'
--
-- * 'tlOAuthToken'
--
-- * 'tlTableId'
--
-- * 'tlStartIndex'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
taskList'
    :: Text -- ^ 'tableId'
    -> TaskList'
taskList' pTlTableId_ =
    TaskList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlPageToken = Nothing
    , _tlOAuthToken = Nothing
    , _tlTableId = pTlTableId_
    , _tlStartIndex = Nothing
    , _tlMaxResults = Nothing
    , _tlFields = Nothing
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
tlUserIP :: Lens' TaskList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TaskList' (Maybe AuthKey)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Continuation token specifying which result page to return.
tlPageToken :: Lens' TaskList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TaskList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

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

instance GoogleAuth TaskList' where
        _AuthKey = tlKey . _Just
        _AuthToken = tlOAuthToken . _Just

instance GoogleRequest TaskList' where
        type Rs TaskList' = TaskList
        request = requestWith fusionTablesRequest
        requestWith rq TaskList'{..}
          = go _tlTableId _tlPageToken _tlStartIndex
              _tlMaxResults
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TaskListResource) rq
