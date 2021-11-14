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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.RemoveRule
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a rule at the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.removeRule@.
module Network.Google.Resource.Compute.SecurityPolicies.RemoveRule
    (
    -- * REST Resource
      SecurityPoliciesRemoveRuleResource

    -- * Creating a Request
    , securityPoliciesRemoveRule
    , SecurityPoliciesRemoveRule

    -- * Request Lenses
    , sprrPriority
    , sprrProject
    , sprrSecurityPolicy
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.removeRule@ method which the
-- 'SecurityPoliciesRemoveRule' request conforms to.
type SecurityPoliciesRemoveRuleResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   "removeRule" :>
                     QueryParam "priority" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Post '[JSON] Operation

-- | Deletes a rule at the specified priority.
--
-- /See:/ 'securityPoliciesRemoveRule' smart constructor.
data SecurityPoliciesRemoveRule =
  SecurityPoliciesRemoveRule'
    { _sprrPriority :: !(Maybe (Textual Int32))
    , _sprrProject :: !Text
    , _sprrSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SecurityPoliciesRemoveRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sprrPriority'
--
-- * 'sprrProject'
--
-- * 'sprrSecurityPolicy'
securityPoliciesRemoveRule
    :: Text -- ^ 'sprrProject'
    -> Text -- ^ 'sprrSecurityPolicy'
    -> SecurityPoliciesRemoveRule
securityPoliciesRemoveRule pSprrProject_ pSprrSecurityPolicy_ =
  SecurityPoliciesRemoveRule'
    { _sprrPriority = Nothing
    , _sprrProject = pSprrProject_
    , _sprrSecurityPolicy = pSprrSecurityPolicy_
    }


-- | The priority of the rule to remove from the security policy.
sprrPriority :: Lens' SecurityPoliciesRemoveRule (Maybe Int32)
sprrPriority
  = lens _sprrPriority (\ s a -> s{_sprrPriority = a})
      . mapping _Coerce

-- | Project ID for this request.
sprrProject :: Lens' SecurityPoliciesRemoveRule Text
sprrProject
  = lens _sprrProject (\ s a -> s{_sprrProject = a})

-- | Name of the security policy to update.
sprrSecurityPolicy :: Lens' SecurityPoliciesRemoveRule Text
sprrSecurityPolicy
  = lens _sprrSecurityPolicy
      (\ s a -> s{_sprrSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesRemoveRule
         where
        type Rs SecurityPoliciesRemoveRule = Operation
        type Scopes SecurityPoliciesRemoveRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesRemoveRule'{..}
          = go _sprrProject _sprrSecurityPolicy _sprrPriority
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesRemoveRuleResource)
                      mempty
