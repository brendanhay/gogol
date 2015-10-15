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
-- Module      : Network.Google.Resource.MapsEngine.Projects.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all projects readable by the current user.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineProjectsList@.
module Network.Google.Resource.MapsEngine.Projects.List
    (
    -- * REST Resource
      ProjectsListResource

    -- * Creating a Request
    , projectsList'
    , ProjectsList'

    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineProjectsList@ method which the
-- 'ProjectsList'' request conforms to.
type ProjectsListResource =
     "projects" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] ProjectsListResponse

-- | Return all projects readable by the current user.
--
-- /See:/ 'projectsList'' smart constructor.
data ProjectsList' =
    ProjectsList'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsList'' with the minimum fields required to make a request.
--
projectsList'
    :: ProjectsList'
projectsList' = ProjectsList'

instance GoogleRequest ProjectsList' where
        type Rs ProjectsList' = ProjectsListResponse
        requestClient ProjectsList'{}
          = go (Just AltJSON) mapsEngine
          where go
                  = buildClient (Proxy :: Proxy ProjectsListResource)
                      mempty
