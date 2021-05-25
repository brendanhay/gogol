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
-- Module      : Network.Google.Resource.Directory.MobileDevices.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a mobile device.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.mobiledevices.delete@.
module Network.Google.Resource.Directory.MobileDevices.Delete
    (
    -- * REST Resource
      MobileDevicesDeleteResource

    -- * Creating a Request
    , mobileDevicesDelete
    , MobileDevicesDelete

    -- * Request Lenses
    , mddXgafv
    , mddResourceId
    , mddUploadProtocol
    , mddAccessToken
    , mddUploadType
    , mddCustomerId
    , mddCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.mobiledevices.delete@ method which the
-- 'MobileDevicesDelete' request conforms to.
type MobileDevicesDeleteResource =
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
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a mobile device.
--
-- /See:/ 'mobileDevicesDelete' smart constructor.
data MobileDevicesDelete =
  MobileDevicesDelete'
    { _mddXgafv :: !(Maybe Xgafv)
    , _mddResourceId :: !Text
    , _mddUploadProtocol :: !(Maybe Text)
    , _mddAccessToken :: !(Maybe Text)
    , _mddUploadType :: !(Maybe Text)
    , _mddCustomerId :: !Text
    , _mddCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileDevicesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mddXgafv'
--
-- * 'mddResourceId'
--
-- * 'mddUploadProtocol'
--
-- * 'mddAccessToken'
--
-- * 'mddUploadType'
--
-- * 'mddCustomerId'
--
-- * 'mddCallback'
mobileDevicesDelete
    :: Text -- ^ 'mddResourceId'
    -> Text -- ^ 'mddCustomerId'
    -> MobileDevicesDelete
mobileDevicesDelete pMddResourceId_ pMddCustomerId_ =
  MobileDevicesDelete'
    { _mddXgafv = Nothing
    , _mddResourceId = pMddResourceId_
    , _mddUploadProtocol = Nothing
    , _mddAccessToken = Nothing
    , _mddUploadType = Nothing
    , _mddCustomerId = pMddCustomerId_
    , _mddCallback = Nothing
    }


-- | V1 error format.
mddXgafv :: Lens' MobileDevicesDelete (Maybe Xgafv)
mddXgafv = lens _mddXgafv (\ s a -> s{_mddXgafv = a})

-- | The unique ID the API service uses to identify the mobile device.
mddResourceId :: Lens' MobileDevicesDelete Text
mddResourceId
  = lens _mddResourceId
      (\ s a -> s{_mddResourceId = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mddUploadProtocol :: Lens' MobileDevicesDelete (Maybe Text)
mddUploadProtocol
  = lens _mddUploadProtocol
      (\ s a -> s{_mddUploadProtocol = a})

-- | OAuth access token.
mddAccessToken :: Lens' MobileDevicesDelete (Maybe Text)
mddAccessToken
  = lens _mddAccessToken
      (\ s a -> s{_mddAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mddUploadType :: Lens' MobileDevicesDelete (Maybe Text)
mddUploadType
  = lens _mddUploadType
      (\ s a -> s{_mddUploadType = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
mddCustomerId :: Lens' MobileDevicesDelete Text
mddCustomerId
  = lens _mddCustomerId
      (\ s a -> s{_mddCustomerId = a})

-- | JSONP
mddCallback :: Lens' MobileDevicesDelete (Maybe Text)
mddCallback
  = lens _mddCallback (\ s a -> s{_mddCallback = a})

instance GoogleRequest MobileDevicesDelete where
        type Rs MobileDevicesDelete = ()
        type Scopes MobileDevicesDelete =
             '["https://www.googleapis.com/auth/admin.directory.device.mobile"]
        requestClient MobileDevicesDelete'{..}
          = go _mddCustomerId _mddResourceId _mddXgafv
              _mddUploadProtocol
              _mddAccessToken
              _mddUploadType
              _mddCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy MobileDevicesDeleteResource)
                      mempty
