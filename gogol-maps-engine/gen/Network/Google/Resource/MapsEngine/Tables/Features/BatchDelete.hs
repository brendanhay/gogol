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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Delete all features matching the given IDs.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFeaturesBatchDelete@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchDelete
    (
    -- * REST Resource
      TablesFeaturesBatchDeleteResource

    -- * Creating a Request
    , tablesFeaturesBatchDelete'
    , TablesFeaturesBatchDelete'

    -- * Request Lenses
    , tfbdQuotaUser
    , tfbdPrettyPrint
    , tfbdUserIP
    , tfbdFeaturesBatchDeleteRequest
    , tfbdKey
    , tfbdId
    , tfbdOAuthToken
    , tfbdFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFeaturesBatchDelete@ which the
-- 'TablesFeaturesBatchDelete'' request conforms to.
type TablesFeaturesBatchDeleteResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchDelete" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Key :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FeaturesBatchDeleteRequest :>
                             Post '[JSON] ()

-- | Delete all features matching the given IDs.
--
-- /See:/ 'tablesFeaturesBatchDelete'' smart constructor.
data TablesFeaturesBatchDelete' = TablesFeaturesBatchDelete'
    { _tfbdQuotaUser                  :: !(Maybe Text)
    , _tfbdPrettyPrint                :: !Bool
    , _tfbdUserIP                     :: !(Maybe Text)
    , _tfbdFeaturesBatchDeleteRequest :: !FeaturesBatchDeleteRequest
    , _tfbdKey                        :: !(Maybe Key)
    , _tfbdId                         :: !Text
    , _tfbdOAuthToken                 :: !(Maybe OAuthToken)
    , _tfbdFields                     :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbdQuotaUser'
--
-- * 'tfbdPrettyPrint'
--
-- * 'tfbdUserIP'
--
-- * 'tfbdFeaturesBatchDeleteRequest'
--
-- * 'tfbdKey'
--
-- * 'tfbdId'
--
-- * 'tfbdOAuthToken'
--
-- * 'tfbdFields'
tablesFeaturesBatchDelete'
    :: FeaturesBatchDeleteRequest -- ^ 'FeaturesBatchDeleteRequest'
    -> Text -- ^ 'id'
    -> TablesFeaturesBatchDelete'
tablesFeaturesBatchDelete' pTfbdFeaturesBatchDeleteRequest_ pTfbdId_ =
    TablesFeaturesBatchDelete'
    { _tfbdQuotaUser = Nothing
    , _tfbdPrettyPrint = True
    , _tfbdUserIP = Nothing
    , _tfbdFeaturesBatchDeleteRequest = pTfbdFeaturesBatchDeleteRequest_
    , _tfbdKey = Nothing
    , _tfbdId = pTfbdId_
    , _tfbdOAuthToken = Nothing
    , _tfbdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfbdQuotaUser :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdQuotaUser
  = lens _tfbdQuotaUser
      (\ s a -> s{_tfbdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfbdPrettyPrint :: Lens' TablesFeaturesBatchDelete' Bool
tfbdPrettyPrint
  = lens _tfbdPrettyPrint
      (\ s a -> s{_tfbdPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfbdUserIP :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdUserIP
  = lens _tfbdUserIP (\ s a -> s{_tfbdUserIP = a})

-- | Multipart request metadata.
tfbdFeaturesBatchDeleteRequest :: Lens' TablesFeaturesBatchDelete' FeaturesBatchDeleteRequest
tfbdFeaturesBatchDeleteRequest
  = lens _tfbdFeaturesBatchDeleteRequest
      (\ s a -> s{_tfbdFeaturesBatchDeleteRequest = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfbdKey :: Lens' TablesFeaturesBatchDelete' (Maybe Key)
tfbdKey = lens _tfbdKey (\ s a -> s{_tfbdKey = a})

-- | The ID of the table that contains the features to be deleted.
tfbdId :: Lens' TablesFeaturesBatchDelete' Text
tfbdId = lens _tfbdId (\ s a -> s{_tfbdId = a})

-- | OAuth 2.0 token for the current user.
tfbdOAuthToken :: Lens' TablesFeaturesBatchDelete' (Maybe OAuthToken)
tfbdOAuthToken
  = lens _tfbdOAuthToken
      (\ s a -> s{_tfbdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tfbdFields :: Lens' TablesFeaturesBatchDelete' (Maybe Text)
tfbdFields
  = lens _tfbdFields (\ s a -> s{_tfbdFields = a})

instance GoogleAuth TablesFeaturesBatchDelete' where
        authKey = tfbdKey . _Just
        authToken = tfbdOAuthToken . _Just

instance GoogleRequest TablesFeaturesBatchDelete'
         where
        type Rs TablesFeaturesBatchDelete' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesFeaturesBatchDelete'{..}
          = go _tfbdQuotaUser (Just _tfbdPrettyPrint)
              _tfbdUserIP
              _tfbdKey
              _tfbdId
              _tfbdOAuthToken
              _tfbdFields
              (Just AltJSON)
              _tfbdFeaturesBatchDeleteRequest
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesBatchDeleteResource)
                      r
                      u
