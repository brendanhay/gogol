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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the changes for a user.
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
    , clIncludeSubscribed
    , clStartChangeId
    , clSpaces
    , clPageToken
    , clMaxResults
    , clIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.changes.list@ method which the
-- 'ChangesList' request conforms to.
type ChangesListResource =
     "changes" :>
       QueryParam "includeSubscribed" Bool :>
         QueryParam "startChangeId" Int64 :>
           QueryParam "spaces" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Int32 :>
                 QueryParam "includeDeleted" Bool :>
                   QueryParam "alt" AltJSON :> Get '[JSON] ChangeList

-- | Lists the changes for a user.
--
-- /See:/ 'changesList' smart constructor.
data ChangesList = ChangesList
    { _clIncludeSubscribed :: !Bool
    , _clStartChangeId     :: !(Maybe Int64)
    , _clSpaces            :: !(Maybe Text)
    , _clPageToken         :: !(Maybe Text)
    , _clMaxResults        :: !Int32
    , _clIncludeDeleted    :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clIncludeSubscribed'
--
-- * 'clStartChangeId'
--
-- * 'clSpaces'
--
-- * 'clPageToken'
--
-- * 'clMaxResults'
--
-- * 'clIncludeDeleted'
changesList
    :: ChangesList
changesList =
    ChangesList
    { _clIncludeSubscribed = True
    , _clStartChangeId = Nothing
    , _clSpaces = Nothing
    , _clPageToken = Nothing
    , _clMaxResults = 100
    , _clIncludeDeleted = True
    }

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
clIncludeSubscribed :: Lens' ChangesList Bool
clIncludeSubscribed
  = lens _clIncludeSubscribed
      (\ s a -> s{_clIncludeSubscribed = a})

-- | Change ID to start listing changes from.
clStartChangeId :: Lens' ChangesList (Maybe Int64)
clStartChangeId
  = lens _clStartChangeId
      (\ s a -> s{_clStartChangeId = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
clSpaces :: Lens' ChangesList (Maybe Text)
clSpaces = lens _clSpaces (\ s a -> s{_clSpaces = a})

-- | Page token for changes.
clPageToken :: Lens' ChangesList (Maybe Text)
clPageToken
  = lens _clPageToken (\ s a -> s{_clPageToken = a})

-- | Maximum number of changes to return.
clMaxResults :: Lens' ChangesList Int32
clMaxResults
  = lens _clMaxResults (\ s a -> s{_clMaxResults = a})

-- | Whether to include deleted items.
clIncludeDeleted :: Lens' ChangesList Bool
clIncludeDeleted
  = lens _clIncludeDeleted
      (\ s a -> s{_clIncludeDeleted = a})

instance GoogleRequest ChangesList where
        type Rs ChangesList = ChangeList
        requestClient ChangesList{..}
          = go (Just _clIncludeSubscribed) _clStartChangeId
              _clSpaces
              _clPageToken
              (Just _clMaxResults)
              (Just _clIncludeDeleted)
              (Just AltJSON)
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
