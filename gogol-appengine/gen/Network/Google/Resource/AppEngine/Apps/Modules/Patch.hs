{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates the configuration of the specified module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesPatch@.
module Network.Google.Resource.AppEngine.Apps.Modules.Patch
    (
    -- * REST Resource
      AppsModulesPatchResource

    -- * Creating a Request
    , appsModulesPatch'
    , AppsModulesPatch'

    -- * Request Lenses
    , ampXgafv
    , ampQuotaUser
    , ampPrettyPrint
    , ampUploadProtocol
    , ampPp
    , ampAccessToken
    , ampUploadType
    , ampPayload
    , ampModulesId
    , ampMigrateTraffic
    , ampMask
    , ampBearerToken
    , ampKey
    , ampAppsId
    , ampOAuthToken
    , ampFields
    , ampCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesPatch@ which the
-- 'AppsModulesPatch'' request conforms to.
type AppsModulesPatchResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               QueryParam "$.xgafv" Text :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "pp" Bool :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "migrateTraffic" Bool :>
                           QueryParam "mask" Text :>
                             QueryParam "bearer_token" Text :>
                               QueryParam "callback" Text :>
                                 QueryParam "quotaUser" Text :>
                                   QueryParam "prettyPrint" Bool :>
                                     QueryParam "fields" Text :>
                                       QueryParam "key" Key :>
                                         QueryParam "oauth_token" OAuthToken :>
                                           QueryParam "alt" AltJSON :>
                                             ReqBody '[OctetStream] Module :>
                                               Patch '[JSON] Operation

-- | Updates the configuration of the specified module.
--
-- /See:/ 'appsModulesPatch'' smart constructor.
data AppsModulesPatch' = AppsModulesPatch'
    { _ampXgafv          :: !(Maybe Text)
    , _ampQuotaUser      :: !(Maybe Text)
    , _ampPrettyPrint    :: !Bool
    , _ampUploadProtocol :: !(Maybe Text)
    , _ampPp             :: !Bool
    , _ampAccessToken    :: !(Maybe Text)
    , _ampUploadType     :: !(Maybe Text)
    , _ampPayload        :: !Module
    , _ampModulesId      :: !Text
    , _ampMigrateTraffic :: !(Maybe Bool)
    , _ampMask           :: !(Maybe Text)
    , _ampBearerToken    :: !(Maybe Text)
    , _ampKey            :: !(Maybe Key)
    , _ampAppsId         :: !Text
    , _ampOAuthToken     :: !(Maybe OAuthToken)
    , _ampFields         :: !(Maybe Text)
    , _ampCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ampXgafv'
--
-- * 'ampQuotaUser'
--
-- * 'ampPrettyPrint'
--
-- * 'ampUploadProtocol'
--
-- * 'ampPp'
--
-- * 'ampAccessToken'
--
-- * 'ampUploadType'
--
-- * 'ampPayload'
--
-- * 'ampModulesId'
--
-- * 'ampMigrateTraffic'
--
-- * 'ampMask'
--
-- * 'ampBearerToken'
--
-- * 'ampKey'
--
-- * 'ampAppsId'
--
-- * 'ampOAuthToken'
--
-- * 'ampFields'
--
-- * 'ampCallback'
appsModulesPatch'
    :: Module -- ^ 'payload'
    -> Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesPatch'
appsModulesPatch' pAmpPayload_ pAmpModulesId_ pAmpAppsId_ =
    AppsModulesPatch'
    { _ampXgafv = Nothing
    , _ampQuotaUser = Nothing
    , _ampPrettyPrint = True
    , _ampUploadProtocol = Nothing
    , _ampPp = True
    , _ampAccessToken = Nothing
    , _ampUploadType = Nothing
    , _ampPayload = pAmpPayload_
    , _ampModulesId = pAmpModulesId_
    , _ampMigrateTraffic = Nothing
    , _ampMask = Nothing
    , _ampBearerToken = Nothing
    , _ampKey = Nothing
    , _ampAppsId = pAmpAppsId_
    , _ampOAuthToken = Nothing
    , _ampFields = Nothing
    , _ampCallback = Nothing
    }

-- | V1 error format.
ampXgafv :: Lens' AppsModulesPatch' (Maybe Text)
ampXgafv = lens _ampXgafv (\ s a -> s{_ampXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
ampQuotaUser :: Lens' AppsModulesPatch' (Maybe Text)
ampQuotaUser
  = lens _ampQuotaUser (\ s a -> s{_ampQuotaUser = a})

-- | Returns response with indentations and line breaks.
ampPrettyPrint :: Lens' AppsModulesPatch' Bool
ampPrettyPrint
  = lens _ampPrettyPrint
      (\ s a -> s{_ampPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ampUploadProtocol :: Lens' AppsModulesPatch' (Maybe Text)
ampUploadProtocol
  = lens _ampUploadProtocol
      (\ s a -> s{_ampUploadProtocol = a})

-- | Pretty-print response.
ampPp :: Lens' AppsModulesPatch' Bool
ampPp = lens _ampPp (\ s a -> s{_ampPp = a})

-- | OAuth access token.
ampAccessToken :: Lens' AppsModulesPatch' (Maybe Text)
ampAccessToken
  = lens _ampAccessToken
      (\ s a -> s{_ampAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ampUploadType :: Lens' AppsModulesPatch' (Maybe Text)
ampUploadType
  = lens _ampUploadType
      (\ s a -> s{_ampUploadType = a})

-- | Multipart request metadata.
ampPayload :: Lens' AppsModulesPatch' Module
ampPayload
  = lens _ampPayload (\ s a -> s{_ampPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
ampModulesId :: Lens' AppsModulesPatch' Text
ampModulesId
  = lens _ampModulesId (\ s a -> s{_ampModulesId = a})

-- | Whether to use Traffic Migration to shift traffic gradually. Traffic can
-- only be migrated from a single version to another single version.
ampMigrateTraffic :: Lens' AppsModulesPatch' (Maybe Bool)
ampMigrateTraffic
  = lens _ampMigrateTraffic
      (\ s a -> s{_ampMigrateTraffic = a})

-- | Standard field mask for the set of fields to be updated.
ampMask :: Lens' AppsModulesPatch' (Maybe Text)
ampMask = lens _ampMask (\ s a -> s{_ampMask = a})

-- | OAuth bearer token.
ampBearerToken :: Lens' AppsModulesPatch' (Maybe Text)
ampBearerToken
  = lens _ampBearerToken
      (\ s a -> s{_ampBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ampKey :: Lens' AppsModulesPatch' (Maybe Key)
ampKey = lens _ampKey (\ s a -> s{_ampKey = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/modules\/default\".
ampAppsId :: Lens' AppsModulesPatch' Text
ampAppsId
  = lens _ampAppsId (\ s a -> s{_ampAppsId = a})

-- | OAuth 2.0 token for the current user.
ampOAuthToken :: Lens' AppsModulesPatch' (Maybe OAuthToken)
ampOAuthToken
  = lens _ampOAuthToken
      (\ s a -> s{_ampOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ampFields :: Lens' AppsModulesPatch' (Maybe Text)
ampFields
  = lens _ampFields (\ s a -> s{_ampFields = a})

-- | JSONP
ampCallback :: Lens' AppsModulesPatch' (Maybe Text)
ampCallback
  = lens _ampCallback (\ s a -> s{_ampCallback = a})

instance GoogleAuth AppsModulesPatch' where
        authKey = ampKey . _Just
        authToken = ampOAuthToken . _Just

instance GoogleRequest AppsModulesPatch' where
        type Rs AppsModulesPatch' = Operation
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesPatch'{..}
          = go _ampAppsId _ampModulesId _ampXgafv
              _ampUploadProtocol
              (Just _ampPp)
              _ampAccessToken
              _ampUploadType
              _ampMigrateTraffic
              _ampMask
              _ampBearerToken
              _ampCallback
              _ampQuotaUser
              (Just _ampPrettyPrint)
              _ampFields
              _ampKey
              _ampOAuthToken
              (Just AltJSON)
              _ampPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesPatchResource)
                      r
                      u
