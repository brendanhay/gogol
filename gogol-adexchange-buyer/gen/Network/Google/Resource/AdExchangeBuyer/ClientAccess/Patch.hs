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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.patch@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
    (
    -- * REST Resource
      ClientAccessPatchResource

    -- * Creating a Request
    , clientAccessPatch
    , ClientAccessPatch

    -- * Request Lenses
    , capSponsorAccountId
    , capPayload
    , capClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.clientaccess.patch@ method which the
-- 'ClientAccessPatch' request conforms to.
type ClientAccessPatchResource =
     "adexchangebuyer" :>
       "v1.4" :>
         "clientAccess" :>
           Capture "clientAccountId" (Textual Int64) :>
             QueryParam "sponsorAccountId" (Textual Int32) :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] ClientAccessCapabilities :>
                   Patch '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessPatch' smart constructor.
data ClientAccessPatch = ClientAccessPatch
    { _capSponsorAccountId :: !(Textual Int32)
    , _capPayload          :: !ClientAccessCapabilities
    , _capClientAccountId  :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capSponsorAccountId'
--
-- * 'capPayload'
--
-- * 'capClientAccountId'
clientAccessPatch
    :: Int32 -- ^ 'capSponsorAccountId'
    -> ClientAccessCapabilities -- ^ 'capPayload'
    -> Int64 -- ^ 'capClientAccountId'
    -> ClientAccessPatch
clientAccessPatch pCapSponsorAccountId_ pCapPayload_ pCapClientAccountId_ =
    ClientAccessPatch
    { _capSponsorAccountId = _Coerce # pCapSponsorAccountId_
    , _capPayload = pCapPayload_
    , _capClientAccountId = _Coerce # pCapClientAccountId_
    }

capSponsorAccountId :: Lens' ClientAccessPatch Int32
capSponsorAccountId
  = lens _capSponsorAccountId
      (\ s a -> s{_capSponsorAccountId = a})
      . _Coerce

-- | Multipart request metadata.
capPayload :: Lens' ClientAccessPatch ClientAccessCapabilities
capPayload
  = lens _capPayload (\ s a -> s{_capPayload = a})

capClientAccountId :: Lens' ClientAccessPatch Int64
capClientAccountId
  = lens _capClientAccountId
      (\ s a -> s{_capClientAccountId = a})
      . _Coerce

instance GoogleRequest ClientAccessPatch where
        type Rs ClientAccessPatch = ClientAccessCapabilities
        requestClient ClientAccessPatch{..}
          = go _capClientAccountId (Just _capSponsorAccountId)
              (Just AltJSON)
              _capPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessPatchResource)
                      mempty
