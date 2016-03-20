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
-- Module      : Network.Google.Resource.QPXExpress.Trips.Search
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of flights.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference> for @qpxExpress.trips.search@.
module Network.Google.Resource.QPXExpress.Trips.Search
    (
    -- * REST Resource
      TripsSearchResource

    -- * Creating a Request
    , tripsSearch
    , TripsSearch

    -- * Request Lenses
    , tsPayload
    ) where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types

-- | A resource alias for @qpxExpress.trips.search@ method which the
-- 'TripsSearch' request conforms to.
type TripsSearchResource =
     "qpxExpress" :>
       "v1" :>
         "trips" :>
           "search" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TripsSearchRequest :>
                 Post '[JSON] TripsSearchResponse

-- | Returns a list of flights.
--
-- /See:/ 'tripsSearch' smart constructor.
newtype TripsSearch = TripsSearch
    { _tsPayload :: TripsSearchRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripsSearch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsPayload'
tripsSearch
    :: TripsSearchRequest -- ^ 'tsPayload'
    -> TripsSearch
tripsSearch pTsPayload_ =
    TripsSearch
    { _tsPayload = pTsPayload_
    }

-- | Multipart request metadata.
tsPayload :: Lens' TripsSearch TripsSearchRequest
tsPayload
  = lens _tsPayload (\ s a -> s{_tsPayload = a})

instance GoogleRequest TripsSearch where
        type Rs TripsSearch = TripsSearchResponse
        requestClient TripsSearch{..}
          = go (Just AltJSON) _tsPayload qPXExpressService
          where go
                  = buildClient (Proxy :: Proxy TripsSearchResource)
                      mempty
