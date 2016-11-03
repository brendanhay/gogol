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
-- Module      : Network.Google.Resource.AppEngine.Apps.Repair
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Recreates the required App Engine features for the application in your
-- project, for example a Cloud Storage bucket or App Engine service
-- account. Use this method if you receive an error message about a missing
-- feature, for example \"*Error retrieving the App Engine service
-- account*\".
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ Google App Engine Admin API Reference> for @appengine.apps.repair@.
module Network.Google.Resource.AppEngine.Apps.Repair
    (
    -- * REST Resource
      AppsRepairResource

    -- * Creating a Request
    , appsRepair
    , AppsRepair

    -- * Request Lenses
    , arXgafv
    , arUploadProtocol
    , arPp
    , arAccessToken
    , arUploadType
    , arPayload
    , arBearerToken
    , arAppsId
    , arCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.repair@ method which the
-- 'AppsRepair' request conforms to.
type AppsRepairResource =
     "v1" :>
       "apps" :>
         CaptureMode "appsId" "repair" Text :>
           QueryParam "$.xgafv" Text :>
             QueryParam "upload_protocol" Text :>
               QueryParam "pp" Bool :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "bearer_token" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RepairApplicationRequest :>
                             Post '[JSON] Operation

-- | Recreates the required App Engine features for the application in your
-- project, for example a Cloud Storage bucket or App Engine service
-- account. Use this method if you receive an error message about a missing
-- feature, for example \"*Error retrieving the App Engine service
-- account*\".
--
-- /See:/ 'appsRepair' smart constructor.
data AppsRepair = AppsRepair'
    { _arXgafv          :: !(Maybe Text)
    , _arUploadProtocol :: !(Maybe Text)
    , _arPp             :: !Bool
    , _arAccessToken    :: !(Maybe Text)
    , _arUploadType     :: !(Maybe Text)
    , _arPayload        :: !RepairApplicationRequest
    , _arBearerToken    :: !(Maybe Text)
    , _arAppsId         :: !Text
    , _arCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsRepair' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arXgafv'
--
-- * 'arUploadProtocol'
--
-- * 'arPp'
--
-- * 'arAccessToken'
--
-- * 'arUploadType'
--
-- * 'arPayload'
--
-- * 'arBearerToken'
--
-- * 'arAppsId'
--
-- * 'arCallback'
appsRepair
    :: RepairApplicationRequest -- ^ 'arPayload'
    -> Text -- ^ 'arAppsId'
    -> AppsRepair
appsRepair pArPayload_ pArAppsId_ =
    AppsRepair'
    { _arXgafv = Nothing
    , _arUploadProtocol = Nothing
    , _arPp = True
    , _arAccessToken = Nothing
    , _arUploadType = Nothing
    , _arPayload = pArPayload_
    , _arBearerToken = Nothing
    , _arAppsId = pArAppsId_
    , _arCallback = Nothing
    }

-- | V1 error format.
arXgafv :: Lens' AppsRepair (Maybe Text)
arXgafv = lens _arXgafv (\ s a -> s{_arXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arUploadProtocol :: Lens' AppsRepair (Maybe Text)
arUploadProtocol
  = lens _arUploadProtocol
      (\ s a -> s{_arUploadProtocol = a})

-- | Pretty-print response.
arPp :: Lens' AppsRepair Bool
arPp = lens _arPp (\ s a -> s{_arPp = a})

-- | OAuth access token.
arAccessToken :: Lens' AppsRepair (Maybe Text)
arAccessToken
  = lens _arAccessToken
      (\ s a -> s{_arAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arUploadType :: Lens' AppsRepair (Maybe Text)
arUploadType
  = lens _arUploadType (\ s a -> s{_arUploadType = a})

-- | Multipart request metadata.
arPayload :: Lens' AppsRepair RepairApplicationRequest
arPayload
  = lens _arPayload (\ s a -> s{_arPayload = a})

-- | OAuth bearer token.
arBearerToken :: Lens' AppsRepair (Maybe Text)
arBearerToken
  = lens _arBearerToken
      (\ s a -> s{_arBearerToken = a})

-- | Part of \`name\`. Name of the application to repair. Example:
-- \`apps\/myapp\`
arAppsId :: Lens' AppsRepair Text
arAppsId = lens _arAppsId (\ s a -> s{_arAppsId = a})

-- | JSONP
arCallback :: Lens' AppsRepair (Maybe Text)
arCallback
  = lens _arCallback (\ s a -> s{_arCallback = a})

instance GoogleRequest AppsRepair where
        type Rs AppsRepair = Operation
        type Scopes AppsRepair =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsRepair'{..}
          = go _arAppsId _arXgafv _arUploadProtocol
              (Just _arPp)
              _arAccessToken
              _arUploadType
              _arBearerToken
              _arCallback
              (Just AltJSON)
              _arPayload
              appEngineService
          where go
                  = buildClient (Proxy :: Proxy AppsRepairResource)
                      mempty
