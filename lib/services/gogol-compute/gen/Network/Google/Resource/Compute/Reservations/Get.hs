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
-- Module      : Network.Google.Resource.Compute.Reservations.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified reservation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.get@.
module Network.Google.Resource.Compute.Reservations.Get
    (
    -- * REST Resource
      ReservationsGetResource

    -- * Creating a Request
    , reservationsGet
    , ReservationsGet

    -- * Request Lenses
    , reseProject
    , reseReservation
    , reseZone
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.get@ method which the
-- 'ReservationsGet' request conforms to.
type ReservationsGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "reservation" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Reservation

-- | Retrieves information about the specified reservation.
--
-- /See:/ 'reservationsGet' smart constructor.
data ReservationsGet =
  ReservationsGet'
    { _reseProject :: !Text
    , _reseReservation :: !Text
    , _reseZone :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'reseProject'
--
-- * 'reseReservation'
--
-- * 'reseZone'
reservationsGet
    :: Text -- ^ 'reseProject'
    -> Text -- ^ 'reseReservation'
    -> Text -- ^ 'reseZone'
    -> ReservationsGet
reservationsGet pReseProject_ pReseReservation_ pReseZone_ =
  ReservationsGet'
    { _reseProject = pReseProject_
    , _reseReservation = pReseReservation_
    , _reseZone = pReseZone_
    }


-- | Project ID for this request.
reseProject :: Lens' ReservationsGet Text
reseProject
  = lens _reseProject (\ s a -> s{_reseProject = a})

-- | Name of the reservation to retrieve.
reseReservation :: Lens' ReservationsGet Text
reseReservation
  = lens _reseReservation
      (\ s a -> s{_reseReservation = a})

-- | Name of the zone for this request.
reseZone :: Lens' ReservationsGet Text
reseZone = lens _reseZone (\ s a -> s{_reseZone = a})

instance GoogleRequest ReservationsGet where
        type Rs ReservationsGet = Reservation
        type Scopes ReservationsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ReservationsGet'{..}
          = go _reseProject _reseZone _reseReservation
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsGetResource)
                      mempty
