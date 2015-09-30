{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Tables.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesProcess@.
module Mapsengine.Tables.Process
    (
    -- * REST Resource
      TablesProcessAPI

    -- * Creating a Request
    , tablesProcess
    , TablesProcess

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpUserIp
    , tpKey
    , tpId
    , tpOauthToken
    , tpFields
    , tpAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesProcess@ which the
-- 'TablesProcess' request conforms to.
type TablesProcessAPI =
     "tables" :>
       Capture "id" Text :>
         "process" :> Post '[JSON] ProcessResponse

-- | Process a table asset.
--
-- /See:/ 'tablesProcess' smart constructor.
data TablesProcess = TablesProcess
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpUserIp      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Text)
    , _tpId          :: !Text
    , _tpOauthToken  :: !(Maybe Text)
    , _tpFields      :: !(Maybe Text)
    , _tpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpUserIp'
--
-- * 'tpKey'
--
-- * 'tpId'
--
-- * 'tpOauthToken'
--
-- * 'tpFields'
--
-- * 'tpAlt'
tablesProcess
    :: Text -- ^ 'id'
    -> TablesProcess
tablesProcess pTpId_ =
    TablesProcess
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpUserIp = Nothing
    , _tpKey = Nothing
    , _tpId = pTpId_
    , _tpOauthToken = Nothing
    , _tpFields = Nothing
    , _tpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TablesProcess' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TablesProcess' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIp :: Lens' TablesProcess' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TablesProcess' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | The ID of the table.
tpId :: Lens' TablesProcess' Text
tpId = lens _tpId (\ s a -> s{_tpId = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TablesProcess' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TablesProcess' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TablesProcess' Text
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TablesProcess' where
        type Rs TablesProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesProcess{..}
          = go _tpQuotaUser _tpPrettyPrint _tpUserIp _tpKey
              _tpId
              _tpOauthToken
              _tpFields
              _tpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TablesProcessAPI) r
                      u
