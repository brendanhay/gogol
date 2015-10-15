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
-- Module      : Network.Google.Resource.Spectrum.Paws.GetSpectrum
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsGetSpectrum@.
module Network.Google.Resource.Spectrum.Paws.GetSpectrum
    (
    -- * REST Resource
      PawsGetSpectrumResource

    -- * Creating a Request
    , pawsGetSpectrum'
    , PawsGetSpectrum'

    -- * Request Lenses
    , pgsPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsGetSpectrum@ method which the
-- 'PawsGetSpectrum'' request conforms to.
type PawsGetSpectrumResource =
     "getSpectrum" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] PawsGetSpectrumRequest :>
           Post '[JSON] PawsGetSpectrumResponse

-- | Requests information about the available spectrum for a device at a
-- location. Requests from a fixed-mode device must include owner
-- information so the device can be registered with the database.
--
-- /See:/ 'pawsGetSpectrum'' smart constructor.
newtype PawsGetSpectrum' = PawsGetSpectrum'
    { _pgsPayload :: PawsGetSpectrumRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsGetSpectrum'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgsPayload'
pawsGetSpectrum'
    :: PawsGetSpectrumRequest -- ^ 'payload'
    -> PawsGetSpectrum'
pawsGetSpectrum' pPgsPayload_ =
    PawsGetSpectrum'
    { _pgsPayload = pPgsPayload_
    }

-- | Multipart request metadata.
pgsPayload :: Lens' PawsGetSpectrum' PawsGetSpectrumRequest
pgsPayload
  = lens _pgsPayload (\ s a -> s{_pgsPayload = a})

instance GoogleRequest PawsGetSpectrum' where
        type Rs PawsGetSpectrum' = PawsGetSpectrumResponse
        requestClient PawsGetSpectrum'{..}
          = go (Just AltJSON) _pgsPayload spectrum
          where go
                  = buildClient
                      (Proxy :: Proxy PawsGetSpectrumResource)
                      mempty
