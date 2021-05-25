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
-- Module      : Network.Google.Resource.Compute.Reservations.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified reservation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.delete@.
module Network.Google.Resource.Compute.Reservations.Delete
    (
    -- * REST Resource
      ReservationsDeleteResource

    -- * Creating a Request
    , reservationsDelete
    , ReservationsDelete

    -- * Request Lenses
    , rdRequestId
    , rdProject
    , rdReservation
    , rdZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.delete@ method which the
-- 'ReservationsDelete' request conforms to.
type ReservationsDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "reservation" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified reservation.
--
-- /See:/ 'reservationsDelete' smart constructor.
data ReservationsDelete =
  ReservationsDelete'
    { _rdRequestId :: !(Maybe Text)
    , _rdProject :: !Text
    , _rdReservation :: !Text
    , _rdZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdRequestId'
--
-- * 'rdProject'
--
-- * 'rdReservation'
--
-- * 'rdZone'
reservationsDelete
    :: Text -- ^ 'rdProject'
    -> Text -- ^ 'rdReservation'
    -> Text -- ^ 'rdZone'
    -> ReservationsDelete
reservationsDelete pRdProject_ pRdReservation_ pRdZone_ =
  ReservationsDelete'
    { _rdRequestId = Nothing
    , _rdProject = pRdProject_
    , _rdReservation = pRdReservation_
    , _rdZone = pRdZone_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rdRequestId :: Lens' ReservationsDelete (Maybe Text)
rdRequestId
  = lens _rdRequestId (\ s a -> s{_rdRequestId = a})

-- | Project ID for this request.
rdProject :: Lens' ReservationsDelete Text
rdProject
  = lens _rdProject (\ s a -> s{_rdProject = a})

-- | Name of the reservation to delete.
rdReservation :: Lens' ReservationsDelete Text
rdReservation
  = lens _rdReservation
      (\ s a -> s{_rdReservation = a})

-- | Name of the zone for this request.
rdZone :: Lens' ReservationsDelete Text
rdZone = lens _rdZone (\ s a -> s{_rdZone = a})

instance GoogleRequest ReservationsDelete where
        type Rs ReservationsDelete = Operation
        type Scopes ReservationsDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ReservationsDelete'{..}
          = go _rdProject _rdZone _rdReservation _rdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsDeleteResource)
                      mempty
