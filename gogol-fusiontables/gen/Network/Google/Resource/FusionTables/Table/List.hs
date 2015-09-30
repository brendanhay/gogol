{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of tables a user owns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableList@.
module FusionTables.Table.List
    (
    -- * REST Resource
      TableListAPI

    -- * Creating a Request
    , tableList
    , TableList

    -- * Request Lenses
    , tllQuotaUser
    , tllPrettyPrint
    , tllUserIp
    , tllKey
    , tllPageToken
    , tllOauthToken
    , tllMaxResults
    , tllFields
    , tllAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableList@ which the
-- 'TableList' request conforms to.
type TableListAPI =
     "tables" :>
       QueryParam "pageToken" Text :>
         QueryParam "maxResults" Word32 :>
           Get '[JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'tableList' smart constructor.
data TableList = TableList
    { _tllQuotaUser   :: !(Maybe Text)
    , _tllPrettyPrint :: !Bool
    , _tllUserIp      :: !(Maybe Text)
    , _tllKey         :: !(Maybe Text)
    , _tllPageToken   :: !(Maybe Text)
    , _tllOauthToken  :: !(Maybe Text)
    , _tllMaxResults  :: !(Maybe Word32)
    , _tllFields      :: !(Maybe Text)
    , _tllAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableList'' with the minimum fields required to make a request.
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
-- * 'tllMaxResults'
--
-- * 'tllFields'
--
-- * 'tllAlt'
tableList
    :: TableList
tableList =
    TableList
    { _tllQuotaUser = Nothing
    , _tllPrettyPrint = True
    , _tllUserIp = Nothing
    , _tllKey = Nothing
    , _tllPageToken = Nothing
    , _tllOauthToken = Nothing
    , _tllMaxResults = Nothing
    , _tllFields = Nothing
    , _tllAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tllQuotaUser :: Lens' TableList' (Maybe Text)
tllQuotaUser
  = lens _tllQuotaUser (\ s a -> s{_tllQuotaUser = a})

-- | Returns response with indentations and line breaks.
tllPrettyPrint :: Lens' TableList' Bool
tllPrettyPrint
  = lens _tllPrettyPrint
      (\ s a -> s{_tllPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tllUserIp :: Lens' TableList' (Maybe Text)
tllUserIp
  = lens _tllUserIp (\ s a -> s{_tllUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tllKey :: Lens' TableList' (Maybe Text)
tllKey = lens _tllKey (\ s a -> s{_tllKey = a})

-- | Continuation token specifying which result page to return.
tllPageToken :: Lens' TableList' (Maybe Text)
tllPageToken
  = lens _tllPageToken (\ s a -> s{_tllPageToken = a})

-- | OAuth 2.0 token for the current user.
tllOauthToken :: Lens' TableList' (Maybe Text)
tllOauthToken
  = lens _tllOauthToken
      (\ s a -> s{_tllOauthToken = a})

-- | Maximum number of tables to return. Default is 5.
tllMaxResults :: Lens' TableList' (Maybe Word32)
tllMaxResults
  = lens _tllMaxResults
      (\ s a -> s{_tllMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tllFields :: Lens' TableList' (Maybe Text)
tllFields
  = lens _tllFields (\ s a -> s{_tllFields = a})

-- | Data format for the response.
tllAlt :: Lens' TableList' Text
tllAlt = lens _tllAlt (\ s a -> s{_tllAlt = a})

instance GoogleRequest TableList' where
        type Rs TableList' = TableList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableList{..}
          = go _tllQuotaUser _tllPrettyPrint _tllUserIp _tllKey
              _tllPageToken
              _tllOauthToken
              _tllMaxResults
              _tllFields
              _tllAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TableListAPI) r u
