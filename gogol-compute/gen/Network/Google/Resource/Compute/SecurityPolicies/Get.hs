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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the ordered rules present in a single specified policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.get@.
module Network.Google.Resource.Compute.SecurityPolicies.Get
    (
    -- * REST Resource
      SecurityPoliciesGetResource

    -- * Creating a Request
    , securityPoliciesGet
    , SecurityPoliciesGet

    -- * Request Lenses
    , secProject
    , secSecurityPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.get@ method which the
-- 'SecurityPoliciesGet' request conforms to.
type SecurityPoliciesGetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] SecurityPolicy

-- | List all of the ordered rules present in a single specified policy.
--
-- /See:/ 'securityPoliciesGet' smart constructor.
data SecurityPoliciesGet =
  SecurityPoliciesGet'
    { _secProject :: !Text
    , _secSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityPoliciesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'secProject'
--
-- * 'secSecurityPolicy'
securityPoliciesGet
    :: Text -- ^ 'secProject'
    -> Text -- ^ 'secSecurityPolicy'
    -> SecurityPoliciesGet
securityPoliciesGet pSecProject_ pSecSecurityPolicy_ =
  SecurityPoliciesGet'
    {_secProject = pSecProject_, _secSecurityPolicy = pSecSecurityPolicy_}


-- | Project ID for this request.
secProject :: Lens' SecurityPoliciesGet Text
secProject
  = lens _secProject (\ s a -> s{_secProject = a})

-- | Name of the security policy to get.
secSecurityPolicy :: Lens' SecurityPoliciesGet Text
secSecurityPolicy
  = lens _secSecurityPolicy
      (\ s a -> s{_secSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesGet where
        type Rs SecurityPoliciesGet = SecurityPolicy
        type Scopes SecurityPoliciesGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SecurityPoliciesGet'{..}
          = go _secProject _secSecurityPolicy (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesGetResource)
                      mempty
