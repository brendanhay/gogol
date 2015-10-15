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
-- Module      : Network.Google.Resource.GAN.CcOffers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @GANCcOffersList@.
module Network.Google.Resource.GAN.CcOffers.List
    (
    -- * REST Resource
      CcOffersListResource

    -- * Creating a Request
    , ccOffersList'
    , CcOffersList'

    -- * Request Lenses
    , colAdvertiser
    , colProjection
    , colPublisher
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for @GANCcOffersList@ method which the
-- 'CcOffersList'' request conforms to.
type CcOffersListResource =
     "publishers" :>
       Capture "publisher" Text :>
         "ccOffers" :>
           QueryParams "advertiser" Text :>
             QueryParam "projection" CcOffersListProjection :>
               QueryParam "alt" AltJSON :> Get '[JSON] CcOffers

-- | Retrieves credit card offers for the given publisher.
--
-- /See:/ 'ccOffersList'' smart constructor.
data CcOffersList' = CcOffersList'
    { _colAdvertiser :: !(Maybe [Text])
    , _colProjection :: !(Maybe CcOffersListProjection)
    , _colPublisher  :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CcOffersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'colAdvertiser'
--
-- * 'colProjection'
--
-- * 'colPublisher'
ccOffersList'
    :: Text -- ^ 'publisher'
    -> CcOffersList'
ccOffersList' pColPublisher_ =
    CcOffersList'
    { _colAdvertiser = Nothing
    , _colProjection = Nothing
    , _colPublisher = pColPublisher_
    }

-- | The advertiser ID of a card issuer whose offers to include. Optional,
-- may be repeated.
colAdvertiser :: Lens' CcOffersList' [Text]
colAdvertiser
  = lens _colAdvertiser
      (\ s a -> s{_colAdvertiser = a})
      . _Default
      . _Coerce

-- | The set of fields to return.
colProjection :: Lens' CcOffersList' (Maybe CcOffersListProjection)
colProjection
  = lens _colProjection
      (\ s a -> s{_colProjection = a})

-- | The ID of the publisher in question.
colPublisher :: Lens' CcOffersList' Text
colPublisher
  = lens _colPublisher (\ s a -> s{_colPublisher = a})

instance GoogleRequest CcOffersList' where
        type Rs CcOffersList' = CcOffers
        requestClient CcOffersList'{..}
          = go _colPublisher (_colAdvertiser ^. _Default)
              _colProjection
              (Just AltJSON)
              affiliates
          where go
                  = buildClient (Proxy :: Proxy CcOffersListResource)
                      mempty
