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
-- Module      : Network.Google.Resource.Drive.Changes.Watch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Subscribes to changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.watch@.
module Network.Google.Resource.Drive.Changes.Watch
    (
    -- * REST Resource
      ChangesWatchResource

    -- * Creating a Request
    , changesWatch
    , ChangesWatch

    -- * Request Lenses
    , cwIncludeTeamDriveItems
    , cwPayload
    , cwIncludeCorpusRemovals
    , cwTeamDriveId
    , cwRestrictToMyDrive
    , cwSpaces
    , cwPageToken
    , cwPageSize
    , cwIncludeRemoved
    , cwSupportsTeamDrives
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.watch@ method which the
-- 'ChangesWatch' request conforms to.
type ChangesWatchResource =
     "drive" :>
       "v3" :>
         "changes" :>
           "watch" :>
             QueryParam "pageToken" Text :>
               QueryParam "includeTeamDriveItems" Bool :>
                 QueryParam "includeCorpusRemovals" Bool :>
                   QueryParam "teamDriveId" Text :>
                     QueryParam "restrictToMyDrive" Bool :>
                       QueryParam "spaces" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "includeRemoved" Bool :>
                             QueryParam "supportsTeamDrives" Bool :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Subscribes to changes for a user.
--
-- /See:/ 'changesWatch' smart constructor.
data ChangesWatch =
  ChangesWatch'
    { _cwIncludeTeamDriveItems :: !Bool
    , _cwPayload               :: !Channel
    , _cwIncludeCorpusRemovals :: !Bool
    , _cwTeamDriveId           :: !(Maybe Text)
    , _cwRestrictToMyDrive     :: !Bool
    , _cwSpaces                :: !Text
    , _cwPageToken             :: !Text
    , _cwPageSize              :: !(Textual Int32)
    , _cwIncludeRemoved        :: !Bool
    , _cwSupportsTeamDrives    :: !Bool
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ChangesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwIncludeTeamDriveItems'
--
-- * 'cwPayload'
--
-- * 'cwIncludeCorpusRemovals'
--
-- * 'cwTeamDriveId'
--
-- * 'cwRestrictToMyDrive'
--
-- * 'cwSpaces'
--
-- * 'cwPageToken'
--
-- * 'cwPageSize'
--
-- * 'cwIncludeRemoved'
--
-- * 'cwSupportsTeamDrives'
changesWatch
    :: Channel -- ^ 'cwPayload'
    -> Text -- ^ 'cwPageToken'
    -> ChangesWatch
changesWatch pCwPayload_ pCwPageToken_ =
  ChangesWatch'
    { _cwIncludeTeamDriveItems = False
    , _cwPayload = pCwPayload_
    , _cwIncludeCorpusRemovals = False
    , _cwTeamDriveId = Nothing
    , _cwRestrictToMyDrive = False
    , _cwSpaces = "drive"
    , _cwPageToken = pCwPageToken_
    , _cwPageSize = 100
    , _cwIncludeRemoved = True
    , _cwSupportsTeamDrives = False
    }

-- | Whether Team Drive files or changes should be included in results.
cwIncludeTeamDriveItems :: Lens' ChangesWatch Bool
cwIncludeTeamDriveItems
  = lens _cwIncludeTeamDriveItems
      (\ s a -> s{_cwIncludeTeamDriveItems = a})

-- | Multipart request metadata.
cwPayload :: Lens' ChangesWatch Channel
cwPayload
  = lens _cwPayload (\ s a -> s{_cwPayload = a})

-- | Whether changes should include the file resource if the file is still
-- accessible by the user at the time of the request, even when a file was
-- removed from the list of changes and there will be no further change
-- entries for this file.
cwIncludeCorpusRemovals :: Lens' ChangesWatch Bool
cwIncludeCorpusRemovals
  = lens _cwIncludeCorpusRemovals
      (\ s a -> s{_cwIncludeCorpusRemovals = a})

-- | The Team Drive from which changes will be returned. If specified the
-- change IDs will be reflective of the Team Drive; use the combined Team
-- Drive ID and change ID as an identifier.
cwTeamDriveId :: Lens' ChangesWatch (Maybe Text)
cwTeamDriveId
  = lens _cwTeamDriveId
      (\ s a -> s{_cwTeamDriveId = a})

-- | Whether to restrict the results to changes inside the My Drive
-- hierarchy. This omits changes to files such as those in the Application
-- Data folder or shared files which have not been added to My Drive.
cwRestrictToMyDrive :: Lens' ChangesWatch Bool
cwRestrictToMyDrive
  = lens _cwRestrictToMyDrive
      (\ s a -> s{_cwRestrictToMyDrive = a})

-- | A comma-separated list of spaces to query within the user corpus.
-- Supported values are \'drive\', \'appDataFolder\' and \'photos\'.
cwSpaces :: Lens' ChangesWatch Text
cwSpaces = lens _cwSpaces (\ s a -> s{_cwSpaces = a})

-- | The token for continuing a previous list request on the next page. This
-- should be set to the value of \'nextPageToken\' from the previous
-- response or to the response from the getStartPageToken method.
cwPageToken :: Lens' ChangesWatch Text
cwPageToken
  = lens _cwPageToken (\ s a -> s{_cwPageToken = a})

-- | The maximum number of changes to return per page.
cwPageSize :: Lens' ChangesWatch Int32
cwPageSize
  = lens _cwPageSize (\ s a -> s{_cwPageSize = a}) .
      _Coerce

-- | Whether to include changes indicating that items have been removed from
-- the list of changes, for example by deletion or loss of access.
cwIncludeRemoved :: Lens' ChangesWatch Bool
cwIncludeRemoved
  = lens _cwIncludeRemoved
      (\ s a -> s{_cwIncludeRemoved = a})

-- | Whether the requesting application supports Team Drives.
cwSupportsTeamDrives :: Lens' ChangesWatch Bool
cwSupportsTeamDrives
  = lens _cwSupportsTeamDrives
      (\ s a -> s{_cwSupportsTeamDrives = a})

instance GoogleRequest ChangesWatch where
        type Rs ChangesWatch = Channel
        type Scopes ChangesWatch =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ChangesWatch'{..}
          = go (Just _cwPageToken)
              (Just _cwIncludeTeamDriveItems)
              (Just _cwIncludeCorpusRemovals)
              _cwTeamDriveId
              (Just _cwRestrictToMyDrive)
              (Just _cwSpaces)
              (Just _cwPageSize)
              (Just _cwIncludeRemoved)
              (Just _cwSupportsTeamDrives)
              (Just AltJSON)
              _cwPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesWatchResource)
                      mempty
