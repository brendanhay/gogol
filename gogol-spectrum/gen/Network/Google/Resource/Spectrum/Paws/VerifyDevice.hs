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
-- Module      : Network.Google.Resource.Spectrum.Paws.VerifyDevice
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.verifyDevice@.
module Network.Google.Resource.Spectrum.Paws.VerifyDevice
    (
    -- * REST Resource
      PawsVerifyDeviceResource

    -- * Creating a Request
    , pawsVerifyDevice
    , PawsVerifyDevice

    -- * Request Lenses
    , pvdPayload
    ) where

import Network.Google.Prelude
import Network.Google.Spectrum.Types

-- | A resource alias for @spectrum.paws.verifyDevice@ method which the
-- 'PawsVerifyDevice' request conforms to.
type PawsVerifyDeviceResource =
     "spectrum" :>
       "v1explorer" :>
         "paws" :>
           "verifyDevice" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PawsVerifyDeviceRequest :>
                 Post '[JSON] PawsVerifyDeviceResponse

-- | Validates a device for white space use in accordance with regulatory
-- rules. The Google Spectrum Database does not support master\/slave
-- configurations, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsVerifyDevice' smart constructor.
newtype PawsVerifyDevice =
  PawsVerifyDevice'
    { _pvdPayload :: PawsVerifyDeviceRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PawsVerifyDevice' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pvdPayload'
pawsVerifyDevice
    :: PawsVerifyDeviceRequest -- ^ 'pvdPayload'
    -> PawsVerifyDevice
pawsVerifyDevice pPvdPayload_ = PawsVerifyDevice' {_pvdPayload = pPvdPayload_}


-- | Multipart request metadata.
pvdPayload :: Lens' PawsVerifyDevice PawsVerifyDeviceRequest
pvdPayload
  = lens _pvdPayload (\ s a -> s{_pvdPayload = a})

instance GoogleRequest PawsVerifyDevice where
        type Rs PawsVerifyDevice = PawsVerifyDeviceResponse
        type Scopes PawsVerifyDevice = '[]
        requestClient PawsVerifyDevice'{..}
          = go (Just AltJSON) _pvdPayload spectrumService
          where go
                  = buildClient
                      (Proxy :: Proxy PawsVerifyDeviceResource)
                      mempty
