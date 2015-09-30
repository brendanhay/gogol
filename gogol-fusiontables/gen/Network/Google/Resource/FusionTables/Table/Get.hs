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
-- Module      : Network.Google.Resource.FusionTables.Table.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific table by its ID.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTableGet@.
module Network.Google.Resource.FusionTables.Table.Get
    (
    -- * REST Resource
      TableGetResource

    -- * Creating a Request
    , tableGet'
    , TableGet'

    -- * Request Lenses
    , ttQuotaUser
    , ttPrettyPrint
    , ttUserIp
    , ttKey
    , ttOauthToken
    , ttTableId
    , ttFields
    , ttAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTableGet@ which the
-- 'TableGet'' request conforms to.
type TableGetResource =
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
    { _ttQuotaUser   :: !(Maybe Text)
    , _ttPrettyPrint :: !Bool
    , _ttUserIp      :: !(Maybe Text)
    , _ttKey         :: !(Maybe Text)
    , _ttOauthToken  :: !(Maybe Text)
    , _ttTableId     :: !Text
    , _ttFields      :: !(Maybe Text)
    , _ttAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableGet'' with the minimum fields required to make a request.
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
-- * 'ttOauthToken'
--
-- * 'ttTableId'
--
-- * 'ttFields'
--
-- * 'ttAlt'
tableGet'
    :: Text -- ^ 'tableId'
    -> TableGet'
tableGet' pTtTableId_ =
    TableGet'
    { _ttQuotaUser = Nothing
    , _ttPrettyPrint = True
    , _ttUserIp = Nothing
    , _ttKey = Nothing
    , _ttOauthToken = Nothing
    , _ttTableId = pTtTableId_
    , _ttFields = Nothing
    , _ttAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ttQuotaUser :: Lens' TableGet' (Maybe Text)
ttQuotaUser
  = lens _ttQuotaUser (\ s a -> s{_ttQuotaUser = a})

-- | Returns response with indentations and line breaks.
ttPrettyPrint :: Lens' TableGet' Bool
ttPrettyPrint
  = lens _ttPrettyPrint
      (\ s a -> s{_ttPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ttUserIp :: Lens' TableGet' (Maybe Text)
ttUserIp = lens _ttUserIp (\ s a -> s{_ttUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ttKey :: Lens' TableGet' (Maybe Text)
ttKey = lens _ttKey (\ s a -> s{_ttKey = a})

-- | OAuth 2.0 token for the current user.
ttOauthToken :: Lens' TableGet' (Maybe Text)
ttOauthToken
  = lens _ttOauthToken (\ s a -> s{_ttOauthToken = a})

-- | Identifier for the table being requested.
ttTableId :: Lens' TableGet' Text
ttTableId
  = lens _ttTableId (\ s a -> s{_ttTableId = a})

-- | Selector specifying which fields to include in a partial response.
ttFields :: Lens' TableGet' (Maybe Text)
ttFields = lens _ttFields (\ s a -> s{_ttFields = a})

-- | Data format for the response.
ttAlt :: Lens' TableGet' Alt
ttAlt = lens _ttAlt (\ s a -> s{_ttAlt = a})

instance GoogleRequest TableGet' where
        type Rs TableGet' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableGet'{..}
          = go _ttQuotaUser (Just _ttPrettyPrint) _ttUserIp
              _ttKey
              _ttOauthToken
              _ttTableId
              _ttFields
              (Just _ttAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TableGetResource) r
                      u
