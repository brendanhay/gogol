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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deploys new code and resource files to a version.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @appengine.apps.modules.versions.create@.
module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
    (
    -- * REST Resource
      AppsModulesVersionsCreateResource

    -- * Creating a Request
    , appsModulesVersionsCreate
    , AppsModulesVersionsCreate

    -- * Request Lenses
    , amvcXgafv
    , amvcUploadProtocol
    , amvcPp
    , amvcAccessToken
    , amvcUploadType
    , amvcPayload
    , amvcModulesId
    , amvcBearerToken
    , amvcAppsId
    , amvcCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.modules.versions.create@ method which the
-- 'AppsModulesVersionsCreate' request conforms to.
type AppsModulesVersionsCreateResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Version :>
                                   Post '[JSON] Operation

-- | Deploys new code and resource files to a version.
--
-- /See:/ 'appsModulesVersionsCreate' smart constructor.
data AppsModulesVersionsCreate = AppsModulesVersionsCreate
    { _amvcXgafv          :: !(Maybe Text)
    , _amvcUploadProtocol :: !(Maybe Text)
    , _amvcPp             :: !Bool
    , _amvcAccessToken    :: !(Maybe Text)
    , _amvcUploadType     :: !(Maybe Text)
    , _amvcPayload        :: !Version
    , _amvcModulesId      :: !Text
    , _amvcBearerToken    :: !(Maybe Text)
    , _amvcAppsId         :: !Text
    , _amvcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvcXgafv'
--
-- * 'amvcUploadProtocol'
--
-- * 'amvcPp'
--
-- * 'amvcAccessToken'
--
-- * 'amvcUploadType'
--
-- * 'amvcPayload'
--
-- * 'amvcModulesId'
--
-- * 'amvcBearerToken'
--
-- * 'amvcAppsId'
--
-- * 'amvcCallback'
appsModulesVersionsCreate
    :: Version -- ^ 'amvcPayload'
    -> Text -- ^ 'amvcModulesId'
    -> Text -- ^ 'amvcAppsId'
    -> AppsModulesVersionsCreate
appsModulesVersionsCreate pAmvcPayload_ pAmvcModulesId_ pAmvcAppsId_ =
    AppsModulesVersionsCreate
    { _amvcXgafv = Nothing
    , _amvcUploadProtocol = Nothing
    , _amvcPp = True
    , _amvcAccessToken = Nothing
    , _amvcUploadType = Nothing
    , _amvcPayload = pAmvcPayload_
    , _amvcModulesId = pAmvcModulesId_
    , _amvcBearerToken = Nothing
    , _amvcAppsId = pAmvcAppsId_
    , _amvcCallback = Nothing
    }

-- | V1 error format.
amvcXgafv :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcXgafv
  = lens _amvcXgafv (\ s a -> s{_amvcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvcUploadProtocol :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcUploadProtocol
  = lens _amvcUploadProtocol
      (\ s a -> s{_amvcUploadProtocol = a})

-- | Pretty-print response.
amvcPp :: Lens' AppsModulesVersionsCreate Bool
amvcPp = lens _amvcPp (\ s a -> s{_amvcPp = a})

-- | OAuth access token.
amvcAccessToken :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcAccessToken
  = lens _amvcAccessToken
      (\ s a -> s{_amvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvcUploadType :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcUploadType
  = lens _amvcUploadType
      (\ s a -> s{_amvcUploadType = a})

-- | Multipart request metadata.
amvcPayload :: Lens' AppsModulesVersionsCreate Version
amvcPayload
  = lens _amvcPayload (\ s a -> s{_amvcPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvcModulesId :: Lens' AppsModulesVersionsCreate Text
amvcModulesId
  = lens _amvcModulesId
      (\ s a -> s{_amvcModulesId = a})

-- | OAuth bearer token.
amvcBearerToken :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcBearerToken
  = lens _amvcBearerToken
      (\ s a -> s{_amvcBearerToken = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/modules\/default\".
amvcAppsId :: Lens' AppsModulesVersionsCreate Text
amvcAppsId
  = lens _amvcAppsId (\ s a -> s{_amvcAppsId = a})

-- | JSONP
amvcCallback :: Lens' AppsModulesVersionsCreate (Maybe Text)
amvcCallback
  = lens _amvcCallback (\ s a -> s{_amvcCallback = a})

instance GoogleRequest AppsModulesVersionsCreate
         where
        type Rs AppsModulesVersionsCreate = Operation
        requestClient AppsModulesVersionsCreate{..}
          = go _amvcAppsId _amvcModulesId _amvcXgafv
              _amvcUploadProtocol
              (Just _amvcPp)
              _amvcAccessToken
              _amvcUploadType
              _amvcBearerToken
              _amvcCallback
              (Just AltJSON)
              _amvcPayload
              appEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy AppsModulesVersionsCreateResource)
                      mempty
