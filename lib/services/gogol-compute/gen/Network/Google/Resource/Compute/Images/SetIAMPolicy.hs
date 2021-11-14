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
-- Module      : Network.Google.Resource.Compute.Images.SetIAMPolicy
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.setIamPolicy@.
module Network.Google.Resource.Compute.Images.SetIAMPolicy
    (
    -- * REST Resource
      ImagesSetIAMPolicyResource

    -- * Creating a Request
    , imagesSetIAMPolicy
    , ImagesSetIAMPolicy

    -- * Request Lenses
    , isiampProject
    , isiampPayload
    , isiampResource
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.images.setIamPolicy@ method which the
-- 'ImagesSetIAMPolicy' request conforms to.
type ImagesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "images" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetPolicyRequest :>
                         Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'imagesSetIAMPolicy' smart constructor.
data ImagesSetIAMPolicy =
  ImagesSetIAMPolicy'
    { _isiampProject :: !Text
    , _isiampPayload :: !GlobalSetPolicyRequest
    , _isiampResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ImagesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'isiampProject'
--
-- * 'isiampPayload'
--
-- * 'isiampResource'
imagesSetIAMPolicy
    :: Text -- ^ 'isiampProject'
    -> GlobalSetPolicyRequest -- ^ 'isiampPayload'
    -> Text -- ^ 'isiampResource'
    -> ImagesSetIAMPolicy
imagesSetIAMPolicy pIsiampProject_ pIsiampPayload_ pIsiampResource_ =
  ImagesSetIAMPolicy'
    { _isiampProject = pIsiampProject_
    , _isiampPayload = pIsiampPayload_
    , _isiampResource = pIsiampResource_
    }


-- | Project ID for this request.
isiampProject :: Lens' ImagesSetIAMPolicy Text
isiampProject
  = lens _isiampProject
      (\ s a -> s{_isiampProject = a})

-- | Multipart request metadata.
isiampPayload :: Lens' ImagesSetIAMPolicy GlobalSetPolicyRequest
isiampPayload
  = lens _isiampPayload
      (\ s a -> s{_isiampPayload = a})

-- | Name or id of the resource for this request.
isiampResource :: Lens' ImagesSetIAMPolicy Text
isiampResource
  = lens _isiampResource
      (\ s a -> s{_isiampResource = a})

instance GoogleRequest ImagesSetIAMPolicy where
        type Rs ImagesSetIAMPolicy = Policy
        type Scopes ImagesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ImagesSetIAMPolicy'{..}
          = go _isiampProject _isiampResource (Just AltJSON)
              _isiampPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ImagesSetIAMPolicyResource)
                      mempty
