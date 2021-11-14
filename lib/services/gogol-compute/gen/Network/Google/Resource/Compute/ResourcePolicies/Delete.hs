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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified resource policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.delete@.
module Network.Google.Resource.Compute.ResourcePolicies.Delete
    (
    -- * REST Resource
      ResourcePoliciesDeleteResource

    -- * Creating a Request
    , resourcePoliciesDelete
    , ResourcePoliciesDelete

    -- * Request Lenses
    , rpdRequestId
    , rpdResourcePolicy
    , rpdProject
    , rpdRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.delete@ method which the
-- 'ResourcePoliciesDelete' request conforms to.
type ResourcePoliciesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   Capture "resourcePolicy" Text :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified resource policy.
--
-- /See:/ 'resourcePoliciesDelete' smart constructor.
data ResourcePoliciesDelete =
  ResourcePoliciesDelete'
    { _rpdRequestId :: !(Maybe Text)
    , _rpdResourcePolicy :: !Text
    , _rpdProject :: !Text
    , _rpdRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpdRequestId'
--
-- * 'rpdResourcePolicy'
--
-- * 'rpdProject'
--
-- * 'rpdRegion'
resourcePoliciesDelete
    :: Text -- ^ 'rpdResourcePolicy'
    -> Text -- ^ 'rpdProject'
    -> Text -- ^ 'rpdRegion'
    -> ResourcePoliciesDelete
resourcePoliciesDelete pRpdResourcePolicy_ pRpdProject_ pRpdRegion_ =
  ResourcePoliciesDelete'
    { _rpdRequestId = Nothing
    , _rpdResourcePolicy = pRpdResourcePolicy_
    , _rpdProject = pRpdProject_
    , _rpdRegion = pRpdRegion_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
rpdRequestId :: Lens' ResourcePoliciesDelete (Maybe Text)
rpdRequestId
  = lens _rpdRequestId (\ s a -> s{_rpdRequestId = a})

-- | Name of the resource policy to delete.
rpdResourcePolicy :: Lens' ResourcePoliciesDelete Text
rpdResourcePolicy
  = lens _rpdResourcePolicy
      (\ s a -> s{_rpdResourcePolicy = a})

-- | Project ID for this request.
rpdProject :: Lens' ResourcePoliciesDelete Text
rpdProject
  = lens _rpdProject (\ s a -> s{_rpdProject = a})

-- | Name of the region for this request.
rpdRegion :: Lens' ResourcePoliciesDelete Text
rpdRegion
  = lens _rpdRegion (\ s a -> s{_rpdRegion = a})

instance GoogleRequest ResourcePoliciesDelete where
        type Rs ResourcePoliciesDelete = Operation
        type Scopes ResourcePoliciesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ResourcePoliciesDelete'{..}
          = go _rpdProject _rpdRegion _rpdResourcePolicy
              _rpdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesDeleteResource)
                      mempty
