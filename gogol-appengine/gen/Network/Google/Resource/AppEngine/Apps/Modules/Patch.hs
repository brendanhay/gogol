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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the configuration of the specified module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @appengine.apps.modules.patch@.
module Network.Google.Resource.AppEngine.Apps.Modules.Patch
    (
    -- * REST Resource
      AppsModulesPatchResource

    -- * Creating a Request
    , appsModulesPatch'
    , AppsModulesPatch'

    -- * Request Lenses
    , ampXgafv
    , ampUploadProtocol
    , ampPp
    , ampAccessToken
    , ampUploadType
    , ampPayload
    , ampModulesId
    , ampMigrateTraffic
    , ampMask
    , ampBearerToken
    , ampAppsId
    , ampCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.modules.patch@ method which the
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
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Module :>
                                     Patch '[JSON] Operation

-- | Updates the configuration of the specified module.
--
-- /See:/ 'appsModulesPatch'' smart constructor.
data AppsModulesPatch' = AppsModulesPatch'
    { _ampXgafv          :: !(Maybe Text)
    , _ampUploadProtocol :: !(Maybe Text)
    , _ampPp             :: !Bool
    , _ampAccessToken    :: !(Maybe Text)
    , _ampUploadType     :: !(Maybe Text)
    , _ampPayload        :: !Module
    , _ampModulesId      :: !Text
    , _ampMigrateTraffic :: !(Maybe Bool)
    , _ampMask           :: !(Maybe Text)
    , _ampBearerToken    :: !(Maybe Text)
    , _ampAppsId         :: !Text
    , _ampCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ampXgafv'
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
-- * 'ampAppsId'
--
-- * 'ampCallback'
appsModulesPatch'
    :: Module -- ^ 'ampPayload'
    -> Text -- ^ 'ampModulesId'
    -> Text -- ^ 'ampAppsId'
    -> AppsModulesPatch'
appsModulesPatch' pAmpPayload_ pAmpModulesId_ pAmpAppsId_ =
    AppsModulesPatch'
    { _ampXgafv = Nothing
    , _ampUploadProtocol = Nothing
    , _ampPp = True
    , _ampAccessToken = Nothing
    , _ampUploadType = Nothing
    , _ampPayload = pAmpPayload_
    , _ampModulesId = pAmpModulesId_
    , _ampMigrateTraffic = Nothing
    , _ampMask = Nothing
    , _ampBearerToken = Nothing
    , _ampAppsId = pAmpAppsId_
    , _ampCallback = Nothing
    }

-- | V1 error format.
ampXgafv :: Lens' AppsModulesPatch' (Maybe Text)
ampXgafv = lens _ampXgafv (\ s a -> s{_ampXgafv = a})

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

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/modules\/default\".
ampAppsId :: Lens' AppsModulesPatch' Text
ampAppsId
  = lens _ampAppsId (\ s a -> s{_ampAppsId = a})

-- | JSONP
ampCallback :: Lens' AppsModulesPatch' (Maybe Text)
ampCallback
  = lens _ampCallback (\ s a -> s{_ampCallback = a})

instance GoogleRequest AppsModulesPatch' where
        type Rs AppsModulesPatch' = Operation
        requestClient AppsModulesPatch'{..}
          = go _ampAppsId _ampModulesId _ampXgafv
              _ampUploadProtocol
              (Just _ampPp)
              _ampAccessToken
              _ampUploadType
              _ampMigrateTraffic
              _ampMask
              _ampBearerToken
              _ampCallback
              (Just AltJSON)
              _ampPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsModulesPatchResource)
                      mempty
