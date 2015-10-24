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
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the current configuration of the module.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @appengine.apps.modules.get@.
module Network.Google.Resource.AppEngine.Apps.Modules.Get
    (
    -- * REST Resource
      AppsModulesGetResource

    -- * Creating a Request
    , appsModulesGet
    , AppsModulesGet

    -- * Request Lenses
    , amgXgafv
    , amgUploadProtocol
    , amgPp
    , amgAccessToken
    , amgUploadType
    , amgModulesId
    , amgBearerToken
    , amgAppsId
    , amgCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.modules.get@ method which the
-- 'AppsModulesGet' request conforms to.
type AppsModulesGetResource =
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
                         QueryParam "bearer_token" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Get '[JSON] Module

-- | Gets the current configuration of the module.
--
-- /See:/ 'appsModulesGet' smart constructor.
data AppsModulesGet = AppsModulesGet
    { _amgXgafv          :: !(Maybe Text)
    , _amgUploadProtocol :: !(Maybe Text)
    , _amgPp             :: !Bool
    , _amgAccessToken    :: !(Maybe Text)
    , _amgUploadType     :: !(Maybe Text)
    , _amgModulesId      :: !Text
    , _amgBearerToken    :: !(Maybe Text)
    , _amgAppsId         :: !Text
    , _amgCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amgXgafv'
--
-- * 'amgUploadProtocol'
--
-- * 'amgPp'
--
-- * 'amgAccessToken'
--
-- * 'amgUploadType'
--
-- * 'amgModulesId'
--
-- * 'amgBearerToken'
--
-- * 'amgAppsId'
--
-- * 'amgCallback'
appsModulesGet
    :: Text -- ^ 'amgModulesId'
    -> Text -- ^ 'amgAppsId'
    -> AppsModulesGet
appsModulesGet pAmgModulesId_ pAmgAppsId_ =
    AppsModulesGet
    { _amgXgafv = Nothing
    , _amgUploadProtocol = Nothing
    , _amgPp = True
    , _amgAccessToken = Nothing
    , _amgUploadType = Nothing
    , _amgModulesId = pAmgModulesId_
    , _amgBearerToken = Nothing
    , _amgAppsId = pAmgAppsId_
    , _amgCallback = Nothing
    }

-- | V1 error format.
amgXgafv :: Lens' AppsModulesGet (Maybe Text)
amgXgafv = lens _amgXgafv (\ s a -> s{_amgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amgUploadProtocol :: Lens' AppsModulesGet (Maybe Text)
amgUploadProtocol
  = lens _amgUploadProtocol
      (\ s a -> s{_amgUploadProtocol = a})

-- | Pretty-print response.
amgPp :: Lens' AppsModulesGet Bool
amgPp = lens _amgPp (\ s a -> s{_amgPp = a})

-- | OAuth access token.
amgAccessToken :: Lens' AppsModulesGet (Maybe Text)
amgAccessToken
  = lens _amgAccessToken
      (\ s a -> s{_amgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amgUploadType :: Lens' AppsModulesGet (Maybe Text)
amgUploadType
  = lens _amgUploadType
      (\ s a -> s{_amgUploadType = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amgModulesId :: Lens' AppsModulesGet Text
amgModulesId
  = lens _amgModulesId (\ s a -> s{_amgModulesId = a})

-- | OAuth bearer token.
amgBearerToken :: Lens' AppsModulesGet (Maybe Text)
amgBearerToken
  = lens _amgBearerToken
      (\ s a -> s{_amgBearerToken = a})

-- | Part of \`name\`. Name of the resource requested. For example:
-- \"apps\/myapp\/modules\/default\".
amgAppsId :: Lens' AppsModulesGet Text
amgAppsId
  = lens _amgAppsId (\ s a -> s{_amgAppsId = a})

-- | JSONP
amgCallback :: Lens' AppsModulesGet (Maybe Text)
amgCallback
  = lens _amgCallback (\ s a -> s{_amgCallback = a})

instance GoogleRequest AppsModulesGet where
        type Rs AppsModulesGet = Module
        requestClient AppsModulesGet{..}
          = go _amgAppsId _amgModulesId _amgXgafv
              _amgUploadProtocol
              (Just _amgPp)
              _amgAccessToken
              _amgUploadType
              _amgBearerToken
              _amgCallback
              (Just AltJSON)
              appEngineService
          where go
                  = buildClient (Proxy :: Proxy AppsModulesGetResource)
                      mempty
