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
-- Module      : Network.Google.Resource.Compute.Licenses.SetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.setIamPolicy@.
module Network.Google.Resource.Compute.Licenses.SetIAMPolicy
    (
    -- * REST Resource
      LicensesSetIAMPolicyResource

    -- * Creating a Request
    , licensesSetIAMPolicy
    , LicensesSetIAMPolicy

    -- * Request Lenses
    , lsipProject
    , lsipPayload
    , lsipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenses.setIamPolicy@ method which the
-- 'LicensesSetIAMPolicy' request conforms to.
type LicensesSetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "resource" Text :>
                   "setIamPolicy" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] GlobalSetPolicyRequest :>
                         Post '[JSON] Policy

-- | Sets the access control policy on the specified resource. Replaces any
-- existing policy.
--
-- /See:/ 'licensesSetIAMPolicy' smart constructor.
data LicensesSetIAMPolicy =
  LicensesSetIAMPolicy'
    { _lsipProject  :: !Text
    , _lsipPayload  :: !GlobalSetPolicyRequest
    , _lsipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicensesSetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsipProject'
--
-- * 'lsipPayload'
--
-- * 'lsipResource'
licensesSetIAMPolicy
    :: Text -- ^ 'lsipProject'
    -> GlobalSetPolicyRequest -- ^ 'lsipPayload'
    -> Text -- ^ 'lsipResource'
    -> LicensesSetIAMPolicy
licensesSetIAMPolicy pLsipProject_ pLsipPayload_ pLsipResource_ =
  LicensesSetIAMPolicy'
    { _lsipProject = pLsipProject_
    , _lsipPayload = pLsipPayload_
    , _lsipResource = pLsipResource_
    }


-- | Project ID for this request.
lsipProject :: Lens' LicensesSetIAMPolicy Text
lsipProject
  = lens _lsipProject (\ s a -> s{_lsipProject = a})

-- | Multipart request metadata.
lsipPayload :: Lens' LicensesSetIAMPolicy GlobalSetPolicyRequest
lsipPayload
  = lens _lsipPayload (\ s a -> s{_lsipPayload = a})

-- | Name or id of the resource for this request.
lsipResource :: Lens' LicensesSetIAMPolicy Text
lsipResource
  = lens _lsipResource (\ s a -> s{_lsipResource = a})

instance GoogleRequest LicensesSetIAMPolicy where
        type Rs LicensesSetIAMPolicy = Policy
        type Scopes LicensesSetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient LicensesSetIAMPolicy'{..}
          = go _lsipProject _lsipResource (Just AltJSON)
              _lsipPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy LicensesSetIAMPolicyResource)
                      mempty
