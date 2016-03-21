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
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create an icon.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.projects.icons.create@.
module Network.Google.Resource.MapsEngine.Projects.Icons.Create
    (
    -- * REST Resource
      ProjectsIconsCreateResource

    -- * Creating a Request
    , projectsIconsCreate
    , ProjectsIconsCreate

    -- * Request Lenses
    , picPayload
    , picProjectId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.projects.icons.create@ method which the
-- 'ProjectsIconsCreate' request conforms to.
type ProjectsIconsCreateResource =
     "mapsengine" :>
       "v1" :>
         "projects" :>
           Capture "projectId" Text :>
             "icons" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Icon :> Post '[JSON] Icon
       :<|>
       "upload" :>
         "mapsengine" :>
           "v1" :>
             "projects" :>
               Capture "projectId" Text :>
                 "icons" :>
                   QueryParam "alt" AltJSON :>
                     QueryParam "uploadType" AltMedia :>
                       MultipartRelated '[JSON] Icon RequestBody :>
                         Post '[JSON] Icon

-- | Create an icon.
--
-- /See:/ 'projectsIconsCreate' smart constructor.
data ProjectsIconsCreate = ProjectsIconsCreate'
    { _picPayload   :: !Icon
    , _picProjectId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'picPayload'
--
-- * 'picProjectId'
projectsIconsCreate
    :: Icon -- ^ 'picPayload'
    -> Text -- ^ 'picProjectId'
    -> ProjectsIconsCreate
projectsIconsCreate pPicPayload_ pPicProjectId_ =
    ProjectsIconsCreate'
    { _picPayload = pPicPayload_
    , _picProjectId = pPicProjectId_
    }

-- | Multipart request metadata.
picPayload :: Lens' ProjectsIconsCreate Icon
picPayload
  = lens _picPayload (\ s a -> s{_picPayload = a})

-- | The ID of the project.
picProjectId :: Lens' ProjectsIconsCreate Text
picProjectId
  = lens _picProjectId (\ s a -> s{_picProjectId = a})

instance GoogleRequest ProjectsIconsCreate where
        type Rs ProjectsIconsCreate = Icon
        type Scopes ProjectsIconsCreate =
             '["https://www.googleapis.com/auth/mapsengine"]
        requestClient ProjectsIconsCreate'{..}
          = go _picProjectId (Just AltJSON) _picPayload
              mapsEngineService
          where go :<|> _
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsCreateResource)
                      mempty

instance GoogleRequest
         (MediaUpload ProjectsIconsCreate) where
        type Rs (MediaUpload ProjectsIconsCreate) = Icon
        type Scopes (MediaUpload ProjectsIconsCreate) =
             Scopes ProjectsIconsCreate
        requestClient
          (MediaUpload ProjectsIconsCreate'{..} body)
          = go _picProjectId (Just AltJSON) (Just AltMedia)
              _picPayload
              body
              mapsEngineService
          where _ :<|> go
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsCreateResource)
                      mempty
