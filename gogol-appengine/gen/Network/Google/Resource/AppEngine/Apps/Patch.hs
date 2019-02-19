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
-- Module      : Network.Google.Resource.AppEngine.Apps.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified Application resource. You can update the following
-- fields: auth_domain - Google authentication domain for controlling user
-- access to the application. default_cookie_expiration - Cookie expiration
-- policy for the application.
--
-- /See:/ <https://cloud.google.com/appengine/docs/admin-api/ App Engine Admin API Reference> for @appengine.apps.patch@.
module Network.Google.Resource.AppEngine.Apps.Patch
    (
    -- * REST Resource
      AppsPatchResource

    -- * Creating a Request
    , appsPatch
    , AppsPatch

    -- * Request Lenses
    , apXgafv
    , apUploadProtocol
    , apUpdateMask
    , apAccessToken
    , apUploadType
    , apPayload
    , apAppsId
    , apCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @appengine.apps.patch@ method which the
-- 'AppsPatch' request conforms to.
type AppsPatchResource =
     "v1" :>
       "apps" :>
         Capture "appsId" Text :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "updateMask" GFieldMask :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Application :>
                           Patch '[JSON] Operation

-- | Updates the specified Application resource. You can update the following
-- fields: auth_domain - Google authentication domain for controlling user
-- access to the application. default_cookie_expiration - Cookie expiration
-- policy for the application.
--
-- /See:/ 'appsPatch' smart constructor.
data AppsPatch =
  AppsPatch'
    { _apXgafv          :: !(Maybe Xgafv)
    , _apUploadProtocol :: !(Maybe Text)
    , _apUpdateMask     :: !(Maybe GFieldMask)
    , _apAccessToken    :: !(Maybe Text)
    , _apUploadType     :: !(Maybe Text)
    , _apPayload        :: !Application
    , _apAppsId         :: !Text
    , _apCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'AppsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apXgafv'
--
-- * 'apUploadProtocol'
--
-- * 'apUpdateMask'
--
-- * 'apAccessToken'
--
-- * 'apUploadType'
--
-- * 'apPayload'
--
-- * 'apAppsId'
--
-- * 'apCallback'
appsPatch
    :: Application -- ^ 'apPayload'
    -> Text -- ^ 'apAppsId'
    -> AppsPatch
appsPatch pApPayload_ pApAppsId_ =
  AppsPatch'
    { _apXgafv = Nothing
    , _apUploadProtocol = Nothing
    , _apUpdateMask = Nothing
    , _apAccessToken = Nothing
    , _apUploadType = Nothing
    , _apPayload = pApPayload_
    , _apAppsId = pApAppsId_
    , _apCallback = Nothing
    }

-- | V1 error format.
apXgafv :: Lens' AppsPatch (Maybe Xgafv)
apXgafv = lens _apXgafv (\ s a -> s{_apXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
apUploadProtocol :: Lens' AppsPatch (Maybe Text)
apUploadProtocol
  = lens _apUploadProtocol
      (\ s a -> s{_apUploadProtocol = a})

-- | Standard field mask for the set of fields to be updated.
apUpdateMask :: Lens' AppsPatch (Maybe GFieldMask)
apUpdateMask
  = lens _apUpdateMask (\ s a -> s{_apUpdateMask = a})

-- | OAuth access token.
apAccessToken :: Lens' AppsPatch (Maybe Text)
apAccessToken
  = lens _apAccessToken
      (\ s a -> s{_apAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
apUploadType :: Lens' AppsPatch (Maybe Text)
apUploadType
  = lens _apUploadType (\ s a -> s{_apUploadType = a})

-- | Multipart request metadata.
apPayload :: Lens' AppsPatch Application
apPayload
  = lens _apPayload (\ s a -> s{_apPayload = a})

-- | Part of \`name\`. Name of the Application resource to update. Example:
-- apps\/myapp.
apAppsId :: Lens' AppsPatch Text
apAppsId = lens _apAppsId (\ s a -> s{_apAppsId = a})

-- | JSONP
apCallback :: Lens' AppsPatch (Maybe Text)
apCallback
  = lens _apCallback (\ s a -> s{_apCallback = a})

instance GoogleRequest AppsPatch where
        type Rs AppsPatch = Operation
        type Scopes AppsPatch =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient AppsPatch'{..}
          = go _apAppsId _apXgafv _apUploadProtocol
              _apUpdateMask
              _apAccessToken
              _apUploadType
              _apCallback
              (Just AltJSON)
              _apPayload
              appEngineService
          where go
                  = buildClient (Proxy :: Proxy AppsPatchResource)
                      mempty
