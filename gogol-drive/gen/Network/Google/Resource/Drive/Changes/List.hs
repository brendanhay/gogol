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
-- Module      : Network.Google.Resource.Drive.Changes.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the changes for a user or shared drive.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.list@.
module Network.Google.Resource.Drive.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList
    , ChangesList

    -- * Request Lenses
    , clIncludeTeamDriveItems
    , clIncludeCorpusRemovals
    , clTeamDriveId
    , clRestrictToMyDrive
    , clSpaces
    , clIncludeItemsFromAllDrives
    , clSupportsAllDrives
    , clIncludePermissionsForView
    , clPageToken
    , clPageSize
    , clIncludeRemoved
    , clSupportsTeamDrives
    , clDriveId
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.changes.list@ method which the
-- 'ChangesList' request conforms to.
type ChangesListResource =
     "drive" :>
       "v3" :>
         "changes" :>
           QueryParam "pageToken" Text :>
             QueryParam "includeTeamDriveItems" Bool :>
               QueryParam "includeCorpusRemovals" Bool :>
                 QueryParam "teamDriveId" Text :>
                   QueryParam "restrictToMyDrive" Bool :>
                     QueryParam "spaces" Text :>
                       QueryParam "includeItemsFromAllDrives" Bool :>
                         QueryParam "supportsAllDrives" Bool :>
                           QueryParam "includePermissionsForView" Text :>
                             QueryParam "pageSize" (Textual Int32) :>
                               QueryParam "includeRemoved" Bool :>
                                 QueryParam "supportsTeamDrives" Bool :>
                                   QueryParam "driveId" Text :>
                                     QueryParam "alt" AltJSON :>
                                       Get '[JSON] ChangeList

-- | Lists the changes for a user or shared drive.
--
-- /See:/ 'changesList' smart constructor.
data ChangesList =
  ChangesList'
    { _clIncludeTeamDriveItems :: !Bool
    , _clIncludeCorpusRemovals :: !Bool
    , _clTeamDriveId :: !(Maybe Text)
    , _clRestrictToMyDrive :: !Bool
    , _clSpaces :: !Text
    , _clIncludeItemsFromAllDrives :: !Bool
    , _clSupportsAllDrives :: !Bool
    , _clIncludePermissionsForView :: !(Maybe Text)
    , _clPageToken :: !Text
    , _clPageSize :: !(Textual Int32)
    , _clIncludeRemoved :: !Bool
    , _clSupportsTeamDrives :: !Bool
    , _clDriveId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clIncludeTeamDriveItems'
--
-- * 'clIncludeCorpusRemovals'
--
-- * 'clTeamDriveId'
--
-- * 'clRestrictToMyDrive'
--
-- * 'clSpaces'
--
-- * 'clIncludeItemsFromAllDrives'
--
-- * 'clSupportsAllDrives'
--
-- * 'clIncludePermissionsForView'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clIncludeRemoved'
--
-- * 'clSupportsTeamDrives'
--
-- * 'clDriveId'
changesList
    :: Text -- ^ 'clPageToken'
    -> ChangesList
changesList pClPageToken_ =
  ChangesList'
    { _clIncludeTeamDriveItems = False
    , _clIncludeCorpusRemovals = False
    , _clTeamDriveId = Nothing
    , _clRestrictToMyDrive = False
    , _clSpaces = "drive"
    , _clIncludeItemsFromAllDrives = False
    , _clSupportsAllDrives = False
    , _clIncludePermissionsForView = Nothing
    , _clPageToken = pClPageToken_
    , _clPageSize = 100
    , _clIncludeRemoved = True
    , _clSupportsTeamDrives = False
    , _clDriveId = Nothing
    }


-- | Deprecated use includeItemsFromAllDrives instead.
clIncludeTeamDriveItems :: Lens' ChangesList Bool
clIncludeTeamDriveItems
  = lens _clIncludeTeamDriveItems
      (\ s a -> s{_clIncludeTeamDriveItems = a})

-- | Whether changes should include the file resource if the file is still
-- accessible by the user at the time of the request, even when a file was
-- removed from the list of changes and there will be no further change
-- entries for this file.
clIncludeCorpusRemovals :: Lens' ChangesList Bool
clIncludeCorpusRemovals
  = lens _clIncludeCorpusRemovals
      (\ s a -> s{_clIncludeCorpusRemovals = a})

-- | Deprecated use driveId instead.
clTeamDriveId :: Lens' ChangesList (Maybe Text)
clTeamDriveId
  = lens _clTeamDriveId
      (\ s a -> s{_clTeamDriveId = a})

-- | Whether to restrict the results to changes inside the My Drive
-- hierarchy. This omits changes to files such as those in the Application
-- Data folder or shared files which have not been added to My Drive.
clRestrictToMyDrive :: Lens' ChangesList Bool
clRestrictToMyDrive
  = lens _clRestrictToMyDrive
      (\ s a -> s{_clRestrictToMyDrive = a})

-- | A comma-separated list of spaces to query within the user corpus.
-- Supported values are \'drive\', \'appDataFolder\' and \'photos\'.
clSpaces :: Lens' ChangesList Text
clSpaces = lens _clSpaces (\ s a -> s{_clSpaces = a})

-- | Whether both My Drive and shared drive items should be included in
-- results.
clIncludeItemsFromAllDrives :: Lens' ChangesList Bool
clIncludeItemsFromAllDrives
  = lens _clIncludeItemsFromAllDrives
      (\ s a -> s{_clIncludeItemsFromAllDrives = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
clSupportsAllDrives :: Lens' ChangesList Bool
clSupportsAllDrives
  = lens _clSupportsAllDrives
      (\ s a -> s{_clSupportsAllDrives = a})

-- | Specifies which additional view\'s permissions to include in the
-- response. Only \'published\' is supported.
clIncludePermissionsForView :: Lens' ChangesList (Maybe Text)
clIncludePermissionsForView
  = lens _clIncludePermissionsForView
      (\ s a -> s{_clIncludePermissionsForView = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response or to the response from the getStartPageToken method.
clPageToken :: Lens' ChangesList Text
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | The maximum number of changes to return per page.
clPageSize :: Lens' ChangesList Int32
clPageSize
  = lens _clPageSize (\ s a -> s{_clPageSize = a}) .
      _Coerce

-- | Whether to include changes indicating that items have been removed from
-- the list of changes, for example by deletion or loss of access.
clIncludeRemoved :: Lens' ChangesList Bool
clIncludeRemoved
  = lens _clIncludeRemoved
      (\ s a -> s{_clIncludeRemoved = a})

-- | Deprecated use supportsAllDrives instead.
clSupportsTeamDrives :: Lens' ChangesList Bool
clSupportsTeamDrives
  = lens _clSupportsTeamDrives
      (\ s a -> s{_clSupportsTeamDrives = a})

-- | The shared drive from which changes are returned. If specified the
-- change IDs will be reflective of the shared drive; use the combined
-- drive ID and change ID as an identifier.
clDriveId :: Lens' ChangesList (Maybe Text)
clDriveId
  = lens _clDriveId (\ s a -> s{_clDriveId = a})

instance GoogleRequest ChangesList where
        type Rs ChangesList = ChangeList
        type Scopes ChangesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ChangesList'{..}
          = go (Just _clPageToken)
              (Just _clIncludeTeamDriveItems)
              (Just _clIncludeCorpusRemovals)
              _clTeamDriveId
              (Just _clRestrictToMyDrive)
              (Just _clSpaces)
              (Just _clIncludeItemsFromAllDrives)
              (Just _clSupportsAllDrives)
              _clIncludePermissionsForView
              (Just _clPageSize)
              (Just _clIncludeRemoved)
              (Just _clSupportsTeamDrives)
              _clDriveId
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
