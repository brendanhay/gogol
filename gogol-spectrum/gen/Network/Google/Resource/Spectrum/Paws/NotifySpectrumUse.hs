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
-- Module      : Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ <http://developers.google.com/spectrum Google Spectrum Database API Reference> for @spectrum.paws.notifySpectrumUse@.
module Network.Google.Resource.Spectrum.Paws.NotifySpectrumUse
    (
    -- * REST Resource
      PawsNotifySpectrumUseResource

    -- * Creating a Request
    , pawsNotifySpectrumUse
    , PawsNotifySpectrumUse

    -- * Request Lenses
    , pnsuPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.Spectrum.Types

-- | A resource alias for @spectrum.paws.notifySpectrumUse@ method which the
-- 'PawsNotifySpectrumUse' request conforms to.
type PawsNotifySpectrumUseResource =
     "spectrum" :>
       "v1explorer" :>
         "paws" :>
           "notifySpectrumUse" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] PawsNotifySpectrumUseRequest :>
                 Post '[JSON] PawsNotifySpectrumUseResponse

-- | Notifies the database that the device has selected certain frequency
-- ranges for transmission. Only to be invoked when required by the
-- regulator. The Google Spectrum Database does not operate in domains that
-- require notification, so this always yields an UNIMPLEMENTED error.
--
-- /See:/ 'pawsNotifySpectrumUse' smart constructor.
newtype PawsNotifySpectrumUse = PawsNotifySpectrumUse
    { _pnsuPayload :: PawsNotifySpectrumUseRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'PawsNotifySpectrumUse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pnsuPayload'
pawsNotifySpectrumUse
    :: PawsNotifySpectrumUseRequest -- ^ 'pnsuPayload'
    -> PawsNotifySpectrumUse
pawsNotifySpectrumUse pPnsuPayload_ =
    PawsNotifySpectrumUse
    { _pnsuPayload = pPnsuPayload_
    }

-- | Multipart request metadata.
pnsuPayload :: Lens' PawsNotifySpectrumUse PawsNotifySpectrumUseRequest
pnsuPayload
  = lens _pnsuPayload (\ s a -> s{_pnsuPayload = a})

instance GoogleRequest PawsNotifySpectrumUse where
        type Rs PawsNotifySpectrumUse =
             PawsNotifySpectrumUseResponse
        requestClient PawsNotifySpectrumUse{..}
          = go (Just AltJSON) _pnsuPayload spectrumService
          where go
                  = buildClient
                      (Proxy :: Proxy PawsNotifySpectrumUseResource)
                      mempty
