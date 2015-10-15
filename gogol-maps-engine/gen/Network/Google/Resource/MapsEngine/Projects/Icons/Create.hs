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
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Create an icon.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineProjectsIconsCreate@.
module Network.Google.Resource.MapsEngine.Projects.Icons.Create
    (
    -- * REST Resource
      ProjectsIconsCreateResource

    -- * Creating a Request
    , projectsIconsCreate'
    , ProjectsIconsCreate'

    -- * Request Lenses
    , picPayload
    , picMedia
    , picProjectId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineProjectsIconsCreate@ method which the
-- 'ProjectsIconsCreate'' request conforms to.
type ProjectsIconsCreateResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "alt" AltJSON :>
             MultipartRelated '[JSON] Icon Body :>
               Post '[JSON] Icon

-- | Create an icon.
--
-- /See:/ 'projectsIconsCreate'' smart constructor.
data ProjectsIconsCreate' = ProjectsIconsCreate'
    { _picPayload   :: !Icon
    , _picMedia     :: !Body
    , _picProjectId :: !Text
    }

-- | Creates a value of 'ProjectsIconsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picPayload'
--
-- * 'picMedia'
--
-- * 'picProjectId'
projectsIconsCreate'
    :: Icon -- ^ 'payload'
    -> Body -- ^ 'media'
    -> Text -- ^ 'projectId'
    -> ProjectsIconsCreate'
projectsIconsCreate' pPicPayload_ pPicMedia_ pPicProjectId_ =
    ProjectsIconsCreate'
    { _picPayload = pPicPayload_
    , _picMedia = pPicMedia_
    , _picProjectId = pPicProjectId_
    }

-- | Multipart request metadata.
picPayload :: Lens' ProjectsIconsCreate' Icon
picPayload
  = lens _picPayload (\ s a -> s{_picPayload = a})

picMedia :: Lens' ProjectsIconsCreate' Body
picMedia = lens _picMedia (\ s a -> s{_picMedia = a})

-- | The ID of the project.
picProjectId :: Lens' ProjectsIconsCreate' Text
picProjectId
  = lens _picProjectId (\ s a -> s{_picProjectId = a})

instance GoogleRequest ProjectsIconsCreate' where
        type Rs ProjectsIconsCreate' = Icon
        requestClient ProjectsIconsCreate'{..}
          = go _picProjectId (Just AltJSON) _picPayload
              _picMedia
              mapsEngine
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsCreateResource)
                      mempty
