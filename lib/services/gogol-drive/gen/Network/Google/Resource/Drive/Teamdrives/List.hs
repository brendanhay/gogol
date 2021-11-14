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
-- Module      : Network.Google.Resource.Drive.Teamdrives.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.list instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.list@.
module Network.Google.Resource.Drive.Teamdrives.List
    (
    -- * REST Resource
      TeamdrivesListResource

    -- * Creating a Request
    , teamdrivesList
    , TeamdrivesList

    -- * Request Lenses
    , tlQ
    , tlPageToken
    , tlUseDomainAdminAccess
    , tlPageSize
    ) where

import Network.Google.Drive.Types
import Network.Google.Prelude

-- | A resource alias for @drive.teamdrives.list@ method which the
-- 'TeamdrivesList' request conforms to.
type TeamdrivesListResource =
     "drive" :>
       "v3" :>
         "teamdrives" :>
           QueryParam "q" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "useDomainAdminAccess" Bool :>
                 QueryParam "pageSize" (Textual Int32) :>
                   QueryParam "alt" AltJSON :> Get '[JSON] TeamDriveList

-- | Deprecated use drives.list instead.
--
-- /See:/ 'teamdrivesList' smart constructor.
data TeamdrivesList =
  TeamdrivesList'
    { _tlQ :: !(Maybe Text)
    , _tlPageToken :: !(Maybe Text)
    , _tlUseDomainAdminAccess :: !Bool
    , _tlPageSize :: !(Textual Int32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TeamdrivesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQ'
--
-- * 'tlPageToken'
--
-- * 'tlUseDomainAdminAccess'
--
-- * 'tlPageSize'
teamdrivesList
    :: TeamdrivesList
teamdrivesList =
  TeamdrivesList'
    { _tlQ = Nothing
    , _tlPageToken = Nothing
    , _tlUseDomainAdminAccess = False
    , _tlPageSize = 10
    }


-- | Query string for searching Team Drives.
tlQ :: Lens' TeamdrivesList (Maybe Text)
tlQ = lens _tlQ (\ s a -> s{_tlQ = a})

-- | Page token for Team Drives.
tlPageToken :: Lens' TeamdrivesList (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | Issue the request as a domain administrator; if set to true, then all
-- Team Drives of the domain in which the requester is an administrator are
-- returned.
tlUseDomainAdminAccess :: Lens' TeamdrivesList Bool
tlUseDomainAdminAccess
  = lens _tlUseDomainAdminAccess
      (\ s a -> s{_tlUseDomainAdminAccess = a})

-- | Maximum number of Team Drives to return.
tlPageSize :: Lens' TeamdrivesList Int32
tlPageSize
  = lens _tlPageSize (\ s a -> s{_tlPageSize = a}) .
      _Coerce

instance GoogleRequest TeamdrivesList where
        type Rs TeamdrivesList = TeamDriveList
        type Scopes TeamdrivesList =
             '["https://www.googleapis.com/auth/drive",
               "https://www.googleapis.com/auth/drive.readonly"]
        requestClient TeamdrivesList'{..}
          = go _tlQ _tlPageToken (Just _tlUseDomainAdminAccess)
              (Just _tlPageSize)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy TeamdrivesListResource)
                      mempty
