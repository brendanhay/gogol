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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s files.
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
    , flProjection
    , flCorpus
    , flPageToken
    , flMaxResults
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.files.list@ method which the
-- 'FilesList' request conforms to.
type FilesListResource =
     "files" :>
       QueryParam "orderBy" Text :>
         QueryParam "q" Text :>
           QueryParam "spaces" Text :>
             QueryParam "projection" FilesListProjection :>
               QueryParam "corpus" FilesListCorpus :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "alt" AltJSON :> Get '[JSON] FileList

-- | Lists the user\'s files.
--
-- /See:/ 'filesList' smart constructor.
data FilesList = FilesList
    { _flOrderBy    :: !(Maybe Text)
    , _flQ          :: !(Maybe Text)
    , _flSpaces     :: !(Maybe Text)
    , _flProjection :: !(Maybe FilesListProjection)
    , _flCorpus     :: !(Maybe FilesListCorpus)
    , _flPageToken  :: !(Maybe Text)
    , _flMaxResults :: !Int32
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
-- * 'flProjection'
--
-- * 'flCorpus'
--
-- * 'flPageToken'
--
-- * 'flMaxResults'
filesList
    :: FilesList
filesList =
    FilesList
    { _flOrderBy = Nothing
    , _flQ = Nothing
    , _flSpaces = Nothing
    , _flProjection = Nothing
    , _flCorpus = Nothing
    , _flPageToken = Nothing
    , _flMaxResults = 100
    }

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
flOrderBy :: Lens' FilesList (Maybe Text)
flOrderBy
  = lens _flOrderBy (\ s a -> s{_flOrderBy = a})

-- | Query string for searching files.
flQ :: Lens' FilesList (Maybe Text)
flQ = lens _flQ (\ s a -> s{_flQ = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
flSpaces :: Lens' FilesList (Maybe Text)
flSpaces = lens _flSpaces (\ s a -> s{_flSpaces = a})

-- | This parameter is deprecated and has no function.
flProjection :: Lens' FilesList (Maybe FilesListProjection)
flProjection
  = lens _flProjection (\ s a -> s{_flProjection = a})

-- | The body of items (files\/documents) to which the query applies.
flCorpus :: Lens' FilesList (Maybe FilesListCorpus)
flCorpus = lens _flCorpus (\ s a -> s{_flCorpus = a})

-- | Page token for files.
flPageToken :: Lens' FilesList (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | Maximum number of files to return.
flMaxResults :: Lens' FilesList Int32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

instance GoogleRequest FilesList where
        type Rs FilesList = FileList
        requestClient FilesList{..}
          = go _flOrderBy _flQ _flSpaces _flProjection
              _flCorpus
              _flPageToken
              (Just _flMaxResults)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy FilesListResource)
                      mempty
