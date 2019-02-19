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
-- Module      : Network.Google.Resource.Books.Familysharing.Unshare
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates revoking content that has already been shared with the user\'s
-- family. Empty response indicates success.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.familysharing.unshare@.
module Network.Google.Resource.Books.Familysharing.Unshare
    (
    -- * REST Resource
      FamilysharingUnshareResource

    -- * Creating a Request
    , familysharingUnshare
    , FamilysharingUnshare

    -- * Request Lenses
    , fuVolumeId
    , fuSource
    , fuDocId
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @books.familysharing.unshare@ method which the
-- 'FamilysharingUnshare' request conforms to.
type FamilysharingUnshareResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "unshare" :>
             QueryParam "volumeId" Text :>
               QueryParam "source" Text :>
                 QueryParam "docId" Text :>
                   QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Initiates revoking content that has already been shared with the user\'s
-- family. Empty response indicates success.
--
-- /See:/ 'familysharingUnshare' smart constructor.
data FamilysharingUnshare =
  FamilysharingUnshare'
    { _fuVolumeId :: !(Maybe Text)
    , _fuSource   :: !(Maybe Text)
    , _fuDocId    :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'FamilysharingUnshare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuVolumeId'
--
-- * 'fuSource'
--
-- * 'fuDocId'
familysharingUnshare
    :: FamilysharingUnshare
familysharingUnshare =
  FamilysharingUnshare'
    {_fuVolumeId = Nothing, _fuSource = Nothing, _fuDocId = Nothing}

-- | The volume to unshare.
fuVolumeId :: Lens' FamilysharingUnshare (Maybe Text)
fuVolumeId
  = lens _fuVolumeId (\ s a -> s{_fuVolumeId = a})

-- | String to identify the originator of this request.
fuSource :: Lens' FamilysharingUnshare (Maybe Text)
fuSource = lens _fuSource (\ s a -> s{_fuSource = a})

-- | The docid to unshare.
fuDocId :: Lens' FamilysharingUnshare (Maybe Text)
fuDocId = lens _fuDocId (\ s a -> s{_fuDocId = a})

instance GoogleRequest FamilysharingUnshare where
        type Rs FamilysharingUnshare = ()
        type Scopes FamilysharingUnshare =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingUnshare'{..}
          = go _fuVolumeId _fuSource _fuDocId (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingUnshareResource)
                      mempty
