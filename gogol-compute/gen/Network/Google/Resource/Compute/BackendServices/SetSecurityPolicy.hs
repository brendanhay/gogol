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
-- Module      : Network.Google.Resource.Compute.BackendServices.SetSecurityPolicy
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the Google Cloud Armor security policy for the specified backend
-- service. For more information, see Google Cloud Armor Overview
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.setSecurityPolicy@.
module Network.Google.Resource.Compute.BackendServices.SetSecurityPolicy
    (
    -- * REST Resource
      BackendServicesSetSecurityPolicyResource

    -- * Creating a Request
    , backendServicesSetSecurityPolicy
    , BackendServicesSetSecurityPolicy

    -- * Request Lenses
    , bssspRequestId
    , bssspProject
    , bssspPayload
    , bssspBackendService
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.backendServices.setSecurityPolicy@ method which the
-- 'BackendServicesSetSecurityPolicy' request conforms to.
type BackendServicesSetSecurityPolicyResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 Capture "backendService" Text :>
                   "setSecurityPolicy" :>
                     QueryParam "requestId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] SecurityPolicyReference :>
                           Post '[JSON] Operation

-- | Sets the Google Cloud Armor security policy for the specified backend
-- service. For more information, see Google Cloud Armor Overview
--
-- /See:/ 'backendServicesSetSecurityPolicy' smart constructor.
data BackendServicesSetSecurityPolicy =
  BackendServicesSetSecurityPolicy'
    { _bssspRequestId :: !(Maybe Text)
    , _bssspProject :: !Text
    , _bssspPayload :: !SecurityPolicyReference
    , _bssspBackendService :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'BackendServicesSetSecurityPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bssspRequestId'
--
-- * 'bssspProject'
--
-- * 'bssspPayload'
--
-- * 'bssspBackendService'
backendServicesSetSecurityPolicy
    :: Text -- ^ 'bssspProject'
    -> SecurityPolicyReference -- ^ 'bssspPayload'
    -> Text -- ^ 'bssspBackendService'
    -> BackendServicesSetSecurityPolicy
backendServicesSetSecurityPolicy pBssspProject_ pBssspPayload_ pBssspBackendService_ =
  BackendServicesSetSecurityPolicy'
    { _bssspRequestId = Nothing
    , _bssspProject = pBssspProject_
    , _bssspPayload = pBssspPayload_
    , _bssspBackendService = pBssspBackendService_
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
bssspRequestId :: Lens' BackendServicesSetSecurityPolicy (Maybe Text)
bssspRequestId
  = lens _bssspRequestId
      (\ s a -> s{_bssspRequestId = a})

-- | Project ID for this request.
bssspProject :: Lens' BackendServicesSetSecurityPolicy Text
bssspProject
  = lens _bssspProject (\ s a -> s{_bssspProject = a})

-- | Multipart request metadata.
bssspPayload :: Lens' BackendServicesSetSecurityPolicy SecurityPolicyReference
bssspPayload
  = lens _bssspPayload (\ s a -> s{_bssspPayload = a})

-- | Name of the BackendService resource to which the security policy should
-- be set. The name should conform to RFC1035.
bssspBackendService :: Lens' BackendServicesSetSecurityPolicy Text
bssspBackendService
  = lens _bssspBackendService
      (\ s a -> s{_bssspBackendService = a})

instance GoogleRequest
           BackendServicesSetSecurityPolicy
         where
        type Rs BackendServicesSetSecurityPolicy = Operation
        type Scopes BackendServicesSetSecurityPolicy =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesSetSecurityPolicy'{..}
          = go _bssspProject _bssspBackendService
              _bssspRequestId
              (Just AltJSON)
              _bssspPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy BackendServicesSetSecurityPolicyResource)
                      mempty
