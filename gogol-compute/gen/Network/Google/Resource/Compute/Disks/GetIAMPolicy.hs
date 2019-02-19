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
-- Module      : Network.Google.Resource.Compute.Disks.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.getIamPolicy@.
module Network.Google.Resource.Compute.Disks.GetIAMPolicy
    (
    -- * REST Resource
      DisksGetIAMPolicyResource

    -- * Creating a Request
    , disksGetIAMPolicy
    , DisksGetIAMPolicy

    -- * Request Lenses
    , dgipProject
    , dgipZone
    , dgipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.disks.getIamPolicy@ method which the
-- 'DisksGetIAMPolicy' request conforms to.
type DisksGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "zones" :>
               Capture "zone" Text :>
                 "disks" :>
                   Capture "resource" Text :>
                     "getIamPolicy" :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'disksGetIAMPolicy' smart constructor.
data DisksGetIAMPolicy =
  DisksGetIAMPolicy'
    { _dgipProject  :: !Text
    , _dgipZone     :: !Text
    , _dgipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DisksGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgipProject'
--
-- * 'dgipZone'
--
-- * 'dgipResource'
disksGetIAMPolicy
    :: Text -- ^ 'dgipProject'
    -> Text -- ^ 'dgipZone'
    -> Text -- ^ 'dgipResource'
    -> DisksGetIAMPolicy
disksGetIAMPolicy pDgipProject_ pDgipZone_ pDgipResource_ =
  DisksGetIAMPolicy'
    { _dgipProject = pDgipProject_
    , _dgipZone = pDgipZone_
    , _dgipResource = pDgipResource_
    }


-- | Project ID for this request.
dgipProject :: Lens' DisksGetIAMPolicy Text
dgipProject
  = lens _dgipProject (\ s a -> s{_dgipProject = a})

-- | The name of the zone for this request.
dgipZone :: Lens' DisksGetIAMPolicy Text
dgipZone = lens _dgipZone (\ s a -> s{_dgipZone = a})

-- | Name or id of the resource for this request.
dgipResource :: Lens' DisksGetIAMPolicy Text
dgipResource
  = lens _dgipResource (\ s a -> s{_dgipResource = a})

instance GoogleRequest DisksGetIAMPolicy where
        type Rs DisksGetIAMPolicy = Policy
        type Scopes DisksGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient DisksGetIAMPolicy'{..}
          = go _dgipProject _dgipZone _dgipResource
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy DisksGetIAMPolicyResource)
                      mempty
