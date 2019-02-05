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
-- Module      : Network.Google.Resource.Compute.Disks.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.setIamPolicy@.
module Network.Google.Resource.Compute.Disks.SetIAMPolicy
    (
    -- * REST Resource
      DisksSetIAMPolicyResource

    -- * Creating a Request
    , disksSetIAMPolicy
    , DisksSetIAMPolicy

    -- * Request Lenses
    , dsipProject
    , dsipZone
    , dsipPayload
    , dsipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.setIamPolicy@ method which the
-- 'DisksSetIAMPolicy' request conforms to.
type DisksSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "setIamPolicy" :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] ZoneSetPolicyRequest :>
                           Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'disksSetIAMPolicy' smart constructor.
data DisksSetIAMPolicy = DisksSetIAMPolicy'
    { _dsipProject  :: !Text
    , _dsipZone     :: !Text
    , _dsipPayload  :: !ZoneSetPolicyRequest
    , _dsipResource :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsipProject'
--
-- * 'dsipZone'
--
-- * 'dsipPayload'
--
-- * 'dsipResource'
disksSetIAMPolicy
    :: Text -- ^ 'dsipProject'
    -> Text -- ^ 'dsipZone'
    -> ZoneSetPolicyRequest -- ^ 'dsipPayload'
    -> Text -- ^ 'dsipResource'
    -> DisksSetIAMPolicy
disksSetIAMPolicy pDsipProject_ pDsipZone_ pDsipPayload_ pDsipResource_ =
    DisksSetIAMPolicy'
    { _dsipProject = pDsipProject_
    , _dsipZone = pDsipZone_
    , _dsipPayload = pDsipPayload_
    , _dsipResource = pDsipResource_
    }

-- | Project ID for this request.
dsipProject :: Lens' DisksSetIAMPolicy Text
dsipProject
  = lens _dsipProject (\ s a -> s{_dsipProject = a})

-- | The name of the zone for this request.
dsipZone :: Lens' DisksSetIAMPolicy Text
dsipZone = lens _dsipZone (\ s a -> s{_dsipZone = a})

-- | Multipart request metadata.
dsipPayload :: Lens' DisksSetIAMPolicy ZoneSetPolicyRequest
dsipPayload
  = lens _dsipPayload (\ s a -> s{_dsipPayload = a})

-- | Name or id of the resource for this request.
dsipResource :: Lens' DisksSetIAMPolicy Text
dsipResource
  = lens _dsipResource (\ s a -> s{_dsipResource = a})

instance GoogleRequest DisksSetIAMPolicy where
        type Rs DisksSetIAMPolicy = Policy
        type Scopes DisksSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient DisksSetIAMPolicy'{..}
          = go _dsipProject _dsipZone _dsipResource
              (Just AltJSON)
              _dsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksSetIAMPolicyResource)
                      mempty
