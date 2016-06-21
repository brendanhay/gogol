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
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return an icon or its associated metadata
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.projects.icons.get@.
module Network.Google.Resource.MapsEngine.Projects.Icons.Get
    (
    -- * REST Resource
      ProjectsIconsGetResource

    -- * Creating a Request
    , projectsIconsGet
    , ProjectsIconsGet

    -- * Request Lenses
    , pigId
    , pigProjectId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.projects.icons.get@ method which the
-- 'ProjectsIconsGet' request conforms to.
type ProjectsIconsGetResource =
     "mapsengine" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "icons" :>
               Capture "id" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] Icon
       :<|>
       "mapsengine" :>
         "v1" :>
           "projects" :>
             Capture "projectId" Text :>
               "icons" :>
                 Capture "id" Text :>
                   QueryParam "alt" AltMedia :>
                     Get '[OctetStream] Stream

-- | Return an icon or its associated metadata
--
-- /See:/ 'projectsIconsGet' smart constructor.
data ProjectsIconsGet = ProjectsIconsGet'
    { _pigId        :: !Text
    , _pigProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pigId'
--
-- * 'pigProjectId'
projectsIconsGet
    :: Text -- ^ 'pigId'
    -> Text -- ^ 'pigProjectId'
    -> ProjectsIconsGet
projectsIconsGet pPigId_ pPigProjectId_ =
    ProjectsIconsGet'
    { _pigId = pPigId_
    , _pigProjectId = pPigProjectId_
    }

-- | The ID of the icon.
pigId :: Lens' ProjectsIconsGet Text
pigId = lens _pigId (\ s a -> s{_pigId = a})

-- | The ID of the project.
pigProjectId :: Lens' ProjectsIconsGet Text
pigProjectId
  = lens _pigProjectId (\ s a -> s{_pigProjectId = a})

instance GoogleRequest ProjectsIconsGet where
        type Rs ProjectsIconsGet = Icon
        type Scopes ProjectsIconsGet =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient ProjectsIconsGet'{..}
          = go _pigProjectId _pigId (Just AltJSON)
              mapsEngineService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsGetResource)
                      mempty

instance GoogleRequest
         (MediaDownload ProjectsIconsGet) where
        type Rs (MediaDownload ProjectsIconsGet) = Stream
        type Scopes (MediaDownload ProjectsIconsGet) =
             Scopes ProjectsIconsGet
        requestClient (MediaDownload ProjectsIconsGet'{..})
          = go _pigProjectId _pigId (Just AltMedia)
              mapsEngineService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsGetResource)
                      mempty
