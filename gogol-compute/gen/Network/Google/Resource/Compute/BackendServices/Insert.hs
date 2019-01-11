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
-- Module      : Network.Google.Resource.Compute.BackendServices.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a BackendService resource in the specified project using the
-- data included in the request. There are several restrictions and
-- guidelines to keep in mind when creating a backend service. Read
-- Restrictions and Guidelines for more information.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.backendServices.insert@.
module Network.Google.Resource.Compute.BackendServices.Insert
    (
    -- * REST Resource
      BackendServicesInsertResource

    -- * Creating a Request
    , backendServicesInsert
    , BackendServicesInsert

    -- * Request Lenses
    , bsiRequestId
    , bsiProject
    , bsiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.backendServices.insert@ method which the
-- 'BackendServicesInsert' request conforms to.
type BackendServicesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "backendServices" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] BackendService :>
                       Post '[JSON] Operation

-- | Creates a BackendService resource in the specified project using the
-- data included in the request. There are several restrictions and
-- guidelines to keep in mind when creating a backend service. Read
-- Restrictions and Guidelines for more information.
--
-- /See:/ 'backendServicesInsert' smart constructor.
data BackendServicesInsert = BackendServicesInsert'
    { _bsiRequestId :: !(Maybe Text)
    , _bsiProject   :: !Text
    , _bsiPayload   :: !BackendService
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BackendServicesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bsiRequestId'
--
-- * 'bsiProject'
--
-- * 'bsiPayload'
backendServicesInsert
    :: Text -- ^ 'bsiProject'
    -> BackendService -- ^ 'bsiPayload'
    -> BackendServicesInsert
backendServicesInsert pBsiProject_ pBsiPayload_ =
    BackendServicesInsert'
    { _bsiRequestId = Nothing
    , _bsiProject = pBsiProject_
    , _bsiPayload = pBsiPayload_
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
bsiRequestId :: Lens' BackendServicesInsert (Maybe Text)
bsiRequestId
  = lens _bsiRequestId (\ s a -> s{_bsiRequestId = a})

-- | Project ID for this request.
bsiProject :: Lens' BackendServicesInsert Text
bsiProject
  = lens _bsiProject (\ s a -> s{_bsiProject = a})

-- | Multipart request metadata.
bsiPayload :: Lens' BackendServicesInsert BackendService
bsiPayload
  = lens _bsiPayload (\ s a -> s{_bsiPayload = a})

instance GoogleRequest BackendServicesInsert where
        type Rs BackendServicesInsert = Operation
        type Scopes BackendServicesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient BackendServicesInsert'{..}
          = go _bsiProject _bsiRequestId (Just AltJSON)
              _bsiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy BackendServicesInsertResource)
                      mempty
