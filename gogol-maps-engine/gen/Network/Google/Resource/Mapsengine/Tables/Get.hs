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
-- Module      : Network.Google.Resource.Mapsengine.Tables.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return metadata for a particular table, including the schema.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesGet@.
module Network.Google.Resource.Mapsengine.Tables.Get
    (
    -- * REST Resource
      TablesGetResource

    -- * Creating a Request
    , tablesGet'
    , TablesGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIp
    , tgKey
    , tgVersion
    , tgId
    , tgOauthToken
    , tgFields
    , tgAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesGet@ which the
-- 'TablesGet'' request conforms to.
type TablesGetResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "version" MapsengineTablesGetVersion :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Get '[JSON] Table

-- | Return metadata for a particular table, including the schema.
--
-- /See:/ 'tablesGet'' smart constructor.
data TablesGet' = TablesGet'
    { _tgQuotaUser   :: !(Maybe Text)
    , _tgPrettyPrint :: !Bool
    , _tgUserIp      :: !(Maybe Text)
    , _tgKey         :: !(Maybe Text)
    , _tgVersion     :: !(Maybe MapsengineTablesGetVersion)
    , _tgId          :: !Text
    , _tgOauthToken  :: !(Maybe Text)
    , _tgFields      :: !(Maybe Text)
    , _tgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesGet'' with the minimum fields required to make a request.
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
-- * 'tgVersion'
--
-- * 'tgId'
--
-- * 'tgOauthToken'
--
-- * 'tgFields'
--
-- * 'tgAlt'
tablesGet'
    :: Text -- ^ 'id'
    -> TablesGet'
tablesGet' pTgId_ =
    TablesGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIp = Nothing
    , _tgKey = Nothing
    , _tgVersion = Nothing
    , _tgId = pTgId_
    , _tgOauthToken = Nothing
    , _tgFields = Nothing
    , _tgAlt = JSON
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
tgUserIp :: Lens' TablesGet' (Maybe Text)
tgUserIp = lens _tgUserIp (\ s a -> s{_tgUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TablesGet' (Maybe Text)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

tgVersion :: Lens' TablesGet' (Maybe MapsengineTablesGetVersion)
tgVersion
  = lens _tgVersion (\ s a -> s{_tgVersion = a})

-- | The ID of the table.
tgId :: Lens' TablesGet' Text
tgId = lens _tgId (\ s a -> s{_tgId = a})

-- | OAuth 2.0 token for the current user.
tgOauthToken :: Lens' TablesGet' (Maybe Text)
tgOauthToken
  = lens _tgOauthToken (\ s a -> s{_tgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TablesGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

-- | Data format for the response.
tgAlt :: Lens' TablesGet' Alt
tgAlt = lens _tgAlt (\ s a -> s{_tgAlt = a})

instance GoogleRequest TablesGet' where
        type Rs TablesGet' = Table
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesGet'{..}
          = go _tgQuotaUser (Just _tgPrettyPrint) _tgUserIp
              _tgKey
              _tgVersion
              _tgId
              _tgOauthToken
              _tgFields
              (Just _tgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy TablesGetResource)
                      r
                      u
