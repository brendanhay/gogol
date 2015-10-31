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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , pmiProject
    , pmiPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.projects.moveInstance@ method which the
-- 'ProjectsMoveInstance' request conforms to.
type ProjectsMoveInstanceResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "moveInstance" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] InstanceMoveRequest :>
                   Post '[JSON] Operation

-- | Moves an instance and its attached persistent disks from one zone to
-- another.
--
-- /See:/ 'projectsMoveInstance' smart constructor.
data ProjectsMoveInstance = ProjectsMoveInstance
    { _pmiProject :: !Text
    , _pmiPayload :: !InstanceMoveRequest
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsMoveInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmiProject'
--
-- * 'pmiPayload'
projectsMoveInstance
    :: Text -- ^ 'pmiProject'
    -> InstanceMoveRequest -- ^ 'pmiPayload'
    -> ProjectsMoveInstance
projectsMoveInstance pPmiProject_ pPmiPayload_ =
    ProjectsMoveInstance
    { _pmiProject = pPmiProject_
    , _pmiPayload = pPmiPayload_
    }

-- | Project ID for this request.
pmiProject :: Lens' ProjectsMoveInstance Text
pmiProject
  = lens _pmiProject (\ s a -> s{_pmiProject = a})

-- | Multipart request metadata.
pmiPayload :: Lens' ProjectsMoveInstance InstanceMoveRequest
pmiPayload
  = lens _pmiPayload (\ s a -> s{_pmiPayload = a})

instance GoogleRequest ProjectsMoveInstance where
        type Rs ProjectsMoveInstance = Operation
        type Scopes ProjectsMoveInstance =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ProjectsMoveInstance{..}
          = go _pmiProject (Just AltJSON) _pmiPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsMoveInstanceResource)
                      mempty
