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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @adexchangebuyer.clientaccess.get@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Get
    (
    -- * REST Resource
      ClientAccessGetResource

    -- * Creating a Request
    , clientAccessGet'
    , ClientAccessGet'

    -- * Request Lenses
    , cagSponsorAccountId
    , cagClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @adexchangebuyer.clientaccess.get@ method which the
-- 'ClientAccessGet'' request conforms to.
type ClientAccessGetResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "alt" AltJSON :>
             Get '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessGet'' smart constructor.
data ClientAccessGet' = ClientAccessGet'
    { _cagSponsorAccountId :: !Int32
    , _cagClientAccountId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cagSponsorAccountId'
--
-- * 'cagClientAccountId'
clientAccessGet'
    :: Int32 -- ^ 'cagSponsorAccountId'
    -> Int64 -- ^ 'cagClientAccountId'
    -> ClientAccessGet'
clientAccessGet' pCagSponsorAccountId_ pCagClientAccountId_ =
    ClientAccessGet'
    { _cagSponsorAccountId = pCagSponsorAccountId_
    , _cagClientAccountId = pCagClientAccountId_
    }

cagSponsorAccountId :: Lens' ClientAccessGet' Int32
cagSponsorAccountId
  = lens _cagSponsorAccountId
      (\ s a -> s{_cagSponsorAccountId = a})

cagClientAccountId :: Lens' ClientAccessGet' Int64
cagClientAccountId
  = lens _cagClientAccountId
      (\ s a -> s{_cagClientAccountId = a})

instance GoogleRequest ClientAccessGet' where
        type Rs ClientAccessGet' = ClientAccessCapabilities
        requestClient ClientAccessGet'{..}
          = go _cagClientAccountId (Just _cagSponsorAccountId)
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessGetResource)
                      mempty
