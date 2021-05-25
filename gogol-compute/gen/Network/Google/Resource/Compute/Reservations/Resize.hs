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
-- Module      : Network.Google.Resource.Compute.Reservations.Resize
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resizes the reservation (applicable to standalone reservations only).
-- For more information, read Modifying reservations.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.resize@.
module Network.Google.Resource.Compute.Reservations.Resize
    (
    -- * REST Resource
      ReservationsResizeResource

    -- * Creating a Request
    , reservationsResize
    , ReservationsResize

    -- * Request Lenses
    , rrrRequestId
    , rrrProject
    , rrrReservation
    , rrrZone
    , rrrPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.resize@ method which the
-- 'ReservationsResize' request conforms to.
type ReservationsResizeResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "reservation" Text :>
                     "resize" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] ReservationsResizeRequest :>
                             Post '[JSON] Operation

-- | Resizes the reservation (applicable to standalone reservations only).
-- For more information, read Modifying reservations.
--
-- /See:/ 'reservationsResize' smart constructor.
data ReservationsResize =
  ReservationsResize'
    { _rrrRequestId :: !(Maybe Text)
    , _rrrProject :: !Text
    , _rrrReservation :: !Text
    , _rrrZone :: !Text
    , _rrrPayload :: !ReservationsResizeRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsResize' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rrrRequestId'
--
-- * 'rrrProject'
--
-- * 'rrrReservation'
--
-- * 'rrrZone'
--
-- * 'rrrPayload'
reservationsResize
    :: Text -- ^ 'rrrProject'
    -> Text -- ^ 'rrrReservation'
    -> Text -- ^ 'rrrZone'
    -> ReservationsResizeRequest -- ^ 'rrrPayload'
    -> ReservationsResize
reservationsResize pRrrProject_ pRrrReservation_ pRrrZone_ pRrrPayload_ =
  ReservationsResize'
    { _rrrRequestId = Nothing
    , _rrrProject = pRrrProject_
    , _rrrReservation = pRrrReservation_
    , _rrrZone = pRrrZone_
    , _rrrPayload = pRrrPayload_
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
rrrRequestId :: Lens' ReservationsResize (Maybe Text)
rrrRequestId
  = lens _rrrRequestId (\ s a -> s{_rrrRequestId = a})

-- | Project ID for this request.
rrrProject :: Lens' ReservationsResize Text
rrrProject
  = lens _rrrProject (\ s a -> s{_rrrProject = a})

-- | Name of the reservation to update.
rrrReservation :: Lens' ReservationsResize Text
rrrReservation
  = lens _rrrReservation
      (\ s a -> s{_rrrReservation = a})

-- | Name of the zone for this request.
rrrZone :: Lens' ReservationsResize Text
rrrZone = lens _rrrZone (\ s a -> s{_rrrZone = a})

-- | Multipart request metadata.
rrrPayload :: Lens' ReservationsResize ReservationsResizeRequest
rrrPayload
  = lens _rrrPayload (\ s a -> s{_rrrPayload = a})

instance GoogleRequest ReservationsResize where
        type Rs ReservationsResize = Operation
        type Scopes ReservationsResize =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ReservationsResize'{..}
          = go _rrrProject _rrrZone _rrrReservation
              _rrrRequestId
              (Just AltJSON)
              _rrrPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsResizeResource)
                      mempty
