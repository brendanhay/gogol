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
-- Module      : Network.Google.Resource.Compute.Projects.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified project resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeProjectsGet@.
module Network.Google.Resource.Compute.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet'
    , ProjectsGet'

    -- * Request Lenses
    , pgProject
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeProjectsGet@ method which the
-- 'ProjectsGet'' request conforms to.
type ProjectsGetResource =
     Capture "project" Text :>
       QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Returns the specified project resource.
--
-- /See:/ 'projectsGet'' smart constructor.
newtype ProjectsGet' = ProjectsGet'
    { _pgProject :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProject'
projectsGet'
    :: Text -- ^ 'project'
    -> ProjectsGet'
projectsGet' pPgProject_ =
    ProjectsGet'
    { _pgProject = pPgProject_
    }

-- | Project ID for this request.
pgProject :: Lens' ProjectsGet' Text
pgProject
  = lens _pgProject (\ s a -> s{_pgProject = a})

instance GoogleRequest ProjectsGet' where
        type Rs ProjectsGet' = Project
        requestClient ProjectsGet'{..}
          = go _pgProject (Just AltJSON) computeService
          where go
                  = buildClient (Proxy :: Proxy ProjectsGetResource)
                      mempty
