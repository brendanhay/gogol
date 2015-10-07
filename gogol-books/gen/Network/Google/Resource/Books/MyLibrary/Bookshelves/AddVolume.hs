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
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds a volume to a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesAddVolume@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.AddVolume
    (
    -- * REST Resource
      MyLibraryBookshelvesAddVolumeResource

    -- * Creating a Request
    , myLibraryBookshelvesAddVolume'
    , MyLibraryBookshelvesAddVolume'

    -- * Request Lenses
    , mlbavQuotaUser
    , mlbavPrettyPrint
    , mlbavUserIP
    , mlbavReason
    , mlbavShelf
    , mlbavKey
    , mlbavVolumeId
    , mlbavSource
    , mlbavOAuthToken
    , mlbavFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesAddVolume@ method which the
-- 'MyLibraryBookshelvesAddVolume'' request conforms to.
type MyLibraryBookshelvesAddVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "addVolume" :>
             QueryParam "volumeId" Text :>
               QueryParam "reason"
                 MyLibraryBookshelvesAddVolumeReason
                 :>
                 QueryParam "source" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Adds a volume to a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesAddVolume'' smart constructor.
data MyLibraryBookshelvesAddVolume' = MyLibraryBookshelvesAddVolume'
    { _mlbavQuotaUser   :: !(Maybe Text)
    , _mlbavPrettyPrint :: !Bool
    , _mlbavUserIP      :: !(Maybe Text)
    , _mlbavReason      :: !(Maybe MyLibraryBookshelvesAddVolumeReason)
    , _mlbavShelf       :: !Text
    , _mlbavKey         :: !(Maybe AuthKey)
    , _mlbavVolumeId    :: !Text
    , _mlbavSource      :: !(Maybe Text)
    , _mlbavOAuthToken  :: !(Maybe OAuthToken)
    , _mlbavFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesAddVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbavQuotaUser'
--
-- * 'mlbavPrettyPrint'
--
-- * 'mlbavUserIP'
--
-- * 'mlbavReason'
--
-- * 'mlbavShelf'
--
-- * 'mlbavKey'
--
-- * 'mlbavVolumeId'
--
-- * 'mlbavSource'
--
-- * 'mlbavOAuthToken'
--
-- * 'mlbavFields'
myLibraryBookshelvesAddVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> MyLibraryBookshelvesAddVolume'
myLibraryBookshelvesAddVolume' pMlbavShelf_ pMlbavVolumeId_ =
    MyLibraryBookshelvesAddVolume'
    { _mlbavQuotaUser = Nothing
    , _mlbavPrettyPrint = True
    , _mlbavUserIP = Nothing
    , _mlbavReason = Nothing
    , _mlbavShelf = pMlbavShelf_
    , _mlbavKey = Nothing
    , _mlbavVolumeId = pMlbavVolumeId_
    , _mlbavSource = Nothing
    , _mlbavOAuthToken = Nothing
    , _mlbavFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbavQuotaUser :: Lens' MyLibraryBookshelvesAddVolume' (Maybe Text)
mlbavQuotaUser
  = lens _mlbavQuotaUser
      (\ s a -> s{_mlbavQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbavPrettyPrint :: Lens' MyLibraryBookshelvesAddVolume' Bool
mlbavPrettyPrint
  = lens _mlbavPrettyPrint
      (\ s a -> s{_mlbavPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbavUserIP :: Lens' MyLibraryBookshelvesAddVolume' (Maybe Text)
mlbavUserIP
  = lens _mlbavUserIP (\ s a -> s{_mlbavUserIP = a})

-- | The reason for which the book is added to the library.
mlbavReason :: Lens' MyLibraryBookshelvesAddVolume' (Maybe MyLibraryBookshelvesAddVolumeReason)
mlbavReason
  = lens _mlbavReason (\ s a -> s{_mlbavReason = a})

-- | ID of bookshelf to which to add a volume.
mlbavShelf :: Lens' MyLibraryBookshelvesAddVolume' Text
mlbavShelf
  = lens _mlbavShelf (\ s a -> s{_mlbavShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbavKey :: Lens' MyLibraryBookshelvesAddVolume' (Maybe AuthKey)
mlbavKey = lens _mlbavKey (\ s a -> s{_mlbavKey = a})

-- | ID of volume to add.
mlbavVolumeId :: Lens' MyLibraryBookshelvesAddVolume' Text
mlbavVolumeId
  = lens _mlbavVolumeId
      (\ s a -> s{_mlbavVolumeId = a})

-- | String to identify the originator of this request.
mlbavSource :: Lens' MyLibraryBookshelvesAddVolume' (Maybe Text)
mlbavSource
  = lens _mlbavSource (\ s a -> s{_mlbavSource = a})

-- | OAuth 2.0 token for the current user.
mlbavOAuthToken :: Lens' MyLibraryBookshelvesAddVolume' (Maybe OAuthToken)
mlbavOAuthToken
  = lens _mlbavOAuthToken
      (\ s a -> s{_mlbavOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlbavFields :: Lens' MyLibraryBookshelvesAddVolume' (Maybe Text)
mlbavFields
  = lens _mlbavFields (\ s a -> s{_mlbavFields = a})

instance GoogleAuth MyLibraryBookshelvesAddVolume'
         where
        _AuthKey = mlbavKey . _Just
        _AuthToken = mlbavOAuthToken . _Just

instance GoogleRequest MyLibraryBookshelvesAddVolume'
         where
        type Rs MyLibraryBookshelvesAddVolume' = ()
        request = requestWith booksRequest
        requestWith rq MyLibraryBookshelvesAddVolume'{..}
          = go _mlbavShelf (Just _mlbavVolumeId) _mlbavReason
              _mlbavSource
              _mlbavQuotaUser
              (Just _mlbavPrettyPrint)
              _mlbavUserIP
              _mlbavFields
              _mlbavKey
              _mlbavOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy MyLibraryBookshelvesAddVolumeResource)
                      rq
