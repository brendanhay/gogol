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
-- | Lists the changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesList@.
module Network.Google.Resource.Drive.Changes.List
    (
    -- * REST Resource
      ChangesListResource

    -- * Creating a Request
    , changesList'
    , ChangesList'

    -- * Request Lenses
    , chaIncludeSubscribed
    , chaStartChangeId
    , chaSpaces
    , chaPageToken
    , chaMaxResults
    , chaIncludeDeleted
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesList@ method which the
-- 'ChangesList'' request conforms to.
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
-- /See:/ 'changesList'' smart constructor.
data ChangesList' = ChangesList'
    { _chaIncludeSubscribed :: !Bool
    , _chaStartChangeId     :: !(Maybe Int64)
    , _chaSpaces            :: !(Maybe Text)
    , _chaPageToken         :: !(Maybe Text)
    , _chaMaxResults        :: !Int32
    , _chaIncludeDeleted    :: !Bool
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chaIncludeSubscribed'
--
-- * 'chaStartChangeId'
--
-- * 'chaSpaces'
--
-- * 'chaPageToken'
--
-- * 'chaMaxResults'
--
-- * 'chaIncludeDeleted'
changesList'
    :: ChangesList'
changesList' =
    ChangesList'
    { _chaIncludeSubscribed = True
    , _chaStartChangeId = Nothing
    , _chaSpaces = Nothing
    , _chaPageToken = Nothing
    , _chaMaxResults = 100
    , _chaIncludeDeleted = True
    }

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
chaIncludeSubscribed :: Lens' ChangesList' Bool
chaIncludeSubscribed
  = lens _chaIncludeSubscribed
      (\ s a -> s{_chaIncludeSubscribed = a})

-- | Change ID to start listing changes from.
chaStartChangeId :: Lens' ChangesList' (Maybe Int64)
chaStartChangeId
  = lens _chaStartChangeId
      (\ s a -> s{_chaStartChangeId = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
chaSpaces :: Lens' ChangesList' (Maybe Text)
chaSpaces
  = lens _chaSpaces (\ s a -> s{_chaSpaces = a})

-- | Page token for changes.
chaPageToken :: Lens' ChangesList' (Maybe Text)
chaPageToken
  = lens _chaPageToken (\ s a -> s{_chaPageToken = a})

-- | Maximum number of changes to return.
chaMaxResults :: Lens' ChangesList' Int32
chaMaxResults
  = lens _chaMaxResults
      (\ s a -> s{_chaMaxResults = a})

-- | Whether to include deleted items.
chaIncludeDeleted :: Lens' ChangesList' Bool
chaIncludeDeleted
  = lens _chaIncludeDeleted
      (\ s a -> s{_chaIncludeDeleted = a})

instance GoogleRequest ChangesList' where
        type Rs ChangesList' = ChangeList
        requestClient ChangesList'{..}
          = go (Just _chaIncludeSubscribed) _chaStartChangeId
              _chaSpaces
              _chaPageToken
              (Just _chaMaxResults)
              (Just _chaIncludeDeleted)
              (Just AltJSON)
              drive
          where go
                  = buildClient (Proxy :: Proxy ChangesListResource)
                      mempty
