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
    , flOrderBy
    , flQ
    , flSpaces
    , flCorpus
    , flPageToken
    , flPageSize
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.list@ method which the
-- 'FilesList' request conforms to.
type FilesListResource =
     "drive" :>
       "v3" :>
         "files" :>
           QueryParam "orderBy" Text :>
             QueryParam "q" Text :>
               QueryParam "spaces" Text :>
                 QueryParam "corpus" FilesListCorpus :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "alt" AltJSON :> Get '[JSON] FileList

-- | Lists or searches files.
--
-- /See:/ 'filesList' smart constructor.
data FilesList = FilesList
    { _flOrderBy   :: !(Maybe Text)
    , _flQ         :: !(Maybe Text)
    , _flSpaces    :: !Text
    , _flCorpus    :: !FilesListCorpus
    , _flPageToken :: !(Maybe Text)
    , _flPageSize  :: !(Textual Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flOrderBy'
--
-- * 'flQ'
--
-- * 'flSpaces'
--
-- * 'flCorpus'
--
-- * 'flPageToken'
--
-- * 'flPageSize'
filesList
    :: FilesList
filesList =
    FilesList
    { _flOrderBy = Nothing
    , _flQ = Nothing
    , _flSpaces = "drive"
    , _flCorpus = FLCUser
    , _flPageToken = Nothing
    , _flPageSize = 100
    }

-- | A comma-separated list of sort keys. Valid keys are \'createdTime\',
-- \'folder\', \'modifiedByMeTime\', \'modifiedTime\', \'name\',
-- \'quotaBytesUsed\', \'recency\', \'sharedWithMeTime\', \'starred\', and
-- \'viewedByMeTime\'. Each key sorts ascending by default, but may be
-- reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedTime desc,name. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
flOrderBy :: Lens' FilesList (Maybe Text)
flOrderBy
  = lens _flOrderBy (\ s a -> s{_flOrderBy = a})

-- | A query for filtering the file results. See the \"Search for Files\"
-- guide for supported syntax.
flQ :: Lens' FilesList (Maybe Text)
flQ = lens _flQ (\ s a -> s{_flQ = a})

-- | A comma-separated list of spaces to query within the corpus. Supported
-- values are \'drive\', \'appDataFolder\' and \'photos\'.
flSpaces :: Lens' FilesList Text
flSpaces = lens _flSpaces (\ s a -> s{_flSpaces = a})

-- | The source of files to list.
flCorpus :: Lens' FilesList FilesListCorpus
flCorpus = lens _flCorpus (\ s a -> s{_flCorpus = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response.
flPageToken :: Lens' FilesList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The maximum number of files to return per page.
flPageSize :: Lens' FilesList Int32
flPageSize
  = lens _flPageSize (\ s a -> s{_flPageSize = a}) .
      _Coerce

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
        requestClient FilesList{..}
          = go _flOrderBy _flQ (Just _flSpaces)
              (Just _flCorpus)
              _flPageToken
              (Just _flPageSize)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesListResource)
                      mempty
