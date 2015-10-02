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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesCreate@.
module Network.Google.Resource.MapsEngine.Tables.Create
    (
    -- * REST Resource
      TablesCreateResource

    -- * Creating a Request
    , tablesCreate'
    , TablesCreate'

    -- * Request Lenses
    , tcQuotaUser
    , tcPrettyPrint
    , tcUserIP
    , tcKey
    , tcOAuthToken
    , tcTable
    , tcFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesCreate@ which the
-- 'TablesCreate'' request conforms to.
type TablesCreateResource =
     "tables" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] Table :> Post '[JSON] Table

-- | Create a table asset.
--
-- /See:/ 'tablesCreate'' smart constructor.
data TablesCreate' = TablesCreate'
    { _tcQuotaUser   :: !(Maybe Text)
    , _tcPrettyPrint :: !Bool
    , _tcUserIP      :: !(Maybe Text)
    , _tcKey         :: !(Maybe Key)
    , _tcOAuthToken  :: !(Maybe OAuthToken)
    , _tcTable       :: !Table
    , _tcFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIP'
--
-- * 'tcKey'
--
-- * 'tcOAuthToken'
--
-- * 'tcTable'
--
-- * 'tcFields'
tablesCreate'
    :: Table -- ^ 'Table'
    -> TablesCreate'
tablesCreate' pTcTable_ =
    TablesCreate'
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIP = Nothing
    , _tcKey = Nothing
    , _tcOAuthToken = Nothing
    , _tcTable = pTcTable_
    , _tcFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tcQuotaUser :: Lens' TablesCreate' (Maybe Text)
tcQuotaUser
  = lens _tcQuotaUser (\ s a -> s{_tcQuotaUser = a})

-- | Returns response with indentations and line breaks.
tcPrettyPrint :: Lens' TablesCreate' Bool
tcPrettyPrint
  = lens _tcPrettyPrint
      (\ s a -> s{_tcPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tcUserIP :: Lens' TablesCreate' (Maybe Text)
tcUserIP = lens _tcUserIP (\ s a -> s{_tcUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TablesCreate' (Maybe Key)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | OAuth 2.0 token for the current user.
tcOAuthToken :: Lens' TablesCreate' (Maybe OAuthToken)
tcOAuthToken
  = lens _tcOAuthToken (\ s a -> s{_tcOAuthToken = a})

-- | Multipart request metadata.
tcTable :: Lens' TablesCreate' Table
tcTable = lens _tcTable (\ s a -> s{_tcTable = a})

-- | Selector specifying which fields to include in a partial response.
tcFields :: Lens' TablesCreate' (Maybe Text)
tcFields = lens _tcFields (\ s a -> s{_tcFields = a})

instance GoogleAuth TablesCreate' where
        authKey = tcKey . _Just
        authToken = tcOAuthToken . _Just

instance GoogleRequest TablesCreate' where
        type Rs TablesCreate' = Table
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesCreate'{..}
          = go _tcQuotaUser (Just _tcPrettyPrint) _tcUserIP
              _tcKey
              _tcOAuthToken
              _tcFields
              (Just AltJSON)
              _tcTable
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesCreateResource)
                      r
                      u
