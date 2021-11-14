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
-- Module      : Network.Google.Resource.Compute.Projects.MoveInstance
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.moveInstance@.
module Network.Google.Resource.Compute.Projects.MoveInstance
    (
    -- * REST Resource
      ProjectsMoveInstanceResource

    -- * Creating a Request
    , projectsMoveInstance
    , ProjectsMoveInstance

    -- * Request Lenses
    , proRequestId
    , proProject
    , proPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.projects.moveInstance@ method which the
-- 'ProjectsMoveInstance' request conforms to.
type ProjectsMoveInstanceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "moveInstance" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] InstanceMoveRequest :>
                     Post '[JSON] Operation

-- | Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ 'projectsMoveInstance' smart constructor.
data ProjectsMoveInstance =
  ProjectsMoveInstance'
    { _proRequestId :: !(Maybe Text)
    , _proProject :: !Text
    , _proPayload :: !InstanceMoveRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMoveInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'proRequestId'
--
-- * 'proProject'
--
-- * 'proPayload'
projectsMoveInstance
    :: Text -- ^ 'proProject'
    -> InstanceMoveRequest -- ^ 'proPayload'
    -> ProjectsMoveInstance
projectsMoveInstance pProProject_ pProPayload_ =
  ProjectsMoveInstance'
    { _proRequestId = Nothing
    , _proProject = pProProject_
    , _proPayload = pProPayload_
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
proRequestId :: Lens' ProjectsMoveInstance (Maybe Text)
proRequestId
  = lens _proRequestId (\ s a -> s{_proRequestId = a})

-- | Project ID for this request.
proProject :: Lens' ProjectsMoveInstance Text
proProject
  = lens _proProject (\ s a -> s{_proProject = a})

-- | Multipart request metadata.
proPayload :: Lens' ProjectsMoveInstance InstanceMoveRequest
proPayload
  = lens _proPayload (\ s a -> s{_proPayload = a})

instance GoogleRequest ProjectsMoveInstance where
        type Rs ProjectsMoveInstance = Operation
        type Scopes ProjectsMoveInstance =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsMoveInstance'{..}
          = go _proProject _proRequestId (Just AltJSON)
              _proPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMoveInstanceResource)
                      mempty
