{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryBookshelvesVolumesList@.
module Network.Google.Resource.Books.MyLibrary.Bookshelves.Volumes.List
    (
    -- * REST Resource
      MyLibraryBookshelvesVolumesListResource

    -- * Creating a Request
    , myLibraryBookshelvesVolumesList'
    , MyLibraryBookshelvesVolumesList'

    -- * Request Lenses
    , mlbvlQuotaUser
    , mlbvlPrettyPrint
    , mlbvlCountry
    , mlbvlUserIP
    , mlbvlQ
    , mlbvlShelf
    , mlbvlKey
    , mlbvlSource
    , mlbvlProjection
    , mlbvlOAuthToken
    , mlbvlStartIndex
    , mlbvlMaxResults
    , mlbvlShowPreOrders
    , mlbvlFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryBookshelvesVolumesList@ which the
-- 'MyLibraryBookshelvesVolumesList'' request conforms to.
type MyLibraryBookshelvesVolumesListResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "volumes" :>
             QueryParam "country" Text :>
               QueryParam "q" Text :>
                 QueryParam "source" Text :>
                   QueryParam "projection" Projection :>
                     QueryParam "startIndex" Word32 :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "showPreorders" Bool :>
                           QueryParam "quotaUser" Text :>
                             QueryParam "prettyPrint" Bool :>
                               QueryParam "userIp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "key" Key :>
                                     QueryParam "oauth_token" OAuthToken :>
                                       QueryParam "alt" AltJSON :>
                                         Get '[JSON] Volumes

-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ 'myLibraryBookshelvesVolumesList'' smart constructor.
data MyLibraryBookshelvesVolumesList' = MyLibraryBookshelvesVolumesList'
    { _mlbvlQuotaUser     :: !(Maybe Text)
    , _mlbvlPrettyPrint   :: !Bool
    , _mlbvlCountry       :: !(Maybe Text)
    , _mlbvlUserIP        :: !(Maybe Text)
    , _mlbvlQ             :: !(Maybe Text)
    , _mlbvlShelf         :: !Text
    , _mlbvlKey           :: !(Maybe Key)
    , _mlbvlSource        :: !(Maybe Text)
    , _mlbvlProjection    :: !(Maybe Projection)
    , _mlbvlOAuthToken    :: !(Maybe OAuthToken)
    , _mlbvlStartIndex    :: !(Maybe Word32)
    , _mlbvlMaxResults    :: !(Maybe Word32)
    , _mlbvlShowPreOrders :: !(Maybe Bool)
    , _mlbvlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryBookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlbvlQuotaUser'
--
-- * 'mlbvlPrettyPrint'
--
-- * 'mlbvlCountry'
--
-- * 'mlbvlUserIP'
--
-- * 'mlbvlQ'
--
-- * 'mlbvlShelf'
--
-- * 'mlbvlKey'
--
-- * 'mlbvlSource'
--
-- * 'mlbvlProjection'
--
-- * 'mlbvlOAuthToken'
--
-- * 'mlbvlStartIndex'
--
-- * 'mlbvlMaxResults'
--
-- * 'mlbvlShowPreOrders'
--
-- * 'mlbvlFields'
myLibraryBookshelvesVolumesList'
    :: Text -- ^ 'shelf'
    -> MyLibraryBookshelvesVolumesList'
myLibraryBookshelvesVolumesList' pMlbvlShelf_ =
    MyLibraryBookshelvesVolumesList'
    { _mlbvlQuotaUser = Nothing
    , _mlbvlPrettyPrint = True
    , _mlbvlCountry = Nothing
    , _mlbvlUserIP = Nothing
    , _mlbvlQ = Nothing
    , _mlbvlShelf = pMlbvlShelf_
    , _mlbvlKey = Nothing
    , _mlbvlSource = Nothing
    , _mlbvlProjection = Nothing
    , _mlbvlOAuthToken = Nothing
    , _mlbvlStartIndex = Nothing
    , _mlbvlMaxResults = Nothing
    , _mlbvlShowPreOrders = Nothing
    , _mlbvlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlbvlQuotaUser :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlQuotaUser
  = lens _mlbvlQuotaUser
      (\ s a -> s{_mlbvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlbvlPrettyPrint :: Lens' MyLibraryBookshelvesVolumesList' Bool
mlbvlPrettyPrint
  = lens _mlbvlPrettyPrint
      (\ s a -> s{_mlbvlPrettyPrint = a})

-- | ISO-3166-1 code to override the IP-based location.
mlbvlCountry :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlCountry
  = lens _mlbvlCountry (\ s a -> s{_mlbvlCountry = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlbvlUserIP :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlUserIP
  = lens _mlbvlUserIP (\ s a -> s{_mlbvlUserIP = a})

-- | Full-text search query string in this bookshelf.
mlbvlQ :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlQ = lens _mlbvlQ (\ s a -> s{_mlbvlQ = a})

-- | The bookshelf ID or name retrieve volumes for.
mlbvlShelf :: Lens' MyLibraryBookshelvesVolumesList' Text
mlbvlShelf
  = lens _mlbvlShelf (\ s a -> s{_mlbvlShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlbvlKey :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Key)
mlbvlKey = lens _mlbvlKey (\ s a -> s{_mlbvlKey = a})

-- | String to identify the originator of this request.
mlbvlSource :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlSource
  = lens _mlbvlSource (\ s a -> s{_mlbvlSource = a})

-- | Restrict information returned to a set of selected fields.
mlbvlProjection :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Projection)
mlbvlProjection
  = lens _mlbvlProjection
      (\ s a -> s{_mlbvlProjection = a})

-- | OAuth 2.0 token for the current user.
mlbvlOAuthToken :: Lens' MyLibraryBookshelvesVolumesList' (Maybe OAuthToken)
mlbvlOAuthToken
  = lens _mlbvlOAuthToken
      (\ s a -> s{_mlbvlOAuthToken = a})

-- | Index of the first element to return (starts at 0)
mlbvlStartIndex :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Word32)
mlbvlStartIndex
  = lens _mlbvlStartIndex
      (\ s a -> s{_mlbvlStartIndex = a})

-- | Maximum number of results to return
mlbvlMaxResults :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Word32)
mlbvlMaxResults
  = lens _mlbvlMaxResults
      (\ s a -> s{_mlbvlMaxResults = a})

-- | Set to true to show pre-ordered books. Defaults to false.
mlbvlShowPreOrders :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Bool)
mlbvlShowPreOrders
  = lens _mlbvlShowPreOrders
      (\ s a -> s{_mlbvlShowPreOrders = a})

-- | Selector specifying which fields to include in a partial response.
mlbvlFields :: Lens' MyLibraryBookshelvesVolumesList' (Maybe Text)
mlbvlFields
  = lens _mlbvlFields (\ s a -> s{_mlbvlFields = a})

instance GoogleAuth MyLibraryBookshelvesVolumesList'
         where
        authKey = mlbvlKey . _Just
        authToken = mlbvlOAuthToken . _Just

instance GoogleRequest
         MyLibraryBookshelvesVolumesList' where
        type Rs MyLibraryBookshelvesVolumesList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyLibraryBookshelvesVolumesList'{..}
          = go _mlbvlShelf _mlbvlCountry _mlbvlQ _mlbvlSource
              _mlbvlProjection
              _mlbvlStartIndex
              _mlbvlMaxResults
              _mlbvlShowPreOrders
              _mlbvlQuotaUser
              (Just _mlbvlPrettyPrint)
              _mlbvlUserIP
              _mlbvlFields
              _mlbvlKey
              _mlbvlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MyLibraryBookshelvesVolumesListResource)
                      r
                      u
