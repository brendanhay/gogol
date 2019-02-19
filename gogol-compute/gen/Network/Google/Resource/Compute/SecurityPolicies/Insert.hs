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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new policy in the specified project using the data included in
-- the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.insert@.
module Network.Google.Resource.Compute.SecurityPolicies.Insert
    (
    -- * REST Resource
      SecurityPoliciesInsertResource

    -- * Creating a Request
    , securityPoliciesInsert
    , SecurityPoliciesInsert

    -- * Request Lenses
    , spiRequestId
    , spiProject
    , spiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.insert@ method which the
-- 'SecurityPoliciesInsert' request conforms to.
type SecurityPoliciesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SecurityPolicy :>
                       Post '[JSON] Operation

-- | Creates a new policy in the specified project using the data included in
-- the request.
--
-- /See:/ 'securityPoliciesInsert' smart constructor.
data SecurityPoliciesInsert =
  SecurityPoliciesInsert'
    { _spiRequestId :: !(Maybe Text)
    , _spiProject   :: !Text
    , _spiPayload   :: !SecurityPolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityPoliciesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spiRequestId'
--
-- * 'spiProject'
--
-- * 'spiPayload'
securityPoliciesInsert
    :: Text -- ^ 'spiProject'
    -> SecurityPolicy -- ^ 'spiPayload'
    -> SecurityPoliciesInsert
securityPoliciesInsert pSpiProject_ pSpiPayload_ =
  SecurityPoliciesInsert'
    { _spiRequestId = Nothing
    , _spiProject = pSpiProject_
    , _spiPayload = pSpiPayload_
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
spiRequestId :: Lens' SecurityPoliciesInsert (Maybe Text)
spiRequestId
  = lens _spiRequestId (\ s a -> s{_spiRequestId = a})

-- | Project ID for this request.
spiProject :: Lens' SecurityPoliciesInsert Text
spiProject
  = lens _spiProject (\ s a -> s{_spiProject = a})

-- | Multipart request metadata.
spiPayload :: Lens' SecurityPoliciesInsert SecurityPolicy
spiPayload
  = lens _spiPayload (\ s a -> s{_spiPayload = a})

instance GoogleRequest SecurityPoliciesInsert where
        type Rs SecurityPoliciesInsert = Operation
        type Scopes SecurityPoliciesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesInsert'{..}
          = go _spiProject _spiRequestId (Just AltJSON)
              _spiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesInsertResource)
                      mempty
