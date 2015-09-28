{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.bookshelves.volumes.list@.
module Network.Google.API.Books.Bookshelves.Volumes.List
    (
    -- * REST Resource
      BookshelvesVolumesListAPI

    -- * Creating a Request
    , bookshelvesVolumesList'
    , BookshelvesVolumesList'

    -- * Request Lenses
    , bvlQuotaUser
    , bvlPrettyPrint
    , bvlUserIp
    , bvlUserId
    , bvlShelf
    , bvlKey
    , bvlSource
    , bvlOauthToken
    , bvlStartIndex
    , bvlMaxResults
    , bvlShowPreorders
    , bvlFields
    , bvlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.bookshelves.volumes.list which the
-- 'BookshelvesVolumesList'' request conforms to.
type BookshelvesVolumesListAPI =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           Capture "shelf" Text :>
             "volumes" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "source" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "startIndex" Word32 :>
                             QueryParam "maxResults" Word32 :>
                               QueryParam "showPreorders" Bool :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :> Get '[JSON] Volumes

-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesVolumesList'' smart constructor.
data BookshelvesVolumesList' = BookshelvesVolumesList'
    { _bvlQuotaUser     :: !(Maybe Text)
    , _bvlPrettyPrint   :: !Bool
    , _bvlUserIp        :: !(Maybe Text)
    , _bvlUserId        :: !Text
    , _bvlShelf         :: !Text
    , _bvlKey           :: !(Maybe Text)
    , _bvlSource        :: !(Maybe Text)
    , _bvlOauthToken    :: !(Maybe Text)
    , _bvlStartIndex    :: !(Maybe Word32)
    , _bvlMaxResults    :: !(Maybe Word32)
    , _bvlShowPreorders :: !(Maybe Bool)
    , _bvlFields        :: !(Maybe Text)
    , _bvlAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvlQuotaUser'
--
-- * 'bvlPrettyPrint'
--
-- * 'bvlUserIp'
--
-- * 'bvlUserId'
--
-- * 'bvlShelf'
--
-- * 'bvlKey'
--
-- * 'bvlSource'
--
-- * 'bvlOauthToken'
--
-- * 'bvlStartIndex'
--
-- * 'bvlMaxResults'
--
-- * 'bvlShowPreorders'
--
-- * 'bvlFields'
--
-- * 'bvlAlt'
bookshelvesVolumesList'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'shelf'
    -> BookshelvesVolumesList'
bookshelvesVolumesList' pBvlUserId_ pBvlShelf_ =
    BookshelvesVolumesList'
    { _bvlQuotaUser = Nothing
    , _bvlPrettyPrint = True
    , _bvlUserIp = Nothing
    , _bvlUserId = pBvlUserId_
    , _bvlShelf = pBvlShelf_
    , _bvlKey = Nothing
    , _bvlSource = Nothing
    , _bvlOauthToken = Nothing
    , _bvlStartIndex = Nothing
    , _bvlMaxResults = Nothing
    , _bvlShowPreorders = Nothing
    , _bvlFields = Nothing
    , _bvlAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
bvlQuotaUser :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlQuotaUser
  = lens _bvlQuotaUser (\ s a -> s{_bvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
bvlPrettyPrint :: Lens' BookshelvesVolumesList' Bool
bvlPrettyPrint
  = lens _bvlPrettyPrint
      (\ s a -> s{_bvlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
bvlUserIp :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlUserIp
  = lens _bvlUserIp (\ s a -> s{_bvlUserIp = a})

-- | ID of user for whom to retrieve bookshelf volumes.
bvlUserId :: Lens' BookshelvesVolumesList' Text
bvlUserId
  = lens _bvlUserId (\ s a -> s{_bvlUserId = a})

-- | ID of bookshelf to retrieve volumes.
bvlShelf :: Lens' BookshelvesVolumesList' Text
bvlShelf = lens _bvlShelf (\ s a -> s{_bvlShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
bvlKey :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlKey = lens _bvlKey (\ s a -> s{_bvlKey = a})

-- | String to identify the originator of this request.
bvlSource :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlSource
  = lens _bvlSource (\ s a -> s{_bvlSource = a})

-- | OAuth 2.0 token for the current user.
bvlOauthToken :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlOauthToken
  = lens _bvlOauthToken
      (\ s a -> s{_bvlOauthToken = a})

-- | Index of the first element to return (starts at 0)
bvlStartIndex :: Lens' BookshelvesVolumesList' (Maybe Word32)
bvlStartIndex
  = lens _bvlStartIndex
      (\ s a -> s{_bvlStartIndex = a})

-- | Maximum number of results to return
bvlMaxResults :: Lens' BookshelvesVolumesList' (Maybe Word32)
bvlMaxResults
  = lens _bvlMaxResults
      (\ s a -> s{_bvlMaxResults = a})

-- | Set to true to show pre-ordered books. Defaults to false.
bvlShowPreorders :: Lens' BookshelvesVolumesList' (Maybe Bool)
bvlShowPreorders
  = lens _bvlShowPreorders
      (\ s a -> s{_bvlShowPreorders = a})

-- | Selector specifying which fields to include in a partial response.
bvlFields :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlFields
  = lens _bvlFields (\ s a -> s{_bvlFields = a})

-- | Data format for the response.
bvlAlt :: Lens' BookshelvesVolumesList' Alt
bvlAlt = lens _bvlAlt (\ s a -> s{_bvlAlt = a})

instance GoogleRequest BookshelvesVolumesList' where
        type Rs BookshelvesVolumesList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u BookshelvesVolumesList'{..}
          = go _bvlQuotaUser (Just _bvlPrettyPrint) _bvlUserIp
              _bvlUserId
              _bvlShelf
              _bvlKey
              _bvlSource
              _bvlOauthToken
              _bvlStartIndex
              _bvlMaxResults
              _bvlShowPreorders
              _bvlFields
              (Just _bvlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BookshelvesVolumesListAPI)
                      r
                      u
