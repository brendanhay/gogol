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
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Subscribe to changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesWatch@.
module Network.Google.Resource.Drive.Changes.Watch
    (
    -- * REST Resource
      ChangesWatchResource

    -- * Creating a Request
    , changesWatch'
    , ChangesWatch'

    -- * Request Lenses
    , cwIncludeSubscribed
    , cwStartChangeId
    , cwPayload
    , cwSpaces
    , cwPageToken
    , cwMaxResults
    , cwIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesWatch@ method which the
-- 'ChangesWatch'' request conforms to.
type ChangesWatchResource =
     "changes" :>
       "watch" :>
         QueryParam "includeSubscribed" Bool :>
           QueryParam "startChangeId" Int64 :>
             QueryParam "spaces" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   QueryParam "includeDeleted" Bool :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Subscribe to changes for a user.
--
-- /See:/ 'changesWatch'' smart constructor.
data ChangesWatch' = ChangesWatch'
    { _cwIncludeSubscribed :: !Bool
    , _cwStartChangeId     :: !(Maybe Int64)
    , _cwPayload           :: !Channel
    , _cwSpaces            :: !(Maybe Text)
    , _cwPageToken         :: !(Maybe Text)
    , _cwMaxResults        :: !Int32
    , _cwIncludeDeleted    :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwIncludeSubscribed'
--
-- * 'cwStartChangeId'
--
-- * 'cwPayload'
--
-- * 'cwSpaces'
--
-- * 'cwPageToken'
--
-- * 'cwMaxResults'
--
-- * 'cwIncludeDeleted'
changesWatch'
    :: Channel -- ^ 'payload'
    -> ChangesWatch'
changesWatch' pCwPayload_ =
    ChangesWatch'
    { _cwIncludeSubscribed = True
    , _cwStartChangeId = Nothing
    , _cwPayload = pCwPayload_
    , _cwSpaces = Nothing
    , _cwPageToken = Nothing
    , _cwMaxResults = 100
    , _cwIncludeDeleted = True
    }

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
cwIncludeSubscribed :: Lens' ChangesWatch' Bool
cwIncludeSubscribed
  = lens _cwIncludeSubscribed
      (\ s a -> s{_cwIncludeSubscribed = a})

-- | Change ID to start listing changes from.
cwStartChangeId :: Lens' ChangesWatch' (Maybe Int64)
cwStartChangeId
  = lens _cwStartChangeId
      (\ s a -> s{_cwStartChangeId = a})

-- | Multipart request metadata.
cwPayload :: Lens' ChangesWatch' Channel
cwPayload
  = lens _cwPayload (\ s a -> s{_cwPayload = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
cwSpaces :: Lens' ChangesWatch' (Maybe Text)
cwSpaces = lens _cwSpaces (\ s a -> s{_cwSpaces = a})

-- | Page token for changes.
cwPageToken :: Lens' ChangesWatch' (Maybe Text)
cwPageToken
  = lens _cwPageToken (\ s a -> s{_cwPageToken = a})

-- | Maximum number of changes to return.
cwMaxResults :: Lens' ChangesWatch' Int32
cwMaxResults
  = lens _cwMaxResults (\ s a -> s{_cwMaxResults = a})

-- | Whether to include deleted items.
cwIncludeDeleted :: Lens' ChangesWatch' Bool
cwIncludeDeleted
  = lens _cwIncludeDeleted
      (\ s a -> s{_cwIncludeDeleted = a})

instance GoogleRequest ChangesWatch' where
        type Rs ChangesWatch' = Channel
        requestClient ChangesWatch'{..}
          = go (Just _cwIncludeSubscribed) _cwStartChangeId
              _cwSpaces
              _cwPageToken
              (Just _cwMaxResults)
              (Just _cwIncludeDeleted)
              (Just AltJSON)
              _cwPayload
              driveService
          where go
                  = buildClient (Proxy :: Proxy ChangesWatchResource)
                      mempty
