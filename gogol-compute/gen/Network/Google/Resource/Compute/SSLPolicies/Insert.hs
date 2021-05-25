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
-- Module      : Network.Google.Resource.Compute.SSLPolicies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified SSL policy resource. Gets a list of available SSL
-- policies by making a list() request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.sslPolicies.insert@.
module Network.Google.Resource.Compute.SSLPolicies.Insert
    (
    -- * REST Resource
      SSLPoliciesInsertResource

    -- * Creating a Request
    , sslPoliciesInsert
    , SSLPoliciesInsert

    -- * Request Lenses
    , sslpiRequestId
    , sslpiProject
    , sslpiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.sslPolicies.insert@ method which the
-- 'SSLPoliciesInsert' request conforms to.
type SSLPoliciesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "sslPolicies" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] SSLPolicy :> Post '[JSON] Operation

-- | Returns the specified SSL policy resource. Gets a list of available SSL
-- policies by making a list() request.
--
-- /See:/ 'sslPoliciesInsert' smart constructor.
data SSLPoliciesInsert =
  SSLPoliciesInsert'
    { _sslpiRequestId :: !(Maybe Text)
    , _sslpiProject :: !Text
    , _sslpiPayload :: !SSLPolicy
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SSLPoliciesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sslpiRequestId'
--
-- * 'sslpiProject'
--
-- * 'sslpiPayload'
sslPoliciesInsert
    :: Text -- ^ 'sslpiProject'
    -> SSLPolicy -- ^ 'sslpiPayload'
    -> SSLPoliciesInsert
sslPoliciesInsert pSslpiProject_ pSslpiPayload_ =
  SSLPoliciesInsert'
    { _sslpiRequestId = Nothing
    , _sslpiProject = pSslpiProject_
    , _sslpiPayload = pSslpiPayload_
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
sslpiRequestId :: Lens' SSLPoliciesInsert (Maybe Text)
sslpiRequestId
  = lens _sslpiRequestId
      (\ s a -> s{_sslpiRequestId = a})

-- | Project ID for this request.
sslpiProject :: Lens' SSLPoliciesInsert Text
sslpiProject
  = lens _sslpiProject (\ s a -> s{_sslpiProject = a})

-- | Multipart request metadata.
sslpiPayload :: Lens' SSLPoliciesInsert SSLPolicy
sslpiPayload
  = lens _sslpiPayload (\ s a -> s{_sslpiPayload = a})

instance GoogleRequest SSLPoliciesInsert where
        type Rs SSLPoliciesInsert = Operation
        type Scopes SSLPoliciesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient SSLPoliciesInsert'{..}
          = go _sslpiProject _sslpiRequestId (Just AltJSON)
              _sslpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy SSLPoliciesInsertResource)
                      mempty
