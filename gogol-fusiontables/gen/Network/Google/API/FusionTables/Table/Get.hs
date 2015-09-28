{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.FusionTables.Table.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific table by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @fusiontables.table.get@.
module Network.Google.API.FusionTables.Table.Get
    (
    -- * REST Resource
      TableGetAPI

    -- * Creating a Request
    , tableGet'
    , TableGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgOauthToken
    , tgTableId
    , tgFields
    , tgAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for fusiontables.table.get which the
-- 'TableGet'' request conforms to.
type TableGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Get '[JSON] Table

-- | Retrieves a specific table by its ID.
--
-- /See:/ 'tableGet'' smart constructor.
data TableGet' = TableGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgOauthToken  :: !(Maybe Text)
    , _tgTableId     :: !Text
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIp'
--
-- * 'tgKey'
--
-- * 'tgOauthToken'
--
-- * 'tgTableId'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tableGet'
    :: Text -- ^ 'tableId'
    -> TableGet'
tableGet' pTgTableId_ =
    TableGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgOauthToken = Nothing
    , _tgTableId = pTgTableId_
    , _tgFields = Nothing
    , _tgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TableGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TableGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIp :: Lens' TableGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TableGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TableGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Identifier for the table being requested.
tgTableId :: Lens' TableGet' Text
tgTableId
  = lens _tgTableId (\ s a -> s{_tgTableId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TableGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TableGet' Alt
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TableGet' where
        type Rs TableGet' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableGet'{..}
          = go _tgQuotaUser (Just _tgPrettyPrint) _tgUserIp
              _tgKey
              _tgOauthToken
              _tgTableId
              _tgFields
              (Just _tgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableGetAPI) r u
