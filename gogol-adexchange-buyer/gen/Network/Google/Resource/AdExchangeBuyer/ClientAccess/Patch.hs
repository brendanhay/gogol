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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessPatch@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Patch
    (
    -- * REST Resource
      ClientAccessPatchResource

    -- * Creating a Request
    , clientAccessPatch'
    , ClientAccessPatch'

    -- * Request Lenses
    , capSponsorAccountId
    , capPayload
    , capClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessPatch@ method which the
-- 'ClientAccessPatch'' request conforms to.
type ClientAccessPatchResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ClientAccessCapabilities :>
               Patch '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessPatch'' smart constructor.
data ClientAccessPatch' = ClientAccessPatch'
    { _capSponsorAccountId :: !Int32
    , _capPayload          :: !ClientAccessCapabilities
    , _capClientAccountId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'capSponsorAccountId'
--
-- * 'capPayload'
--
-- * 'capClientAccountId'
clientAccessPatch'
    :: Int32 -- ^ 'sponsorAccountId'
    -> ClientAccessCapabilities -- ^ 'payload'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessPatch'
clientAccessPatch' pCapSponsorAccountId_ pCapPayload_ pCapClientAccountId_ =
    ClientAccessPatch'
    { _capSponsorAccountId = pCapSponsorAccountId_
    , _capPayload = pCapPayload_
    , _capClientAccountId = pCapClientAccountId_
    }

capSponsorAccountId :: Lens' ClientAccessPatch' Int32
capSponsorAccountId
  = lens _capSponsorAccountId
      (\ s a -> s{_capSponsorAccountId = a})

-- | Multipart request metadata.
capPayload :: Lens' ClientAccessPatch' ClientAccessCapabilities
capPayload
  = lens _capPayload (\ s a -> s{_capPayload = a})

capClientAccountId :: Lens' ClientAccessPatch' Int64
capClientAccountId
  = lens _capClientAccountId
      (\ s a -> s{_capClientAccountId = a})

instance GoogleRequest ClientAccessPatch' where
        type Rs ClientAccessPatch' = ClientAccessCapabilities
        requestClient ClientAccessPatch'{..}
          = go _capClientAccountId (Just _capSponsorAccountId)
              (Just AltJSON)
              _capPayload
              adExchangeBuyer
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessPatchResource)
                      mempty
