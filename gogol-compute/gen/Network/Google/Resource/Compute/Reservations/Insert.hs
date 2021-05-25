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
-- Module      : Network.Google.Resource.Compute.Reservations.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new reservation. For more information, read Reserving zonal
-- resources.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.insert@.
module Network.Google.Resource.Compute.Reservations.Insert
    (
    -- * REST Resource
      ReservationsInsertResource

    -- * Creating a Request
    , reservationsInsert
    , ReservationsInsert

    -- * Request Lenses
    , riiRequestId
    , riiProject
    , riiZone
    , riiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.insert@ method which the
-- 'ReservationsInsert' request conforms to.
type ReservationsInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Reservation :> Post '[JSON] Operation

-- | Creates a new reservation. For more information, read Reserving zonal
-- resources.
--
-- /See:/ 'reservationsInsert' smart constructor.
data ReservationsInsert =
  ReservationsInsert'
    { _riiRequestId :: !(Maybe Text)
    , _riiProject :: !Text
    , _riiZone :: !Text
    , _riiPayload :: !Reservation
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'riiRequestId'
--
-- * 'riiProject'
--
-- * 'riiZone'
--
-- * 'riiPayload'
reservationsInsert
    :: Text -- ^ 'riiProject'
    -> Text -- ^ 'riiZone'
    -> Reservation -- ^ 'riiPayload'
    -> ReservationsInsert
reservationsInsert pRiiProject_ pRiiZone_ pRiiPayload_ =
  ReservationsInsert'
    { _riiRequestId = Nothing
    , _riiProject = pRiiProject_
    , _riiZone = pRiiZone_
    , _riiPayload = pRiiPayload_
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
riiRequestId :: Lens' ReservationsInsert (Maybe Text)
riiRequestId
  = lens _riiRequestId (\ s a -> s{_riiRequestId = a})

-- | Project ID for this request.
riiProject :: Lens' ReservationsInsert Text
riiProject
  = lens _riiProject (\ s a -> s{_riiProject = a})

-- | Name of the zone for this request.
riiZone :: Lens' ReservationsInsert Text
riiZone = lens _riiZone (\ s a -> s{_riiZone = a})

-- | Multipart request metadata.
riiPayload :: Lens' ReservationsInsert Reservation
riiPayload
  = lens _riiPayload (\ s a -> s{_riiPayload = a})

instance GoogleRequest ReservationsInsert where
        type Rs ReservationsInsert = Operation
        type Scopes ReservationsInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ReservationsInsert'{..}
          = go _riiProject _riiZone _riiRequestId
              (Just AltJSON)
              _riiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsInsertResource)
                      mempty
