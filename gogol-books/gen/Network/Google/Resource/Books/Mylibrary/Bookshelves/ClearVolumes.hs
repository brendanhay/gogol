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
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.ClearVolumes
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Clears all volumes from a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesClearVolumes@.
module Network.Google.Resource.Books.Mylibrary.Bookshelves.ClearVolumes
    (
    -- * REST Resource
      MylibraryBookshelvesClearVolumesResource

    -- * Creating a Request
    , mylibraryBookshelvesClearVolumes'
    , MylibraryBookshelvesClearVolumes'

    -- * Request Lenses
    , mbcvQuotaUser
    , mbcvPrettyPrint
    , mbcvUserIp
    , mbcvShelf
    , mbcvKey
    , mbcvSource
    , mbcvOauthToken
    , mbcvFields
    , mbcvAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesClearVolumes@ which the
-- 'MylibraryBookshelvesClearVolumes'' request conforms to.
type MylibraryBookshelvesClearVolumesResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "clearVolumes" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "source" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] ()

-- | Clears all volumes from a bookshelf.
--
-- /See:/ 'mylibraryBookshelvesClearVolumes'' smart constructor.
data MylibraryBookshelvesClearVolumes' = MylibraryBookshelvesClearVolumes'
    { _mbcvQuotaUser   :: !(Maybe Text)
    , _mbcvPrettyPrint :: !Bool
    , _mbcvUserIp      :: !(Maybe Text)
    , _mbcvShelf       :: !Text
    , _mbcvKey         :: !(Maybe Text)
    , _mbcvSource      :: !(Maybe Text)
    , _mbcvOauthToken  :: !(Maybe Text)
    , _mbcvFields      :: !(Maybe Text)
    , _mbcvAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesClearVolumes'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbcvQuotaUser'
--
-- * 'mbcvPrettyPrint'
--
-- * 'mbcvUserIp'
--
-- * 'mbcvShelf'
--
-- * 'mbcvKey'
--
-- * 'mbcvSource'
--
-- * 'mbcvOauthToken'
--
-- * 'mbcvFields'
--
-- * 'mbcvAlt'
mylibraryBookshelvesClearVolumes'
    :: Text -- ^ 'shelf'
    -> MylibraryBookshelvesClearVolumes'
mylibraryBookshelvesClearVolumes' pMbcvShelf_ =
    MylibraryBookshelvesClearVolumes'
    { _mbcvQuotaUser = Nothing
    , _mbcvPrettyPrint = True
    , _mbcvUserIp = Nothing
    , _mbcvShelf = pMbcvShelf_
    , _mbcvKey = Nothing
    , _mbcvSource = Nothing
    , _mbcvOauthToken = Nothing
    , _mbcvFields = Nothing
    , _mbcvAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbcvQuotaUser :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvQuotaUser
  = lens _mbcvQuotaUser
      (\ s a -> s{_mbcvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbcvPrettyPrint :: Lens' MylibraryBookshelvesClearVolumes' Bool
mbcvPrettyPrint
  = lens _mbcvPrettyPrint
      (\ s a -> s{_mbcvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbcvUserIp :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvUserIp
  = lens _mbcvUserIp (\ s a -> s{_mbcvUserIp = a})

-- | ID of bookshelf from which to remove a volume.
mbcvShelf :: Lens' MylibraryBookshelvesClearVolumes' Text
mbcvShelf
  = lens _mbcvShelf (\ s a -> s{_mbcvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbcvKey :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvKey = lens _mbcvKey (\ s a -> s{_mbcvKey = a})

-- | String to identify the originator of this request.
mbcvSource :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvSource
  = lens _mbcvSource (\ s a -> s{_mbcvSource = a})

-- | OAuth 2.0 token for the current user.
mbcvOauthToken :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvOauthToken
  = lens _mbcvOauthToken
      (\ s a -> s{_mbcvOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mbcvFields :: Lens' MylibraryBookshelvesClearVolumes' (Maybe Text)
mbcvFields
  = lens _mbcvFields (\ s a -> s{_mbcvFields = a})

-- | Data format for the response.
mbcvAlt :: Lens' MylibraryBookshelvesClearVolumes' Alt
mbcvAlt = lens _mbcvAlt (\ s a -> s{_mbcvAlt = a})

instance GoogleRequest
         MylibraryBookshelvesClearVolumes' where
        type Rs MylibraryBookshelvesClearVolumes' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryBookshelvesClearVolumes'{..}
          = go _mbcvQuotaUser (Just _mbcvPrettyPrint)
              _mbcvUserIp
              _mbcvShelf
              _mbcvKey
              _mbcvSource
              _mbcvOauthToken
              _mbcvFields
              (Just _mbcvAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryBookshelvesClearVolumesResource)
                      r
                      u
