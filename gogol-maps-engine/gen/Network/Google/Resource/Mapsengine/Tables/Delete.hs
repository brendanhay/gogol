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
-- Module      : Network.Google.Resource.Mapsengine.Tables.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete a table.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineTablesDelete@.
module Network.Google.Resource.Mapsengine.Tables.Delete
    (
    -- * REST Resource
      TablesDeleteResource

    -- * Creating a Request
    , tablesDelete'
    , TablesDelete'

    -- * Request Lenses
    , tdQuotaUser
    , tdPrettyPrint
    , tdUserIp
    , tdKey
    , tdId
    , tdOauthToken
    , tdFields
    , tdAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineTablesDelete@ which the
-- 'TablesDelete'' request conforms to.
type TablesDeleteResource =
     "tables" :>
       Capture "id" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Delete a table.
--
-- /See:/ 'tablesDelete'' smart constructor.
data TablesDelete' = TablesDelete'
    { _tdQuotaUser   :: !(Maybe Text)
    , _tdPrettyPrint :: !Bool
    , _tdUserIp      :: !(Maybe Text)
    , _tdKey         :: !(Maybe Text)
    , _tdId          :: !Text
    , _tdOauthToken  :: !(Maybe Text)
    , _tdFields      :: !(Maybe Text)
    , _tdAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdQuotaUser'
--
-- * 'tdPrettyPrint'
--
-- * 'tdUserIp'
--
-- * 'tdKey'
--
-- * 'tdId'
--
-- * 'tdOauthToken'
--
-- * 'tdFields'
--
-- * 'tdAlt'
tablesDelete'
    :: Text -- ^ 'id'
    -> TablesDelete'
tablesDelete' pTdId_ =
    TablesDelete'
    { _tdQuotaUser = Nothing
    , _tdPrettyPrint = True
    , _tdUserIp = Nothing
    , _tdKey = Nothing
    , _tdId = pTdId_
    , _tdOauthToken = Nothing
    , _tdFields = Nothing
    , _tdAlt = JSON
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
tdUserIp :: Lens' TablesDelete' (Maybe Text)
tdUserIp = lens _tdUserIp (\ s a -> s{_tdUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tdKey :: Lens' TablesDelete' (Maybe Text)
tdKey = lens _tdKey (\ s a -> s{_tdKey = a})

-- | The ID of the table. Only the table creator or project owner are
-- permitted to delete. If the table is included in a layer, the request
-- will fail. Remove it from all layers prior to deleting.
tdId :: Lens' TablesDelete' Text
tdId = lens _tdId (\ s a -> s{_tdId = a})

-- | OAuth 2.0 token for the current user.
tdOauthToken :: Lens' TablesDelete' (Maybe Text)
tdOauthToken
  = lens _tdOauthToken (\ s a -> s{_tdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tdFields :: Lens' TablesDelete' (Maybe Text)
tdFields = lens _tdFields (\ s a -> s{_tdFields = a})

-- | Data format for the response.
tdAlt :: Lens' TablesDelete' Alt
tdAlt = lens _tdAlt (\ s a -> s{_tdAlt = a})

instance GoogleRequest TablesDelete' where
        type Rs TablesDelete' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesDelete'{..}
          = go _tdQuotaUser (Just _tdPrettyPrint) _tdUserIp
              _tdKey
              _tdId
              _tdOauthToken
              _tdFields
              (Just _tdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesDeleteResource)
                      r
                      u
