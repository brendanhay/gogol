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
-- Module      : Network.Google.Resource.Compute.HTTPHealthChecks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpHealthChecks.insert@.
module Network.Google.Resource.Compute.HTTPHealthChecks.Insert
    (
    -- * REST Resource
      HTTPHealthChecksInsertResource

    -- * Creating a Request
    , hTTPHealthChecksInsert
    , HTTPHealthChecksInsert

    -- * Request Lenses
    , httphciRequestId
    , httphciProject
    , httphciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpHealthChecks.insert@ method which the
-- 'HTTPHealthChecksInsert' request conforms to.
type HTTPHealthChecksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpHealthChecks" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPHealthCheck :>
                       Post '[JSON] Operation

-- | Creates a HttpHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'hTTPHealthChecksInsert' smart constructor.
data HTTPHealthChecksInsert =
  HTTPHealthChecksInsert'
    { _httphciRequestId :: !(Maybe Text)
    , _httphciProject   :: !Text
    , _httphciPayload   :: !HTTPHealthCheck
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'HTTPHealthChecksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'httphciRequestId'
--
-- * 'httphciProject'
--
-- * 'httphciPayload'
hTTPHealthChecksInsert
    :: Text -- ^ 'httphciProject'
    -> HTTPHealthCheck -- ^ 'httphciPayload'
    -> HTTPHealthChecksInsert
hTTPHealthChecksInsert pHttphciProject_ pHttphciPayload_ =
  HTTPHealthChecksInsert'
    { _httphciRequestId = Nothing
    , _httphciProject = pHttphciProject_
    , _httphciPayload = pHttphciPayload_
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
httphciRequestId :: Lens' HTTPHealthChecksInsert (Maybe Text)
httphciRequestId
  = lens _httphciRequestId
      (\ s a -> s{_httphciRequestId = a})

-- | Project ID for this request.
httphciProject :: Lens' HTTPHealthChecksInsert Text
httphciProject
  = lens _httphciProject
      (\ s a -> s{_httphciProject = a})

-- | Multipart request metadata.
httphciPayload :: Lens' HTTPHealthChecksInsert HTTPHealthCheck
httphciPayload
  = lens _httphciPayload
      (\ s a -> s{_httphciPayload = a})

instance GoogleRequest HTTPHealthChecksInsert where
        type Rs HTTPHealthChecksInsert = Operation
        type Scopes HTTPHealthChecksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPHealthChecksInsert'{..}
          = go _httphciProject _httphciRequestId (Just AltJSON)
              _httphciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPHealthChecksInsertResource)
                      mempty
