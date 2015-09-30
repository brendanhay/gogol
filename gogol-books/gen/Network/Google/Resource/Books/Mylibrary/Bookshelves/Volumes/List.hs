{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesVolumesList@.
module Network.Google.Resource.Books.Mylibrary.Bookshelves.Volumes.List
    (
    -- * REST Resource
      MylibraryBookshelvesVolumesListResource

    -- * Creating a Request
    , mylibraryBookshelvesVolumesList'
    , MylibraryBookshelvesVolumesList'

    -- * Request Lenses
    , mbvlQuotaUser
    , mbvlPrettyPrint
    , mbvlCountry
    , mbvlUserIp
    , mbvlQ
    , mbvlShelf
    , mbvlKey
    , mbvlSource
    , mbvlProjection
    , mbvlOauthToken
    , mbvlStartIndex
    , mbvlMaxResults
    , mbvlShowPreorders
    , mbvlFields
    , mbvlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesVolumesList@ which the
-- 'MylibraryBookshelvesVolumesList'' request conforms to.
type MylibraryBookshelvesVolumesListResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "volumes" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "country" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "q" Text :>
                       QueryParam "key" Text :>
                         QueryParam "source" Text :>
                           QueryParam "projection"
                             BooksMylibraryBookshelvesVolumesListProjection
                             :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "startIndex" Word32 :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "showPreorders" Bool :>
                                     QueryParam "fields" Text :>
                                       QueryParam "alt" Alt :>
                                         Get '[JSON] Volumes

-- | Gets volume information for volumes on a bookshelf.
--
-- /See:/ 'mylibraryBookshelvesVolumesList'' smart constructor.
data MylibraryBookshelvesVolumesList' = MylibraryBookshelvesVolumesList'
    { _mbvlQuotaUser     :: !(Maybe Text)
    , _mbvlPrettyPrint   :: !Bool
    , _mbvlCountry       :: !(Maybe Text)
    , _mbvlUserIp        :: !(Maybe Text)
    , _mbvlQ             :: !(Maybe Text)
    , _mbvlShelf         :: !Text
    , _mbvlKey           :: !(Maybe Text)
    , _mbvlSource        :: !(Maybe Text)
    , _mbvlProjection    :: !(Maybe BooksMylibraryBookshelvesVolumesListProjection)
    , _mbvlOauthToken    :: !(Maybe Text)
    , _mbvlStartIndex    :: !(Maybe Word32)
    , _mbvlMaxResults    :: !(Maybe Word32)
    , _mbvlShowPreorders :: !(Maybe Bool)
    , _mbvlFields        :: !(Maybe Text)
    , _mbvlAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbvlQuotaUser'
--
-- * 'mbvlPrettyPrint'
--
-- * 'mbvlCountry'
--
-- * 'mbvlUserIp'
--
-- * 'mbvlQ'
--
-- * 'mbvlShelf'
--
-- * 'mbvlKey'
--
-- * 'mbvlSource'
--
-- * 'mbvlProjection'
--
-- * 'mbvlOauthToken'
--
-- * 'mbvlStartIndex'
--
-- * 'mbvlMaxResults'
--
-- * 'mbvlShowPreorders'
--
-- * 'mbvlFields'
--
-- * 'mbvlAlt'
mylibraryBookshelvesVolumesList'
    :: Text -- ^ 'shelf'
    -> MylibraryBookshelvesVolumesList'
mylibraryBookshelvesVolumesList' pMbvlShelf_ =
    MylibraryBookshelvesVolumesList'
    { _mbvlQuotaUser = Nothing
    , _mbvlPrettyPrint = True
    , _mbvlCountry = Nothing
    , _mbvlUserIp = Nothing
    , _mbvlQ = Nothing
    , _mbvlShelf = pMbvlShelf_
    , _mbvlKey = Nothing
    , _mbvlSource = Nothing
    , _mbvlProjection = Nothing
    , _mbvlOauthToken = Nothing
    , _mbvlStartIndex = Nothing
    , _mbvlMaxResults = Nothing
    , _mbvlShowPreorders = Nothing
    , _mbvlFields = Nothing
    , _mbvlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbvlQuotaUser :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlQuotaUser
  = lens _mbvlQuotaUser
      (\ s a -> s{_mbvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbvlPrettyPrint :: Lens' MylibraryBookshelvesVolumesList' Bool
mbvlPrettyPrint
  = lens _mbvlPrettyPrint
      (\ s a -> s{_mbvlPrettyPrint = a})

-- | ISO-3166-1 code to override the IP-based location.
mbvlCountry :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlCountry
  = lens _mbvlCountry (\ s a -> s{_mbvlCountry = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbvlUserIp :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlUserIp
  = lens _mbvlUserIp (\ s a -> s{_mbvlUserIp = a})

-- | Full-text search query string in this bookshelf.
mbvlQ :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlQ = lens _mbvlQ (\ s a -> s{_mbvlQ = a})

-- | The bookshelf ID or name retrieve volumes for.
mbvlShelf :: Lens' MylibraryBookshelvesVolumesList' Text
mbvlShelf
  = lens _mbvlShelf (\ s a -> s{_mbvlShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbvlKey :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlKey = lens _mbvlKey (\ s a -> s{_mbvlKey = a})

-- | String to identify the originator of this request.
mbvlSource :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlSource
  = lens _mbvlSource (\ s a -> s{_mbvlSource = a})

-- | Restrict information returned to a set of selected fields.
mbvlProjection :: Lens' MylibraryBookshelvesVolumesList' (Maybe BooksMylibraryBookshelvesVolumesListProjection)
mbvlProjection
  = lens _mbvlProjection
      (\ s a -> s{_mbvlProjection = a})

-- | OAuth 2.0 token for the current user.
mbvlOauthToken :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlOauthToken
  = lens _mbvlOauthToken
      (\ s a -> s{_mbvlOauthToken = a})

-- | Index of the first element to return (starts at 0)
mbvlStartIndex :: Lens' MylibraryBookshelvesVolumesList' (Maybe Word32)
mbvlStartIndex
  = lens _mbvlStartIndex
      (\ s a -> s{_mbvlStartIndex = a})

-- | Maximum number of results to return
mbvlMaxResults :: Lens' MylibraryBookshelvesVolumesList' (Maybe Word32)
mbvlMaxResults
  = lens _mbvlMaxResults
      (\ s a -> s{_mbvlMaxResults = a})

-- | Set to true to show pre-ordered books. Defaults to false.
mbvlShowPreorders :: Lens' MylibraryBookshelvesVolumesList' (Maybe Bool)
mbvlShowPreorders
  = lens _mbvlShowPreorders
      (\ s a -> s{_mbvlShowPreorders = a})

-- | Selector specifying which fields to include in a partial response.
mbvlFields :: Lens' MylibraryBookshelvesVolumesList' (Maybe Text)
mbvlFields
  = lens _mbvlFields (\ s a -> s{_mbvlFields = a})

-- | Data format for the response.
mbvlAlt :: Lens' MylibraryBookshelvesVolumesList' Alt
mbvlAlt = lens _mbvlAlt (\ s a -> s{_mbvlAlt = a})

instance GoogleRequest
         MylibraryBookshelvesVolumesList' where
        type Rs MylibraryBookshelvesVolumesList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryBookshelvesVolumesList'{..}
          = go _mbvlQuotaUser (Just _mbvlPrettyPrint)
              _mbvlCountry
              _mbvlUserIp
              _mbvlQ
              _mbvlShelf
              _mbvlKey
              _mbvlSource
              _mbvlProjection
              _mbvlOauthToken
              _mbvlStartIndex
              _mbvlMaxResults
              _mbvlShowPreorders
              _mbvlFields
              (Just _mbvlAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryBookshelvesVolumesListResource)
                      r
                      u
