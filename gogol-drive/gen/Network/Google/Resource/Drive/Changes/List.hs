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
-- Lists changes for a user.
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
    , clRestrictToMyDrive
    , clSpaces
    , clPageToken
    , clPageSize
    , clIncludeRemoved
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.list@ method which the
-- 'ChangesList' request conforms to.
type ChangesListResource =
     "drive" :>
       "v3" :>
         "changes" :>
           QueryParam "pageToken" Text :>
             QueryParam "restrictToMyDrive" Bool :>
               QueryParam "spaces" Text :>
                 QueryParam "pageSize" (Textual Int32) :>
                   QueryParam "includeRemoved" Bool :>
                     QueryParam "alt" AltJSON :> Get '[JSON] ChangeList

-- | Lists changes for a user.
--
-- /See:/ 'changesList' smart constructor.
data ChangesList = ChangesList
    { _clRestrictToMyDrive :: !Bool
    , _clSpaces            :: !Text
    , _clPageToken         :: !Text
    , _clPageSize          :: !(Textual Int32)
    , _clIncludeRemoved    :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clRestrictToMyDrive'
--
-- * 'clSpaces'
--
-- * 'clPageToken'
--
-- * 'clPageSize'
--
-- * 'clIncludeRemoved'
changesList
    :: Text -- ^ 'clPageToken'
    -> ChangesList
changesList pClPageToken_ =
    ChangesList
    { _clRestrictToMyDrive = False
    , _clSpaces = "drive"
    , _clPageToken = pClPageToken_
    , _clPageSize = 100
    , _clIncludeRemoved = True
    }

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

-- | Whether to include changes indicating that items have left the view of
-- the changes list, for example by deletion or lost access.
clIncludeRemoved :: Lens' ChangesList Bool
clIncludeRemoved
  = lens _clIncludeRemoved
      (\ s a -> s{_clIncludeRemoved = a})

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
        requestClient ChangesList{..}
          = go (Just _clPageToken) (Just _clRestrictToMyDrive)
              (Just _clSpaces)
              (Just _clPageSize)
              (Just _clIncludeRemoved)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
