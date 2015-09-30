{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesGet@.
module Books.Mylibrary.Bookshelves.Get
    (
    -- * REST Resource
      MylibraryBookshelvesGetAPI

    -- * Creating a Request
    , mylibraryBookshelvesGet
    , MylibraryBookshelvesGet

    -- * Request Lenses
    , mbgQuotaUser
    , mbgPrettyPrint
    , mbgUserIp
    , mbgShelf
    , mbgKey
    , mbgSource
    , mbgOauthToken
    , mbgFields
    , mbgAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesGet@ which the
-- 'MylibraryBookshelvesGet' request conforms to.
type MylibraryBookshelvesGetAPI =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           QueryParam "source" Text :> Get '[JSON] Bookshelf

-- | Retrieves metadata for a specific bookshelf belonging to the
-- authenticated user.
--
-- /See:/ 'mylibraryBookshelvesGet' smart constructor.
data MylibraryBookshelvesGet = MylibraryBookshelvesGet
    { _mbgQuotaUser   :: !(Maybe Text)
    , _mbgPrettyPrint :: !Bool
    , _mbgUserIp      :: !(Maybe Text)
    , _mbgShelf       :: !Text
    , _mbgKey         :: !(Maybe Text)
    , _mbgSource      :: !(Maybe Text)
    , _mbgOauthToken  :: !(Maybe Text)
    , _mbgFields      :: !(Maybe Text)
    , _mbgAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbgQuotaUser'
--
-- * 'mbgPrettyPrint'
--
-- * 'mbgUserIp'
--
-- * 'mbgShelf'
--
-- * 'mbgKey'
--
-- * 'mbgSource'
--
-- * 'mbgOauthToken'
--
-- * 'mbgFields'
--
-- * 'mbgAlt'
mylibraryBookshelvesGet
    :: Text -- ^ 'shelf'
    -> MylibraryBookshelvesGet
mylibraryBookshelvesGet pMbgShelf_ =
    MylibraryBookshelvesGet
    { _mbgQuotaUser = Nothing
    , _mbgPrettyPrint = True
    , _mbgUserIp = Nothing
    , _mbgShelf = pMbgShelf_
    , _mbgKey = Nothing
    , _mbgSource = Nothing
    , _mbgOauthToken = Nothing
    , _mbgFields = Nothing
    , _mbgAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbgQuotaUser :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgQuotaUser
  = lens _mbgQuotaUser (\ s a -> s{_mbgQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbgPrettyPrint :: Lens' MylibraryBookshelvesGet' Bool
mbgPrettyPrint
  = lens _mbgPrettyPrint
      (\ s a -> s{_mbgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbgUserIp :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgUserIp
  = lens _mbgUserIp (\ s a -> s{_mbgUserIp = a})

-- | ID of bookshelf to retrieve.
mbgShelf :: Lens' MylibraryBookshelvesGet' Text
mbgShelf = lens _mbgShelf (\ s a -> s{_mbgShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbgKey :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgKey = lens _mbgKey (\ s a -> s{_mbgKey = a})

-- | String to identify the originator of this request.
mbgSource :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgSource
  = lens _mbgSource (\ s a -> s{_mbgSource = a})

-- | OAuth 2.0 token for the current user.
mbgOauthToken :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgOauthToken
  = lens _mbgOauthToken
      (\ s a -> s{_mbgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mbgFields :: Lens' MylibraryBookshelvesGet' (Maybe Text)
mbgFields
  = lens _mbgFields (\ s a -> s{_mbgFields = a})

-- | Data format for the response.
mbgAlt :: Lens' MylibraryBookshelvesGet' Text
mbgAlt = lens _mbgAlt (\ s a -> s{_mbgAlt = a})

instance GoogleRequest MylibraryBookshelvesGet' where
        type Rs MylibraryBookshelvesGet' = Bookshelf
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryBookshelvesGet{..}
          = go _mbgQuotaUser _mbgPrettyPrint _mbgUserIp
              _mbgShelf
              _mbgKey
              _mbgSource
              _mbgOauthToken
              _mbgFields
              _mbgAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryBookshelvesGetAPI)
                      r
                      u
