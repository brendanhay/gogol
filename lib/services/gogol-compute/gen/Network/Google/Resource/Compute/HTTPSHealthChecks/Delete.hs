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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HttpsHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.delete@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Delete
    (
    -- * REST Resource
      HTTPSHealthChecksDeleteResource

    -- * Creating a Request
    , httpsHealthChecksDelete
    , HTTPSHealthChecksDelete

    -- * Request Lenses
    , hhcdRequestId
    , hhcdProject
    , hhcdHTTPSHealthCheck
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.delete@ method which the
-- 'HTTPSHealthChecksDelete' request conforms to.
type HTTPSHealthChecksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 Capture "httpsHealthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HttpsHealthCheck resource.
--
-- /See:/ 'httpsHealthChecksDelete' smart constructor.
data HTTPSHealthChecksDelete =
  HTTPSHealthChecksDelete'
    { _hhcdRequestId :: !(Maybe Text)
    , _hhcdProject :: !Text
    , _hhcdHTTPSHealthCheck :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPSHealthChecksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhcdRequestId'
--
-- * 'hhcdProject'
--
-- * 'hhcdHTTPSHealthCheck'
httpsHealthChecksDelete
    :: Text -- ^ 'hhcdProject'
    -> Text -- ^ 'hhcdHTTPSHealthCheck'
    -> HTTPSHealthChecksDelete
httpsHealthChecksDelete pHhcdProject_ pHhcdHTTPSHealthCheck_ =
  HTTPSHealthChecksDelete'
    { _hhcdRequestId = Nothing
    , _hhcdProject = pHhcdProject_
    , _hhcdHTTPSHealthCheck = pHhcdHTTPSHealthCheck_
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
hhcdRequestId :: Lens' HTTPSHealthChecksDelete (Maybe Text)
hhcdRequestId
  = lens _hhcdRequestId
      (\ s a -> s{_hhcdRequestId = a})

-- | Project ID for this request.
hhcdProject :: Lens' HTTPSHealthChecksDelete Text
hhcdProject
  = lens _hhcdProject (\ s a -> s{_hhcdProject = a})

-- | Name of the HttpsHealthCheck resource to delete.
hhcdHTTPSHealthCheck :: Lens' HTTPSHealthChecksDelete Text
hhcdHTTPSHealthCheck
  = lens _hhcdHTTPSHealthCheck
      (\ s a -> s{_hhcdHTTPSHealthCheck = a})

instance GoogleRequest HTTPSHealthChecksDelete where
        type Rs HTTPSHealthChecksDelete = Operation
        type Scopes HTTPSHealthChecksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPSHealthChecksDelete'{..}
          = go _hhcdProject _hhcdHTTPSHealthCheck
              _hhcdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksDeleteResource)
                      mempty
