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
    , ttUserIP
    , ttKey
    , ttOAuthToken
    , ttTableId
    , ttFields
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
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Retrieves a specific table by its ID.
--
-- /See:/ 'tableGet'' smart constructor.
data TableGet' = TableGet'
    { _ttQuotaUser   :: !(Maybe Text)
    , _ttPrettyPrint :: !Bool
    , _ttUserIP      :: !(Maybe Text)
    , _ttKey         :: !(Maybe AuthKey)
    , _ttOAuthToken  :: !(Maybe OAuthToken)
    , _ttTableId     :: !Text
    , _ttFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TableGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ttQuotaUser'
--
-- * 'ttPrettyPrint'
--
-- * 'ttUserIP'
--
-- * 'ttKey'
--
-- * 'ttOAuthToken'
--
-- * 'ttTableId'
--
-- * 'ttFields'
tableGet'
    :: Text -- ^ 'tableId'
    -> TableGet'
tableGet' pTtTableId_ =
    TableGet'
    { _ttQuotaUser = Nothing
    , _ttPrettyPrint = True
    , _ttUserIP = Nothing
    , _ttKey = Nothing
    , _ttOAuthToken = Nothing
    , _ttTableId = pTtTableId_
    , _ttFields = Nothing
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
ttUserIP :: Lens' TableGet' (Maybe Text)
ttUserIP = lens _ttUserIP (\ s a -> s{_ttUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ttKey :: Lens' TableGet' (Maybe AuthKey)
ttKey = lens _ttKey (\ s a -> s{_ttKey = a})

-- | OAuth 2.0 token for the current user.
ttOAuthToken :: Lens' TableGet' (Maybe OAuthToken)
ttOAuthToken
  = lens _ttOAuthToken (\ s a -> s{_ttOAuthToken = a})

-- | Identifier for the table being requested.
ttTableId :: Lens' TableGet' Text
ttTableId
  = lens _ttTableId (\ s a -> s{_ttTableId = a})

-- | Selector specifying which fields to include in a partial response.
ttFields :: Lens' TableGet' (Maybe Text)
ttFields = lens _ttFields (\ s a -> s{_ttFields = a})

instance GoogleAuth TableGet' where
        authKey = ttKey . _Just
        authToken = ttOAuthToken . _Just

instance GoogleRequest TableGet' where
        type Rs TableGet' = Table
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TableGet'{..}
          = go _ttTableId _ttQuotaUser (Just _ttPrettyPrint)
              _ttUserIP
              _ttFields
              _ttKey
              _ttOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TableGetResource) r
                      u
