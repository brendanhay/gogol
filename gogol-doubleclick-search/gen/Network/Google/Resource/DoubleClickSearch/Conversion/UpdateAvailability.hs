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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @doubleclicksearch.conversion.updateAvailability@.
module Network.Google.Resource.DoubleClickSearch.Conversion.UpdateAvailability
    (
    -- * REST Resource
      ConversionUpdateAvailabilityResource

    -- * Creating a Request
    , conversionUpdateAvailability
    , ConversionUpdateAvailability

    -- * Request Lenses
    , cuaPayload
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @doubleclicksearch.conversion.updateAvailability@ method which the
-- 'ConversionUpdateAvailability' request conforms to.
type ConversionUpdateAvailabilityResource =
     "doubleclicksearch" :>
       "v2" :>
         "conversion" :>
           "updateAvailability" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] UpdateAvailabilityRequest :>
                 Post '[JSON] UpdateAvailabilityResponse

-- | Updates the availabilities of a batch of floodlight activities in
-- DoubleClick Search.
--
-- /See:/ 'conversionUpdateAvailability' smart constructor.
newtype ConversionUpdateAvailability = ConversionUpdateAvailability'
    { _cuaPayload :: UpdateAvailabilityRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionUpdateAvailability' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuaPayload'
conversionUpdateAvailability
    :: UpdateAvailabilityRequest -- ^ 'cuaPayload'
    -> ConversionUpdateAvailability
conversionUpdateAvailability pCuaPayload_ =
    ConversionUpdateAvailability'
    { _cuaPayload = pCuaPayload_
    }

-- | Multipart request metadata.
cuaPayload :: Lens' ConversionUpdateAvailability UpdateAvailabilityRequest
cuaPayload
  = lens _cuaPayload (\ s a -> s{_cuaPayload = a})

instance GoogleRequest ConversionUpdateAvailability
         where
        type Rs ConversionUpdateAvailability =
             UpdateAvailabilityResponse
        type Scopes ConversionUpdateAvailability =
             '["https://www.googleapis.com/auth/doubleclicksearch"]
        requestClient ConversionUpdateAvailability'{..}
          = go (Just AltJSON) _cuaPayload
              doubleClickSearchService
          where go
                  = buildClient
                      (Proxy :: Proxy ConversionUpdateAvailabilityResource)
                      mempty
