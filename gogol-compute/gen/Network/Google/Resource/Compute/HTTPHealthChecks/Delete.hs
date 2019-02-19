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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified HttpHealthCheck resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.delete@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Delete
    (
    -- * REST Resource
      HTTPHealthChecksDeleteResource

    -- * Creating a Request
    , hTTPHealthChecksDelete
    , HTTPHealthChecksDelete

    -- * Request Lenses
    , httphcdRequestId
    , httphcdProject
    , httphcdHTTPHealthCheck
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.delete@ method which the
-- 'HTTPHealthChecksDelete' request conforms to.
type HTTPHealthChecksDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 Capture "httpHealthCheck" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified HttpHealthCheck resource.
--
-- /See:/ 'hTTPHealthChecksDelete' smart constructor.
data HTTPHealthChecksDelete =
  HTTPHealthChecksDelete'
    { _httphcdRequestId       :: !(Maybe Text)
    , _httphcdProject         :: !Text
    , _httphcdHTTPHealthCheck :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPHealthChecksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphcdRequestId'
--
-- * 'httphcdProject'
--
-- * 'httphcdHTTPHealthCheck'
hTTPHealthChecksDelete
    :: Text -- ^ 'httphcdProject'
    -> Text -- ^ 'httphcdHTTPHealthCheck'
    -> HTTPHealthChecksDelete
hTTPHealthChecksDelete pHttphcdProject_ pHttphcdHTTPHealthCheck_ =
  HTTPHealthChecksDelete'
    { _httphcdRequestId = Nothing
    , _httphcdProject = pHttphcdProject_
    , _httphcdHTTPHealthCheck = pHttphcdHTTPHealthCheck_
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
httphcdRequestId :: Lens' HTTPHealthChecksDelete (Maybe Text)
httphcdRequestId
  = lens _httphcdRequestId
      (\ s a -> s{_httphcdRequestId = a})

-- | Project ID for this request.
httphcdProject :: Lens' HTTPHealthChecksDelete Text
httphcdProject
  = lens _httphcdProject
      (\ s a -> s{_httphcdProject = a})

-- | Name of the HttpHealthCheck resource to delete.
httphcdHTTPHealthCheck :: Lens' HTTPHealthChecksDelete Text
httphcdHTTPHealthCheck
  = lens _httphcdHTTPHealthCheck
      (\ s a -> s{_httphcdHTTPHealthCheck = a})

instance GoogleRequest HTTPHealthChecksDelete where
        type Rs HTTPHealthChecksDelete = Operation
        type Scopes HTTPHealthChecksDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPHealthChecksDelete'{..}
          = go _httphcdProject _httphcdHTTPHealthCheck
              _httphcdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksDeleteResource)
                      mempty
