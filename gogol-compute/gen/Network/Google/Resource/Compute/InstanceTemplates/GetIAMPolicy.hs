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
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.GetIAMPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.instanceTemplates.getIamPolicy@.
module Network.Google.Resource.Compute.InstanceTemplates.GetIAMPolicy
    (
    -- * REST Resource
      InstanceTemplatesGetIAMPolicyResource

    -- * Creating a Request
    , instanceTemplatesGetIAMPolicy
    , InstanceTemplatesGetIAMPolicy

    -- * Request Lenses
    , itgipProject
    , itgipResource
    , itgipOptionsRequestedPolicyVersion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.instanceTemplates.getIamPolicy@ method which the
-- 'InstanceTemplatesGetIAMPolicy' request conforms to.
type InstanceTemplatesGetIAMPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "instanceTemplates" :>
                 Capture "resource" Text :>
                   "getIamPolicy" :>
                     QueryParam "optionsRequestedPolicyVersion"
                       (Textual Int32)
                       :> QueryParam "alt" AltJSON :> Get '[JSON] Policy

-- | Gets the access control policy for a resource. May be empty if no such
-- policy or resource exists.
--
-- /See:/ 'instanceTemplatesGetIAMPolicy' smart constructor.
data InstanceTemplatesGetIAMPolicy =
  InstanceTemplatesGetIAMPolicy'
    { _itgipProject :: !Text
    , _itgipResource :: !Text
    , _itgipOptionsRequestedPolicyVersion :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'InstanceTemplatesGetIAMPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itgipProject'
--
-- * 'itgipResource'
--
-- * 'itgipOptionsRequestedPolicyVersion'
instanceTemplatesGetIAMPolicy
    :: Text -- ^ 'itgipProject'
    -> Text -- ^ 'itgipResource'
    -> InstanceTemplatesGetIAMPolicy
instanceTemplatesGetIAMPolicy pItgipProject_ pItgipResource_ =
  InstanceTemplatesGetIAMPolicy'
    { _itgipProject = pItgipProject_
    , _itgipResource = pItgipResource_
    , _itgipOptionsRequestedPolicyVersion = Nothing
    }


-- | Project ID for this request.
itgipProject :: Lens' InstanceTemplatesGetIAMPolicy Text
itgipProject
  = lens _itgipProject (\ s a -> s{_itgipProject = a})

-- | Name or id of the resource for this request.
itgipResource :: Lens' InstanceTemplatesGetIAMPolicy Text
itgipResource
  = lens _itgipResource
      (\ s a -> s{_itgipResource = a})

-- | Requested IAM Policy version.
itgipOptionsRequestedPolicyVersion :: Lens' InstanceTemplatesGetIAMPolicy (Maybe Int32)
itgipOptionsRequestedPolicyVersion
  = lens _itgipOptionsRequestedPolicyVersion
      (\ s a -> s{_itgipOptionsRequestedPolicyVersion = a})
      . mapping _Coerce

instance GoogleRequest InstanceTemplatesGetIAMPolicy
         where
        type Rs InstanceTemplatesGetIAMPolicy = Policy
        type Scopes InstanceTemplatesGetIAMPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute",
               "https://www.googleapis.com/auth/compute.readonly"]
        requestClient InstanceTemplatesGetIAMPolicy'{..}
          = go _itgipProject _itgipResource
              _itgipOptionsRequestedPolicyVersion
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy InstanceTemplatesGetIAMPolicyResource)
                      mempty
