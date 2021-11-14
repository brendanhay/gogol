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
-- Module      : Network.Google.Resource.Compute.Reservations.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.setIamPolicy@.
module Network.Google.Resource.Compute.Reservations.SetIAMPolicy
    (
    -- * REST Resource
      ReservationsSetIAMPolicyResource

    -- * Creating a Request
    , reservationsSetIAMPolicy
    , ReservationsSetIAMPolicy

    -- * Request Lenses
    , rsipProject
    , rsipZone
    , rsipPayload
    , rsipResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.setIamPolicy@ method which the
-- 'ReservationsSetIAMPolicy' request conforms to.
type ReservationsSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ZoneSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'reservationsSetIAMPolicy' smart constructor.
data ReservationsSetIAMPolicy =
  ReservationsSetIAMPolicy'
    { _rsipProject :: !Text
    , _rsipZone :: !Text
    , _rsipPayload :: !ZoneSetPolicyRequest
    , _rsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsipProject'
--
-- * 'rsipZone'
--
-- * 'rsipPayload'
--
-- * 'rsipResource'
reservationsSetIAMPolicy
    :: Text -- ^ 'rsipProject'
    -> Text -- ^ 'rsipZone'
    -> ZoneSetPolicyRequest -- ^ 'rsipPayload'
    -> Text -- ^ 'rsipResource'
    -> ReservationsSetIAMPolicy
reservationsSetIAMPolicy pRsipProject_ pRsipZone_ pRsipPayload_ pRsipResource_ =
  ReservationsSetIAMPolicy'
    { _rsipProject = pRsipProject_
    , _rsipZone = pRsipZone_
    , _rsipPayload = pRsipPayload_
    , _rsipResource = pRsipResource_
    }


-- | Project ID for this request.
rsipProject :: Lens' ReservationsSetIAMPolicy Text
rsipProject
  = lens _rsipProject (\ s a -> s{_rsipProject = a})

-- | The name of the zone for this request.
rsipZone :: Lens' ReservationsSetIAMPolicy Text
rsipZone = lens _rsipZone (\ s a -> s{_rsipZone = a})

-- | Multipart request metadata.
rsipPayload :: Lens' ReservationsSetIAMPolicy ZoneSetPolicyRequest
rsipPayload
  = lens _rsipPayload (\ s a -> s{_rsipPayload = a})

-- | Name or id of the resource for this request.
rsipResource :: Lens' ReservationsSetIAMPolicy Text
rsipResource
  = lens _rsipResource (\ s a -> s{_rsipResource = a})

instance GoogleRequest ReservationsSetIAMPolicy where
        type Rs ReservationsSetIAMPolicy = Policy
        type Scopes ReservationsSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ReservationsSetIAMPolicy'{..}
          = go _rsipProject _rsipZone _rsipResource
              (Just AltJSON)
              _rsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsSetIAMPolicyResource)
                      mempty
