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
-- Module      : Network.Google.Resource.AlertCenter.UpdateSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update the customer-level settings.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.updateSettings@.
module Network.Google.Resource.AlertCenter.UpdateSettings
    (
    -- * REST Resource
      UpdateSettingsResource

    -- * Creating a Request
    , updateSettings
    , UpdateSettings

    -- * Request Lenses
    , usXgafv
    , usUploadProtocol
    , usAccessToken
    , usUploadType
    , usPayload
    , usCustomerId
    , usCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.updateSettings@ method which the
-- 'UpdateSettings' request conforms to.
type UpdateSettingsResource =
     "v1beta1" :>
       "settings" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customerId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Settings :> Patch '[JSON] Settings

-- | Update the customer-level settings.
--
-- /See:/ 'updateSettings' smart constructor.
data UpdateSettings =
  UpdateSettings'
    { _usXgafv          :: !(Maybe Xgafv)
    , _usUploadProtocol :: !(Maybe Text)
    , _usAccessToken    :: !(Maybe Text)
    , _usUploadType     :: !(Maybe Text)
    , _usPayload        :: !Settings
    , _usCustomerId     :: !(Maybe Text)
    , _usCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usXgafv'
--
-- * 'usUploadProtocol'
--
-- * 'usAccessToken'
--
-- * 'usUploadType'
--
-- * 'usPayload'
--
-- * 'usCustomerId'
--
-- * 'usCallback'
updateSettings
    :: Settings -- ^ 'usPayload'
    -> UpdateSettings
updateSettings pUsPayload_ =
  UpdateSettings'
    { _usXgafv = Nothing
    , _usUploadProtocol = Nothing
    , _usAccessToken = Nothing
    , _usUploadType = Nothing
    , _usPayload = pUsPayload_
    , _usCustomerId = Nothing
    , _usCallback = Nothing
    }

-- | V1 error format.
usXgafv :: Lens' UpdateSettings (Maybe Xgafv)
usXgafv = lens _usXgafv (\ s a -> s{_usXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
usUploadProtocol :: Lens' UpdateSettings (Maybe Text)
usUploadProtocol
  = lens _usUploadProtocol
      (\ s a -> s{_usUploadProtocol = a})

-- | OAuth access token.
usAccessToken :: Lens' UpdateSettings (Maybe Text)
usAccessToken
  = lens _usAccessToken
      (\ s a -> s{_usAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
usUploadType :: Lens' UpdateSettings (Maybe Text)
usUploadType
  = lens _usUploadType (\ s a -> s{_usUploadType = a})

-- | Multipart request metadata.
usPayload :: Lens' UpdateSettings Settings
usPayload
  = lens _usPayload (\ s a -> s{_usPayload = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert settings are associated with. Inferred from the
-- caller identity if not provided.
usCustomerId :: Lens' UpdateSettings (Maybe Text)
usCustomerId
  = lens _usCustomerId (\ s a -> s{_usCustomerId = a})

-- | JSONP
usCallback :: Lens' UpdateSettings (Maybe Text)
usCallback
  = lens _usCallback (\ s a -> s{_usCallback = a})

instance GoogleRequest UpdateSettings where
        type Rs UpdateSettings = Settings
        type Scopes UpdateSettings =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient UpdateSettings'{..}
          = go _usXgafv _usUploadProtocol _usAccessToken
              _usUploadType
              _usCustomerId
              _usCallback
              (Just AltJSON)
              _usPayload
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy UpdateSettingsResource)
                      mempty
