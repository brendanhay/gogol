{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Tables.Features.BatchPatch
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
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.features.batchPatch@.
module Network.Google.API.Mapsengine.Tables.Features.BatchPatch
    (
    -- * REST Resource
      TablesFeaturesBatchPatchAPI

    -- * Creating a Request
    , tablesFeaturesBatchPatch'
    , TablesFeaturesBatchPatch'

    -- * Request Lenses
    , tfbpQuotaUser
    , tfbpPrettyPrint
    , tfbpUserIp
    , tfbpKey
    , tfbpId
    , tfbpOauthToken
    , tfbpFields
    , tfbpAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.tables.features.batchPatch which the
-- 'TablesFeaturesBatchPatch'' request conforms to.
type TablesFeaturesBatchPatchAPI =
     "tables" :>
       Capture "id" Text :>
         "features" :>
           "batchPatch" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Post '[JSON] ()

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
    , _tfbpUserIp      :: !(Maybe Text)
    , _tfbpKey         :: !(Maybe Text)
    , _tfbpId          :: !Text
    , _tfbpOauthToken  :: !(Maybe Text)
    , _tfbpFields      :: !(Maybe Text)
    , _tfbpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesBatchPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfbpQuotaUser'
--
-- * 'tfbpPrettyPrint'
--
-- * 'tfbpUserIp'
--
-- * 'tfbpKey'
--
-- * 'tfbpId'
--
-- * 'tfbpOauthToken'
--
-- * 'tfbpFields'
--
-- * 'tfbpAlt'
tablesFeaturesBatchPatch'
    :: Text -- ^ 'id'
    -> TablesFeaturesBatchPatch'
tablesFeaturesBatchPatch' pTfbpId_ =
    TablesFeaturesBatchPatch'
    { _tfbpQuotaUser = Nothing
    , _tfbpPrettyPrint = True
    , _tfbpUserIp = Nothing
    , _tfbpKey = Nothing
    , _tfbpId = pTfbpId_
    , _tfbpOauthToken = Nothing
    , _tfbpFields = Nothing
    , _tfbpAlt = JSON
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
tfbpUserIp :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpUserIp
  = lens _tfbpUserIp (\ s a -> s{_tfbpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tfbpKey :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpKey = lens _tfbpKey (\ s a -> s{_tfbpKey = a})

-- | The ID of the table containing the features to be patched.
tfbpId :: Lens' TablesFeaturesBatchPatch' Text
tfbpId = lens _tfbpId (\ s a -> s{_tfbpId = a})

-- | OAuth 2.0 token for the current user.
tfbpOauthToken :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpOauthToken
  = lens _tfbpOauthToken
      (\ s a -> s{_tfbpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tfbpFields :: Lens' TablesFeaturesBatchPatch' (Maybe Text)
tfbpFields
  = lens _tfbpFields (\ s a -> s{_tfbpFields = a})

-- | Data format for the response.
tfbpAlt :: Lens' TablesFeaturesBatchPatch' Alt
tfbpAlt = lens _tfbpAlt (\ s a -> s{_tfbpAlt = a})

instance GoogleRequest TablesFeaturesBatchPatch'
         where
        type Rs TablesFeaturesBatchPatch' = ()
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u TablesFeaturesBatchPatch'{..}
          = go _tfbpQuotaUser (Just _tfbpPrettyPrint)
              _tfbpUserIp
              _tfbpKey
              _tfbpId
              _tfbpOauthToken
              _tfbpFields
              (Just _tfbpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TablesFeaturesBatchPatchAPI)
                      r
                      u
