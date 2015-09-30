{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesCreate@.
module Mapsengine.Tables.Create
    (
    -- * REST Resource
      TablesCreateAPI

    -- * Creating a Request
    , tablesCreate
    , TablesCreate

    -- * Request Lenses
    , tcQuotaUser
    , tcPrettyPrint
    , tcUserIp
    , tcKey
    , tcOauthToken
    , tcFields
    , tcAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesCreate@ which the
-- 'TablesCreate' request conforms to.
type TablesCreateAPI = "tables" :> Post '[JSON] Table

-- | Create a table asset.
--
-- /See:/ 'tablesCreate' smart constructor.
data TablesCreate = TablesCreate
    { _tcQuotaUser   :: !(Maybe Text)
    , _tcPrettyPrint :: !Bool
    , _tcUserIp      :: !(Maybe Text)
    , _tcKey         :: !(Maybe Text)
    , _tcOauthToken  :: !(Maybe Text)
    , _tcFields      :: !(Maybe Text)
    , _tcAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcQuotaUser'
--
-- * 'tcPrettyPrint'
--
-- * 'tcUserIp'
--
-- * 'tcKey'
--
-- * 'tcOauthToken'
--
-- * 'tcFields'
--
-- * 'tcAlt'
tablesCreate
    :: TablesCreate
tablesCreate =
    TablesCreate
    { _tcQuotaUser = Nothing
    , _tcPrettyPrint = True
    , _tcUserIp = Nothing
    , _tcKey = Nothing
    , _tcOauthToken = Nothing
    , _tcFields = Nothing
    , _tcAlt = "json"
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
tcUserIp :: Lens' TablesCreate' (Maybe Text)
tcUserIp = lens _tcUserIp (\ s a -> s{_tcUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tcKey :: Lens' TablesCreate' (Maybe Text)
tcKey = lens _tcKey (\ s a -> s{_tcKey = a})

-- | OAuth 2.0 token for the current user.
tcOauthToken :: Lens' TablesCreate' (Maybe Text)
tcOauthToken
  = lens _tcOauthToken (\ s a -> s{_tcOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tcFields :: Lens' TablesCreate' (Maybe Text)
tcFields = lens _tcFields (\ s a -> s{_tcFields = a})

-- | Data format for the response.
tcAlt :: Lens' TablesCreate' Text
tcAlt = lens _tcAlt (\ s a -> s{_tcAlt = a})

instance GoogleRequest TablesCreate' where
        type Rs TablesCreate' = Table
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesCreate{..}
          = go _tcQuotaUser _tcPrettyPrint _tcUserIp _tcKey
              _tcOauthToken
              _tcFields
              _tcAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesCreateAPI) r
                      u
