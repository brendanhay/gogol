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
-- Module      : Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Submit a new creative.
--
-- /See:/ <https://developers.google.com/ad-exchange/buyer-rest Ad Exchange Buyer API Reference> for @AdexchangebuyerCreativesInsert@.
module Network.Google.Resource.AdExchangeBuyer.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert'
    , CreativesInsert'

    -- * Request Lenses
    , ciPayload
    ) where

import           Network.Google.AdExchangeBuyer.Types
import           Network.Google.Prelude

-- | A resource alias for @AdexchangebuyerCreativesInsert@ method which the
-- 'CreativesInsert'' request conforms to.
type CreativesInsertResource =
     "creatives" :>
       QueryParam "alt" AltJSON :>
         ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Submit a new creative.
--
-- /See:/ 'creativesInsert'' smart constructor.
newtype CreativesInsert' = CreativesInsert'
    { _ciPayload :: Creative
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciPayload'
creativesInsert'
    :: Creative -- ^ 'payload'
    -> CreativesInsert'
creativesInsert' pCiPayload_ =
    CreativesInsert'
    { _ciPayload = pCiPayload_
    }

-- | Multipart request metadata.
ciPayload :: Lens' CreativesInsert' Creative
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

instance GoogleRequest CreativesInsert' where
        type Rs CreativesInsert' = Creative
        requestClient CreativesInsert'{..}
          = go (Just AltJSON) _ciPayload adExchangeBuyerService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesInsertResource)
                      mempty
