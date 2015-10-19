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
-- Module      : Network.Google.Resource.Spectrum.Paws.Register
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @SpectrumPawsRegister@.
module Network.Google.Resource.Spectrum.Paws.Register
    (
    -- * REST Resource
      PawsRegisterResource

    -- * Creating a Request
    , pawsRegister'
    , PawsRegister'

    -- * Request Lenses
    , prPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @SpectrumPawsRegister@ method which the
-- 'PawsRegister'' request conforms to.
type PawsRegisterResource =
     "register" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] PawsRegisterRequest :>
           Post '[JSON] PawsRegisterResponse

-- | The Google Spectrum Database implements registration in the getSpectrum
-- method. As such this always returns an UNIMPLEMENTED error.
--
-- /See:/ 'pawsRegister'' smart constructor.
newtype PawsRegister' = PawsRegister'
    { _prPayload :: PawsRegisterRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsRegister'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prPayload'
pawsRegister'
    :: PawsRegisterRequest -- ^ 'payload'
    -> PawsRegister'
pawsRegister' pPrPayload_ =
    PawsRegister'
    { _prPayload = pPrPayload_
    }

-- | Multipart request metadata.
prPayload :: Lens' PawsRegister' PawsRegisterRequest
prPayload
  = lens _prPayload (\ s a -> s{_prPayload = a})

instance GoogleRequest PawsRegister' where
        type Rs PawsRegister' = PawsRegisterResponse
        requestClient PawsRegister'{..}
          = go (Just AltJSON) _prPayload spectrumService
          where go
                  = buildClient (Proxy :: Proxy PawsRegisterResource)
                      mempty
