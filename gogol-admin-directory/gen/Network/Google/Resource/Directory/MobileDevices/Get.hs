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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a mobile device\'s properties.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.get@.
module Network.Google.Resource.Directory.MobileDevices.Get
    (
    -- * REST Resource
      MobileDevicesGetResource

    -- * Creating a Request
    , mobileDevicesGet
    , MobileDevicesGet

    -- * Request Lenses
    , mdgXgafv
    , mdgResourceId
    , mdgUploadProtocol
    , mdgAccessToken
    , mdgUploadType
    , mdgCustomerId
    , mdgProjection
    , mdgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.get@ method which the
-- 'MobileDevicesGet' request conforms to.
type MobileDevicesGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "devices" :>
                 "mobile" :>
                   Capture "resourceId" Text :>
                     QueryParam "$.xgafv" Xgafv :>
                       QueryParam "upload_protocol" Text :>
                         QueryParam "access_token" Text :>
                           QueryParam "uploadType" Text :>
                             QueryParam "projection" MobileDevicesGetProjection
                               :>
                               QueryParam "callback" Text :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] MobileDevice

-- | Retrieves a mobile device\'s properties.
--
-- /See:/ 'mobileDevicesGet' smart constructor.
data MobileDevicesGet =
  MobileDevicesGet'
    { _mdgXgafv :: !(Maybe Xgafv)
    , _mdgResourceId :: !Text
    , _mdgUploadProtocol :: !(Maybe Text)
    , _mdgAccessToken :: !(Maybe Text)
    , _mdgUploadType :: !(Maybe Text)
    , _mdgCustomerId :: !Text
    , _mdgProjection :: !(Maybe MobileDevicesGetProjection)
    , _mdgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDevicesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdgXgafv'
--
-- * 'mdgResourceId'
--
-- * 'mdgUploadProtocol'
--
-- * 'mdgAccessToken'
--
-- * 'mdgUploadType'
--
-- * 'mdgCustomerId'
--
-- * 'mdgProjection'
--
-- * 'mdgCallback'
mobileDevicesGet
    :: Text -- ^ 'mdgResourceId'
    -> Text -- ^ 'mdgCustomerId'
    -> MobileDevicesGet
mobileDevicesGet pMdgResourceId_ pMdgCustomerId_ =
  MobileDevicesGet'
    { _mdgXgafv = Nothing
    , _mdgResourceId = pMdgResourceId_
    , _mdgUploadProtocol = Nothing
    , _mdgAccessToken = Nothing
    , _mdgUploadType = Nothing
    , _mdgCustomerId = pMdgCustomerId_
    , _mdgProjection = Nothing
    , _mdgCallback = Nothing
    }


-- | V1 error format.
mdgXgafv :: Lens' MobileDevicesGet (Maybe Xgafv)
mdgXgafv = lens _mdgXgafv (\ s a -> s{_mdgXgafv = a})

-- | The unique ID the API service uses to identify the mobile device.
mdgResourceId :: Lens' MobileDevicesGet Text
mdgResourceId
  = lens _mdgResourceId
      (\ s a -> s{_mdgResourceId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mdgUploadProtocol :: Lens' MobileDevicesGet (Maybe Text)
mdgUploadProtocol
  = lens _mdgUploadProtocol
      (\ s a -> s{_mdgUploadProtocol = a})

-- | OAuth access token.
mdgAccessToken :: Lens' MobileDevicesGet (Maybe Text)
mdgAccessToken
  = lens _mdgAccessToken
      (\ s a -> s{_mdgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mdgUploadType :: Lens' MobileDevicesGet (Maybe Text)
mdgUploadType
  = lens _mdgUploadType
      (\ s a -> s{_mdgUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
mdgCustomerId :: Lens' MobileDevicesGet Text
mdgCustomerId
  = lens _mdgCustomerId
      (\ s a -> s{_mdgCustomerId = a})

-- | Restrict information returned to a set of selected fields.
mdgProjection :: Lens' MobileDevicesGet (Maybe MobileDevicesGetProjection)
mdgProjection
  = lens _mdgProjection
      (\ s a -> s{_mdgProjection = a})

-- | JSONP
mdgCallback :: Lens' MobileDevicesGet (Maybe Text)
mdgCallback
  = lens _mdgCallback (\ s a -> s{_mdgCallback = a})

instance GoogleRequest MobileDevicesGet where
        type Rs MobileDevicesGet = MobileDevice
        type Scopes MobileDevicesGet =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
               "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"]
        requestClient MobileDevicesGet'{..}
          = go _mdgCustomerId _mdgResourceId _mdgXgafv
              _mdgUploadProtocol
              _mdgAccessToken
              _mdgUploadType
              _mdgProjection
              _mdgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesGetResource)
                      mempty
