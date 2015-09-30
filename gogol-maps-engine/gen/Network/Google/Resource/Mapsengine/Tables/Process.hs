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
module Network.Google.Resource.Mapsengine.Tables.Process
    (
    -- * REST Resource
      TablesProcessResource

    -- * Creating a Request
    , tablesProcess'
    , TablesProcess'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIp
    , tKey
    , tId
    , tOauthToken
    , tFields
    , tAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesProcess@ which the
-- 'TablesProcess'' request conforms to.
type TablesProcessResource =
     "tables" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ProcessResponse

-- | Process a table asset.
--
-- /See:/ 'tablesProcess'' smart constructor.
data TablesProcess' = TablesProcess'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIp      :: !(Maybe Text)
    , _tKey         :: !(Maybe Text)
    , _tId          :: !Text
    , _tOauthToken  :: !(Maybe Text)
    , _tFields      :: !(Maybe Text)
    , _tAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIp'
--
-- * 'tKey'
--
-- * 'tId'
--
-- * 'tOauthToken'
--
-- * 'tFields'
--
-- * 'tAlt'
tablesProcess'
    :: Text -- ^ 'id'
    -> TablesProcess'
tablesProcess' pTId_ =
    TablesProcess'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIp = Nothing
    , _tKey = Nothing
    , _tId = pTId_
    , _tOauthToken = Nothing
    , _tFields = Nothing
    , _tAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tQuotaUser :: Lens' TablesProcess' (Maybe Text)
tQuotaUser
  = lens _tQuotaUser (\ s a -> s{_tQuotaUser = a})

-- | Returns response with indentations and line breaks.
tPrettyPrint :: Lens' TablesProcess' Bool
tPrettyPrint
  = lens _tPrettyPrint (\ s a -> s{_tPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tUserIp :: Lens' TablesProcess' (Maybe Text)
tUserIp = lens _tUserIp (\ s a -> s{_tUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TablesProcess' (Maybe Text)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The ID of the table.
tId :: Lens' TablesProcess' Text
tId = lens _tId (\ s a -> s{_tId = a})

-- | OAuth 2.0 token for the current user.
tOauthToken :: Lens' TablesProcess' (Maybe Text)
tOauthToken
  = lens _tOauthToken (\ s a -> s{_tOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TablesProcess' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

-- | Data format for the response.
tAlt :: Lens' TablesProcess' Alt
tAlt = lens _tAlt (\ s a -> s{_tAlt = a})

instance GoogleRequest TablesProcess' where
        type Rs TablesProcess' = ProcessResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesProcess'{..}
          = go _tQuotaUser (Just _tPrettyPrint) _tUserIp _tKey
              _tId
              _tOauthToken
              _tFields
              (Just _tAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesProcessResource)
                      r
                      u
