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
-- Module      : Network.Google.Resource.Drive.Changes.GetStartPageToken
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the starting pageToken for listing future changes.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.changes.getStartPageToken@.
module Network.Google.Resource.Drive.Changes.GetStartPageToken
    (
    -- * REST Resource
      ChangesGetStartPageTokenResource

    -- * Creating a Request
    , changesGetStartPageToken
    , ChangesGetStartPageToken

    -- * Request Lenses
    , cgsptTeamDriveId
    , cgsptSupportsAllDrives
    , cgsptSupportsTeamDrives
    , cgsptDriveId
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.getStartPageToken@ method which the
-- 'ChangesGetStartPageToken' request conforms to.
type ChangesGetStartPageTokenResource =
     "drive" :>
       "v3" :>
         "changes" :>
           "startPageToken" :>
             QueryParam "teamDriveId" Text :>
               QueryParam "supportsAllDrives" Bool :>
                 QueryParam "supportsTeamDrives" Bool :>
                   QueryParam "driveId" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] StartPageToken

-- | Gets the starting pageToken for listing future changes.
--
-- /See:/ 'changesGetStartPageToken' smart constructor.
data ChangesGetStartPageToken =
  ChangesGetStartPageToken'
    { _cgsptTeamDriveId        :: !(Maybe Text)
    , _cgsptSupportsAllDrives  :: !Bool
    , _cgsptSupportsTeamDrives :: !Bool
    , _cgsptDriveId            :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ChangesGetStartPageToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgsptTeamDriveId'
--
-- * 'cgsptSupportsAllDrives'
--
-- * 'cgsptSupportsTeamDrives'
--
-- * 'cgsptDriveId'
changesGetStartPageToken
    :: ChangesGetStartPageToken
changesGetStartPageToken =
  ChangesGetStartPageToken'
    { _cgsptTeamDriveId = Nothing
    , _cgsptSupportsAllDrives = False
    , _cgsptSupportsTeamDrives = False
    , _cgsptDriveId = Nothing
    }


-- | Deprecated use driveId instead.
cgsptTeamDriveId :: Lens' ChangesGetStartPageToken (Maybe Text)
cgsptTeamDriveId
  = lens _cgsptTeamDriveId
      (\ s a -> s{_cgsptTeamDriveId = a})

-- | Whether the requesting application supports both My Drives and shared
-- drives.
cgsptSupportsAllDrives :: Lens' ChangesGetStartPageToken Bool
cgsptSupportsAllDrives
  = lens _cgsptSupportsAllDrives
      (\ s a -> s{_cgsptSupportsAllDrives = a})

-- | Deprecated use supportsAllDrives instead.
cgsptSupportsTeamDrives :: Lens' ChangesGetStartPageToken Bool
cgsptSupportsTeamDrives
  = lens _cgsptSupportsTeamDrives
      (\ s a -> s{_cgsptSupportsTeamDrives = a})

-- | The ID of the shared drive for which the starting pageToken for listing
-- future changes from that shared drive will be returned.
cgsptDriveId :: Lens' ChangesGetStartPageToken (Maybe Text)
cgsptDriveId
  = lens _cgsptDriveId (\ s a -> s{_cgsptDriveId = a})

instance GoogleRequest ChangesGetStartPageToken where
        type Rs ChangesGetStartPageToken = StartPageToken
        type Scopes ChangesGetStartPageToken =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.appdata",
               "https://www.googleapis.com/auth/drive.file",
               "https://www.googleapis.com/auth/drive.metadata",
               "https://www.googleapis.com/auth/drive.metadata.readonly",
               "https://www.googleapis.com/auth/drive.photos.readonly",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient ChangesGetStartPageToken'{..}
          = go _cgsptTeamDriveId (Just _cgsptSupportsAllDrives)
              (Just _cgsptSupportsTeamDrives)
              _cgsptDriveId
              (Just AltJSON)
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy ChangesGetStartPageTokenResource)
                      mempty
