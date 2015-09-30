{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
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
module Network.Google.Resource.FusionTables.Table.Insert
    (
    -- * REST Resource
      TableInsertResource

    -- * Creating a Request
    , tableInsert'
    , TableInsert'

    -- * Request Lenses
    , tiiQuotaUser
    , tiiPrettyPrint
    , tiiUserIp
    , tiiKey
    , tiiOauthToken
    , tiiFields
    , tiiAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableInsert@ which the
-- 'TableInsert'' request conforms to.
type TableInsertResource =
     "tables" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] Table

-- | Creates a new table.
--
-- /See:/ 'tableInsert'' smart constructor.
data TableInsert' = TableInsert'
    { _tiiQuotaUser   :: !(Maybe Text)
    , _tiiPrettyPrint :: !Bool
    , _tiiUserIp      :: !(Maybe Text)
    , _tiiKey         :: !(Maybe Text)
    , _tiiOauthToken  :: !(Maybe Text)
    , _tiiFields      :: !(Maybe Text)
    , _tiiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiQuotaUser'
--
-- * 'tiiPrettyPrint'
--
-- * 'tiiUserIp'
--
-- * 'tiiKey'
--
-- * 'tiiOauthToken'
--
-- * 'tiiFields'
--
-- * 'tiiAlt'
tableInsert'
    :: TableInsert'
tableInsert' =
    TableInsert'
    { _tiiQuotaUser = Nothing
    , _tiiPrettyPrint = True
    , _tiiUserIp = Nothing
    , _tiiKey = Nothing
    , _tiiOauthToken = Nothing
    , _tiiFields = Nothing
    , _tiiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiiQuotaUser :: Lens' TableInsert' (Maybe Text)
tiiQuotaUser
  = lens _tiiQuotaUser (\ s a -> s{_tiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiiPrettyPrint :: Lens' TableInsert' Bool
tiiPrettyPrint
  = lens _tiiPrettyPrint
      (\ s a -> s{_tiiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiiUserIp :: Lens' TableInsert' (Maybe Text)
tiiUserIp
  = lens _tiiUserIp (\ s a -> s{_tiiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiiKey :: Lens' TableInsert' (Maybe Text)
tiiKey = lens _tiiKey (\ s a -> s{_tiiKey = a})

-- | OAuth 2.0 token for the current user.
tiiOauthToken :: Lens' TableInsert' (Maybe Text)
tiiOauthToken
  = lens _tiiOauthToken
      (\ s a -> s{_tiiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiiFields :: Lens' TableInsert' (Maybe Text)
tiiFields
  = lens _tiiFields (\ s a -> s{_tiiFields = a})

-- | Data format for the response.
tiiAlt :: Lens' TableInsert' Alt
tiiAlt = lens _tiiAlt (\ s a -> s{_tiiAlt = a})

instance GoogleRequest TableInsert' where
        type Rs TableInsert' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableInsert'{..}
          = go _tiiQuotaUser (Just _tiiPrettyPrint) _tiiUserIp
              _tiiKey
              _tiiOauthToken
              _tiiFields
              (Just _tiiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TableInsertResource)
                      r
                      u
