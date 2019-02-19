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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.PatchRule
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches a rule at the specified priority.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.patchRule@.
module Network.Google.Resource.Compute.SecurityPolicies.PatchRule
    (
    -- * REST Resource
      SecurityPoliciesPatchRuleResource

    -- * Creating a Request
    , securityPoliciesPatchRule
    , SecurityPoliciesPatchRule

    -- * Request Lenses
    , spprPriority
    , spprProject
    , spprPayload
    , spprSecurityPolicy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.patchRule@ method which the
-- 'SecurityPoliciesPatchRule' request conforms to.
type SecurityPoliciesPatchRuleResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   "patchRule" :>
                     QueryParam "priority" (Textual Int32) :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SecurityPolicyRule :>
                           Post '[JSON] Operation

-- | Patches a rule at the specified priority.
--
-- /See:/ 'securityPoliciesPatchRule' smart constructor.
data SecurityPoliciesPatchRule =
  SecurityPoliciesPatchRule'
    { _spprPriority       :: !(Maybe (Textual Int32))
    , _spprProject        :: !Text
    , _spprPayload        :: !SecurityPolicyRule
    , _spprSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityPoliciesPatchRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spprPriority'
--
-- * 'spprProject'
--
-- * 'spprPayload'
--
-- * 'spprSecurityPolicy'
securityPoliciesPatchRule
    :: Text -- ^ 'spprProject'
    -> SecurityPolicyRule -- ^ 'spprPayload'
    -> Text -- ^ 'spprSecurityPolicy'
    -> SecurityPoliciesPatchRule
securityPoliciesPatchRule pSpprProject_ pSpprPayload_ pSpprSecurityPolicy_ =
  SecurityPoliciesPatchRule'
    { _spprPriority = Nothing
    , _spprProject = pSpprProject_
    , _spprPayload = pSpprPayload_
    , _spprSecurityPolicy = pSpprSecurityPolicy_
    }

-- | The priority of the rule to patch.
spprPriority :: Lens' SecurityPoliciesPatchRule (Maybe Int32)
spprPriority
  = lens _spprPriority (\ s a -> s{_spprPriority = a})
      . mapping _Coerce

-- | Project ID for this request.
spprProject :: Lens' SecurityPoliciesPatchRule Text
spprProject
  = lens _spprProject (\ s a -> s{_spprProject = a})

-- | Multipart request metadata.
spprPayload :: Lens' SecurityPoliciesPatchRule SecurityPolicyRule
spprPayload
  = lens _spprPayload (\ s a -> s{_spprPayload = a})

-- | Name of the security policy to update.
spprSecurityPolicy :: Lens' SecurityPoliciesPatchRule Text
spprSecurityPolicy
  = lens _spprSecurityPolicy
      (\ s a -> s{_spprSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesPatchRule
         where
        type Rs SecurityPoliciesPatchRule = Operation
        type Scopes SecurityPoliciesPatchRule =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesPatchRule'{..}
          = go _spprProject _spprSecurityPolicy _spprPriority
              (Just AltJSON)
              _spprPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesPatchRuleResource)
                      mempty
