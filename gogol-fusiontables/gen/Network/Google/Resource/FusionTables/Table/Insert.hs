{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Table.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableInsert@.
module FusionTables.Table.Insert
    (
    -- * REST Resource
      TableInsertAPI

    -- * Creating a Request
    , tableInsert
    , TableInsert

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIp
    , tabKey
    , tabOauthToken
    , tabFields
    , tabAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableInsert@ which the
-- 'TableInsert' request conforms to.
type TableInsertAPI = "tables" :> Post '[JSON] Table

-- | Creates a new table.
--
-- /See:/ 'tableInsert' smart constructor.
data TableInsert = TableInsert
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIp      :: !(Maybe Text)
    , _tabKey         :: !(Maybe Text)
    , _tabOauthToken  :: !(Maybe Text)
    , _tabFields      :: !(Maybe Text)
    , _tabAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tabQuotaUser'
--
-- * 'tabPrettyPrint'
--
-- * 'tabUserIp'
--
-- * 'tabKey'
--
-- * 'tabOauthToken'
--
-- * 'tabFields'
--
-- * 'tabAlt'
tableInsert
    :: TableInsert
tableInsert =
    TableInsert
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIp = Nothing
    , _tabKey = Nothing
    , _tabOauthToken = Nothing
    , _tabFields = Nothing
    , _tabAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabQuotaUser :: Lens' TableInsert' (Maybe Text)
tabQuotaUser
  = lens _tabQuotaUser (\ s a -> s{_tabQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabPrettyPrint :: Lens' TableInsert' Bool
tabPrettyPrint
  = lens _tabPrettyPrint
      (\ s a -> s{_tabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabUserIp :: Lens' TableInsert' (Maybe Text)
tabUserIp
  = lens _tabUserIp (\ s a -> s{_tabUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TableInsert' (Maybe Text)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | OAuth 2.0 token for the current user.
tabOauthToken :: Lens' TableInsert' (Maybe Text)
tabOauthToken
  = lens _tabOauthToken
      (\ s a -> s{_tabOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TableInsert' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

-- | Data format for the response.
tabAlt :: Lens' TableInsert' Text
tabAlt = lens _tabAlt (\ s a -> s{_tabAlt = a})

instance GoogleRequest TableInsert' where
        type Rs TableInsert' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableInsert{..}
          = go _tabQuotaUser _tabPrettyPrint _tabUserIp _tabKey
              _tabOauthToken
              _tabFields
              _tabAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TableInsertAPI) r u
