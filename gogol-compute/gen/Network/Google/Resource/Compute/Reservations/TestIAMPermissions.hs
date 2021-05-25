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
-- Module      : Network.Google.Resource.Compute.Reservations.TestIAMPermissions
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns permissions that a caller has on the specified resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.testIamPermissions@.
module Network.Google.Resource.Compute.Reservations.TestIAMPermissions
    (
    -- * REST Resource
      ReservationsTestIAMPermissionsResource

    -- * Creating a Request
    , reservationsTestIAMPermissions
    , ReservationsTestIAMPermissions

    -- * Request Lenses
    , rtipProject
    , rtipZone
    , rtipPayload
    , rtipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.testIamPermissions@ method which the
-- 'ReservationsTestIAMPermissions' request conforms to.
type ReservationsTestIAMPermissionsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "resource" Text :>
                     "testIamPermissions" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] TestPermissionsRequest :>
                           Post '[JSON] TestPermissionsResponse

-- | Returns permissions that a caller has on the specified resource.
--
-- /See:/ 'reservationsTestIAMPermissions' smart constructor.
data ReservationsTestIAMPermissions =
  ReservationsTestIAMPermissions'
    { _rtipProject :: !Text
    , _rtipZone :: !Text
    , _rtipPayload :: !TestPermissionsRequest
    , _rtipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsTestIAMPermissions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtipProject'
--
-- * 'rtipZone'
--
-- * 'rtipPayload'
--
-- * 'rtipResource'
reservationsTestIAMPermissions
    :: Text -- ^ 'rtipProject'
    -> Text -- ^ 'rtipZone'
    -> TestPermissionsRequest -- ^ 'rtipPayload'
    -> Text -- ^ 'rtipResource'
    -> ReservationsTestIAMPermissions
reservationsTestIAMPermissions pRtipProject_ pRtipZone_ pRtipPayload_ pRtipResource_ =
  ReservationsTestIAMPermissions'
    { _rtipProject = pRtipProject_
    , _rtipZone = pRtipZone_
    , _rtipPayload = pRtipPayload_
    , _rtipResource = pRtipResource_
    }


-- | Project ID for this request.
rtipProject :: Lens' ReservationsTestIAMPermissions Text
rtipProject
  = lens _rtipProject (\ s a -> s{_rtipProject = a})

-- | The name of the zone for this request.
rtipZone :: Lens' ReservationsTestIAMPermissions Text
rtipZone = lens _rtipZone (\ s a -> s{_rtipZone = a})

-- | Multipart request metadata.
rtipPayload :: Lens' ReservationsTestIAMPermissions TestPermissionsRequest
rtipPayload
  = lens _rtipPayload (\ s a -> s{_rtipPayload = a})

-- | Name or id of the resource for this request.
rtipResource :: Lens' ReservationsTestIAMPermissions Text
rtipResource
  = lens _rtipResource (\ s a -> s{_rtipResource = a})

instance GoogleRequest ReservationsTestIAMPermissions
         where
        type Rs ReservationsTestIAMPermissions =
             TestPermissionsResponse
        type Scopes ReservationsTestIAMPermissions =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ReservationsTestIAMPermissions'{..}
          = go _rtipProject _rtipZone _rtipResource
              (Just AltJSON)
              _rtipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ReservationsTestIAMPermissionsResource)
                      mempty
