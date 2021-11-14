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
-- Module      : Network.Google.Resource.Compute.ResourcePolicies.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new resource policy.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.resourcePolicies.insert@.
module Network.Google.Resource.Compute.ResourcePolicies.Insert
    (
    -- * REST Resource
      ResourcePoliciesInsertResource

    -- * Creating a Request
    , resourcePoliciesInsert
    , ResourcePoliciesInsert

    -- * Request Lenses
    , rpiRequestId
    , rpiProject
    , rpiPayload
    , rpiRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.resourcePolicies.insert@ method which the
-- 'ResourcePoliciesInsert' request conforms to.
type ResourcePoliciesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "resourcePolicies" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ResourcePolicy :>
                         Post '[JSON] Operation

-- | Creates a new resource policy.
--
-- /See:/ 'resourcePoliciesInsert' smart constructor.
data ResourcePoliciesInsert =
  ResourcePoliciesInsert'
    { _rpiRequestId :: !(Maybe Text)
    , _rpiProject :: !Text
    , _rpiPayload :: !ResourcePolicy
    , _rpiRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ResourcePoliciesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rpiRequestId'
--
-- * 'rpiProject'
--
-- * 'rpiPayload'
--
-- * 'rpiRegion'
resourcePoliciesInsert
    :: Text -- ^ 'rpiProject'
    -> ResourcePolicy -- ^ 'rpiPayload'
    -> Text -- ^ 'rpiRegion'
    -> ResourcePoliciesInsert
resourcePoliciesInsert pRpiProject_ pRpiPayload_ pRpiRegion_ =
  ResourcePoliciesInsert'
    { _rpiRequestId = Nothing
    , _rpiProject = pRpiProject_
    , _rpiPayload = pRpiPayload_
    , _rpiRegion = pRpiRegion_
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
rpiRequestId :: Lens' ResourcePoliciesInsert (Maybe Text)
rpiRequestId
  = lens _rpiRequestId (\ s a -> s{_rpiRequestId = a})

-- | Project ID for this request.
rpiProject :: Lens' ResourcePoliciesInsert Text
rpiProject
  = lens _rpiProject (\ s a -> s{_rpiProject = a})

-- | Multipart request metadata.
rpiPayload :: Lens' ResourcePoliciesInsert ResourcePolicy
rpiPayload
  = lens _rpiPayload (\ s a -> s{_rpiPayload = a})

-- | Name of the region for this request.
rpiRegion :: Lens' ResourcePoliciesInsert Text
rpiRegion
  = lens _rpiRegion (\ s a -> s{_rpiRegion = a})

instance GoogleRequest ResourcePoliciesInsert where
        type Rs ResourcePoliciesInsert = Operation
        type Scopes ResourcePoliciesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ResourcePoliciesInsert'{..}
          = go _rpiProject _rpiRegion _rpiRequestId
              (Just AltJSON)
              _rpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ResourcePoliciesInsertResource)
                      mempty
