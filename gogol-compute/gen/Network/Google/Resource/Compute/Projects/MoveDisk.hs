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
-- Module      : Network.Google.Resource.Compute.Projects.MoveDisk
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Moves a persistent disk from one zone to another.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.projects.moveDisk@.
module Network.Google.Resource.Compute.Projects.MoveDisk
    (
    -- * REST Resource
      ProjectsMoveDiskResource

    -- * Creating a Request
    , projectsMoveDisk
    , ProjectsMoveDisk

    -- * Request Lenses
    , pRequestId
    , pProject
    , pPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.projects.moveDisk@ method which the
-- 'ProjectsMoveDisk' request conforms to.
type ProjectsMoveDiskResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "moveDisk" :>
               QueryParam "requestId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DiskMoveRequest :>
                     Post '[JSON] Operation

-- | Moves a persistent disk from one zone to another.
--
-- /See:/ 'projectsMoveDisk' smart constructor.
data ProjectsMoveDisk =
  ProjectsMoveDisk'
    { _pRequestId :: !(Maybe Text)
    , _pProject :: !Text
    , _pPayload :: !DiskMoveRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsMoveDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pRequestId'
--
-- * 'pProject'
--
-- * 'pPayload'
projectsMoveDisk
    :: Text -- ^ 'pProject'
    -> DiskMoveRequest -- ^ 'pPayload'
    -> ProjectsMoveDisk
projectsMoveDisk pPProject_ pPPayload_ =
  ProjectsMoveDisk'
    {_pRequestId = Nothing, _pProject = pPProject_, _pPayload = pPPayload_}


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
pRequestId :: Lens' ProjectsMoveDisk (Maybe Text)
pRequestId
  = lens _pRequestId (\ s a -> s{_pRequestId = a})

-- | Project ID for this request.
pProject :: Lens' ProjectsMoveDisk Text
pProject = lens _pProject (\ s a -> s{_pProject = a})

-- | Multipart request metadata.
pPayload :: Lens' ProjectsMoveDisk DiskMoveRequest
pPayload = lens _pPayload (\ s a -> s{_pPayload = a})

instance GoogleRequest ProjectsMoveDisk where
        type Rs ProjectsMoveDisk = Operation
        type Scopes ProjectsMoveDisk =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsMoveDisk'{..}
          = go _pProject _pRequestId (Just AltJSON) _pPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMoveDiskResource)
                      mempty
