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
-- Module      : Network.Google.Resource.Books.Mylibrary.Bookshelves.MoveVolume
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Moves a volume within a bookshelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryBookshelvesMoveVolume@.
module Network.Google.Resource.Books.Mylibrary.Bookshelves.MoveVolume
    (
    -- * REST Resource
      MylibraryBookshelvesMoveVolumeResource

    -- * Creating a Request
    , mylibraryBookshelvesMoveVolume'
    , MylibraryBookshelvesMoveVolume'

    -- * Request Lenses
    , mbmvQuotaUser
    , mbmvPrettyPrint
    , mbmvUserIp
    , mbmvShelf
    , mbmvKey
    , mbmvVolumeId
    , mbmvSource
    , mbmvOauthToken
    , mbmvVolumePosition
    , mbmvFields
    , mbmvAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryBookshelvesMoveVolume@ which the
-- 'MylibraryBookshelvesMoveVolume'' request conforms to.
type MylibraryBookshelvesMoveVolumeResource =
     "mylibrary" :>
       "bookshelves" :>
         Capture "shelf" Text :>
           "moveVolume" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "volumeId" Text :>
                       QueryParam "source" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "volumePosition" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] ()

-- | Moves a volume within a bookshelf.
--
-- /See:/ 'mylibraryBookshelvesMoveVolume'' smart constructor.
data MylibraryBookshelvesMoveVolume' = MylibraryBookshelvesMoveVolume'
    { _mbmvQuotaUser      :: !(Maybe Text)
    , _mbmvPrettyPrint    :: !Bool
    , _mbmvUserIp         :: !(Maybe Text)
    , _mbmvShelf          :: !Text
    , _mbmvKey            :: !(Maybe Text)
    , _mbmvVolumeId       :: !Text
    , _mbmvSource         :: !(Maybe Text)
    , _mbmvOauthToken     :: !(Maybe Text)
    , _mbmvVolumePosition :: !Int32
    , _mbmvFields         :: !(Maybe Text)
    , _mbmvAlt            :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryBookshelvesMoveVolume'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mbmvQuotaUser'
--
-- * 'mbmvPrettyPrint'
--
-- * 'mbmvUserIp'
--
-- * 'mbmvShelf'
--
-- * 'mbmvKey'
--
-- * 'mbmvVolumeId'
--
-- * 'mbmvSource'
--
-- * 'mbmvOauthToken'
--
-- * 'mbmvVolumePosition'
--
-- * 'mbmvFields'
--
-- * 'mbmvAlt'
mylibraryBookshelvesMoveVolume'
    :: Text -- ^ 'shelf'
    -> Text -- ^ 'volumeId'
    -> Int32 -- ^ 'volumePosition'
    -> MylibraryBookshelvesMoveVolume'
mylibraryBookshelvesMoveVolume' pMbmvShelf_ pMbmvVolumeId_ pMbmvVolumePosition_ =
    MylibraryBookshelvesMoveVolume'
    { _mbmvQuotaUser = Nothing
    , _mbmvPrettyPrint = True
    , _mbmvUserIp = Nothing
    , _mbmvShelf = pMbmvShelf_
    , _mbmvKey = Nothing
    , _mbmvVolumeId = pMbmvVolumeId_
    , _mbmvSource = Nothing
    , _mbmvOauthToken = Nothing
    , _mbmvVolumePosition = pMbmvVolumePosition_
    , _mbmvFields = Nothing
    , _mbmvAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mbmvQuotaUser :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvQuotaUser
  = lens _mbmvQuotaUser
      (\ s a -> s{_mbmvQuotaUser = a})

-- | Returns response with indentations and line breaks.
mbmvPrettyPrint :: Lens' MylibraryBookshelvesMoveVolume' Bool
mbmvPrettyPrint
  = lens _mbmvPrettyPrint
      (\ s a -> s{_mbmvPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mbmvUserIp :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvUserIp
  = lens _mbmvUserIp (\ s a -> s{_mbmvUserIp = a})

-- | ID of bookshelf with the volume.
mbmvShelf :: Lens' MylibraryBookshelvesMoveVolume' Text
mbmvShelf
  = lens _mbmvShelf (\ s a -> s{_mbmvShelf = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mbmvKey :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvKey = lens _mbmvKey (\ s a -> s{_mbmvKey = a})

-- | ID of volume to move.
mbmvVolumeId :: Lens' MylibraryBookshelvesMoveVolume' Text
mbmvVolumeId
  = lens _mbmvVolumeId (\ s a -> s{_mbmvVolumeId = a})

-- | String to identify the originator of this request.
mbmvSource :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvSource
  = lens _mbmvSource (\ s a -> s{_mbmvSource = a})

-- | OAuth 2.0 token for the current user.
mbmvOauthToken :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvOauthToken
  = lens _mbmvOauthToken
      (\ s a -> s{_mbmvOauthToken = a})

-- | Position on shelf to move the item (0 puts the item before the current
-- first item, 1 puts it between the first and the second and so on.)
mbmvVolumePosition :: Lens' MylibraryBookshelvesMoveVolume' Int32
mbmvVolumePosition
  = lens _mbmvVolumePosition
      (\ s a -> s{_mbmvVolumePosition = a})

-- | Selector specifying which fields to include in a partial response.
mbmvFields :: Lens' MylibraryBookshelvesMoveVolume' (Maybe Text)
mbmvFields
  = lens _mbmvFields (\ s a -> s{_mbmvFields = a})

-- | Data format for the response.
mbmvAlt :: Lens' MylibraryBookshelvesMoveVolume' Alt
mbmvAlt = lens _mbmvAlt (\ s a -> s{_mbmvAlt = a})

instance GoogleRequest
         MylibraryBookshelvesMoveVolume' where
        type Rs MylibraryBookshelvesMoveVolume' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryBookshelvesMoveVolume'{..}
          = go _mbmvQuotaUser (Just _mbmvPrettyPrint)
              _mbmvUserIp
              _mbmvShelf
              _mbmvKey
              (Just _mbmvVolumeId)
              _mbmvSource
              _mbmvOauthToken
              (Just _mbmvVolumePosition)
              _mbmvFields
              (Just _mbmvAlt)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryBookshelvesMoveVolumeResource)
                      r
                      u
