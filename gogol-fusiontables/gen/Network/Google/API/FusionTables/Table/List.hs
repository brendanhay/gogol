{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Table.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of tables a user owns.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.list@.
module Network.Google.API.FusionTables.Table.List
    (
    -- * REST Resource
      TableListAPI

    -- * Creating a Request
    , tableList'
    , TableList'

    -- * Request Lenses
    , ttQuotaUser
    , ttPrettyPrint
    , ttUserIp
    , ttKey
    , ttPageToken
    , ttOauthToken
    , ttMaxResults
    , ttFields
    , ttAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.table.list which the
-- 'TableList'' request conforms to.
type TableListAPI =
     "tables" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "maxResults" Word32 :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] TableList

-- | Retrieves a list of tables a user owns.
--
-- /See:/ 'tableList'' smart constructor.
data TableList' = TableList'
    { _ttQuotaUser   :: !(Maybe Text)
    , _ttPrettyPrint :: !Bool
    , _ttUserIp      :: !(Maybe Text)
    , _ttKey         :: !(Maybe Text)
    , _ttPageToken   :: !(Maybe Text)
    , _ttOauthToken  :: !(Maybe Text)
    , _ttMaxResults  :: !(Maybe Word32)
    , _ttFields      :: !(Maybe Text)
    , _ttAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttQuotaUser'
--
-- * 'ttPrettyPrint'
--
-- * 'ttUserIp'
--
-- * 'ttKey'
--
-- * 'ttPageToken'
--
-- * 'ttOauthToken'
--
-- * 'ttMaxResults'
--
-- * 'ttFields'
--
-- * 'ttAlt'
tableList'
    :: TableList'
tableList' =
    TableList'
    { _ttQuotaUser = Nothing
    , _ttPrettyPrint = True
    , _ttUserIp = Nothing
    , _ttKey = Nothing
    , _ttPageToken = Nothing
    , _ttOauthToken = Nothing
    , _ttMaxResults = Nothing
    , _ttFields = Nothing
    , _ttAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ttQuotaUser :: Lens' TableList' (Maybe Text)
ttQuotaUser
  = lens _ttQuotaUser (\ s a -> s{_ttQuotaUser = a})

-- | Returns response with indentations and line breaks.
ttPrettyPrint :: Lens' TableList' Bool
ttPrettyPrint
  = lens _ttPrettyPrint
      (\ s a -> s{_ttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ttUserIp :: Lens' TableList' (Maybe Text)
ttUserIp = lens _ttUserIp (\ s a -> s{_ttUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ttKey :: Lens' TableList' (Maybe Text)
ttKey = lens _ttKey (\ s a -> s{_ttKey = a})

-- | Continuation token specifying which result page to return.
ttPageToken :: Lens' TableList' (Maybe Text)
ttPageToken
  = lens _ttPageToken (\ s a -> s{_ttPageToken = a})

-- | OAuth 2.0 token for the current user.
ttOauthToken :: Lens' TableList' (Maybe Text)
ttOauthToken
  = lens _ttOauthToken (\ s a -> s{_ttOauthToken = a})

-- | Maximum number of tables to return. Default is 5.
ttMaxResults :: Lens' TableList' (Maybe Word32)
ttMaxResults
  = lens _ttMaxResults (\ s a -> s{_ttMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ttFields :: Lens' TableList' (Maybe Text)
ttFields = lens _ttFields (\ s a -> s{_ttFields = a})

-- | Data format for the response.
ttAlt :: Lens' TableList' Alt
ttAlt = lens _ttAlt (\ s a -> s{_ttAlt = a})

instance GoogleRequest TableList' where
        type Rs TableList' = TableList
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableList'{..}
          = go _ttQuotaUser (Just _ttPrettyPrint) _ttUserIp
              _ttKey
              _ttPageToken
              _ttOauthToken
              _ttMaxResults
              _ttFields
              (Just _ttAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableListAPI) r u
