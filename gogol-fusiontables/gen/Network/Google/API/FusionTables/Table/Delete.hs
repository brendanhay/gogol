{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Table.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.delete@.
module Network.Google.API.FusionTables.Table.Delete
    (
    -- * REST Resource
      TableDeleteAPI

    -- * Creating a Request
    , tableDelete'
    , TableDelete'

    -- * Request Lenses
    , tabQuotaUser
    , tabPrettyPrint
    , tabUserIp
    , tabKey
    , tabOauthToken
    , tabTableId
    , tabFields
    , tabAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.table.delete which the
-- 'TableDelete'' request conforms to.
type TableDeleteAPI =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a table.
--
-- /See:/ 'tableDelete'' smart constructor.
data TableDelete' = TableDelete'
    { _tabQuotaUser   :: !(Maybe Text)
    , _tabPrettyPrint :: !Bool
    , _tabUserIp      :: !(Maybe Text)
    , _tabKey         :: !(Maybe Text)
    , _tabOauthToken  :: !(Maybe Text)
    , _tabTableId     :: !Text
    , _tabFields      :: !(Maybe Text)
    , _tabAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableDelete'' with the minimum fields required to make a request.
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
-- * 'tabTableId'
--
-- * 'tabFields'
--
-- * 'tabAlt'
tableDelete'
    :: Text -- ^ 'tableId'
    -> TableDelete'
tableDelete' pTabTableId_ =
    TableDelete'
    { _tabQuotaUser = Nothing
    , _tabPrettyPrint = True
    , _tabUserIp = Nothing
    , _tabKey = Nothing
    , _tabOauthToken = Nothing
    , _tabTableId = pTabTableId_
    , _tabFields = Nothing
    , _tabAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tabQuotaUser :: Lens' TableDelete' (Maybe Text)
tabQuotaUser
  = lens _tabQuotaUser (\ s a -> s{_tabQuotaUser = a})

-- | Returns response with indentations and line breaks.
tabPrettyPrint :: Lens' TableDelete' Bool
tabPrettyPrint
  = lens _tabPrettyPrint
      (\ s a -> s{_tabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tabUserIp :: Lens' TableDelete' (Maybe Text)
tabUserIp
  = lens _tabUserIp (\ s a -> s{_tabUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tabKey :: Lens' TableDelete' (Maybe Text)
tabKey = lens _tabKey (\ s a -> s{_tabKey = a})

-- | OAuth 2.0 token for the current user.
tabOauthToken :: Lens' TableDelete' (Maybe Text)
tabOauthToken
  = lens _tabOauthToken
      (\ s a -> s{_tabOauthToken = a})

-- | ID of the table to be deleted.
tabTableId :: Lens' TableDelete' Text
tabTableId
  = lens _tabTableId (\ s a -> s{_tabTableId = a})

-- | Selector specifying which fields to include in a partial response.
tabFields :: Lens' TableDelete' (Maybe Text)
tabFields
  = lens _tabFields (\ s a -> s{_tabFields = a})

-- | Data format for the response.
tabAlt :: Lens' TableDelete' Alt
tabAlt = lens _tabAlt (\ s a -> s{_tabAlt = a})

instance GoogleRequest TableDelete' where
        type Rs TableDelete' = ()
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableDelete'{..}
          = go _tabQuotaUser (Just _tabPrettyPrint) _tabUserIp
              _tabKey
              _tabOauthToken
              _tabTableId
              _tabFields
              (Just _tabAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableDeleteAPI) r u
