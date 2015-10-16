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
-- Module      : Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerClientAccessInsert@.
module Network.Google.Resource.AdExchangeBuyer.ClientAccess.Insert
    (
    -- * REST Resource
      ClientAccessInsertResource

    -- * Creating a Request
    , clientAccessInsert'
    , ClientAccessInsert'

    -- * Request Lenses
    , caiSponsorAccountId
    , caiPayload
    , caiClientAccountId
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerClientAccessInsert@ method which the
-- 'ClientAccessInsert'' request conforms to.
type ClientAccessInsertResource =
     "clientAccess" :>
       QueryParam "sponsorAccountId" Int32 :>
         QueryParam "clientAccountId" Int64 :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] ClientAccessCapabilities :>
               Post '[JSON] ClientAccessCapabilities

--
-- /See:/ 'clientAccessInsert'' smart constructor.
data ClientAccessInsert' = ClientAccessInsert'
    { _caiSponsorAccountId :: !(Maybe Int32)
    , _caiPayload          :: !ClientAccessCapabilities
    , _caiClientAccountId  :: !(Maybe Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ClientAccessInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caiSponsorAccountId'
--
-- * 'caiPayload'
--
-- * 'caiClientAccountId'
clientAccessInsert'
    :: ClientAccessCapabilities -- ^ 'payload'
    -> ClientAccessInsert'
clientAccessInsert' pCaiPayload_ =
    ClientAccessInsert'
    { _caiSponsorAccountId = Nothing
    , _caiPayload = pCaiPayload_
    , _caiClientAccountId = Nothing
    }

caiSponsorAccountId :: Lens' ClientAccessInsert' (Maybe Int32)
caiSponsorAccountId
  = lens _caiSponsorAccountId
      (\ s a -> s{_caiSponsorAccountId = a})

-- | Multipart request metadata.
caiPayload :: Lens' ClientAccessInsert' ClientAccessCapabilities
caiPayload
  = lens _caiPayload (\ s a -> s{_caiPayload = a})

caiClientAccountId :: Lens' ClientAccessInsert' (Maybe Int64)
caiClientAccountId
  = lens _caiClientAccountId
      (\ s a -> s{_caiClientAccountId = a})

instance GoogleRequest ClientAccessInsert' where
        type Rs ClientAccessInsert' =
             ClientAccessCapabilities
        requestClient ClientAccessInsert'{..}
          = go _caiSponsorAccountId _caiClientAccountId
              (Just AltJSON)
              _caiPayload
              adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy ClientAccessInsertResource)
                      mempty
