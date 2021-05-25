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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.GetRule
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a rule at the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.getRule@.
module Network.Google.Resource.Compute.SecurityPolicies.GetRule
    (
    -- * REST Resource
      SecurityPoliciesGetRuleResource

    -- * Creating a Request
    , securityPoliciesGetRule
    , SecurityPoliciesGetRule

    -- * Request Lenses
    , spgrPriority
    , spgrProject
    , spgrSecurityPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.getRule@ method which the
-- 'SecurityPoliciesGetRule' request conforms to.
type SecurityPoliciesGetRuleResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   "getRule" :>
                     QueryParam "priority" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] SecurityPolicyRule

-- | Gets a rule at the specified priority.
--
-- /See:/ 'securityPoliciesGetRule' smart constructor.
data SecurityPoliciesGetRule =
  SecurityPoliciesGetRule'
    { _spgrPriority :: !(Maybe (Textual Int32))
    , _spgrProject :: !Text
    , _spgrSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityPoliciesGetRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spgrPriority'
--
-- * 'spgrProject'
--
-- * 'spgrSecurityPolicy'
securityPoliciesGetRule
    :: Text -- ^ 'spgrProject'
    -> Text -- ^ 'spgrSecurityPolicy'
    -> SecurityPoliciesGetRule
securityPoliciesGetRule pSpgrProject_ pSpgrSecurityPolicy_ =
  SecurityPoliciesGetRule'
    { _spgrPriority = Nothing
    , _spgrProject = pSpgrProject_
    , _spgrSecurityPolicy = pSpgrSecurityPolicy_
    }


-- | The priority of the rule to get from the security policy.
spgrPriority :: Lens' SecurityPoliciesGetRule (Maybe Int32)
spgrPriority
  = lens _spgrPriority (\ s a -> s{_spgrPriority = a})
      . mapping _Coerce

-- | Project ID for this request.
spgrProject :: Lens' SecurityPoliciesGetRule Text
spgrProject
  = lens _spgrProject (\ s a -> s{_spgrProject = a})

-- | Name of the security policy to which the queried rule belongs.
spgrSecurityPolicy :: Lens' SecurityPoliciesGetRule Text
spgrSecurityPolicy
  = lens _spgrSecurityPolicy
      (\ s a -> s{_spgrSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesGetRule where
        type Rs SecurityPoliciesGetRule = SecurityPolicyRule
        type Scopes SecurityPoliciesGetRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient SecurityPoliciesGetRule'{..}
          = go _spgrProject _spgrSecurityPolicy _spgrPriority
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesGetRuleResource)
                      mempty
