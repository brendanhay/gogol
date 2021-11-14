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
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Initiates revoking content that has already been shared with the user\'s
-- family. Empty response indicates success.
--
-- /See:/ <https://code.google.com/apis/books/docs/v1/getting_started.html Books API Reference> for @books.familysharing.unshare@.
module Network.Google.Resource.Books.Familysharing.Unshare
    (
    -- * REST Resource
      FamilysharingUnshareResource

    -- * Creating a Request
    , familysharingUnshare
    , FamilysharingUnshare

    -- * Request Lenses
    , fuXgafv
    , fuUploadProtocol
    , fuAccessToken
    , fuUploadType
    , fuVolumeId
    , fuSource
    , fuDocId
    , fuCallback
    ) where

import Network.Google.Books.Types
import Network.Google.Prelude

-- | A resource alias for @books.familysharing.unshare@ method which the
-- 'FamilysharingUnshare' request conforms to.
type FamilysharingUnshareResource =
     "books" :>
       "v1" :>
         "familysharing" :>
           "unshare" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "volumeId" Text :>
                       QueryParam "source" Text :>
                         QueryParam "docId" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Post '[JSON] Empty

-- | Initiates revoking content that has already been shared with the user\'s
-- family. Empty response indicates success.
--
-- /See:/ 'familysharingUnshare' smart constructor.
data FamilysharingUnshare =
  FamilysharingUnshare'
    { _fuXgafv :: !(Maybe Xgafv)
    , _fuUploadProtocol :: !(Maybe Text)
    , _fuAccessToken :: !(Maybe Text)
    , _fuUploadType :: !(Maybe Text)
    , _fuVolumeId :: !(Maybe Text)
    , _fuSource :: !(Maybe Text)
    , _fuDocId :: !(Maybe Text)
    , _fuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'FamilysharingUnshare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fuXgafv'
--
-- * 'fuUploadProtocol'
--
-- * 'fuAccessToken'
--
-- * 'fuUploadType'
--
-- * 'fuVolumeId'
--
-- * 'fuSource'
--
-- * 'fuDocId'
--
-- * 'fuCallback'
familysharingUnshare
    :: FamilysharingUnshare
familysharingUnshare =
  FamilysharingUnshare'
    { _fuXgafv = Nothing
    , _fuUploadProtocol = Nothing
    , _fuAccessToken = Nothing
    , _fuUploadType = Nothing
    , _fuVolumeId = Nothing
    , _fuSource = Nothing
    , _fuDocId = Nothing
    , _fuCallback = Nothing
    }


-- | V1 error format.
fuXgafv :: Lens' FamilysharingUnshare (Maybe Xgafv)
fuXgafv = lens _fuXgafv (\ s a -> s{_fuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
fuUploadProtocol :: Lens' FamilysharingUnshare (Maybe Text)
fuUploadProtocol
  = lens _fuUploadProtocol
      (\ s a -> s{_fuUploadProtocol = a})

-- | OAuth access token.
fuAccessToken :: Lens' FamilysharingUnshare (Maybe Text)
fuAccessToken
  = lens _fuAccessToken
      (\ s a -> s{_fuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
fuUploadType :: Lens' FamilysharingUnshare (Maybe Text)
fuUploadType
  = lens _fuUploadType (\ s a -> s{_fuUploadType = a})

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

-- | JSONP
fuCallback :: Lens' FamilysharingUnshare (Maybe Text)
fuCallback
  = lens _fuCallback (\ s a -> s{_fuCallback = a})

instance GoogleRequest FamilysharingUnshare where
        type Rs FamilysharingUnshare = Empty
        type Scopes FamilysharingUnshare =
             '["https://www.googleapis.com/auth/books"]
        requestClient FamilysharingUnshare'{..}
          = go _fuXgafv _fuUploadProtocol _fuAccessToken
              _fuUploadType
              _fuVolumeId
              _fuSource
              _fuDocId
              _fuCallback
              (Just AltJSON)
              booksService
          where go
                  = buildClient
                      (Proxy :: Proxy FamilysharingUnshareResource)
                      mempty
