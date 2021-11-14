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
-- Module      : Network.Google.Resource.Compute.RegionDisks.GetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.regionDisks.getIamPolicy@.
module Network.Google.Resource.Compute.RegionDisks.GetIAMPolicy
    (
    -- * REST Resource
      RegionDisksGetIAMPolicyResource

    -- * Creating a Request
    , regionDisksGetIAMPolicy
    , RegionDisksGetIAMPolicy

    -- * Request Lenses
    , rdgipProject
    , rdgipResource
    , rdgipOptionsRequestedPolicyVersion
    , rdgipRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.regionDisks.getIamPolicy@ method which the
-- 'RegionDisksGetIAMPolicy' request conforms to.
type RegionDisksGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "optionsRequestedPolicyVersion"
                         (Textual Int32)
                         :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'regionDisksGetIAMPolicy' smart constructor.
data RegionDisksGetIAMPolicy =
  RegionDisksGetIAMPolicy'
    { _rdgipProject :: !Text
    , _rdgipResource :: !Text
    , _rdgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    , _rdgipRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'RegionDisksGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rdgipProject'
--
-- * 'rdgipResource'
--
-- * 'rdgipOptionsRequestedPolicyVersion'
--
-- * 'rdgipRegion'
regionDisksGetIAMPolicy
    :: Text -- ^ 'rdgipProject'
    -> Text -- ^ 'rdgipResource'
    -> Text -- ^ 'rdgipRegion'
    -> RegionDisksGetIAMPolicy
regionDisksGetIAMPolicy pRdgipProject_ pRdgipResource_ pRdgipRegion_ =
  RegionDisksGetIAMPolicy'
    { _rdgipProject = pRdgipProject_
    , _rdgipResource = pRdgipResource_
    , _rdgipOptionsRequestedPolicyVersion = Nothing
    , _rdgipRegion = pRdgipRegion_
    }


-- | Project ID for this request.
rdgipProject :: Lens' RegionDisksGetIAMPolicy Text
rdgipProject
  = lens _rdgipProject (\ s a -> s{_rdgipProject = a})

-- | Name or id of the resource for this request.
rdgipResource :: Lens' RegionDisksGetIAMPolicy Text
rdgipResource
  = lens _rdgipResource
      (\ s a -> s{_rdgipResource = a})

-- | Requested IAM Policy version.
rdgipOptionsRequestedPolicyVersion :: Lens' RegionDisksGetIAMPolicy (Maybe Int32)
rdgipOptionsRequestedPolicyVersion
  = lens _rdgipOptionsRequestedPolicyVersion
      (\ s a -> s{_rdgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

-- | The name of the region for this request.
rdgipRegion :: Lens' RegionDisksGetIAMPolicy Text
rdgipRegion
  = lens _rdgipRegion (\ s a -> s{_rdgipRegion = a})

instance GoogleRequest RegionDisksGetIAMPolicy where
        type Rs RegionDisksGetIAMPolicy = Policy
        type Scopes RegionDisksGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient RegionDisksGetIAMPolicy'{..}
          = go _rdgipProject _rdgipRegion _rdgipResource
              _rdgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy RegionDisksGetIAMPolicyResource)
                      mempty
