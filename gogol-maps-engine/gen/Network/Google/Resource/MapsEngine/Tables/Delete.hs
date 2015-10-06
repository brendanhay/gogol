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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesDelete@.
module Network.Google.Resource.MapsEngine.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete'
    , TablesDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIP
    , tdKey
    , tdId
    , tdOAuthToken
    , tdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesDelete@ which the
-- 'TablesDelete'' request conforms to.
type TablesDeleteResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a table.
--
-- /See:/ 'tablesDelete'' smart constructor.
data TablesDelete' = TablesDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIP      :: !(Maybe Text)
    , _tdKey         :: !(Maybe AuthKey)
    , _tdId          :: !Text
    , _tdOAuthToken  :: !(Maybe OAuthToken)
    , _tdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIP'
--
-- * 'tdKey'
--
-- * 'tdId'
--
-- * 'tdOAuthToken'
--
-- * 'tdFields'
tablesDelete'
    :: Text -- ^ 'id'
    -> TablesDelete'
tablesDelete' pTdId_ =
    TablesDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIP = Nothing
    , _tdKey = Nothing
    , _tdId = pTdId_
    , _tdOAuthToken = Nothing
    , _tdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tdQuotaUser :: Lens' TablesDelete' (Maybe Text)
tdQuotaUser
  = lens _tdQuotaUser (\ s a -> s{_tdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tdPrettyPrint :: Lens' TablesDelete' Bool
tdPrettyPrint
  = lens _tdPrettyPrint
      (\ s a -> s{_tdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tdUserIP :: Lens' TablesDelete' (Maybe Text)
tdUserIP = lens _tdUserIP (\ s a -> s{_tdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TablesDelete' (Maybe AuthKey)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The ID of the table. Only the table creator or project owner are
-- permitted to delete. If the table is included in a layer, the request
-- will fail. Remove it from all layers prior to deleting.
tdId :: Lens' TablesDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | OAuth 2.0 token for the current user.
tdOAuthToken :: Lens' TablesDelete' (Maybe OAuthToken)
tdOAuthToken
  = lens _tdOAuthToken (\ s a -> s{_tdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TablesDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

instance GoogleAuth TablesDelete' where
        authKey = tdKey . _Just
        authToken = tdOAuthToken . _Just

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        request = requestWith mapsEngineRequest
        requestWith rq TablesDelete'{..}
          = go _tdId _tdQuotaUser (Just _tdPrettyPrint)
              _tdUserIP
              _tdFields
              _tdKey
              _tdOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy TablesDeleteResource)
                      rq
