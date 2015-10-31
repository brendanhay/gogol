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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.update@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Update
    (
    -- * REST Resource
      ClientAccessUpdateResource

    -- * Creating a Request
    , clientAccessUpdate
    , ClientAccessUpdate

    -- * Request Lenses
    , cauSponsorAccountId
    , cauPayload
    , cauClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.clientaccess.update@ method which the
-- 'ClientAccessUpdate' request conforms to.
type ClientAccessUpdateResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" (Textual Int64) :>
             QueryParam "sponsorAccountId" (Textual Int32) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ClientAccessCapabilities :>
                   Put '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessUpdate' smart constructor.
data ClientAccessUpdate = ClientAccessUpdate
    { _cauSponsorAccountId :: !(Textual Int32)
    , _cauPayload          :: !ClientAccessCapabilities
    , _cauClientAccountId  :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cauSponsorAccountId'
--
-- * 'cauPayload'
--
-- * 'cauClientAccountId'
clientAccessUpdate
    :: Int32 -- ^ 'cauSponsorAccountId'
    -> ClientAccessCapabilities -- ^ 'cauPayload'
    -> Int64 -- ^ 'cauClientAccountId'
    -> ClientAccessUpdate
clientAccessUpdate pCauSponsorAccountId_ pCauPayload_ pCauClientAccountId_ =
    ClientAccessUpdate
    { _cauSponsorAccountId = _Coerce # pCauSponsorAccountId_
    , _cauPayload = pCauPayload_
    , _cauClientAccountId = _Coerce # pCauClientAccountId_
    }

cauSponsorAccountId :: Lens' ClientAccessUpdate Int32
cauSponsorAccountId
  = lens _cauSponsorAccountId
      (\ s a -> s{_cauSponsorAccountId = a})
      . _Coerce

-- | Multipart request metadata.
cauPayload :: Lens' ClientAccessUpdate ClientAccessCapabilities
cauPayload
  = lens _cauPayload (\ s a -> s{_cauPayload = a})

cauClientAccountId :: Lens' ClientAccessUpdate Int64
cauClientAccountId
  = lens _cauClientAccountId
      (\ s a -> s{_cauClientAccountId = a})
      . _Coerce

instance GoogleRequest ClientAccessUpdate where
        type Rs ClientAccessUpdate = ClientAccessCapabilities
        type Scopes ClientAccessUpdate =
             '["https://www.googleapis.com/auth/adexchange.buyer"]
        requestClient ClientAccessUpdate{..}
          = go _cauClientAccountId (Just _cauSponsorAccountId)
              (Just AltJSON)
              _cauPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessUpdateResource)
                      mempty
