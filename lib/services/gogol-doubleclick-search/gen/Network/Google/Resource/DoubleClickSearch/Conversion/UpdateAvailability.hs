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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ <https://developers.google.com/search-ads Search Ads 360 API Reference> for @doubleclicksearch.conversion.updateAvailability@.
module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
    (
    -- * REST Resource
      ConversionUpdateAvailabilityResource

    -- * Creating a Request
    , conversionUpdateAvailability
    , ConversionUpdateAvailability

    -- * Request Lenses
    , cuaXgafv
    , cuaUploadProtocol
    , cuaAccessToken
    , cuaUploadType
    , cuaPayload
    , cuaCallback
    ) where

import Network.Google.DoubleClickSearch.Types
import Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.updateAvailability@ method which the
-- 'ConversionUpdateAvailability' request conforms to.
type ConversionUpdateAvailabilityResource =
     "doubleclicksearch" :>
       "v2" :>
         "conversion" :>
           "updateAvailability" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] UpdateAvailabilityRequest :>
                           Post '[JSON] UpdateAvailabilityResponse

-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ 'conversionUpdateAvailability' smart constructor.
data ConversionUpdateAvailability =
  ConversionUpdateAvailability'
    { _cuaXgafv :: !(Maybe Xgafv)
    , _cuaUploadProtocol :: !(Maybe Text)
    , _cuaAccessToken :: !(Maybe Text)
    , _cuaUploadType :: !(Maybe Text)
    , _cuaPayload :: !UpdateAvailabilityRequest
    , _cuaCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ConversionUpdateAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuaXgafv'
--
-- * 'cuaUploadProtocol'
--
-- * 'cuaAccessToken'
--
-- * 'cuaUploadType'
--
-- * 'cuaPayload'
--
-- * 'cuaCallback'
conversionUpdateAvailability
    :: UpdateAvailabilityRequest -- ^ 'cuaPayload'
    -> ConversionUpdateAvailability
conversionUpdateAvailability pCuaPayload_ =
  ConversionUpdateAvailability'
    { _cuaXgafv = Nothing
    , _cuaUploadProtocol = Nothing
    , _cuaAccessToken = Nothing
    , _cuaUploadType = Nothing
    , _cuaPayload = pCuaPayload_
    , _cuaCallback = Nothing
    }


-- | V1 error format.
cuaXgafv :: Lens' ConversionUpdateAvailability (Maybe Xgafv)
cuaXgafv = lens _cuaXgafv (\ s a -> s{_cuaXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
cuaUploadProtocol :: Lens' ConversionUpdateAvailability (Maybe Text)
cuaUploadProtocol
  = lens _cuaUploadProtocol
      (\ s a -> s{_cuaUploadProtocol = a})

-- | OAuth access token.
cuaAccessToken :: Lens' ConversionUpdateAvailability (Maybe Text)
cuaAccessToken
  = lens _cuaAccessToken
      (\ s a -> s{_cuaAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
cuaUploadType :: Lens' ConversionUpdateAvailability (Maybe Text)
cuaUploadType
  = lens _cuaUploadType
      (\ s a -> s{_cuaUploadType = a})

-- | Multipart request metadata.
cuaPayload :: Lens' ConversionUpdateAvailability UpdateAvailabilityRequest
cuaPayload
  = lens _cuaPayload (\ s a -> s{_cuaPayload = a})

-- | JSONP
cuaCallback :: Lens' ConversionUpdateAvailability (Maybe Text)
cuaCallback
  = lens _cuaCallback (\ s a -> s{_cuaCallback = a})

instance GoogleRequest ConversionUpdateAvailability
         where
        type Rs ConversionUpdateAvailability =
             UpdateAvailabilityResponse
        type Scopes ConversionUpdateAvailability =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionUpdateAvailability'{..}
          = go _cuaXgafv _cuaUploadProtocol _cuaAccessToken
              _cuaUploadType
              _cuaCallback
              (Just AltJSON)
              _cuaPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionUpdateAvailabilityResource)
                      mempty
