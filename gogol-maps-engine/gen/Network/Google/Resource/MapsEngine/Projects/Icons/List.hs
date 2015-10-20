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
-- Module      : Network.Google.Resource.MapsEngine.Projects.Icons.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return all icons in the current project
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.projects.icons.list@.
module Network.Google.Resource.MapsEngine.Projects.Icons.List
    (
    -- * REST Resource
      ProjectsIconsListResource

    -- * Creating a Request
    , projectsIconsList
    , ProjectsIconsList

    -- * Request Lenses
    , pilPageToken
    , pilProjectId
    , pilMaxResults
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.projects.icons.list@ method which the
-- 'ProjectsIconsList' request conforms to.
type ProjectsIconsListResource =
     "projects" :>
       Capture "projectId" Text :>
         "icons" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "alt" AltJSON :>
                 Get '[JSON] IconsListResponse

-- | Return all icons in the current project
--
-- /See:/ 'projectsIconsList' smart constructor.
data ProjectsIconsList = ProjectsIconsList
    { _pilPageToken  :: !(Maybe Text)
    , _pilProjectId  :: !Text
    , _pilMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsIconsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pilPageToken'
--
-- * 'pilProjectId'
--
-- * 'pilMaxResults'
projectsIconsList
    :: Text -- ^ 'pilProjectId'
    -> ProjectsIconsList
projectsIconsList pPilProjectId_ =
    ProjectsIconsList
    { _pilPageToken = Nothing
    , _pilProjectId = pPilProjectId_
    , _pilMaxResults = Nothing
    }

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
pilPageToken :: Lens' ProjectsIconsList (Maybe Text)
pilPageToken
  = lens _pilPageToken (\ s a -> s{_pilPageToken = a})

-- | The ID of the project.
pilProjectId :: Lens' ProjectsIconsList Text
pilProjectId
  = lens _pilProjectId (\ s a -> s{_pilProjectId = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
pilMaxResults :: Lens' ProjectsIconsList (Maybe Word32)
pilMaxResults
  = lens _pilMaxResults
      (\ s a -> s{_pilMaxResults = a})

instance GoogleRequest ProjectsIconsList where
        type Rs ProjectsIconsList = IconsListResponse
        requestClient ProjectsIconsList{..}
          = go _pilProjectId _pilPageToken _pilMaxResults
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsIconsListResource)
                      mempty
