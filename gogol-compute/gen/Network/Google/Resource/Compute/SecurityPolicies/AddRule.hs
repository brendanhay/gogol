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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.AddRule
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a rule into a security policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.addRule@.
module Network.Google.Resource.Compute.SecurityPolicies.AddRule
    (
    -- * REST Resource
      SecurityPoliciesAddRuleResource

    -- * Creating a Request
    , securityPoliciesAddRule
    , SecurityPoliciesAddRule

    -- * Request Lenses
    , sparProject
    , sparPayload
    , sparSecurityPolicy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.addRule@ method which the
-- 'SecurityPoliciesAddRule' request conforms to.
type SecurityPoliciesAddRuleResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   "addRule" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SecurityPolicyRule :>
                         Post '[JSON] Operation

-- | Inserts a rule into a security policy.
--
-- /See:/ 'securityPoliciesAddRule' smart constructor.
data SecurityPoliciesAddRule =
  SecurityPoliciesAddRule'
    { _sparProject        :: !Text
    , _sparPayload        :: !SecurityPolicyRule
    , _sparSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityPoliciesAddRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sparProject'
--
-- * 'sparPayload'
--
-- * 'sparSecurityPolicy'
securityPoliciesAddRule
    :: Text -- ^ 'sparProject'
    -> SecurityPolicyRule -- ^ 'sparPayload'
    -> Text -- ^ 'sparSecurityPolicy'
    -> SecurityPoliciesAddRule
securityPoliciesAddRule pSparProject_ pSparPayload_ pSparSecurityPolicy_ =
  SecurityPoliciesAddRule'
    { _sparProject = pSparProject_
    , _sparPayload = pSparPayload_
    , _sparSecurityPolicy = pSparSecurityPolicy_
    }

-- | Project ID for this request.
sparProject :: Lens' SecurityPoliciesAddRule Text
sparProject
  = lens _sparProject (\ s a -> s{_sparProject = a})

-- | Multipart request metadata.
sparPayload :: Lens' SecurityPoliciesAddRule SecurityPolicyRule
sparPayload
  = lens _sparPayload (\ s a -> s{_sparPayload = a})

-- | Name of the security policy to update.
sparSecurityPolicy :: Lens' SecurityPoliciesAddRule Text
sparSecurityPolicy
  = lens _sparSecurityPolicy
      (\ s a -> s{_sparSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesAddRule where
        type Rs SecurityPoliciesAddRule = Operation
        type Scopes SecurityPoliciesAddRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesAddRule'{..}
          = go _sparProject _sparSecurityPolicy (Just AltJSON)
              _sparPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesAddRuleResource)
                      mempty
