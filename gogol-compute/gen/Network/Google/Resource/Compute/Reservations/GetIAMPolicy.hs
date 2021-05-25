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
-- Module      : Network.Google.Resource.Compute.Reservations.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.reservations.getIamPolicy@.
module Network.Google.Resource.Compute.Reservations.GetIAMPolicy
    (
    -- * REST Resource
      ReservationsGetIAMPolicyResource

    -- * Creating a Request
    , reservationsGetIAMPolicy
    , ReservationsGetIAMPolicy

    -- * Request Lenses
    , rgipProject
    , rgipZone
    , rgipResource
    , rgipOptionsRequestedPolicyVersion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.reservations.getIamPolicy@ method which the
-- 'ReservationsGetIAMPolicy' request conforms to.
type ReservationsGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "reservations" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "optionsRequestedPolicyVersion"
                         (Textual Int32)
                         :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'reservationsGetIAMPolicy' smart constructor.
data ReservationsGetIAMPolicy =
  ReservationsGetIAMPolicy'
    { _rgipProject :: !Text
    , _rgipZone :: !Text
    , _rgipResource :: !Text
    , _rgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ReservationsGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgipProject'
--
-- * 'rgipZone'
--
-- * 'rgipResource'
--
-- * 'rgipOptionsRequestedPolicyVersion'
reservationsGetIAMPolicy
    :: Text -- ^ 'rgipProject'
    -> Text -- ^ 'rgipZone'
    -> Text -- ^ 'rgipResource'
    -> ReservationsGetIAMPolicy
reservationsGetIAMPolicy pRgipProject_ pRgipZone_ pRgipResource_ =
  ReservationsGetIAMPolicy'
    { _rgipProject = pRgipProject_
    , _rgipZone = pRgipZone_
    , _rgipResource = pRgipResource_
    , _rgipOptionsRequestedPolicyVersion = Nothing
    }


-- | Project ID for this request.
rgipProject :: Lens' ReservationsGetIAMPolicy Text
rgipProject
  = lens _rgipProject (\ s a -> s{_rgipProject = a})

-- | The name of the zone for this request.
rgipZone :: Lens' ReservationsGetIAMPolicy Text
rgipZone = lens _rgipZone (\ s a -> s{_rgipZone = a})

-- | Name or id of the resource for this request.
rgipResource :: Lens' ReservationsGetIAMPolicy Text
rgipResource
  = lens _rgipResource (\ s a -> s{_rgipResource = a})

-- | Requested IAM Policy version.
rgipOptionsRequestedPolicyVersion :: Lens' ReservationsGetIAMPolicy (Maybe Int32)
rgipOptionsRequestedPolicyVersion
  = lens _rgipOptionsRequestedPolicyVersion
      (\ s a -> s{_rgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

instance GoogleRequest ReservationsGetIAMPolicy where
        type Rs ReservationsGetIAMPolicy = Policy
        type Scopes ReservationsGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient ReservationsGetIAMPolicy'{..}
          = go _rgipProject _rgipZone _rgipResource
              _rgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ReservationsGetIAMPolicyResource)
                      mempty
