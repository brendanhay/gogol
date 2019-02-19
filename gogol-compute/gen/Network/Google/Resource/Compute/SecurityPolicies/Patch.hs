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
-- Module      : Network.Google.Resource.Compute.SecurityPolicies.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Patches the specified policy with the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.securityPolicies.patch@.
module Network.Google.Resource.Compute.SecurityPolicies.Patch
    (
    -- * REST Resource
      SecurityPoliciesPatchResource

    -- * Creating a Request
    , securityPoliciesPatch
    , SecurityPoliciesPatch

    -- * Request Lenses
    , sRequestId
    , sProject
    , sPayload
    , sSecurityPolicy
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.securityPolicies.patch@ method which the
-- 'SecurityPoliciesPatch' request conforms to.
type SecurityPoliciesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "securityPolicies" :>
                 Capture "securityPolicy" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] SecurityPolicy :>
                         Patch '[JSON] Operation

-- | Patches the specified policy with the data included in the request.
--
-- /See:/ 'securityPoliciesPatch' smart constructor.
data SecurityPoliciesPatch =
  SecurityPoliciesPatch'
    { _sRequestId      :: !(Maybe Text)
    , _sProject        :: !Text
    , _sPayload        :: !SecurityPolicy
    , _sSecurityPolicy :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'SecurityPoliciesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sRequestId'
--
-- * 'sProject'
--
-- * 'sPayload'
--
-- * 'sSecurityPolicy'
securityPoliciesPatch
    :: Text -- ^ 'sProject'
    -> SecurityPolicy -- ^ 'sPayload'
    -> Text -- ^ 'sSecurityPolicy'
    -> SecurityPoliciesPatch
securityPoliciesPatch pSProject_ pSPayload_ pSSecurityPolicy_ =
  SecurityPoliciesPatch'
    { _sRequestId = Nothing
    , _sProject = pSProject_
    , _sPayload = pSPayload_
    , _sSecurityPolicy = pSSecurityPolicy_
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
sRequestId :: Lens' SecurityPoliciesPatch (Maybe Text)
sRequestId
  = lens _sRequestId (\ s a -> s{_sRequestId = a})

-- | Project ID for this request.
sProject :: Lens' SecurityPoliciesPatch Text
sProject = lens _sProject (\ s a -> s{_sProject = a})

-- | Multipart request metadata.
sPayload :: Lens' SecurityPoliciesPatch SecurityPolicy
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | Name of the security policy to update.
sSecurityPolicy :: Lens' SecurityPoliciesPatch Text
sSecurityPolicy
  = lens _sSecurityPolicy
      (\ s a -> s{_sSecurityPolicy = a})

instance GoogleRequest SecurityPoliciesPatch where
        type Rs SecurityPoliciesPatch = Operation
        type Scopes SecurityPoliciesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SecurityPoliciesPatch'{..}
          = go _sProject _sSecurityPolicy _sRequestId
              (Just AltJSON)
              _sPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SecurityPoliciesPatchResource)
                      mempty
