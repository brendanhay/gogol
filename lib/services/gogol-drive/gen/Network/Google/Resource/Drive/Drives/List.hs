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
-- Module      : Network.Google.Resource.Drive.Drives.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user\'s shared drives.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.drives.list@.
module Network.Google.Resource.Drive.Drives.List
    (
    -- * REST Resource
      DrivesListResource

    -- * Creating a Request
    , drivesList
    , DrivesList

    -- * Request Lenses
    , dlQ
    , dlPageToken
    , dlUseDomainAdminAccess
    , dlPageSize
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.drives.list@ method which the
-- 'DrivesList' request conforms to.
type DrivesListResource =
     "drive" :>
       "v3" :>
         "drives" :>
           QueryParam "q" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "useDomainAdminAccess" Bool :>
                 QueryParam "pageSize" (Textual Int32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] DriveList

-- | Lists the user\'s shared drives.
--
-- /See:/ 'drivesList' smart constructor.
data DrivesList =
  DrivesList'
    { _dlQ :: !(Maybe Text)
    , _dlPageToken :: !(Maybe Text)
    , _dlUseDomainAdminAccess :: !Bool
    , _dlPageSize :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DrivesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlQ'
--
-- * 'dlPageToken'
--
-- * 'dlUseDomainAdminAccess'
--
-- * 'dlPageSize'
drivesList
    :: DrivesList
drivesList =
  DrivesList'
    { _dlQ = Nothing
    , _dlPageToken = Nothing
    , _dlUseDomainAdminAccess = False
    , _dlPageSize = 10
    }


-- | Query string for searching shared drives.
dlQ :: Lens' DrivesList (Maybe Text)
dlQ = lens _dlQ (\ s a -> s{_dlQ = a})

-- | Page token for shared drives.
dlPageToken :: Lens' DrivesList (Maybe Text)
dlPageToken
  = lens _dlPageToken (\ s a -> s{_dlPageToken = a})

-- | Issue the request as a domain administrator; if set to true, then all
-- shared drives of the domain in which the requester is an administrator
-- are returned.
dlUseDomainAdminAccess :: Lens' DrivesList Bool
dlUseDomainAdminAccess
  = lens _dlUseDomainAdminAccess
      (\ s a -> s{_dlUseDomainAdminAccess = a})

-- | Maximum number of shared drives to return per page.
dlPageSize :: Lens' DrivesList Int32
dlPageSize
  = lens _dlPageSize (\ s a -> s{_dlPageSize = a}) .
      _Coerce

instance GoogleRequest DrivesList where
        type Rs DrivesList = DriveList
        type Scopes DrivesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient DrivesList'{..}
          = go _dlQ _dlPageToken (Just _dlUseDomainAdminAccess)
              (Just _dlPageSize)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy DrivesListResource)
                      mempty
