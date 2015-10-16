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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessDelete@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Delete
    (
    -- * REST Resource
      ClientAccessDeleteResource

    -- * Creating a Request
    , clientAccessDelete'
    , ClientAccessDelete'

    -- * Request Lenses
    , cadSponsorAccountId
    , cadClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessDelete@ method which the
-- 'ClientAccessDelete'' request conforms to.
type ClientAccessDeleteResource =
     "clientAccess" :>
       Capture "clientAccountId" Int64 :>
         QueryParam "sponsorAccountId" Int32 :>
           QueryParam "alt" AltJSON :> Delete '[JSON] ()

--
-- /See:/ 'clientAccessDelete'' smart constructor.
data ClientAccessDelete' = ClientAccessDelete'
    { _cadSponsorAccountId :: !Int32
    , _cadClientAccountId  :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cadSponsorAccountId'
--
-- * 'cadClientAccountId'
clientAccessDelete'
    :: Int32 -- ^ 'sponsorAccountId'
    -> Int64 -- ^ 'clientAccountId'
    -> ClientAccessDelete'
clientAccessDelete' pCadSponsorAccountId_ pCadClientAccountId_ =
    ClientAccessDelete'
    { _cadSponsorAccountId = pCadSponsorAccountId_
    , _cadClientAccountId = pCadClientAccountId_
    }

cadSponsorAccountId :: Lens' ClientAccessDelete' Int32
cadSponsorAccountId
  = lens _cadSponsorAccountId
      (\ s a -> s{_cadSponsorAccountId = a})

cadClientAccountId :: Lens' ClientAccessDelete' Int64
cadClientAccountId
  = lens _cadClientAccountId
      (\ s a -> s{_cadClientAccountId = a})

instance GoogleRequest ClientAccessDelete' where
        type Rs ClientAccessDelete' = ()
        requestClient ClientAccessDelete'{..}
          = go _cadClientAccountId (Just _cadSponsorAccountId)
              (Just AltJSON)
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessDeleteResource)
                      mempty
