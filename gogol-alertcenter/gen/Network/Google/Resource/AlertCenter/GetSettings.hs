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
-- Module      : Network.Google.Resource.AlertCenter.GetSettings
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns customer-level settings.
--
-- /See:/ <https://developers.google.com/admin-sdk/alertcenter/ G Suite Alert Center API Reference> for @alertcenter.getSettings@.
module Network.Google.Resource.AlertCenter.GetSettings
    (
    -- * REST Resource
      GetSettingsResource

    -- * Creating a Request
    , getSettings
    , GetSettings

    -- * Request Lenses
    , gsXgafv
    , gsUploadProtocol
    , gsAccessToken
    , gsUploadType
    , gsCustomerId
    , gsCallback
    ) where

import           Network.Google.AlertCenter.Types
import           Network.Google.Prelude

-- | A resource alias for @alertcenter.getSettings@ method which the
-- 'GetSettings' request conforms to.
type GetSettingsResource =
     "v1beta1" :>
       "settings" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "customerId" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Settings

-- | Returns customer-level settings.
--
-- /See:/ 'getSettings' smart constructor.
data GetSettings =
  GetSettings'
    { _gsXgafv          :: !(Maybe Xgafv)
    , _gsUploadProtocol :: !(Maybe Text)
    , _gsAccessToken    :: !(Maybe Text)
    , _gsUploadType     :: !(Maybe Text)
    , _gsCustomerId     :: !(Maybe Text)
    , _gsCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gsXgafv'
--
-- * 'gsUploadProtocol'
--
-- * 'gsAccessToken'
--
-- * 'gsUploadType'
--
-- * 'gsCustomerId'
--
-- * 'gsCallback'
getSettings
    :: GetSettings
getSettings =
  GetSettings'
    { _gsXgafv = Nothing
    , _gsUploadProtocol = Nothing
    , _gsAccessToken = Nothing
    , _gsUploadType = Nothing
    , _gsCustomerId = Nothing
    , _gsCallback = Nothing
    }

-- | V1 error format.
gsXgafv :: Lens' GetSettings (Maybe Xgafv)
gsXgafv = lens _gsXgafv (\ s a -> s{_gsXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
gsUploadProtocol :: Lens' GetSettings (Maybe Text)
gsUploadProtocol
  = lens _gsUploadProtocol
      (\ s a -> s{_gsUploadProtocol = a})

-- | OAuth access token.
gsAccessToken :: Lens' GetSettings (Maybe Text)
gsAccessToken
  = lens _gsAccessToken
      (\ s a -> s{_gsAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
gsUploadType :: Lens' GetSettings (Maybe Text)
gsUploadType
  = lens _gsUploadType (\ s a -> s{_gsUploadType = a})

-- | Optional. The unique identifier of the G Suite organization account of
-- the customer the alert settings are associated with. Inferred from the
-- caller identity if not provided.
gsCustomerId :: Lens' GetSettings (Maybe Text)
gsCustomerId
  = lens _gsCustomerId (\ s a -> s{_gsCustomerId = a})

-- | JSONP
gsCallback :: Lens' GetSettings (Maybe Text)
gsCallback
  = lens _gsCallback (\ s a -> s{_gsCallback = a})

instance GoogleRequest GetSettings where
        type Rs GetSettings = Settings
        type Scopes GetSettings =
             '["https://www.googleapis.com/auth/apps.alerts"]
        requestClient GetSettings'{..}
          = go _gsXgafv _gsUploadProtocol _gsAccessToken
              _gsUploadType
              _gsCustomerId
              _gsCallback
              (Just AltJSON)
              alertCenterService
          where go
                  = buildClient (Proxy :: Proxy GetSettingsResource)
                      mempty
