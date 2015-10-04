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
-- Module      : Network.Google.Resource.Books.Bookshelves.Volumes.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksBookshelvesVolumesList@.
module Network.Google.Resource.Books.Bookshelves.Volumes.List
    (
    -- * REST Resource
      BookshelvesVolumesListResource

    -- * Creating a Request
    , bookshelvesVolumesList'
    , BookshelvesVolumesList'

    -- * Request Lenses
    , bvlQuotaUser
    , bvlPrettyPrint
    , bvlUserIP
    , bvlUserId
    , bvlShelf
    , bvlKey
    , bvlSource
    , bvlOAuthToken
    , bvlStartIndex
    , bvlMaxResults
    , bvlShowPreOrders
    , bvlFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksBookshelvesVolumesList@ which the
-- 'BookshelvesVolumesList'' request conforms to.
type BookshelvesVolumesListResource =
     "users" :>
       Capture "userId" Text :>
         "bookshelves" :>
           Capture "shelf" Text :>
             "volumes" :>
               QueryParam "source" Text :>
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

-- | Retrieves volumes in a specific bookshelf for the specified user.
--
-- /See:/ 'bookshelvesVolumesList'' smart constructor.
data BookshelvesVolumesList' = BookshelvesVolumesList'
    { _bvlQuotaUser     :: !(Maybe Text)
    , _bvlPrettyPrint   :: !Bool
    , _bvlUserIP        :: !(Maybe Text)
    , _bvlUserId        :: !Text
    , _bvlShelf         :: !Text
    , _bvlKey           :: !(Maybe Key)
    , _bvlSource        :: !(Maybe Text)
    , _bvlOAuthToken    :: !(Maybe OAuthToken)
    , _bvlStartIndex    :: !(Maybe Word32)
    , _bvlMaxResults    :: !(Maybe Word32)
    , _bvlShowPreOrders :: !(Maybe Bool)
    , _bvlFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'BookshelvesVolumesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bvlQuotaUser'
--
-- * 'bvlPrettyPrint'
--
-- * 'bvlUserIP'
--
-- * 'bvlUserId'
--
-- * 'bvlShelf'
--
-- * 'bvlKey'
--
-- * 'bvlSource'
--
-- * 'bvlOAuthToken'
--
-- * 'bvlStartIndex'
--
-- * 'bvlMaxResults'
--
-- * 'bvlShowPreOrders'
--
-- * 'bvlFields'
bookshelvesVolumesList'
    :: Text -- ^ 'userId'
    -> Text -- ^ 'shelf'
    -> BookshelvesVolumesList'
bookshelvesVolumesList' pBvlUserId_ pBvlShelf_ =
    BookshelvesVolumesList'
    { _bvlQuotaUser = Nothing
    , _bvlPrettyPrint = True
    , _bvlUserIP = Nothing
    , _bvlUserId = pBvlUserId_
    , _bvlShelf = pBvlShelf_
    , _bvlKey = Nothing
    , _bvlSource = Nothing
    , _bvlOAuthToken = Nothing
    , _bvlStartIndex = Nothing
    , _bvlMaxResults = Nothing
    , _bvlShowPreOrders = Nothing
    , _bvlFields = Nothing
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
bvlUserIP :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlUserIP
  = lens _bvlUserIP (\ s a -> s{_bvlUserIP = a})

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
bvlKey :: Lens' BookshelvesVolumesList' (Maybe Key)
bvlKey = lens _bvlKey (\ s a -> s{_bvlKey = a})

-- | String to identify the originator of this request.
bvlSource :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlSource
  = lens _bvlSource (\ s a -> s{_bvlSource = a})

-- | OAuth 2.0 token for the current user.
bvlOAuthToken :: Lens' BookshelvesVolumesList' (Maybe OAuthToken)
bvlOAuthToken
  = lens _bvlOAuthToken
      (\ s a -> s{_bvlOAuthToken = a})

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
bvlShowPreOrders :: Lens' BookshelvesVolumesList' (Maybe Bool)
bvlShowPreOrders
  = lens _bvlShowPreOrders
      (\ s a -> s{_bvlShowPreOrders = a})

-- | Selector specifying which fields to include in a partial response.
bvlFields :: Lens' BookshelvesVolumesList' (Maybe Text)
bvlFields
  = lens _bvlFields (\ s a -> s{_bvlFields = a})

instance GoogleAuth BookshelvesVolumesList' where
        authKey = bvlKey . _Just
        authToken = bvlOAuthToken . _Just

instance GoogleRequest BookshelvesVolumesList' where
        type Rs BookshelvesVolumesList' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u BookshelvesVolumesList'{..}
          = go _bvlUserId _bvlShelf _bvlSource _bvlStartIndex
              _bvlMaxResults
              _bvlShowPreOrders
              _bvlQuotaUser
              (Just _bvlPrettyPrint)
              _bvlUserIP
              _bvlFields
              _bvlKey
              _bvlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy BookshelvesVolumesListResource)
                      r
                      u
