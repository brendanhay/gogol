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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the supplied features. A single batchPatch request can update: -
-- Up to 50 features. - A combined total of 10 000 vertices. Feature limits
-- are documented in the Supported data formats and limits article of the
-- Google Maps Engine help center. Note that free and paid accounts have
-- different limits. Feature updates use HTTP PATCH semantics: - A supplied
-- value replaces an existing value (if any) in that field. - Omitted
-- fields remain unchanged. - Complex values in geometries and properties
-- must be replaced as atomic units. For example, providing just the
-- coordinates of a geometry is not allowed; the complete geometry,
-- including type, must be supplied. - Setting a property\'s value to null
-- deletes that property. For more information about updating features,
-- read Updating features in the Google Maps Engine developer\'s guide.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineTablesFeaturesBatchPatch@.
module Network.Google.Resource.MapsEngine.Tables.Features.BatchPatch
    (
    -- * REST Resource
      TablesFeaturesBatchPatchResource

    -- * Creating a Request
    , tablesFeaturesBatchPatch'
    , TablesFeaturesBatchPatch'

    -- * Request Lenses
    , tfbpQuotaUser
    , tfbpPrettyPrint
    , tfbpUserIP
    , tfbpPayload
    , tfbpKey
    , tfbpId
    , tfbpOAuthToken
    , tfbpFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineTablesFeaturesBatchPatch@ which the
-- 'TablesFeaturesBatchPatch'' request conforms to.
type TablesFeaturesBatchPatchResource =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchPatch" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FeaturesBatchPatchRequest :>
                             Post '[JSON] ()

-- | Update the supplied features. A single batchPatch request can update: -
-- Up to 50 features. - A combined total of 10 000 vertices. Feature limits
-- are documented in the Supported data formats and limits article of the
-- Google Maps Engine help center. Note that free and paid accounts have
-- different limits. Feature updates use HTTP PATCH semantics: - A supplied
-- value replaces an existing value (if any) in that field. - Omitted
-- fields remain unchanged. - Complex values in geometries and properties
-- must be replaced as atomic units. For example, providing just the
-- coordinates of a geometry is not allowed; the complete geometry,
-- including type, must be supplied. - Setting a property\'s value to null
-- deletes that property. For more information about updating features,
-- read Updating features in the Google Maps Engine developer\'s guide.
--
-- /See:/ 'tablesFeaturesBatchPatch'' smart constructor.
data TablesFeaturesBatchPatch' = TablesFeaturesBatchPatch'
    { _tfbpQuotaUser   :: !(Maybe Text)
    , _tfbpPrettyPrint :: !Bool
    , _tfbpUserIP      :: !(Maybe Text)
    , _tfbpPayload     :: !FeaturesBatchPatchRequest
    , _tfbpKey         :: !(Maybe Key)
    , _tfbpId          :: !Text
    , _tfbpOAuthToken  :: !(Maybe OAuthToken)
    , _tfbpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbpQuotaUser'
--
-- * 'tfbpPrettyPrint'
--
-- * 'tfbpUserIP'
--
-- * 'tfbpPayload'
--
-- * 'tfbpKey'
--
-- * 'tfbpId'
--
-- * 'tfbpOAuthToken'
--
-- * 'tfbpFields'
tablesFeaturesBatchPatch'
    :: FeaturesBatchPatchRequest -- ^ 'payload'
    -> Text -- ^ 'id'
    -> TablesFeaturesBatchPatch'
tablesFeaturesBatchPatch' pTfbpPayload_ pTfbpId_ =
    TablesFeaturesBatchPatch'
    { _tfbpQuotaUser = Nothing
    , _tfbpPrettyPrint = True
    , _tfbpUserIP = Nothing
    , _tfbpPayload = pTfbpPayload_
    , _tfbpKey = Nothing
    , _tfbpId = pTfbpId_
    , _tfbpOAuthToken = Nothing
    , _tfbpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tfbpQuotaUser :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpQuotaUser
  = lens _tfbpQuotaUser
      (\ s a -> s{_tfbpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tfbpPrettyPrint :: Lens' TablesFeaturesBatchPatch' Bool
tfbpPrettyPrint
  = lens _tfbpPrettyPrint
      (\ s a -> s{_tfbpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tfbpUserIP :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpUserIP
  = lens _tfbpUserIP (\ s a -> s{_tfbpUserIP = a})

-- | Multipart request metadata.
tfbpPayload :: Lens' TablesFeaturesBatchPatch' FeaturesBatchPatchRequest
tfbpPayload
  = lens _tfbpPayload (\ s a -> s{_tfbpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfbpKey :: Lens' TablesFeaturesBatchPatch' (Maybe Key)
tfbpKey = lens _tfbpKey (\ s a -> s{_tfbpKey = a})

-- | The ID of the table containing the features to be patched.
tfbpId :: Lens' TablesFeaturesBatchPatch' Text
tfbpId = lens _tfbpId (\ s a -> s{_tfbpId = a})

-- | OAuth 2.0 token for the current user.
tfbpOAuthToken :: Lens' TablesFeaturesBatchPatch' (Maybe OAuthToken)
tfbpOAuthToken
  = lens _tfbpOAuthToken
      (\ s a -> s{_tfbpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tfbpFields :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpFields
  = lens _tfbpFields (\ s a -> s{_tfbpFields = a})

instance GoogleAuth TablesFeaturesBatchPatch' where
        authKey = tfbpKey . _Just
        authToken = tfbpOAuthToken . _Just

instance GoogleRequest TablesFeaturesBatchPatch'
         where
        type Rs TablesFeaturesBatchPatch' = ()
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u TablesFeaturesBatchPatch'{..}
          = go _tfbpId _tfbpQuotaUser (Just _tfbpPrettyPrint)
              _tfbpUserIP
              _tfbpFields
              _tfbpKey
              _tfbpOAuthToken
              (Just AltJSON)
              _tfbpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesBatchPatchResource)
                      r
                      u
