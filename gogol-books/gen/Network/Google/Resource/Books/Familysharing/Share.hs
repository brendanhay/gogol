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
-- Module      : Network.Google.Resource.Books.Familysharing.Share
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates sharing of the content with the user\'s family. Empty response
-- indicates success.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.familysharing.share@.
module Network.Google.Resource.Books.Familysharing.Share
    (
    -- * REST Resource
      FamilysharingShareResource

    -- * Creating a Request
    , familysharingShare
    , FamilysharingShare

    -- * Request Lenses
    , fsVolumeId
    , fsSource
    , fsDocId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.familysharing.share@ method which the
-- 'FamilysharingShare' request conforms to.
type FamilysharingShareResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "share" :>
             QueryParam "volumeId" Text :>
               QueryParam "source" Text :>
                 QueryParam "docId" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Initiates sharing of the content with the user\'s family. Empty response
-- indicates success.
--
-- /See:/ 'familysharingShare' smart constructor.
data FamilysharingShare =
  FamilysharingShare'
    { _fsVolumeId :: !(Maybe Text)
    , _fsSource   :: !(Maybe Text)
    , _fsDocId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FamilysharingShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fsVolumeId'
--
-- * 'fsSource'
--
-- * 'fsDocId'
familysharingShare
    :: FamilysharingShare
familysharingShare =
  FamilysharingShare'
    {_fsVolumeId = Nothing, _fsSource = Nothing, _fsDocId = Nothing}

-- | The volume to share.
fsVolumeId :: Lens' FamilysharingShare (Maybe Text)
fsVolumeId
  = lens _fsVolumeId (\ s a -> s{_fsVolumeId = a})

-- | String to identify the originator of this request.
fsSource :: Lens' FamilysharingShare (Maybe Text)
fsSource = lens _fsSource (\ s a -> s{_fsSource = a})

-- | The docid to share.
fsDocId :: Lens' FamilysharingShare (Maybe Text)
fsDocId = lens _fsDocId (\ s a -> s{_fsDocId = a})

instance GoogleRequest FamilysharingShare where
        type Rs FamilysharingShare = ()
        type Scopes FamilysharingShare =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingShare'{..}
          = go _fsVolumeId _fsSource _fsDocId (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingShareResource)
                      mempty
