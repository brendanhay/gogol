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
-- Copyright   : (c) 2015 Brendan Hay
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
    , pmdProject
    , pmdPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.moveDisk@ method which the
-- 'ProjectsMoveDisk' request conforms to.
type ProjectsMoveDiskResource =
     Capture "project" Text :>
       "moveDisk" :>
         QueryParam "alt" AltJSON :>
           ReqBody '[JSON] DiskMoveRequest :>
             Post '[JSON] Operation

-- | Moves a persistent disk from one zone to another.
--
-- /See:/ 'projectsMoveDisk' smart constructor.
data ProjectsMoveDisk = ProjectsMoveDisk
    { _pmdProject :: !Text
    , _pmdPayload :: !DiskMoveRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMoveDisk' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmdProject'
--
-- * 'pmdPayload'
projectsMoveDisk
    :: Text -- ^ 'pmdProject'
    -> DiskMoveRequest -- ^ 'pmdPayload'
    -> ProjectsMoveDisk
projectsMoveDisk pPmdProject_ pPmdPayload_ =
    ProjectsMoveDisk
    { _pmdProject = pPmdProject_
    , _pmdPayload = pPmdPayload_
    }

-- | Project ID for this request.
pmdProject :: Lens' ProjectsMoveDisk Text
pmdProject
  = lens _pmdProject (\ s a -> s{_pmdProject = a})

-- | Multipart request metadata.
pmdPayload :: Lens' ProjectsMoveDisk DiskMoveRequest
pmdPayload
  = lens _pmdPayload (\ s a -> s{_pmdPayload = a})

instance GoogleRequest ProjectsMoveDisk where
        type Rs ProjectsMoveDisk = Operation
        requestClient ProjectsMoveDisk{..}
          = go _pmdProject (Just AltJSON) _pmdPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMoveDiskResource)
                      mempty
