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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Process
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Process a table asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesProcess@.
module Network.Google.Resource.MapsEngine.Tables.Process
    (
    -- * REST Resource
      TablesProcessResource

    -- * Creating a Request
    , tablesProcess'
    , TablesProcess'

    -- * Request Lenses
    , tQuotaUser
    , tPrettyPrint
    , tUserIP
    , tKey
    , tId
    , tOAuthToken
    , tFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesProcess@ method which the
-- 'TablesProcess'' request conforms to.
type TablesProcessResource =
     "tables" :>
       Capture "id" Text :>
         "process" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         Post '[JSON] ProcessResponse

-- | Process a table asset.
--
-- /See:/ 'tablesProcess'' smart constructor.
data TablesProcess' = TablesProcess'
    { _tQuotaUser   :: !(Maybe Text)
    , _tPrettyPrint :: !Bool
    , _tUserIP      :: !(Maybe Text)
    , _tKey         :: !(Maybe AuthKey)
    , _tId          :: !Text
    , _tOAuthToken  :: !(Maybe OAuthToken)
    , _tFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesProcess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tQuotaUser'
--
-- * 'tPrettyPrint'
--
-- * 'tUserIP'
--
-- * 'tKey'
--
-- * 'tId'
--
-- * 'tOAuthToken'
--
-- * 'tFields'
tablesProcess'
    :: Text -- ^ 'id'
    -> TablesProcess'
tablesProcess' pTId_ =
    TablesProcess'
    { _tQuotaUser = Nothing
    , _tPrettyPrint = True
    , _tUserIP = Nothing
    , _tKey = Nothing
    , _tId = pTId_
    , _tOAuthToken = Nothing
    , _tFields = Nothing
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
tUserIP :: Lens' TablesProcess' (Maybe Text)
tUserIP = lens _tUserIP (\ s a -> s{_tUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tKey :: Lens' TablesProcess' (Maybe AuthKey)
tKey = lens _tKey (\ s a -> s{_tKey = a})

-- | The ID of the table.
tId :: Lens' TablesProcess' Text
tId = lens _tId (\ s a -> s{_tId = a})

-- | OAuth 2.0 token for the current user.
tOAuthToken :: Lens' TablesProcess' (Maybe OAuthToken)
tOAuthToken
  = lens _tOAuthToken (\ s a -> s{_tOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tFields :: Lens' TablesProcess' (Maybe Text)
tFields = lens _tFields (\ s a -> s{_tFields = a})

instance GoogleAuth TablesProcess' where
        _AuthKey = tKey . _Just
        _AuthToken = tOAuthToken . _Just

instance GoogleRequest TablesProcess' where
        type Rs TablesProcess' = ProcessResponse
        request = requestWith mapsEngineRequest
        requestWith rq TablesProcess'{..}
          = go _tId _tQuotaUser (Just _tPrettyPrint) _tUserIP
              _tFields
              _tKey
              _tOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TablesProcessResource)
                      rq
