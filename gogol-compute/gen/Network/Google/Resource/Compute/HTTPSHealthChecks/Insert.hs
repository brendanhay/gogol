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
-- Module      : Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.httpsHealthChecks.insert@.
module Network.Google.Resource.Compute.HTTPSHealthChecks.Insert
    (
    -- * REST Resource
      HTTPSHealthChecksInsertResource

    -- * Creating a Request
    , httpsHealthChecksInsert
    , HTTPSHealthChecksInsert

    -- * Request Lenses
    , hhciRequestId
    , hhciProject
    , hhciPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.httpsHealthChecks.insert@ method which the
-- 'HTTPSHealthChecksInsert' request conforms to.
type HTTPSHealthChecksInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "httpsHealthChecks" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] HTTPSHealthCheck :>
                       Post '[JSON] Operation

-- | Creates a HttpsHealthCheck resource in the specified project using the
-- data included in the request.
--
-- /See:/ 'httpsHealthChecksInsert' smart constructor.
data HTTPSHealthChecksInsert =
  HTTPSHealthChecksInsert'
    { _hhciRequestId :: !(Maybe Text)
    , _hhciProject   :: !Text
    , _hhciPayload   :: !HTTPSHealthCheck
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'HTTPSHealthChecksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'hhciRequestId'
--
-- * 'hhciProject'
--
-- * 'hhciPayload'
httpsHealthChecksInsert
    :: Text -- ^ 'hhciProject'
    -> HTTPSHealthCheck -- ^ 'hhciPayload'
    -> HTTPSHealthChecksInsert
httpsHealthChecksInsert pHhciProject_ pHhciPayload_ =
  HTTPSHealthChecksInsert'
    { _hhciRequestId = Nothing
    , _hhciProject = pHhciProject_
    , _hhciPayload = pHhciPayload_
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
hhciRequestId :: Lens' HTTPSHealthChecksInsert (Maybe Text)
hhciRequestId
  = lens _hhciRequestId
      (\ s a -> s{_hhciRequestId = a})

-- | Project ID for this request.
hhciProject :: Lens' HTTPSHealthChecksInsert Text
hhciProject
  = lens _hhciProject (\ s a -> s{_hhciProject = a})

-- | Multipart request metadata.
hhciPayload :: Lens' HTTPSHealthChecksInsert HTTPSHealthCheck
hhciPayload
  = lens _hhciPayload (\ s a -> s{_hhciPayload = a})

instance GoogleRequest HTTPSHealthChecksInsert where
        type Rs HTTPSHealthChecksInsert = Operation
        type Scopes HTTPSHealthChecksInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient HTTPSHealthChecksInsert'{..}
          = go _hhciProject _hhciRequestId (Just AltJSON)
              _hhciPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy HTTPSHealthChecksInsertResource)
                      mempty
