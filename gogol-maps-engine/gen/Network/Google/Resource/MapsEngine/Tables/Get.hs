{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.MapsEngine.Tables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular table, including the schema.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesGet@.
module Network.Google.Resource.MapsEngine.Tables.Get
    (
    -- * REST Resource
      TablesGetResource

    -- * Creating a Request
    , tablesGet'
    , TablesGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIP
    , tgKey
    , tgVersion
    , tgId
    , tgOAuthToken
    , tgFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesGet@ which the
-- 'TablesGet'' request conforms to.
type TablesGetResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "version" TablesGetVersion :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Table

-- | Return metadata for a particular table, including the schema.
--
-- /See:/ 'tablesGet'' smart constructor.
data TablesGet' = TablesGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIP      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Key)
    , _tgVersion     :: !(Maybe TablesGetVersion)
    , _tgId          :: !Text
    , _tgOAuthToken  :: !(Maybe OAuthToken)
    , _tgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIP'
--
-- * 'tgKey'
--
-- * 'tgVersion'
--
-- * 'tgId'
--
-- * 'tgOAuthToken'
--
-- * 'tgFields'
tablesGet'
    :: Text -- ^ 'id'
    -> TablesGet'
tablesGet' pTgId_ =
    TablesGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIP = Nothing
    , _tgKey = Nothing
    , _tgVersion = Nothing
    , _tgId = pTgId_
    , _tgOAuthToken = Nothing
    , _tgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TablesGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TablesGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIP :: Lens' TablesGet' (Maybe Text)
tgUserIP = lens _tgUserIP (\ s a -> s{_tgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TablesGet' (Maybe Key)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

tgVersion :: Lens' TablesGet' (Maybe TablesGetVersion)
tgVersion
  = lens _tgVersion (\ s a -> s{_tgVersion = a})

-- | The ID of the table.
tgId :: Lens' TablesGet' Text
tgId = lens _tgId (\ s a -> s{_tgId = a})

-- | OAuth 2.0 token for the current user.
tgOAuthToken :: Lens' TablesGet' (Maybe OAuthToken)
tgOAuthToken
  = lens _tgOAuthToken (\ s a -> s{_tgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TablesGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

instance GoogleAuth TablesGet' where
        authKey = tgKey . _Just
        authToken = tgOAuthToken . _Just

instance GoogleRequest TablesGet' where
        type Rs TablesGet' = Table
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesGet'{..}
          = go _tgId _tgVersion _tgQuotaUser
              (Just _tgPrettyPrint)
              _tgUserIP
              _tgFields
              _tgKey
              _tgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TablesGetResource)
                      r
                      u
