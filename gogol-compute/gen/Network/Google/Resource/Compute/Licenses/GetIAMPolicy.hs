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
-- Module      : Network.Google.Resource.Compute.Licenses.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.licenses.getIamPolicy@.
module Network.Google.Resource.Compute.Licenses.GetIAMPolicy
    (
    -- * REST Resource
      LicensesGetIAMPolicyResource

    -- * Creating a Request
    , licensesGetIAMPolicy
    , LicensesGetIAMPolicy

    -- * Request Lenses
    , lgipProject
    , lgipResource
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.licenses.getIamPolicy@ method which the
-- 'LicensesGetIAMPolicy' request conforms to.
type LicensesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "licenses" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'licensesGetIAMPolicy' smart constructor.
data LicensesGetIAMPolicy =
  LicensesGetIAMPolicy'
    { _lgipProject  :: !Text
    , _lgipResource :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'LicensesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lgipProject'
--
-- * 'lgipResource'
licensesGetIAMPolicy
    :: Text -- ^ 'lgipProject'
    -> Text -- ^ 'lgipResource'
    -> LicensesGetIAMPolicy
licensesGetIAMPolicy pLgipProject_ pLgipResource_ =
  LicensesGetIAMPolicy'
    {_lgipProject = pLgipProject_, _lgipResource = pLgipResource_}


-- | Project ID for this request.
lgipProject :: Lens' LicensesGetIAMPolicy Text
lgipProject
  = lens _lgipProject (\ s a -> s{_lgipProject = a})

-- | Name or id of the resource for this request.
lgipResource :: Lens' LicensesGetIAMPolicy Text
lgipResource
  = lens _lgipResource (\ s a -> s{_lgipResource = a})

instance GoogleRequest LicensesGetIAMPolicy where
        type Rs LicensesGetIAMPolicy = Policy
        type Scopes LicensesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient LicensesGetIAMPolicy'{..}
          = go _lgipProject _lgipResource (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy LicensesGetIAMPolicyResource)
                      mempty
