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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.setIamPolicy@.
module Network.Google.Resource.Compute.InstanceTemplates.SetIAMPolicy
    (
    -- * REST Resource
      InstanceTemplatesSetIAMPolicyResource

    -- * Creating a Request
    , instanceTemplatesSetIAMPolicy
    , InstanceTemplatesSetIAMPolicy

    -- * Request Lenses
    , itsipProject
    , itsipPayload
    , itsipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.setIamPolicy@ method which the
-- 'InstanceTemplatesSetIAMPolicy' request conforms to.
type InstanceTemplatesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetPolicyRequest :>
                         Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'instanceTemplatesSetIAMPolicy' smart constructor.
data InstanceTemplatesSetIAMPolicy =
  InstanceTemplatesSetIAMPolicy'
    { _itsipProject  :: !Text
    , _itsipPayload  :: !GlobalSetPolicyRequest
    , _itsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceTemplatesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itsipProject'
--
-- * 'itsipPayload'
--
-- * 'itsipResource'
instanceTemplatesSetIAMPolicy
    :: Text -- ^ 'itsipProject'
    -> GlobalSetPolicyRequest -- ^ 'itsipPayload'
    -> Text -- ^ 'itsipResource'
    -> InstanceTemplatesSetIAMPolicy
instanceTemplatesSetIAMPolicy pItsipProject_ pItsipPayload_ pItsipResource_ =
  InstanceTemplatesSetIAMPolicy'
    { _itsipProject = pItsipProject_
    , _itsipPayload = pItsipPayload_
    , _itsipResource = pItsipResource_
    }


-- | Project ID for this request.
itsipProject :: Lens' InstanceTemplatesSetIAMPolicy Text
itsipProject
  = lens _itsipProject (\ s a -> s{_itsipProject = a})

-- | Multipart request metadata.
itsipPayload :: Lens' InstanceTemplatesSetIAMPolicy GlobalSetPolicyRequest
itsipPayload
  = lens _itsipPayload (\ s a -> s{_itsipPayload = a})

-- | Name or id of the resource for this request.
itsipResource :: Lens' InstanceTemplatesSetIAMPolicy Text
itsipResource
  = lens _itsipResource
      (\ s a -> s{_itsipResource = a})

instance GoogleRequest InstanceTemplatesSetIAMPolicy
         where
        type Rs InstanceTemplatesSetIAMPolicy = Policy
        type Scopes InstanceTemplatesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient InstanceTemplatesSetIAMPolicy'{..}
          = go _itsipProject _itsipResource (Just AltJSON)
              _itsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceTemplatesSetIAMPolicyResource)
                      mempty
