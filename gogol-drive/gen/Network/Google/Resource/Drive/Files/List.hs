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
-- Module      : Network.Google.Resource.Drive.Files.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists or searches files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.files.list@.
module Network.Google.Resource.Drive.Files.List
    (
    -- * REST Resource
      FilesListResource

    -- * Creating a Request
    , filesList
    , FilesList

    -- * Request Lenses
    , flCorpora
    , flOrderBy
    , flIncludeTeamDriveItems
    , flQ
    , flTeamDriveId
    , flSpaces
    , flCorpus
    , flPageToken
    , flPageSize
    , flSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.list@ method which the
-- 'FilesList' request conforms to.
type FilesListResource =
     "drive" :>
       "v3" :>
         "files" :>
           QueryParam "corpora" Text :>
             QueryParam "orderBy" Text :>
               QueryParam "includeTeamDriveItems" Bool :>
                 QueryParam "q" Text :>
                   QueryParam "teamDriveId" Text :>
                     QueryParam "spaces" Text :>
                       QueryParam "corpus" FilesListCorpus :>
                         QueryParam "pageToken" Text :>
                           QueryParam "pageSize" (Textual Int32) :>
                             QueryParam "supportsTeamDrives" Bool :>
                               QueryParam "alt" AltJSON :> Get '[JSON] FileList

-- | Lists or searches files.
--
-- /See:/ 'filesList' smart constructor.
data FilesList =
  FilesList'
    { _flCorpora               :: !(Maybe Text)
    , _flOrderBy               :: !(Maybe Text)
    , _flIncludeTeamDriveItems :: !Bool
    , _flQ                     :: !(Maybe Text)
    , _flTeamDriveId           :: !(Maybe Text)
    , _flSpaces                :: !Text
    , _flCorpus                :: !(Maybe FilesListCorpus)
    , _flPageToken             :: !(Maybe Text)
    , _flPageSize              :: !(Textual Int32)
    , _flSupportsTeamDrives    :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flCorpora'
--
-- * 'flOrderBy'
--
-- * 'flIncludeTeamDriveItems'
--
-- * 'flQ'
--
-- * 'flTeamDriveId'
--
-- * 'flSpaces'
--
-- * 'flCorpus'
--
-- * 'flPageToken'
--
-- * 'flPageSize'
--
-- * 'flSupportsTeamDrives'
filesList
    :: FilesList
filesList =
  FilesList'
    { _flCorpora = Nothing
    , _flOrderBy = Nothing
    , _flIncludeTeamDriveItems = False
    , _flQ = Nothing
    , _flTeamDriveId = Nothing
    , _flSpaces = "drive"
    , _flCorpus = Nothing
    , _flPageToken = Nothing
    , _flPageSize = 100
    , _flSupportsTeamDrives = False
    }


-- | Comma-separated list of bodies of items (files\/documents) to which the
-- query applies. Supported bodies are \'user\', \'domain\', \'teamDrive\'
-- and \'allTeamDrives\'. \'allTeamDrives\' must be combined with \'user\';
-- all other values must be used in isolation. Prefer \'user\' or
-- \'teamDrive\' to \'allTeamDrives\' for efficiency.
flCorpora :: Lens' FilesList (Maybe Text)
flCorpora
  = lens _flCorpora (\ s a -> s{_flCorpora = a})

-- | A comma-separated list of sort keys. Valid keys are \'createdTime\',
-- \'folder\', \'modifiedByMeTime\', \'modifiedTime\', \'name\',
-- \'name_natural\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeTime\',
-- \'starred\', and \'viewedByMeTime\'. Each key sorts ascending by
-- default, but may be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedTime desc,name. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
flOrderBy :: Lens' FilesList (Maybe Text)
flOrderBy
  = lens _flOrderBy (\ s a -> s{_flOrderBy = a})

-- | Whether Team Drive items should be included in results.
flIncludeTeamDriveItems :: Lens' FilesList Bool
flIncludeTeamDriveItems
  = lens _flIncludeTeamDriveItems
      (\ s a -> s{_flIncludeTeamDriveItems = a})

-- | A query for filtering the file results. See the \"Search for Files\"
-- guide for supported syntax.
flQ :: Lens' FilesList (Maybe Text)
flQ = lens _flQ (\ s a -> s{_flQ = a})

-- | ID of Team Drive to search.
flTeamDriveId :: Lens' FilesList (Maybe Text)
flTeamDriveId
  = lens _flTeamDriveId
      (\ s a -> s{_flTeamDriveId = a})

-- | A comma-separated list of spaces to query within the corpus. Supported
-- values are \'drive\', \'appDataFolder\' and \'photos\'.
flSpaces :: Lens' FilesList Text
flSpaces = lens _flSpaces (\ s a -> s{_flSpaces = a})

-- | The source of files to list. Deprecated: use \'corpora\' instead.
flCorpus :: Lens' FilesList (Maybe FilesListCorpus)
flCorpus = lens _flCorpus (\ s a -> s{_flCorpus = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
flPageToken :: Lens' FilesList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The maximum number of files to return per page. Partial or empty result
-- pages are possible even before the end of the files list has been
-- reached.
flPageSize :: Lens' FilesList Int32
flPageSize
  = lens _flPageSize (\ s a -> s{_flPageSize = a}) .
      _Coerce

-- | Whether the requesting application supports Team Drives.
flSupportsTeamDrives :: Lens' FilesList Bool
flSupportsTeamDrives
  = lens _flSupportsTeamDrives
      (\ s a -> s{_flSupportsTeamDrives = a})

instance GoogleRequest FilesList where
        type Rs FilesList = FileList
        type Scopes FilesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient FilesList'{..}
          = go _flCorpora _flOrderBy
              (Just _flIncludeTeamDriveItems)
              _flQ
              _flTeamDriveId
              (Just _flSpaces)
              _flCorpus
              _flPageToken
              (Just _flPageSize)
              (Just _flSupportsTeamDrives)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesListResource)
                      mempty
