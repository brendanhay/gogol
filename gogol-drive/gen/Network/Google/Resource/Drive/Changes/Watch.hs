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
    , cwPayload
    , cwRestrictToMyDrive
    , cwSpaces
    , cwPageToken
    , cwPageSize
    , cwIncludeRemoved
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
               QueryParam "restrictToMyDrive" Bool :>
                 QueryParam "spaces" Text :>
                   QueryParam "pageSize" (Textual Int32) :>
                     QueryParam "includeRemoved" Bool :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Subscribes to changes for a user.
--
-- /See:/ 'changesWatch' smart constructor.
data ChangesWatch = ChangesWatch
    { _cwPayload           :: !Channel
    , _cwRestrictToMyDrive :: !Bool
    , _cwSpaces            :: !Text
    , _cwPageToken         :: !Text
    , _cwPageSize          :: !(Textual Int32)
    , _cwIncludeRemoved    :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesWatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwPayload'
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
changesWatch
    :: Channel -- ^ 'cwPayload'
    -> Text -- ^ 'cwPageToken'
    -> ChangesWatch
changesWatch pCwPayload_ pCwPageToken_ =
    ChangesWatch
    { _cwPayload = pCwPayload_
    , _cwRestrictToMyDrive = False
    , _cwSpaces = "drive"
    , _cwPageToken = pCwPageToken_
    , _cwPageSize = 100
    , _cwIncludeRemoved = True
    }

-- | Multipart request metadata.
cwPayload :: Lens' ChangesWatch Channel
cwPayload
  = lens _cwPayload (\ s a -> s{_cwPayload = a})

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

-- | Whether to include changes indicating that items have left the view of
-- the changes list, for example by deletion or lost access.
cwIncludeRemoved :: Lens' ChangesWatch Bool
cwIncludeRemoved
  = lens _cwIncludeRemoved
      (\ s a -> s{_cwIncludeRemoved = a})

instance GoogleRequest ChangesWatch where
        type Rs ChangesWatch = Channel
        type Scopes ChangesWatch =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.apps.readonly",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ChangesWatch{..}
          = go (Just _cwPageToken) (Just _cwRestrictToMyDrive)
              (Just _cwSpaces)
              (Just _cwPageSize)
              (Just _cwIncludeRemoved)
              (Just AltJSON)
              _cwPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesWatchResource)
                      mempty
